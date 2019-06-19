/*
 * Thermistors.c
 * Function to convert a resistance to a voltage
 * Using Beta model for simplicity
 *
 *  Created on: May 20, 2019
 *      Author: Ishaan
 */

#include "Thermistors.h"
#include <math.h>

//generate these coefficients here:
//https://www.thinksrs.com/downloads/programs/therm%20calc/ntccalibrator/ntccalculator.html
//or look them up in your datasheet--25/50 should be close enough
#define NOMINAL_25 10000.0
#define BETA 4250.0 //beta

float r2t(float resistance) {
	return 1.0 / (1.0/298.15 + 1.0/BETA * log(resistance/NOMINAL_25));
}
