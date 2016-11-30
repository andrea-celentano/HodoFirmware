/*
 * File:   i2c_defs.h
 * Author: celentan
 *
 * Created on October 31, 2013, 11:58 AM
 */

#ifndef I2C_DEFS_H
#define	I2C_DEFS_H

#ifdef	__cplusplus
extern "C" {
#endif

    //put here all the i2c definitions.

//these are the addresses of the I2C devices
//ALREADY coded on 8 bits. The LSB bit here is 0 (WRITE=1). If you want to READ, OR with 0x01.
#define I2C_SEL 0x40 //and the second is 0x42
#define I2C_DAC 0x98 //there are 4 of these, 0x98 + (0,2,4,6)
#define I2C_TEMPERATURE 0x90

/*SELECTOR COMMANDS*/
//none. I.e., it is sufficient to write 1 data byte to the I2C_SEL address to have
//written to the output

/*Temperature*/
//These are the bits to write to the pointer register to select the following register
#define TEMPERATURE_REGISTER 0x00
#define CONFIGURATION_REGISTER 0x01
#define TLOW_REGISTER 0x10
#define THIGH_REGISTER 0x11

//The modes for the configuration register
#define R12 0x60
#define R11 0x40
#define R10 0x20
#define R9  0x00
#define ONE_SHOT 0x80
#define SHOUT_DOWN 0x01

/*DAC*/
//this are the values of the first word to be written
#define STORE_DAC_OUTPUT 0x00
#define UPDATE_DAC_OUTPUT 0x10 //has to be or-d with 0x0, 0x2,0x4,0x6 for ch 0,1,2,3
#define POWER_DAC_DOWN 0x11 //has to be or-d with 0x0,0x2,0x4,0x6 for ch 0,1,2,3
#define CH_PER_DAC 4
#define MAX_DAC_VAL 4095


#ifdef	__cplusplus
}
#endif

#endif	/* I2C_DEFS_H */

