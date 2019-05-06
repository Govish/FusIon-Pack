/*
 * pca9685.c
 * Helper library to interface with PCA9685 I2C LED Driver
 * TBH I'm not sure what I'm doing so I hope this works as expected
 *  Created on: May 5, 2019
 *      Author: Ishaan Govindarajan
 */

#include "pca9685.h"

/* Defines -------------------------------------------------------------------*/

//HIGH LEVEL I2C CONSTANTS FOR DEVICE
#define PCA_ADDRESS 0x80 //(already shifted, last value is 0)

//REGISTER ADDRESSES
#define MODE1 0x00
#define MODE2 0x01
#define BASE_LEDON_L 0x06
#define BASE_LEDON_H 0X07
#define BASE_LEDOFF_L 0x08
#define BASE_LEDOFF_H 0x09
#define PRE_SCALE 0xFE

//REGISTER OFFSETS
#define EXT_CLK_EN 1 << 6
#define AUTO_INCREMENT_EN 1 << 5
#define SLEEP_EN 1 << 4

#define INVERT_CHANNELS 1 << 4
#define PP_OUT 1 << 2
#define OD_OUT 0 << 2
#define HIZ_OUT_DISABLE 0x02
#define LOW_OUT_DISABLE 0x00

//Not writing macros for Prescaler because 200Hz PWM is cool

//We can set LEDs to a value of 0 (fully off) to 4096 (fully on)
#define LED_VALUE_MASK 0x1FFF
#define LED_MASK_FULL 1 << 4

//Color constants actually defined here
const RGB RED = {4096, 0, 0};
const RGB ORANGE = {4096, 2048, 0};
const RGB YELLOW = {4096, 4096, 0};
const RGB GREEN = {0, 4096, 0};
const RGB BLUE = {0, 2048, 4096};
const RGB INDIGO = {0, 0, 4096};
const RGB VIOLET = {2048, 0, 4096};
const RGB WHITE = {4096, 4096, 4096};
const RGB OFF = {0, 0, 0};


//Defines for board specific mappings of LEDs
typedef struct {
	uint8_t red;
	uint8_t green;
	uint8_t blue;
} rgb_pin_wrapper;

//we'll be initializing with the rgb_pin_wrapper struct
const rgb_pin_wrapper pin_map[5] = {{6, 7, 8},
									{3, 4, 5},
									{0, 1, 2},
									{11, 10, 9},
									{14, 13, 12}};


//private function prototypes up here
static void i2c_send(I2C_HandleTypeDef *hi2c, uint8_t *data, uint16_t size);
static void i2c_receive(I2C_HandleTypeDef *hi2c, uint8_t reg, uint8_t *data, uint16_t size);
static void pca_write_channel(I2C_HandleTypeDef *hi2c, uint8_t channel, uint16_t val);

//public functions
void pca_init(I2C_HandleTypeDef *hi2c) {
	//set aside 2 contiguous memory locations for mode arrays
	uint8_t mode1_data[2];
	uint8_t mode2_data[2];

	mode1_data[0] = MODE1;
	//disable external clock, enable auto inc, and wake up
	mode1_data[1] = AUTO_INCREMENT_EN;

	mode2_data[0] = MODE2;
	//invert drive, open drain outputs, hi-z outputs on high /OE
	mode2_data[1] = INVERT_CHANNELS | OD_OUT | HIZ_OUT_DISABLE;

	i2c_send(hi2c, mode1_data, sizeof(mode1_data));
	i2c_send(hi2c, mode2_data, sizeof(mode2_data));
}

void pca_sleep(I2C_HandleTypeDef *hi2c) {
	//will have to call init() separately if necessary
	uint8_t reg_data[1];
	//fetch mode1
	i2c_receive(hi2c, MODE1, reg_data, sizeof(reg_data));

	//create a new contiguous memory location for the data to send
	uint8_t new_reg_data[2];
	new_reg_data[0] = MODE1;
	//reset the sleep bit
	new_reg_data[1] = reg_data[0] | (SLEEP_EN);

	//transmit the new register data
	i2c_send(hi2c, new_reg_data, sizeof(new_reg_data));
}

void pca_wake(I2C_HandleTypeDef *hi2c) {
	//will have to call init() separately if necessary
	uint8_t reg_data[1];
	//fetch mode1
	i2c_receive(hi2c, MODE1, reg_data, sizeof(reg_data));

	//create a new contiguous memory location for the data to send
	uint8_t new_reg_data[2];
	new_reg_data[0] = MODE1;
	//reset the sleep bit
	new_reg_data[1] = reg_data[0] & (~SLEEP_EN);

	//transmit the new register data
	i2c_send(hi2c, new_reg_data, sizeof(new_reg_data));
}

void pca_off(I2C_HandleTypeDef *hi2c) {
	for(uint8_t i = 0; i < 15; i++) {
		pca_write_channel(hi2c, i, 0);
	}
}

void pca_write_color(I2C_HandleTypeDef *hi2c, uint8_t led, RGB color) {
	if(led > 4) return;

	//select the correct channels depending on which LED we want to write to
	rgb_pin_wrapper pins = pin_map[led];

	//write the r, g, and b channels
	pca_write_channel(hi2c, pins.red, color.r);
	pca_write_channel(hi2c, pins.green, color.g);
	pca_write_channel(hi2c, pins.blue, color.b);
}

//private functions
static void pca_write_channel(I2C_HandleTypeDef *hi2c, uint8_t channel, uint16_t val) {
	//send a total of 5 bytes, uses auto-increment
	uint8_t data[5];

	//constrain the value that we write to the chip
	val &= LED_VALUE_MASK;

	//write low byte first, start every PWM cycle at 0
	data[0] = BASE_LEDON_L + (channel << 2);
	data[1] = 0;

	//then write high byte, only write 1 to the 4th bit if we want it to be on
	data[2] = (val >> 8) & (LED_MASK_FULL);

	//write off register low byte, we'll turn the LED off at the right value
	data[3] = val & 0xFF;

	//write off register high byte, assert FULL OFF if the val is 0
	data[4] = (val == 0) ? (LED_MASK_FULL) : (val >> 8) & 0xF;


	i2c_send(hi2c, data, sizeof(data));
}

static void i2c_send(I2C_HandleTypeDef *hi2c, uint8_t *data, uint16_t size) {
	HAL_I2C_Master_Transmit(hi2c, PCA_ADDRESS, data, size, 1);
}

static void i2c_receive(I2C_HandleTypeDef *hi2c, uint8_t reg, uint8_t *data, uint16_t size) {
	uint8_t tx[1];
	tx[0] = reg;
	i2c_send(hi2c, tx, sizeof(tx));
	//data array should now contain value received from transmission
	HAL_I2C_Master_Transmit(hi2c, PCA_ADDRESS, data, size, 1);
}


