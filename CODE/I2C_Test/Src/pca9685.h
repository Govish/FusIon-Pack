/*
 * pca9685.h
 * Helper library to interface with PCA9685 I2C LED Driver
 * TBH I'm not sure what I'm doing so I hope this works as expected
 *  Created on: May 5, 2019
 *      Author: Ishaan Govindarajan
 */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef PCA9685_H_
#define PCA9685_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"

typedef struct {
	uint16_t r;
	uint16_t g;
	uint16_t b;
} RGB;

//some convenient color constants that we can use everywhere
extern const RGB RED;
extern const RGB ORANGE;
extern const RGB YELLOW;
extern const RGB GREEN;
extern const RGB BLUE;
extern const RGB INDIGO;
extern const RGB VIOLET;
extern const RGB WHITE;
extern const RGB OFF;

/* Functions -------------------------------------------------------------------*/
//public functions
void pca_init(I2C_HandleTypeDef *hi2c);
void pca_sleep(I2C_HandleTypeDef *hi2c);
void pca_wake(I2C_HandleTypeDef *hi2c);
void pca_off(I2C_HandleTypeDef *hi2c);

void pca_write_color(I2C_HandleTypeDef *hi2c, uint8_t led, RGB color);

#ifdef __cplusplus
}
#endif

#endif /* PCA9685_H_ */
