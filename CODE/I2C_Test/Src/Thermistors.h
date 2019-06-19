/*
 * Thermistors.h
 * Function to convert a resistance to a voltage
 * Using Beta model for simplicity
 *
 *  Created on: May 20, 2019
 *      Author: Ishaan
 */

#ifndef THERMISTORS_H_
#define THERMISTORS_H_

#ifdef __cplusplus
extern "C" {
#endif

float r2t(float resistance);

#ifdef __cplusplus
}
#endif
#endif /* THERMISTORS_H_ */
