#include "TCPIPConfig.h"
#include "TCPIP Stack/TCPIP.h"

#include "HodoCrate.h"
#include "i2c_support.h"
#include "i2c_defs.h"
#include <stdlib.h>
#include <string.h>

/**
 * This is the function used to init the HodoCrate structure
 * @return A pointer to the newly created HodoCrate structure
 */

HodoCrate* InitHodoCrate(){
    HodoCrate* m_crate;
    m_crate=malloc(sizeof(HodoCrate));
    //Allocate the arrays with Amplitude and Width
    m_crate->Amplitude=malloc(sizeof(unsigned short)*DFLT_NMBR_OF_BOARDS*DFLT_CH_PER_BOARD);

    if ((m_crate->Amplitude==NULL)){
        m_crate=NULL;
    }
    return m_crate;
}


/**
 * Initialize an HodoCrate with the default values
 * @param m_crate Pointer to the HodoCrate structure to init
 * @return 0 ok, 1 error
 */
int LoadDefaultHodoCrate(HodoCrate *m_crate){
    int ret=0;
    int ii=0;
    //system is OFF
    m_crate->status=FALSE;

    //what about amplitude and width default values?
    for (ii=0;ii<DFLT_NMBR_OF_CH;ii++){
        m_crate->Amplitude[ii]=DFLT_AMPL;
    }
    return ret;
}

/**
 * Set the register for channel ch with the value val. This does not change the status of the output, neither interacts with the I2C
 * @param ch
 * @param val
 * @param m_crate a Pointer to the HodoCrate structure
 * @return 0 ok, 1 error
 */
int SetOutput(int ch,int val,HodoCrate *m_crate){
    int ret;
    if ((ch<0)||(ch>=DFLT_NMBR_OF_CH)){
        ret = 1;
        return ret;
    }
    if ((val<0)||(val>=MAX_DAC_VAL)){
        ret=1;
        return ret;
    }
    HodoCrate->Amplitude[ch]=val;
    return 0;
}

int SetOutputAll(int val,HodoCrate *m_crate){
    int ret=0;
    int ii=0;
    for (ii=0;ii<DFLT_NMBR_OF_CH;ii++) ret+=SetOutput(ii,val,m_crate);
    return ret;
}
/**
 * Physically update the DAC output of a given DAC with the data in the corresponding register of HodoCrate
 * @param ch The channel to update the output DAC
 * @param m_crate A pointer to the HodoCrate structure
 * @return  1 error, 0 ok
 */
int UpdateOutput(int ch,HodoCrate *m_crate){
    int ret;
    int board;
    int ch_in_board;

    UINT8 pcf_addr,pcf_data;

    unsigned short dac_val;
    UINT8 dac_addr;
    UINT8 dac_data[3];


    if ((ch<0)||(ch>=DFLT_NMBR_OF_CH)){
        ret = 1;
        return ret;
    }
    dac_val=m_crate->Amplitude[ch];
    //this check should be done also when the amplitude is loaded. 
    if ((dac_val<0)||(dac_val>=MAX_DAC_VAL)){
        ret = 1;
        return ret;
    }

    board=GetBoard(ch);
    ch_in_board=GetIdInBoard(ch);

    //1: enable the communication with the board trough the PCF
    if (board<= BOARD_ENABLED_FIRST_PCF){ //first PCF
        pcf_addr=I2C_SEL;
        pcf_data=1<<(BOARD_ENABLED_FIRST_PCF-board);
    }
    else{ //second PCF
        pcf_addr=I2C_SEL|0x02;
        board=board-BOARD_ENABLED_FIRST_PCF-1;
        pcf_data=1<<(BOARD_ENABLED_FIRST_PCF-board);
    }
    I2CTransmitOneByteToAddress(pcf_data,pcf_addr);
    //2: enable the output
    dac_addr=I2C_DAC|(0x02*(ch_in_board/CH_PER_DAC));
    dac_data[0]=((ch_in_board%CH_PER_DAC)<<1)&0x06; //&0000 0110
    dac_data[0]=dac_val[0]|UPDATE_DAC_OUTPUT; //&0001 0000
    dac_data[1]=(dac_val>>7)&0xff; //bits 4---11 of dac_val goes in bits 0..7 of dac_data[1];
    dac_data[2]=(dac_val<<4)&0xf0; //bits 0--3 of dac_val goes in bits 4..7 of dac_data[2];
    I2CTransmitMoreBytesToAddress(3,dac_data,dac_addr);

    //Finally, disable any I2C communication.
     I2CTransmitOneByteToAddress(0x0,pcf_addr);
     
     ret = 0;
     return ret;
}

int UpdateOutputAll(HodoCrate *m_crate){
    int ii=0;
    int ret=0;
    for (ii=0;ii<DFLT_NMBR_OF_CH;ii++) ret+=UpdateOutput(ii,m_crate);
    return ret;
}


/**
 *
 * @param ch
 * @return The board hosting this channel, from 0 to DFLT_NMBR_OF_BOARDS
 */
 int GetBoard(int ch){
    int bd;
    if ((ch<0)||(ch>=DFLT_NMBR_OF_CH)){
        bd=-1;
    }
    bd=ch/DFLT_CH_PER_BOARD;
    return bd;
}
/**
 *
 * @param ch
 * @return The id of the channel within the board, from 0 to DFLT_CH_PER_BOARD
 */
int GetIdInBoard(int ch){
  int   Inbd=0;
    if ((ch<0)||(ch>=DFLT_NMBR_OF_CH)){
        Inbd=-1;
   }
    Inbd=ch%DFLT_CH_PER_BOARD;
    return Inbd;
}


//Temperature functions
int InitTemperature(int board,HodoCrate *m_crate){
    int ret=0;
    UINT8 pcf_addr,pcf_data,temperature_data[2];
    if ((board<0)||(board>=DFLT_NMBR_OF_BOARDS)){
        ret =1;
        return ret;
    }
    //1: enable the corresponding PCF
      if (board<= BOARD_ENABLED_FIRST_PCF){ //first PCF
        pcf_addr=I2C_SEL;
        pcf_data=1<<(BOARD_ENABLED_FIRST_PCF-board);
    }
    else{ //second PCF
        pcf_addr=I2C_SEL|0x02;
        board=board-BOARD_ENABLED_FIRST_PCF-1;
        pcf_data=1<<(BOARD_ENABLED_FIRST_PCF-board);
    }
    I2CTransmitOneByteToAddress(pcf_data,pcf_addr);

    //2:Configure the temperature sensor
    temperature_data[0]=CONFIGURATION_REGISTER;
    temperature_data[1]=R12;
    I2CTransmitMoreBytesToAddress(2,temperature_data,I2C_TEMPERATURE);
    temperature_data[0]=TEMPERATURE_REGISTER; //this will setup the device so that any further command to read temperature doens't have to communicate with the configuration register
    I2CTransmitOneByteToAddress(temperature_data[0],I2C_TEMPERATURE);
    //Finally, disable any I2C communication.
    I2CTransmitOneByteToAddress(0x0,pcf_addr);

     ret = 0;
     return ret;
}
int InitTemperatureAll(HodoCrate *m_crate){
    int ret=0;
    int ii=0;
    for (ii=0;ii<DFLT_NMBR_OF_BOARDS;ii++){
        ret+=InitTemperature(ii,m_crate);
    }
    return ret;
}
int ReadTemperature(int board,HodoCrate *m_crate){
    int ret=0;
    UINT8 pcf_addr,pcf_data;
    UINT8 temperature_data[2];
    if ((board<0)||(board>=DFLT_NMBR_OF_BOARDS)){
        ret =1;
        return ret;
    }
    //1: enable the corresponding PCF
      if (board<= BOARD_ENABLED_FIRST_PCF){ //first PCF
        pcf_addr=I2C_SEL;
        pcf_data=1<<(BOARD_ENABLED_FIRST_PCF-board);
    }
    else{ //second PCF
        pcf_addr=I2C_SEL|0x02;
        board=board-BOARD_ENABLED_FIRST_PCF-1;
        pcf_data=1<<(BOARD_ENABLED_FIRST_PCF-board);
    }
    I2CTransmitOneByteToAddress(pcf_data,pcf_addr);

    //Read the temperature from the sensor
    //Here we assume that the InitTemperature function has already been called
    //so that the sensor is ready to communicate the temperature
    I2CReceiveBytesFromAddress(0x00,2,temperature_data,I2C_TEMPERATURE);
    ret=((temperature_data[1]<<8)|(temperature_data[0] & 0xff))&0x0fff;

    //Finally, disable any I2C communication.
    I2CTransmitOneByteToAddress(0x0,pcf_addr);


    return ret;

}