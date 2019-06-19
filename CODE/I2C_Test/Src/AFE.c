/*
 * AFE.c
 * Helper library to interface with the BQ76930 6-10s AFE IC
 * TBH I'm not sure what I'm doing so hopefully this works as expected
 *  Created on: May 19, 2019
 *      Author: Ishaan Govindarajan
 *
 * TODO:
 *  - write a OV threshold setting function
 *  - write a UV threshold setting function
 *  - write a ship function
 */

#include "AFE.h"
#include "Thermistors.h"

//------------- Private Functions ------------
static void update_ADC_trim(I2C_HandleTypeDef *hi2c);
static void i2c_send(I2C_HandleTypeDef *hi2c, uint8_t *data, uint16_t size);
static void i2c_receive(I2C_HandleTypeDef *hi2c, uint8_t reg, uint8_t *data, uint16_t size);

//------------------ Defines --------------------
#define AFE_ADDR (0x08 << 1)

//register definitions
#define SYS_STAT 0x00
#define CELLBAL1 0x01
#define CELLBAL2 0x02
#define SYS_CTRL1 0x04
#define SYS_CTRL2 0x05
#define PROTECT3 0x08
#define OV_TRIP 0x09
#define UV_TRIP 0x0A
#define CC_CFG 0x0B
#define BAT_BASE 0x2A
#define TS_BASE 0x2C
#define ADCGAIN1 0x50
#define ADCOFFSET 0x51
#define ADCGAIN2 0x59

#define VCELL_BASE 0x0C

// ------------- Bit offsets in registers ------------
#define DEVICE_XREADY (1<<5)
#define OVRD_ALERT (1<<4)
#define UV (1<<3)
#define OV (1<<2)

#define ADC_EN (1<<4)
#define TEMP_SEL (1<<3)
#define SHUT_A (1<<1)
#define SHUT_B (1<<0)

#define DSG_ON (1<<1)
#define CHG_ON (1<<0)

#define UV_1s (0x0 << 6)
#define UV_4s (0x1 << 6)
#define UV_8s (0x2 << 6)
#define UV_16s (0x3 << 6)

#define OV_1s (0x0 << 4)
#define OV_2s (0x1 << 4)
#define OV_4s (0x2 << 4)
#define OV_8s (0x3 << 4)

#define OV_UV_MASK (uint16_t)(0xFF << 4)

#define CC_CFG_VAL 0x19

#define GAIN_43 (0x3 << 2)
#define GAIN_210 (0x7 << 5)
#define BASE_ADC_GAIN (uint16_t)365 //uV/LSB with 0 gain offset

//------------ Static Variables ----------
static uint16_t adc_gain; //gain value read from ADC gain registers in uV/LSB
static int8_t adc_offset; //signed adc offset from ADC offset registers

//------------ Public Methods ------------
void AFE_init(I2C_HandleTypeDef *hi2c) {

	//set the charge and discharge FETs to be off
	FET_Status offFets;
	offFets.charge_on = false;
	offFets.discharge_on = false;
	AFE_set_FETs(hi2c, &offFets);

	//set the OV and UV delay timers to something reasonable
	uint8_t protectDelay[2];
	protectDelay[0] = PROTECT3;
	protectDelay[1] = OV_4s | UV_8s;
	i2c_send(hi2c, protectDelay, sizeof(protectDelay));

	//set the OV and UV cutoffs to something reasonable

	//write to the CC_CFG line just for safety I guess
	uint8_t ccConfig[2];
	ccConfig[0] = CC_CFG;
	ccConfig[1] = CC_CFG_VAL;
	i2c_send(hi2c, ccConfig, sizeof(ccConfig));

	//enable the ADC and set the measurement source to thermistors
	AFE_set_ADC(hi2c, true);

	//update the ADC gain and offset values
	update_ADC_trim(hi2c);
}

//read flags from the device status register
void AFE_read_flags(I2C_HandleTypeDef *hi2c, AFE_Status *status) {
	uint8_t sreg[1];
	i2c_receive(hi2c, SYS_STAT, sreg, 1);

	status->xready_fault = (sreg[0] & DEVICE_XREADY) == 0 ? false : true;
	status->override_alt = (sreg[0] & OVRD_ALERT) == 0 ? false : true;
	status->ov_fault = (sreg[0] & OV) == 0 ? false : true;
	status->uv_fault = (sreg[0] & UV) == 0 ? false : true;
}

//clear the selected flags from the device status register
void AFE_clear_flags(I2C_HandleTypeDef *hi2c, AFE_Status *toClear) {
	uint8_t data[2];
	//first byte we need to send is the status register address
	data[0] = SYS_STAT;

	//fill out all the appropriate bits about the things we need to clear
	data[1] = toClear->xready_fault ? DEVICE_XREADY : 0 ;
	data[1] |= toClear->override_alt ? OVRD_ALERT : 0 ;
	data[1] |= toClear->ov_fault ? OV : 0 ;
	data[1] |= toClear->uv_fault ? UV : 0 ;

	//send this data on the I2C bus
	i2c_send(hi2c, data, sizeof(data));
}

//enable or disable the ADC
void AFE_set_ADC(I2C_HandleTypeDef *hi2c, bool enabled) {
	//allocate a small buffer
	uint8_t data[2];

	//first byte we need to send is the system control1 register
	data[0] = SYS_CTRL1;

	//second byte we sets external temperature source and ADC enabled
	data[1] = (enabled ? ADC_EN : 0) | TEMP_SEL ;

	//send this data on the I2C bus
	i2c_send(hi2c, data, sizeof(data));
}

//function that sets the FET status in the system control 2 register
void AFE_set_FETs(I2C_HandleTypeDef *hi2c, FET_Status *fets) {
	//allocate a small buffer
	uint8_t data[2];

	//first byte we need to send is the system control 2 register
	data[0] = SYS_CTRL2;

	//second byte we send depends on temperature source and ADC enabled
	data[1] = (fets->charge_on ? CHG_ON : 0) | (fets->discharge_on ? DSG_ON : 0);

	//send this data on the I2C bus
	i2c_send(hi2c, data, sizeof(data));
}

void AFE_read_cells(I2C_HandleTypeDef *hi2c, uint16_t *c) {
	//data from cell registers will be formatted like
	// [cell1_hi, cell1_lo, cell2_hi, cell2_lo ... cell10_hi, cell10_lo]
	uint8_t cell_data[20];
	i2c_receive(hi2c, VCELL_BASE, cell_data, sizeof(cell_data));

	//stitch together the bits we read
	for(uint8_t i = 0; i < 10; i+=2) {
		//make this 32 bits so we can safely do all multiplication we need
		uint32_t cell_i;
		cell_i = (cell_data[i] << 8 | cell_data[i+1]) & 0xFFFF;

		//make sure to do the multiply before the integer divide
		c[i] = (uint16_t)((cell_i * adc_gain) / 1000 + adc_offset);
	}

}

//read the pack voltage in mV
uint16_t AFE_read_pack(I2C_HandleTypeDef *hi2c) {
	//get the pack voltage reading from the appropriate register
	//goes [high_byte, low_byte]
	uint8_t pack_reading[2];
	i2c_receive(hi2c, BAT_BASE, pack_reading, sizeof(pack_reading));

	uint16_t concat_reading;
	concat_reading = pack_reading[0] << 8 | pack_reading[1];

	return (uint16_t)(concat_reading * 4.0 * adc_gain/1000.0 + 10.0*adc_offset);
}

//function to read temperatures from ADC
//modifies the struct passed to it
void AFE_read_temps(I2C_HandleTypeDef *hi2c, Temp_Reading *temp) {
	//read the 4 bytes of ts1 and ts2
	//data goes [ts1 high, ts1 low, ts2 high, ts2 low]
	uint8_t data[4];
	i2c_receive(hi2c, TS_BASE, data, sizeof(data));

	//doing some math, letting the compiler take care of some of the numerical optimization

	//stitching together ADC readings
	uint16_t adc_ts1, adc_ts2;
	adc_ts1 = (data[0] << 8 | data[1]) & 0x3FFF;
	adc_ts2 = (data[2] << 8 | data[3]) & 0x3FFF;

	//calculating ADC voltage from gain and offset (in millivolts)
	//using NOMINAL ADC gain, NOT trimmed
	float ts1_mv, ts2_mv;
	//ts1_mv = adc_ts1 * adc_gain / 1000.0 + (float)adc_offset;
	//ts2_mv = adc_ts2 * adc_gain / 1000.0 + (float)adc_offset;
	ts1_mv = adc_ts1 * 0.382; //0.382 uV/LSB nominal
	ts2_mv = adc_ts2 * 0.382;


	//calculating thermistor resistance from voltage
	float r_ts1, r_ts2;
	r_ts1 = (10000.0 * ts1_mv/1000.0) / (3.3 - ts1_mv/1000.0);
	r_ts2 = (10000.0 * ts2_mv/1000.0) / (3.3 - ts2_mv/1000.0);

	//calculating temperature from thermistor resistance from other function
	temp->temp1 = r2t(r_ts1);
	temp->temp2 = r2t(r_ts2);
}

//function that reads FET status from system control 2 register
void AFE_read_FETs(I2C_HandleTypeDef *hi2c, FET_Status *fets) {
	//allocate a small read buffer
	uint8_t s_fet[1];

	//read the system control 2 register
	i2c_receive(hi2c, SYS_CTRL2, s_fet, 1);

	//extract the charge and discharge flags from the data we read
	fets->charge_on = (s_fet[0] & CHG_ON) == 0 ? false : true;
	fets->discharge_on = (s_fet[0] & DSG_ON) == 0 ? false : true;
}

//code for balancing functionality
void AFE_balance_upper(I2C_HandleTypeDef *hi2c, uint8_t toBalance) {
	//make sure no two adjacent cells are being balanced simultaneously (per datasheet spec)
	//favors the smaller cell if there's a conflict
	for(uint8_t i = 0; i < 5; i++) {
		//we'll select the ith bit
		//shift it over one bit and invert it
		//and mask the next bit over
		toBalance = ~((toBalance & (1 << i)) << 1) & toBalance;
	}

	//send this to the CELLBAL2 register for the upper bank
	uint8_t data[2];
	data[0] = CELLBAL2;
	data[1] = toBalance;

	i2c_send(hi2c, data, sizeof(data));
}

void AFE_balance_lower(I2C_HandleTypeDef *hi2c, uint8_t toBalance) {
	//make sure no two adjacent cells are being balanced simultaneously (per datasheet spec)
	//favors the smaller cell if there's a conflict
	for(uint8_t i = 0; i < 5; i++) {
		//we'll select the ith bit
		//shift it over one bit and invert it
		//and mask the next bit over
		toBalance = ~((toBalance & (1 << i)) << 1) & toBalance;
	}

	//send this to the CELLBAL1 register for the lower bank
	uint8_t data[2];
	data[0] = CELLBAL1;
	data[1] = toBalance;

	i2c_send(hi2c, data, sizeof(data));
}

void AFE_set_UV(I2C_HandleTypeDef *hi2c, float voltage) {

}

void AFE_set_OV(I2C_HandleTypeDef *hi2c, float voltage) {

}

void AFE_shutdown(I2C_HandleTypeDef *hi2c) {

}

/* -------------- Private Functions --------------*/

//function that reads the ADC gain and offset registers and updates internal variables
static void update_ADC_trim(I2C_HandleTypeDef *hi2c) {
	//read all the adc gain registers
	uint8_t gain1[1];
	uint8_t gain2[1];
	uint8_t offset[1];

	i2c_receive(hi2c, ADCGAIN1, gain1, 1);
	i2c_receive(hi2c, ADCGAIN2, gain2, 1);
	i2c_receive(hi2c, ADCOFFSET, offset, 1);

	//do some really fucked up concatenation of the different gain bits
	//from the GAIN1 and GAIN2 registers, and add the base ADC offset
	adc_gain = (uint16_t)(((gain1[0] & GAIN_43) << 1) | ((gain2[0] & GAIN_210) >> 5)) + BASE_ADC_GAIN;

	//offset is encoded as a signed 8-bit number
	adc_offset = (int8_t) offset[0];
}

//wrapping up the HAL driver for portability reasons
//I honestly don't know why because this code will likely stay on the STM32 platform
//but i guess just for funsies
static void i2c_send(I2C_HandleTypeDef *hi2c, uint8_t *data, uint16_t size) {
	HAL_I2C_Master_Transmit(hi2c, AFE_ADDR, data, size, (uint32_t)(5*size));
}

static void i2c_receive(I2C_HandleTypeDef *hi2c, uint8_t reg, uint8_t *data, uint16_t size) {
	uint8_t tx[1];
	tx[0] = reg;
	i2c_send(hi2c, tx, sizeof(tx));
	//data array should now contain value received from transmission
	HAL_I2C_Master_Transmit(hi2c, AFE_ADDR, data, size, (uint32_t)(5*size));
}
