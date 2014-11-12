/* 
 * File:   HodoMonitor.h
 * Author: andrea
 *
 * Created on September 16, 2014, 12:09 PM
 */

#ifndef HODOCRATE_H
#define	HODOCRATE_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include <GenericTypeDefs.h>

#define DFLT_NMBR_OF_BOARDS 15
#define DFLT_CH_PER_BOARD 16
#define DFLT_NMBR_OF_CH (DFLT_NMBR_OF_BOARDS*DFLT_CH_PER_BOARD)

#define BOARD_ENABLED_FIRST_PCF 7 //this is the last board (included) enabled by the first PCF

#define DFLT_AMPL 0

#define NPAUSE 10000
#define NPAUSE2 100000

#define TEMPERATURE_RES 0.0625

typedef struct HodoCrate{

        BOOL status; //Main System Status. TRUE is on, FALSE is off.
        unsigned short *Amplitude; //each of these is a 16 bit variable, with the Amplitude of a ch

}HodoCrate;

//here goes the functions that interact with this structure
HodoCrate* InitHodoCrate();
int LoadDefaultHodoCrate(HodoCrate *m_crate);
int GetBoard(int ch);
int GetIdInBoard(int ch);

int SetAmplitude(int ch,int val,HodoCrate *m_crate);
int SetAmplitudeAll(int val,HodoCrate *m_crate);
int GetAmplitude(int ch,HodoCrate *m_crate);
int UpdateOutput(int ch,HodoCrate *m_crate);
int UpdateOutputAll(HodoCrate *m_crate);

int InitTemperature(int board,HodoCrate *m_crate);
int InitTemperatureAll(HodoCrate *m_crate);
float ReadTemperature(int board,HodoCrate *m_crate);

int turn_system_on_off(BOOL turnOn,HodoCrate *m_crate);

#ifdef	__cplusplus
}
#endif

#endif	/* HODOCRATE_H */

