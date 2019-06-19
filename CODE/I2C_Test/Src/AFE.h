/*
 * AFE.h
 * Helper library for communication with the BQ76930 AFE IC
 * I don't know what I'm doing, so I hope this works as expected
 *
 *  Created on: May 19, 2019
 *      Author: Ishaan
 */

#ifndef AFE_H_
#define AFE_H_
#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"
#include <stdbool.h>

/* making a convenient structure to
 * contain all the flags of the status register of the device
 *
 * We can use this struct to clear faults as well
 * i.e. we will clear that particular fault bit if we set it to true
 */
typedef struct {
	bool xready_fault;
	bool override_alt;
	bool uv_fault;
	bool ov_fault;
} AFE_Status;

/* struct for charge and discharge FETs
 * will use for both read and write
 */
typedef struct {
	bool charge_on;
	bool discharge_on;
} FET_Status;

/* struct for temperature reads
 * lets us package whether the temperature is from a die temp reading
 * or from a thermistor reading
 */
typedef struct {
	float temp1;
	float temp2;
} Temp_Reading;

// ------------ public functions -----------
void AFE_init(I2C_HandleTypeDef *hi2c);

void AFE_clear_flags(I2C_HandleTypeDef *hi2c, AFE_Status *toClear);
void AFE_set_ADC(I2C_HandleTypeDef *hi2c, bool enabled);
void AFE_set_FETs(I2C_HandleTypeDef *hi2c, FET_Status *fets);
void AFE_config_OV(I2C_HandleTypeDef *hi2c, float OV_thresh);
void AFE_config_UV(I2C_HandleTypeDef *hi2c, float UV_thresh);
void AFE_balance_upper(I2C_HandleTypeDef *hi2c, uint8_t toBalance);
void AFE_balance_lower(I2C_HandleTypeDef *hi2c, uint8_t toBalance);
void AFE_set_UV(I2C_HandleTypeDef *hi2c, float voltage);
void AFE_set_OV(I2C_HandleTypeDef *hi2c, float voltage);
void AFE_shutdown(I2C_HandleTypeDef *hi2c);

void AFE_read_cells(I2C_HandleTypeDef *hi2c, uint16_t *c);
uint16_t AFE_read_pack(I2C_HandleTypeDef *hi2c);
void AFE_read_temps(I2C_HandleTypeDef *hi2c, Temp_Reading *temp);
void AFE_read_FETs(I2C_HandleTypeDef *hi2c, FET_Status *fets);
void AFE_read_flags(I2C_HandleTypeDef *hi2c, AFE_Status *status);


#ifdef __cplusplus
}
#endif

#endif /* AFE_H_ */
