/*********************************************************************
 *
 *  Main Application Entry Point and TCP/IP Stack Demo
 *  Module for Microchip TCP/IP Stack
 *   -Demonstrates how to call and use the Microchip TCP/IP stack
 *	 -Reference: AN833
 *
 *********************************************************************
 * FileName:        MainDemo.c
 * Dependencies:    TCPIP.h
 * Processor:       PIC18, PIC24F, PIC24H, dsPIC30F, dsPIC33F, PIC32
 * Compiler:        Microchip C32 v1.05 or higher
 *					Microchip C30 v3.12 or higher
 *					Microchip C18 v3.30 or higher
 *					HI-TECH PICC-18 PRO 9.63PL2 or higher
 * Company:         Microchip Technology, Inc.
 *
 * Software License Agreement
 *
 * Copyright (C) 2002-2010 Microchip Technology Inc.  All rights
 * reserved.
 *
 * Microchip licenses to you the right to use, modify, copy, and
 * distribute:
 * (i)  the Software when embedded on a Microchip microcontroller or
 *      digital signal controller product ("Device") which is
 *      integrated into Licensee's product; or
 * (ii) ONLY the Software driver source files ENC28J60.c, ENC28J60.h,
 *		ENCX24J600.c and ENCX24J600.h ported to a non-Microchip device
 *		used in conjunction with a Microchip ethernet controller for
 *		the sole purpose of interfacing with the ethernet controller.
 *
 * You should refer to the license agreement accompanying this
 * Software for additional information regarding your rights and
 * obligations.
 *
 * THE SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT
 * WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT
 * LIMITATION, ANY WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL
 * MICROCHIP BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR
 * CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF
 * PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
 * BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE
 * THEREOF), ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER
 * SIMILAR COSTS, WHETHER ASSERTED ON THE BASIS OF CONTRACT, TORT
 * (INCLUDING NEGLIGENCE), BREACH OF WARRANTY, OR OTHERWISE.
 *
 *
 * Author              Date         Comment
 *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 * Nilesh Rajbharti		4/19/01		Original (Rev. 1.0)
 * Nilesh Rajbharti		2/09/02		Cleanup
 * Nilesh Rajbharti		5/22/02		Rev 2.0 (See version.log for detail)
 * Nilesh Rajbharti		7/9/02		Rev 2.1 (See version.log for detail)
 * Nilesh Rajbharti		4/7/03		Rev 2.11.01 (See version log for detail)
 * Howard Schlunder		10/1/04		Beta Rev 0.9 (See version log for detail)
 * Howard Schlunder		10/8/04		Beta Rev 0.9.1 Announce support added
 * Howard Schlunder		11/29/04	Beta Rev 0.9.2 (See version log for detail)
 * Howard Schlunder		2/10/05		Rev 2.5.0
 * Howard Schlunder		1/5/06		Rev 3.00
 * Howard Schlunder		1/18/06		Rev 3.01 ENC28J60 fixes to TCP, 
 *									UDP and ENC28J60 files
 * Howard Schlunder		3/01/06		Rev. 3.16 including 16-bit micro support
 * Howard Schlunder		4/12/06		Rev. 3.50 added LCD for Explorer 16
 * Howard Schlunder		6/19/06		Rev. 3.60 finished dsPIC30F support, added PICDEM.net 2 support
 * Howard Schlunder		8/02/06		Rev. 3.75 added beta DNS, NBNS, and HTTP client (GenericTCPClient.c) services
 * Howard Schlunder		12/28/06	Rev. 4.00RC added SMTP, Telnet, substantially modified TCP layer
 * Howard Schlunder		04/09/07	Rev. 4.02 added TCPPerformanceTest, UDPPerformanceTest, Reboot and fixed some bugs
 * Howard Schlunder		xx/xx/07	Rev. 4.03
 * HSchlunder & EWood	08/27/07	Rev. 4.11
 * HSchlunder & EWood	10/08/07	Rev. 4.13
 * HSchlunder & EWood	11/06/07	Rev. 4.16
 * HSchlunder & EWood	11/08/07	Rev. 4.17
 * HSchlunder & EWood	11/12/07	Rev. 4.18
 * HSchlunder & EWood	02/11/08	Rev. 4.19
 * HSchlunder & EWood   04/26/08    Rev. 4.50 Moved most code to other files for clarity
 * KHesky               07/07/08    Added ZG2100-specific support
 * HSchlunder & EWood   07/24/08    Rev. 4.51
 * Howard Schlunder		11/10/08    Rev. 4.55
 * Howard Schlunder		04/14/09    Rev. 5.00
 * Howard Schlunder		07/10/09    Rev. 5.10
 * Howard Schlunder		11/18/09    Rev. 5.20
 * Howard Schlunder		04/28/10    Rev. 5.25
 ********************************************************************/
/*
 * This macro uniquely defines this file as the main entry point.
 * There should only be one such definition in the entire project,
 * and this file must define the AppConfig variable as described below.
 */
#define THIS_IS_STACK_APPLICATION

#define FIRMWARE_REV "1.0"


// Configuration Bits
#pragma config WDTPS    = PS8192           // Watchdog Timer Postscale, set at 8 s
#pragma config FCKSM    = CSDCMD        // Clock Switching & Fail Safe Clock Monitor
#pragma config OSCIOFNC = OFF           // CLKO Enable
#pragma config IESO     = OFF           // Internal/External Switch-over
#pragma config FSOSCEN  = OFF           // Secondary Oscillator Enable
#pragma config BWP      = OFF           // Boot Flash Write Protect
#pragma config PWP      = OFF           // Program Flash Write Protect
#pragma config ICESEL   = ICS_PGx2      // ICE/ICD Comm Channel Select
#pragma config DEBUG    = OFF           // Debugger Disabled for Starter Kit

// Include all headers for any enabled TCPIP Stack functions
#include "TCPIP Stack/TCPIP.h"

#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
#include "TCPIP Stack/ZeroconfLinkLocal.h"
#endif
#if defined(STACK_USE_ZEROCONF_MDNS_SD)
#include "TCPIP Stack/ZeroconfMulticastDNS.h"
#endif

// Include functions specific to this stack application
#include "main.h"
#include "i2c_support.h"
#include "i2c_defs.h"
#include "HodoCrate.h"
#include "MyTFTP.h"
#include "Settings.h"
#include "TFTPc.h"
#include <string.h> //for memset

//Define here the structure that holds info about the HodoCrate
HodoCrate *MyHodoCrate;
//Define here the structure that contains the settings, read from the FLASH
Settings FirmSettings,CurSettings;

// Declare AppConfig structure and some other supporting stack variables
APP_CONFIG AppConfig;
BYTE AN0String[8];

// Use UART2 instead of UART1 for stdout (printf functions).  Explorer 16 
// serial port hardware is on PIC UART2 module.
#if defined(EXPLORER_16) || defined(PIC24FJ256DA210_DEV_BOARD)
	int __C30_UART = 2;
#endif


// Private helper functions.
// These may or may not be present in all applications.
static void InitAppConfig(void);
static void InitializeBoard(void);
static void Decode(int length,char* str,HodoCrate* MyHodoCrate);



  /*To load the data for the sequence*/
  static TFTP_Type doTFTP = DO_NONE;
  static CHAR Data[MAX_SEQ_DATA];
  int nData=0;
  extern CHAR smDOWNLOAD; //take it from the library!
  //reserve a flash page starting at 0x9D07F000, i.e. last flash page. 
  UINT8 user_data[BYTE_PAGE_SIZE] __attribute__((space(prog), address(MY_FLASH_PAGE), section(".user_nvm_data")));

  //
// PIC Interrupt Service Routines
// 
// NOTE: Several PICs, including the PIC18F4620 revision A3 have a RETFIE FAST/MOVFF bug
// The interruptlow keyword is used to work around the bug when using C18
// C30 and C32 Exception Handlers
// If your code gets here, you either tried to read or write
// a NULL pointer, or your application overflowed the stack
// by having too many local variables or parameters declared
#if defined(__C32__)
	void _general_exception_handler(unsigned cause, unsigned status)
	{
		Nop();
		Nop();
	}
#endif

//
// Main application entry point.
//
int main(void)
{


	static DWORD t = 0;
	

        int length,IPshowCounter;
        char str[MAIN_MAX_LENGTH]; 
        str[0]='\n';//it is critical to init this to a 0-lenght string!
        int out_lenght=0;
        int ii,jj=0;
        char checkFlash=0;
        BOOL flag_boot_ok;
        BOOL isDEBUG=FALSE;

    #if defined(PIC32_STARTER_KIT)
        DBINIT();
        DBPRINTF("STARTING DEBUGGER CONSOLE\n");
        isDEBUG=TRUE;
    #endif



         /*Are we here due to a past watch-dog event?*/
         /*Clear it and tell me so*/
         if (ReadEventWDT()){
             ClearEventWDT();
              LED1_IO=0;
                for (ii=0;ii<10;ii++){
                LED1_IO ^= 1;
                for (jj=0;jj<1000000;jj++) Nop();
                }
              LED1_IO=0;
         }
#if !defined(PIC32_STARTER_KIT)
        EnableWDT(); //Enable the watch-dog
#endif
 


         // Initialize application specific hardware
	InitializeBoard();

      
	// Initialize stack-related hardware components that may be 
	// required by the UART configuration routines
        TickInit();
	#if defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2)
	MPFSInit();
	#endif


      DBPRINTF("STACK CONFIG\n");
                // Initialize Stack and application related NV variables into AppConfig.
	InitAppConfig();
        // Initialize core stack layers (MAC, ARP, TCP, UDP) and
	// application modules (HTTP, SNMP, etc.)


        /*Load default settings from the FLASH*/
         if ((BUTTON0_IO != 0u)&&(isDEBUG==FALSE)){
            ReadSettingsFromFlash(&FirmSettings);
            checkFlash=FirmSettings.InitCheckWord;
            if (checkFlash!='a'){
                DBPRINTF("FIRST TIME LOAD DFLT \n");
                FirmSettings.useDHCP=1;
                FirmSettings.InitCheckWord='a';
                FirmSettings.ip.Val=0xC0A80001; //192.168.0.1
                FirmSettings.mask.Val=0x0;
                FirmSettings.data_srv.Val=0x00;
                FirmSettings.gateway.Val=0x00;
                FirmSettings.useDHCP=1;
                FirmSettings.DataFileName[0]='\n';
                FirmSettings.SequenceFileName[0]='\n';

                sprintf(FirmSettings.NetBIOSName,"FT HODO BOARD");

                LED1_IO=0;
                LED2_IO=0;
                for (ii=0;ii<10;ii++)
                {
                   LED1_IO ^= 1;
                   LED2_IO ^= 1;
                   for (jj=0;jj<1000000;jj++) Nop();
               }
                LED1_IO=0;
                LED2_IO=0;
                WriteSettingsToFlash(&FirmSettings);
                for (jj=0;jj<10000000;jj++) Nop();
                DBPRINTF("FIRST TIME LOAD DFLT done\n");
                Reset();        
            }
            else{
            /*Load them*/
                strcpy(AppConfig.NetBIOSName,FirmSettings.NetBIOSName);
                if ((FirmSettings.useDHCP==1)){
                    AppConfig.Flags.bIsDHCPEnabled = 1;
                    LED0_IO=0;
                    for (ii=0;ii<10;ii++)
                     {
                        LED0_IO ^= 1;
                        for (jj=0;jj<1000000;jj++) Nop();
                    }
                    LED0_IO=0;
                }
                else{
                    AppConfig.MyIPAddr=FirmSettings.ip;
                    AppConfig.DefaultIPAddr=FirmSettings.ip;
                    AppConfig.DefaultMask=FirmSettings.mask;
                    AppConfig.MyMask=FirmSettings.mask;
                    AppConfig.MyGateway=FirmSettings.gateway;
                    AppConfig.Flags.bIsDHCPEnabled = 0;
                    LED1_IO=0;
                        for (ii=0;ii<10;ii++)
                        {
                         LED1_IO ^= 1;
                         for (jj=0;jj<1000000;jj++) Nop();
                        }
                        LED1_IO=0;
                    }
                flag_boot_ok=TRUE;
                }
       }
         else{ //BUTTON pushed
             DBPRINTF("BUTTON PUSHED LOAD DFLT \n");
             FirmSettings.InitCheckWord='a';
             FirmSettings.ip.Val=0xC0A80001; //192.168.0.1
             FirmSettings.mask.Val=0x0;
             FirmSettings.data_srv.Val=0x00;
             FirmSettings.gateway.Val=0x00;
             FirmSettings.useDHCP=1;
             FirmSettings.DataFileName[0]='\n';
             FirmSettings.SequenceFileName[0]='\n';
             strcpy(FirmSettings.NetBIOSName,"DFLT");
             WriteSettingsToFlash(&FirmSettings);
             AppConfig.Flags.bIsDHCPEnabled = 1;
             flag_boot_ok=FALSE;
        }




        StackInit();

    
	// Initialize any application-specific modules or functions/

	#if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
        ZeroconfLLInitialize();
	#endif

	#if defined(STACK_USE_ZEROCONF_MDNS_SD)
	mDNSInitialize(MY_DEFAULT_HOST_NAME);
	mDNSServiceRegister(
		(const char *) "DemoWebServer",	// base name of the service
		"_http._tcp.local",			    // type of the service
		80,				                // TCP or UDP port, at which this service is available
		((const BYTE *)"path=/index.htm"),	// TXT info
		1,								    // auto rename the service when if needed
		NULL,							    // no callback function
		NULL							    // no application context
		);

    mDNSMulticastFilterRegister();
	#endif
      //Do something to show we are at the beginning. BLINK LEDs

        LED0_IO=0;
        LED1_IO=1;
        LED2_IO=0;

        for (ii=0;ii<10;ii++)
        {
            LED0_IO ^= 1;
            LED1_IO ^= 1;
            LED2_IO ^= 1;
            for (jj=0;jj<1000000;jj++) Nop();
        }

        LED0_IO=0;
        LED1_IO=0;
        LED2_IO=0;

        IPshowCounter=ANNOUNCE_PERIOD;

        DBPRINTF("STACK DONE\n");
      



        //Initiates board setup process if button is depressed
	//on startup
   
        //THIS IS THE INSTRUCTION TO INIT THE MAIN I2C BUS
         I2CMainInit();
          //1: disable the pcf
         I2CTransmitOneByteToAddress(0x00,I2C_SEL);
         //pause
         for (jj=0;jj<NPAUSE2;jj++) Nop();

         I2CTransmitOneByteToAddress(0x00,I2C_SEL|0x02);
         //1a: a pause
         for (jj=0;jj<NPAUSE2;jj++) Nop();

        //Init the HodoCrate
        int ret=1;
        MyHodoCrate=InitHodoCrate();
        if (MyHodoCrate==NULL){
            DBPRINTF("Error initialization structure MyLedMonitor\n");
            while(1); //stop here
        }
        //load default values
        ret=LoadDefaultHodoCrate(MyHodoCrate);
     
       

               

	// Now that all items are initialized, begin the co-operative
	// multitasking loop.  This infinite loop will continuously 
	// execute all stack-related tasks, as well as your own
	// application's functions.  Custom functions should be added
	// at the end of this loop.
    // Note that this is a "co-operative mult-tasking" mechanism
    // where every task performs its tasks (whether all in one shot
    // or part of it) and returns so that other tasks can do their
    // job.
    // If a task needs very long time to do its job, it must be broken
    // down into smaller pieces so that other tasks can have CPU time.
   
    while(1)
    {
concorrent_loop:

     

        ClearWDT(); //serve the WDT
        // Blink LED2 (right most one) every second.
        if(TickGet() - t >= 2*TICK_SECOND/2ul)
        {
           
            t = TickGet();
            LED2_IO ^= 1;

            //I put this here, because the board has NO led panel!
            IPshowCounter--;
            if (IPshowCounter==0){
             #if defined(STACK_USE_ANNOUNCE)
				AnnounceIP();
            #endif
                IPshowCounter=ANNOUNCE_PERIOD;
            }
            
           /*Update the current settings, for printing only*/
           CurSettings.ip=AppConfig.MyIPAddr;
           CurSettings.mask=AppConfig.MyMask;
           CurSettings.gateway=AppConfig.MyGateway;
           CurSettings.data_srv=FirmSettings.data_srv;
           CurSettings.useDHCP=AppConfig.Flags.bIsDHCPEnabled;
           strcpy(CurSettings.DataFileName,FirmSettings.DataFileName);
           strcpy(CurSettings.SequenceFileName,FirmSettings.SequenceFileName);
           strcpy(CurSettings.NetBIOSName,AppConfig.NetBIOSName);
        }

        // This task performs normal stack task including checking
        // for incoming packet, type of packet and calling
        // appropriate stack entity to process it.      
        StackTask();

        // This tasks invokes each of the core stack application tasks
        StackApplications();

        #if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
		ZeroconfLLProcess();
        #endif

        #if defined(STACK_USE_ZEROCONF_MDNS_SD)
        mDNSProcess();
		// Use this function to exercise service update function
		// HTTPUpdateRecord();
        #endif

		// Process application specific tasks here.
		// For this demo app, this will include the Generic TCP
		// client and servers, and the SNMP, Ping, and SNMP Trap
		// demos.  Following that, we will process any IO from
		// the inputs on the board itself.
		// Any custom modules or processing you need to do should
		// go here.
		#if defined(STACK_USE_GENERIC_TCP_CLIENT_EXAMPLE)
		GenericTCPClient();
		#endif
		
		#if defined(STACK_USE_GENERIC_TCP_SERVER_EXAMPLE)
		GenericTCPServer();
		#endif
		
		#if defined(STACK_USE_SMTP_CLIENT)
		SMTPDemo();
		#endif

                #if defined(STACK_USE_TELNET_SERVER)
                TelnetTask();
                #endif

		#if defined(STACK_USE_ICMP_CLIENT)
		PingDemo();
		#endif
		
		#if defined(STACK_USE_SNMP_SERVER) && !defined(SNMP_TRAP_DISABLED)
		//User should use one of the following SNMP demo
		// This routine demonstrates V1 or V2 trap formats with one variable binding.
		SNMPTrapDemo();
		#if defined(SNMP_STACK_USE_V2_TRAP)
		//This routine provides V2 format notifications with multiple (3) variable bindings
		//User should modify this routine to send v2 trap format notifications with the required varbinds.
		//SNMPV2TrapDemo();
		#endif 
		if(gSendTrapFlag)
			SNMPSendTrap();
		#endif


                if (doTFTP!=DO_NONE){
                    switch (doTFTP){
                        case DO_HODO_DATA:
                              MyTFTPClient(FirmSettings.DataFileName,FirmSettings.data_srv,Data,&nData);
                              break;
                        default:
                              break;
                    }
                    switch (smDOWNLOAD){
                        case TFTP_DOWNLOAD_SERVER_ERROR:
                        case TFTP_DOWNLOAD_CONNECT_TIMEOUT:
                        case TFTP_DOWNLOAD_HOST_RESOLVE_TIMEOUT:
                            sprintf(str,"Error TFTP: %i \n",smDOWNLOAD);
                            smDOWNLOAD=TFTP_DOWNLOAD_RESOLVE_IP;
                            doTFTP=DO_NONE;
                            break;
                        case TFTP_DOWNLOAD_COMPLETE:
                            if (doTFTP==DO_HODO_DATA){
                                 sprintf(str,"Decode hodo data\n");
                                // DecodeLedData(MyLedMonitor,Data,nData,str);
                            }
                            smDOWNLOAD=TFTP_DOWNLOAD_RESOLVE_IP;
                            doTFTP=DO_NONE;
                            break;
                        default:
                            //we should remain in this loop!
                            goto concorrent_loop;
                    }
                }
		#if defined(STACK_USE_BERKELEY_API)
                //we get the string coming from TCP connection.
                //Or we transmit something (if out_lenght!=0)
             
                out_lenght=strlen(str);
                //DBPRINTF("BEFORE TCP %i %s \n",out_lenght,str);
                length=BerkeleyTCPServerDemo(str,out_lenght);
                //in any case, after TCPServerDemo call, either we had something to transmit or not,
                //this should return to 0
                //also, the buffer string should be cleared.
                out_lenght=0;
                #endif
                //we got something!
                if (length>0){
                    Decode(length,str,MyHodoCrate); //this clears str if nothing to transmit, or put something in.
                }
                else strcpy(str,""); //THE NULL-TERMINATING STRING

		
                    

	} //end of while(1) loop, concurrent tasks!
}



/**
 * This is the function that converts the string with the command to a proper modification of the LedMonitor structure
 * @param length The lenght of the string with the command
 * @param str The string with the command
 * @param MyHodoCrate The pointer to the HodoCrate structure
 */
static void Decode(int length,char* str,HodoCrate* MyHodoCrate){


    static char delim=' ';
    char cmd[MAIN_MAX_LENGTH];
    char **token;
    int Nwords=0;
    int ii,ch,id,board,Itmp,Itmp2;
    float Ftmp;
    unsigned short uStmp,uStmp1,uStmp2;
    UINT32 uint32tmp;
    BOOL Btmp;

    strcpy(cmd,str);
    strcpy(str,""); //default is to clear str. Nothing to transmit!
#if defined(PIC32_STARTER_KIT)
    DBPRINTF("decode: %s  (%i -- %i) \n",str,length,strlen(str));
#endif

    //HERE we process the other "more-evoluted" commands
    Nwords=1; //at least 1 word exists!
    for (ii=0;ii<strlen(cmd);ii++){
        if (cmd[ii] == delim){
            Nwords++;
        }
    }

    token=malloc(sizeof(char*)*(Nwords+1));
#if defined(PIC32_STARTER_KIT)
    DBPRINTF("THERE ARE %i WORDS \n",Nwords);
#endif

        token[0] = strtok(cmd," ");
        for (ii=1;ii<Nwords;ii++){
            token[ii] = strtok(NULL," ");
        }

        //RESET The BOARD
        if ((strcmp(token[0],"RESET")==0)||(strcmp(token[0],"REBOOT")==0)) Reset();
        else if (strcmp(token[0],"LOAD_DATA")==0) {
            if (FirmSettings.data_srv.Val==(unsigned long)0x00) strcpy(str,"SET DATA SERVER IP\n");
            else if (FirmSettings.DataFileName[0]=='\n') strcpy(str,"SET DATA FILE NAME\n");
            else  {
                sprintf(str,"Load %s from %i.%i.%i.%i \n",FirmSettings.DataFileName,FirmSettings.data_srv.v[0],FirmSettings.data_srv.v[1],FirmSettings.data_srv.v[2],FirmSettings.data_srv.v[3]);
                memset((void*)Data,0,nData); //clear the data before!
                nData=0;
                doTFTP=DO_HODO_DATA;
                }
            }
         /*else if (strcmp(token[0],"PRINT_FIRMWARE_SETTINGS")==0) {
             PrintSettings(&FirmSettings,str);
         }
         */
         else if ((strcmp(token[0],"PRINT_CURRENT_SETTINGS")==0)||(strcmp(token[0],"PRINT_SETTINGS")==0)){
             PrintSettings(&CurSettings,str);
         }
         else if (strcmp(token[0],"SAVE_CURRENT_SETTINGS")==0){
             memcpy((void*)&FirmSettings,(void*)&CurSettings,sizeof(CurSettings));
             WriteSettingsToFlash(&FirmSettings);
         }
        else if (strcmp(token[0],"TURN")==0){     //Turn ON-OFF the WHOLE system
        if (strcmp(token[1],"ON")==0){
            if (MyHodoCrate->status==FALSE){
                MyHodoCrate->status=TRUE;
                turn_system_on_off(TRUE,MyHodoCrate);
                }
        }
        else if  (strcmp(token[1],"OFF")==0){
        if (MyHodoCrate->status==TRUE){
             MyHodoCrate->status=FALSE;  
             turn_system_on_off(FALSE,MyHodoCrate); /*Turn off*/
        }
       }
    } //end "TURN"
    else if (strcmp(token[0],"SET")==0){
        if (strcmp(token[1],"IP")==0){
          if (StringToIPAddress(token[2],&(FirmSettings.ip))){
             //sprintf(str,"IP saved. %u %u %u %u \n",FirmSettings.ip.v[0],FirmSettings.ip.v[1],FirmSettings.ip.v[2],FirmSettings.ip.v[3]);
             FirmSettings.useDHCP=FALSE;
             if (FirmSettings.ip.Val==0x00){
                 //strcat(str,"USE DHCP\n");
                 FirmSettings.useDHCP=TRUE;
             }
                WriteSettingsToFlash(&FirmSettings);
             }
            else{
                 FirmSettings.ip.Val=(unsigned long)0x00;
                 sprintf(str, "Bad IP %s\n",token[2]);
            }
        }
        else if (strcmp(token[1],"NETMASK")==0){
          if (StringToIPAddress(token[2],&(FirmSettings.mask))){
            // sprintf(str,"IP saved. %u %u %u %u \n",FirmSettings.mask.v[0],FirmSettings.mask.v[1],FirmSettings.mask.v[2],FirmSettings.mask.v[3]);
             WriteSettingsToFlash(&FirmSettings);
             }
            else{
                 FirmSettings.mask.Val=(unsigned long)0x00;
                 sprintf(str, "Bad NetMask %s\n",token[2]);
            }
        }
        else if (strcmp(token[1],"GATEWAY")==0){
              if (StringToIPAddress(token[2],&(FirmSettings.gateway))){
             // sprintf(str,"IP saved. %u %u %u %u \n",FirmSettings.gateway.v[0],FirmSettings.gateway.v[1],FirmSettings.gateway.v[2],FirmSettings.gateway.v[3]);
              WriteSettingsToFlash(&FirmSettings);
             }
            else{
                 FirmSettings.gateway.Val=(unsigned long)0x00;
                 sprintf(str, "Bad Gateway %s\n",token[2]);
            }
        }
        else if (strcmp(token[1],"NETBIOS_NAME")==0){
            strcpy(FirmSettings.NetBIOSName,token[2]);
        }
        else if (strcmp(token[1],"DATA_SERVER_NAME")==0){
        //Andrea: maybe in the future
            strcpy(str,"Not yet implemented\n");
        }
        else if (strcmp(token[1],"DATA_SERVER_IP")==0){
             if (StringToIPAddress(token[2],&(FirmSettings.data_srv))){
             //sprintf(str,"IP saved. %u %u %u %u \n",FirmSettings.data_srv.v[0],FirmSettings.data_srv.v[1],FirmSettings.data_srv.v[2],FirmSettings.data_srv.v[3]);
             WriteSettingsToFlash(&FirmSettings);
             }
            else{
                 FirmSettings.data_srv.Val=(unsigned long)0x00;
                 sprintf(str, "Bad DATA SERVER IP %s\n",token[2]);
            }
        }
         else if (strcmp(token[1],"DATA_FILE_NAME")==0){
            strcpy(FirmSettings.DataFileName,token[2]);
            WriteSettingsToFlash(&FirmSettings);
        }
        
         else if ((strcmp(token[1],"AMPL")==0)|| (strcmp(token[1],"AMPLITUDE")==0)){
             if (MyHodoCrate->status==FALSE){
                sprintf(str,"First TURN ON THE SYTEM");
                }
             else if (Nwords==4){
                    ch=atoi(token[2]);
                    uStmp=atoi(token[3]);
                    SetAmplitude(ch,uStmp,MyHodoCrate); 
                    Itmp=UpdateOutput(ch,MyHodoCrate,0);
                    if (Itmp==1){
                        sprintf(str,"ERROR SET AMPL: set != read \n");
                    }
                }
                else{
                    sprintf(str,"ERROR SET AMPL\n");
                    //TODO: ERROR HERE
                }
            }//end AMPLITUDE
        else if ((strcmp(token[1],"AMPL_ALL")==0)|| (strcmp(token[1],"AMPLITUDE_ALL")==0)){
            if (MyHodoCrate->status==FALSE){
                sprintf(str,"First TURN ON THE SYTEM");
            }
            else if (Nwords==3){
                    uStmp=atoi(token[2]);
                    SetAmplitudeAll(uStmp,MyHodoCrate);
                    UpdateOutputAll(MyHodoCrate,0);
                }
                else{
                    //TODO: ERROR HERE
                }    
            }//end AMPLITUDE_ALL 
            else if (strcmp(token[1],"DATA")==0){ //SET DATA n ID1 AMPL1 IDN AMPLN
                if (MyHodoCrate->status==FALSE){
                 sprintf(str,"First TURN ON THE SYTEM");
                }
                else if ((Nwords>3) && ((Nwords-3)%3==0)){
                    uStmp=atoi(token[2]); //how many channels
                    if ((Nwords-3)==(2*uStmp)){
                        for (ii=0;ii<uStmp;ii++){
                            ch=atoi(token[3+ii*2]);
                            uStmp1=atoi(token[3+ii*2+1]);
                            SetAmplitude(ch,uStmp1,MyHodoCrate);
                            UpdateOutput(ch,MyHodoCrate,0);
                        }
                    }
                }
            } //end SET DATA
            else if ((strcmp(token[1],"MULTIPLEXER")==0)||(strcmp(token[1],"MUX")==0)){
                if (Nwords==4){
                    ch=atoi(token[2]);
                    uStmp1=atoi(token[3]);
                    WriteMultiplexer(ch,uStmp1);
                }
            }//END SET MUX
        }//end "SET" commands

   
           //here starts the "GET" commands.
            //These modifies the str buffer!
       else if (strcmp(token[0],"GET")==0) {
           if (strcmp(token[1],"STATUS")==0){
            if  (MyHodoCrate->status==TRUE) strcpy(str,"ON\n");
            else strcpy(str,"OFF\n");
           }
           else if (strcmp(token[1],"IP")==0){
                 sprintf(str,"%i.%i.%i.%i \n",CurSettings.ip.v[0],CurSettings.ip.v[1],CurSettings.ip.v[2],CurSettings.ip.v[3]);
            }
           else if (strcmp(token[1],"NETMASK")==0){
                 sprintf(str,"%i.%i.%i.%i \n",CurSettings.mask.v[0],CurSettings.mask.v[1],CurSettings.mask.v[2],CurSettings.mask.v[3]);
           }
           else if (strcmp(token[1],"GATEWAY")==0){
                 sprintf(str,"%i.%i.%i.%i \n",CurSettings.gateway.v[0],CurSettings.gateway.v[1],CurSettings.gateway.v[2],CurSettings.gateway.v[3]);
           }
           else if (strcmp(token[1],"DATA_SERVER_IP")==0){
                 sprintf(str,"%i.%i.%i.%i \n",CurSettings.data_srv.v[0],CurSettings.data_srv.v[1],CurSettings.data_srv.v[2],CurSettings.data_srv.v[3]);
           }
           else if (strcmp(token[1],"NETBIOS_NAME")==0){
                 sprintf(str,"%s \n",CurSettings.NetBIOSName);
           }
           else if (strcmp(token[1],"DATA_FILE_NAME")==0){
                 sprintf(str,"%s \n",CurSettings.DataFileName);
           }
           else if (strcmp(token[1],"SEQUENCE_FILE_NAME")==0){
                 sprintf(str,"%s \n",CurSettings.SequenceFileName);
           }
          else if(strcmp(token[1],"AMPL")==0){
               if (Nwords==3){
                ch=atoi(token[2]);
                uStmp=GetAmplitude(ch,MyHodoCrate);
                sprintf(str,"%i\n",uStmp);
               }
               else {
                   //TODO: error
               }
          }//end "GET AMPL"
          else if (strcmp(token[1],"AMPL_REAL")==0){
                if (Nwords==3){
                    ch=atoi(token[2]);
                    uStmp=GetAmplitudeDAC(ch);
                    sprintf(str,"%i\n",uStmp);
               }
               else {
                   //TODO: error
               }
          }
          else if (strcmp(token[1],"AMPL_ALL")==0){
            sprintf(&str[strlen(str)],"%i ",DFLT_NMBR_OF_CH);
            for (ii=0;ii<DFLT_NMBR_OF_CH;ii++){
              uStmp=GetAmplitude(ii,MyHodoCrate);
              sprintf(&str[strlen(str)],"%i ",uStmp);
          }
          sprintf(&str[strlen(str)],"\n");
        } //end GET WIDTH_ALL
       else if (strcmp(token[1],"FIRMWARE")==0){
               sprintf(str,"%s \n",FIRMWARE_REV);
        }
       else if (strcmp(token[1],"TEMPERATURE")==0){
           if (MyHodoCrate->status==FALSE){
               sprintf(str,"First TURN ON the system\n");
           }
           else if (Nwords==3){
                    ch=atoi(token[2]); //this is the board actually!
                    Ftmp=ReadTemperature(ch,MyHodoCrate);
                    sprintf(str,"%2.4f \n",Ftmp);
                 }
           else  {
                sprintf(str,"BAD COMMAND \n");
           }
       }
        else if (strcmp(token[1],"TEMPERATURE_ALL")==0){
            sprintf(&str[strlen(str)],"%i ",DFLT_NMBR_OF_BOARDS);
            for (ii=0;ii<DFLT_NMBR_OF_BOARDS;ii++){
              Ftmp=ReadTemperature(ii,MyHodoCrate);
              sprintf(&str[strlen(str)],"%2.4f ",Ftmp);
          }
          sprintf(&str[strlen(str)],"\n");
        }
        else if ((strcmp(token[1],"MULTIPLEXER")==0)||(strcmp(token[1],"MUX")==0)){
                if (Nwords==3){
                    ch=atoi(token[2]);
                    Itmp=ReadMultiplexer(ch);
                    sprintf(str,"%i \n",Itmp);
                }
            }
      }//end "GET" commands
    else if (Nwords) {
        sprintf(str, "BAD COMMAND\n");
    }//end last case
    if (Nwords) free(token);
    return;
}

/****************************************************************************
  Function:
    static void InitializeBoard(void)

  Description:
    This routine initializes the hardware.  It is a generic initialization
    routine for many of the Microchip development boards, using definitions
    in HardwareProfile.h to determine specific initialization.

  Precondition:
    None

  Parameters:
    None - None

  Returns:
    None

  Remarks:
    None
 ***************************************************************************/
static void InitializeBoard(void) {
    // LEDs
    LED0_TRIS = 0;
    LED1_TRIS = 0;
    LED2_TRIS = 0;
    LED3_TRIS = 0;
    LED4_TRIS = 0;
    LED5_TRIS = 0;
    LED6_TRIS = 0;
#if !defined(EXPLORER_16)	// Pin multiplexed with a button on EXPLORER_16 
    LED7_TRIS = 0;
#endif
    LED_PUT(0x00);

#if defined(__18CXX)
    // Enable 4x/5x/96MHz PLL on PIC18F87J10, PIC18F97J60, PIC18F87J50, etc.
    OSCTUNE = 0x40;

    // Set up analog features of PORTA

    // PICDEM.net 2 board has POT on AN2, Temp Sensor on AN3
#if defined(PICDEMNET2)
    ADCON0 = 0x09; // ADON, Channel 2
    ADCON1 = 0x0B; // Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are analog
#elif defined(PICDEMZ)
    ADCON0 = 0x81; // ADON, Channel 0, Fosc/32
    ADCON1 = 0x0F; // Vdd/Vss is +/-REF, AN0, AN1, AN2, AN3 are all digital
#elif defined(__18F87J11) || defined(_18F87J11) || defined(__18F87J50) || defined(_18F87J50)
    ADCON0 = 0x01; // ADON, Channel 0, Vdd/Vss is +/-REF
    WDTCONbits.ADSHR = 1;
    ANCON0 = 0xFC; // AN0 (POT) and AN1 (temp sensor) are anlog
    ANCON1 = 0xFF;
    WDTCONbits.ADSHR = 0;
#else
    ADCON0 = 0x01; // ADON, Channel 0
    ADCON1 = 0x0E; // Vdd/Vss is +/-REF, AN0 is analog
#endif
    ADCON2 = 0xBE; // Right justify, 20TAD ACQ time, Fosc/64 (~21.0kHz)


    // Enable internal PORTB pull-ups
    INTCON2bits.RBPU = 0;

    // Configure USART
    TXSTA = 0x20;
    RCSTA = 0x90;

    // See if we can use the high baud rate setting
#if ((GetPeripheralClock()+2*BAUD_RATE)/BAUD_RATE/4 - 1) <= 255
    SPBRG = (GetPeripheralClock() + 2 * BAUD_RATE) / BAUD_RATE / 4 - 1;
    TXSTAbits.BRGH = 1;
#else	// Use the low baud rate setting
    SPBRG = (GetPeripheralClock() + 8 * BAUD_RATE) / BAUD_RATE / 16 - 1;
#endif


    // Enable Interrupts
    RCONbits.IPEN = 1; // Enable interrupt priorities
    INTCONbits.GIEH = 1;
    INTCONbits.GIEL = 1;

    // Do a calibration A/D conversion
#if defined(__18F87J10) || defined(__18F86J15) || defined(__18F86J10) || defined(__18F85J15) || defined(__18F85J10) || defined(__18F67J10) || defined(__18F66J15) || defined(__18F66J10) || defined(__18F65J15) || defined(__18F65J10) || defined(__18F97J60) || defined(__18F96J65) || defined(__18F96J60) || defined(__18F87J60) || defined(__18F86J65) || defined(__18F86J60) || defined(__18F67J60) || defined(__18F66J65) || defined(__18F66J60) || \
	     defined(_18F87J10) ||  defined(_18F86J15) || defined(_18F86J10)  ||  defined(_18F85J15) ||  defined(_18F85J10) ||  defined(_18F67J10) ||  defined(_18F66J15) ||  defined(_18F66J10) ||  defined(_18F65J15) ||  defined(_18F65J10) ||  defined(_18F97J60) ||  defined(_18F96J65) ||  defined(_18F96J60) ||  defined(_18F87J60) ||  defined(_18F86J65) ||  defined(_18F86J60) ||  defined(_18F67J60) ||  defined(_18F66J65) ||  defined(_18F66J60)
    ADCON0bits.ADCAL = 1;
    ADCON0bits.GO = 1;
    while (ADCON0bits.GO);
    ADCON0bits.ADCAL = 0;
#elif defined(__18F87J11) || defined(__18F86J16) || defined(__18F86J11) || defined(__18F67J11) || defined(__18F66J16) || defined(__18F66J11) || \
		   defined(_18F87J11) ||  defined(_18F86J16) ||  defined(_18F86J11) ||  defined(_18F67J11) ||  defined(_18F66J16) ||  defined(_18F66J11) || \
		  defined(__18F87J50) || defined(__18F86J55) || defined(__18F86J50) || defined(__18F67J50) || defined(__18F66J55) || defined(__18F66J50) || \
		   defined(_18F87J50) ||  defined(_18F86J55) ||  defined(_18F86J50) ||  defined(_18F67J50) ||  defined(_18F66J55) ||  defined(_18F66J50)
    ADCON1bits.ADCAL = 1;
    ADCON0bits.GO = 1;
    while (ADCON0bits.GO);
    ADCON1bits.ADCAL = 0;
#endif

#else	// 16-bit C30 and and 32-bit C32
#if defined(__PIC32MX__)
    {
        // Enable multi-vectored interrupts
        INTEnableSystemMultiVectoredInt();

        // Enable optimal performance
        SYSTEMConfigPerformance(GetSystemClock());
        mOSCSetPBDIV(OSC_PB_DIV_1); // Use 1:1 CPU Core:Peripheral clocks

        // Disable JTAG port so we get our I/O pins back, but first
        // wait 50ms so if you want to reprogram the part with
        // JTAG, you'll still have a tiny window before JTAG goes away.
        // The PIC32 Starter Kit debuggers use JTAG and therefore must not
        // disable JTAG.
        DelayMs(50);
#if !defined(__MPLAB_DEBUGGER_PIC32MXSK) && !defined(__MPLAB_DEBUGGER_FS2)
        DDPCONbits.JTAGEN = 0;
#endif
        LED_PUT(0x00); // Turn the LEDs off

        CNPUESET = 0x00098000; // Turn on weak pull ups on CN15, CN16, CN19 (RD5, RD7, RD13), which is connected to buttons on PIC32 Starter Kit boards
    }
#endif

#if defined(__dsPIC33F__) || defined(__PIC24H__)
    // Crank up the core frequency
    PLLFBD = 38; // Multiply by 40 for 160MHz VCO output (8MHz XT oscillator)
    CLKDIV = 0x0000; // FRC: divide by 2, PLLPOST: divide by 2, PLLPRE: divide by 2

    // Port I/O
    AD1PCFGHbits.PCFG23 = 1; // Make RA7 (BUTTON1) a digital input
    AD1PCFGHbits.PCFG20 = 1; // Make RA12 (INT1) a digital input for MRF24WB0M PICtail Plus interrupt

    // ADC
    AD1CHS0 = 0; // Input to AN0 (potentiometer)
    AD1PCFGLbits.PCFG5 = 0; // Disable digital input on AN5 (potentiometer)
    AD1PCFGLbits.PCFG4 = 0; // Disable digital input on AN4 (TC1047A temp sensor)
#else	//defined(__PIC24F__) || defined(__PIC32MX__)
#if defined(__PIC24F__)
    CLKDIVbits.RCDIV = 0; // Set 1:1 8MHz FRC postscalar
#endif

    // ADC
#if defined(__PIC24FJ256DA210__) || defined(__PIC24FJ256GB210__)
    // Disable analog on all pins
    ANSA = 0x0000;
    ANSB = 0x0000;
    ANSC = 0x0000;
    ANSD = 0x0000;
    ANSE = 0x0000;
    ANSF = 0x0000;
    ANSG = 0x0000;
#else
    AD1CHS = 0; // Input to AN0 (potentiometer)
    AD1PCFGbits.PCFG4 = 0; // Disable digital input on AN4 (TC1047A temp sensor)
#if defined(__32MX460F512L__) || defined(__32MX795F512L__)	// PIC32MX460F512L and PIC32MX795F512L PIMs has different pinout to accomodate USB module
    AD1PCFGbits.PCFG2 = 0; // Disable digital input on AN2 (potentiometer)
#else
    AD1PCFGbits.PCFG5 = 0; // Disable digital input on AN5 (potentiometer)
#endif
#endif
#endif

    // ADC
    AD1CON1 = 0x84E4; // Turn on, auto sample start, auto-convert, 12 bit mode (on parts with a 12bit A/D)
    AD1CON2 = 0x0404; // AVdd, AVss, int every 2 conversions, MUXA only, scan
    AD1CON3 = 0x1003; // 16 Tad auto-sample, Tad = 3*Tcy
#if defined(__32MX460F512L__) || defined(__32MX795F512L__)	// PIC32MX460F512L and PIC32MX795F512L PIMs has different pinout to accomodate USB module
    AD1CSSL = 1 << 2; // Scan pot
#else
    AD1CSSL = 1 << 5; // Scan pot
#endif

    // UART
#if defined(STACK_USE_UART)
    UARTTX_TRIS = 0;
    UARTRX_TRIS = 1;
    UMODE = 0x8000; // Set UARTEN.  Note: this must be done before setting UTXEN

#if defined(__C30__)
    USTA = 0x0400; // UTXEN set
#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))
#else	//defined(__C32__)
    USTA = 0x00001400; // RXEN set, TXEN set
#define CLOSEST_UBRG_VALUE ((GetPeripheralClock()+8ul*BAUD_RATE)/16/BAUD_RATE-1)
#define BAUD_ACTUAL (GetPeripheralClock()/16/(CLOSEST_UBRG_VALUE+1))
#endif

#define BAUD_ERROR ((BAUD_ACTUAL > BAUD_RATE) ? BAUD_ACTUAL-BAUD_RATE : BAUD_RATE-BAUD_ACTUAL)
#define BAUD_ERROR_PRECENT	((BAUD_ERROR*100+BAUD_RATE/2)/BAUD_RATE)
#if (BAUD_ERROR_PRECENT > 3)
#warning UART frequency error is worse than 3%
#elif (BAUD_ERROR_PRECENT > 2)
#warning UART frequency error is worse than 2%
#endif

    UBRG = CLOSEST_UBRG_VALUE;
#endif

#endif

    // Deassert all chip select lines so there isn't any problem with
    // initialization order.  Ex: When ENC28J60 is on SPI2 with Explorer 16,
    // MAX3232 ROUT2 pin will drive RF12/U2CTS ENC28J60 CS line asserted,
    // preventing proper 25LC256 EEPROM operation.
#if defined(ENC_CS_TRIS)
    ENC_CS_IO = 1;
    ENC_CS_TRIS = 0;
#endif
#if defined(ENC100_CS_TRIS)
    ENC100_CS_IO = (ENC100_INTERFACE_MODE == 0);
    ENC100_CS_TRIS = 0;
#endif
#if defined(EEPROM_CS_TRIS)
    EEPROM_CS_IO = 1;
    EEPROM_CS_TRIS = 0;
#endif
#if defined(SPIRAM_CS_TRIS)
    SPIRAM_CS_IO = 1;
    SPIRAM_CS_TRIS = 0;
#endif
#if defined(SPIFLASH_CS_TRIS)
    SPIFLASH_CS_IO = 1;
    SPIFLASH_CS_TRIS = 0;
#endif
#if defined(WF_CS_TRIS)
    WF_CS_IO = 1;
    WF_CS_TRIS = 0;
#endif

#if defined(PIC24FJ64GA004_PIM)
    __builtin_write_OSCCONL(OSCCON & 0xBF); // Unlock PPS

    // Remove some LED outputs to regain other functions
    LED1_TRIS = 1; // Multiplexed with BUTTON0
    LED5_TRIS = 1; // Multiplexed with EEPROM CS
    LED7_TRIS = 1; // Multiplexed with BUTTON1

    // Inputs
    RPINR19bits.U2RXR = 19; //U2RX = RP19
    RPINR22bits.SDI2R = 20; //SDI2 = RP20
    RPINR20bits.SDI1R = 17; //SDI1 = RP17

    // Outputs
    RPOR12bits.RP25R = U2TX_IO; //RP25 = U2TX
    RPOR12bits.RP24R = SCK2OUT_IO; //RP24 = SCK2
    RPOR10bits.RP21R = SDO2_IO; //RP21 = SDO2
    RPOR7bits.RP15R = SCK1OUT_IO; //RP15 = SCK1
    RPOR8bits.RP16R = SDO1_IO; //RP16 = SDO1

    AD1PCFG = 0xFFFF; //All digital inputs - POT and Temp are on same pin as SDO1/SDI1, which is needed for ENC28J60 commnications

    __builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256DA210__)
    __builtin_write_OSCCONL(OSCCON & 0xBF); // Unlock PPS

    // Inputs
    RPINR19bits.U2RXR = 11; // U2RX = RP11
    RPINR20bits.SDI1R = 0; // SDI1 = RP0
    RPINR0bits.INT1R = 34; // Assign RE9/RPI34 to INT1 (input) for MRF24WB0M Wi-Fi PICtail Plus interrupt

    // Outputs
    RPOR8bits.RP16R = 5; // RP16 = U2TX
    RPOR1bits.RP2R = 8; // RP2 = SCK1
    RPOR0bits.RP1R = 7; // RP1 = SDO1

    __builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256GB110__) || defined(__PIC24FJ256GB210__)
    __builtin_write_OSCCONL(OSCCON & 0xBF); // Unlock PPS

    // Configure SPI1 PPS pins (ENC28J60/ENCX24J600/MRF24WB0M or other PICtail Plus cards)
    RPOR0bits.RP0R = 8; // Assign RP0 to SCK1 (output)
    RPOR7bits.RP15R = 7; // Assign RP15 to SDO1 (output)
    RPINR20bits.SDI1R = 23; // Assign RP23 to SDI1 (input)

    // Configure SPI2 PPS pins (25LC256 EEPROM on Explorer 16)
    RPOR10bits.RP21R = 11; // Assign RG6/RP21 to SCK2 (output)
    RPOR9bits.RP19R = 10; // Assign RG8/RP19 to SDO2 (output)
    RPINR22bits.SDI2R = 26; // Assign RG7/RP26 to SDI2 (input)

    // Configure UART2 PPS pins (MAX3232 on Explorer 16)
#if !defined(ENC100_INTERFACE_MODE) || (ENC100_INTERFACE_MODE == 0) || defined(ENC100_PSP_USE_INDIRECT_RAM_ADDRESSING)
    RPINR19bits.U2RXR = 10; // Assign RF4/RP10 to U2RX (input)
    RPOR8bits.RP17R = 5; // Assign RF5/RP17 to U2TX (output)
#endif

    // Configure INT1 PPS pin (MRF24WB0M Wi-Fi PICtail Plus interrupt signal when in SPI slot 1)
    RPINR0bits.INT1R = 33; // Assign RE8/RPI33 to INT1 (input)

    // Configure INT3 PPS pin (MRF24WB0M Wi-Fi PICtail Plus interrupt signal when in SPI slot 2)
    RPINR1bits.INT3R = 40; // Assign RC3/RPI40 to INT3 (input)

    __builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif

#if defined(__PIC24FJ256GA110__)
    __builtin_write_OSCCONL(OSCCON & 0xBF); // Unlock PPS

    // Configure SPI2 PPS pins (25LC256 EEPROM on Explorer 16 and ENC28J60/ENCX24J600/MRF24WB0M or other PICtail Plus cards)
    // Note that the ENC28J60/ENCX24J600/MRF24WB0M PICtails SPI PICtails must be inserted into the middle SPI2 socket, not the topmost SPI1 slot as normal.  This is because PIC24FJ256GA110 A3 silicon has an input-only RPI PPS pin in the ordinary SCK1 location.  Silicon rev A5 has this fixed, but for simplicity all demos will assume we are using SPI2.
    RPOR10bits.RP21R = 11; // Assign RG6/RP21 to SCK2 (output)
    RPOR9bits.RP19R = 10; // Assign RG8/RP19 to SDO2 (output)
    RPINR22bits.SDI2R = 26; // Assign RG7/RP26 to SDI2 (input)

    // Configure UART2 PPS pins (MAX3232 on Explorer 16)
    RPINR19bits.U2RXR = 10; // Assign RF4/RP10 to U2RX (input)
    RPOR8bits.RP17R = 5; // Assign RF5/RP17 to U2TX (output)

    // Configure INT3 PPS pin (MRF24WB0M PICtail Plus interrupt signal)
    RPINR1bits.INT3R = 36; // Assign RA14/RPI36 to INT3 (input)

    __builtin_write_OSCCONL(OSCCON | 0x40); // Lock PPS
#endif


#if defined(DSPICDEM11)
    // Deselect the LCD controller (PIC18F252 onboard) to ensure there is no SPI2 contention
    LCDCTRL_CS_TRIS = 0;
    LCDCTRL_CS_IO = 1;

    // Hold the codec in reset to ensure there is no SPI2 contention
    CODEC_RST_TRIS = 0;
    CODEC_RST_IO = 0;
#endif

#if defined(SPIRAM_CS_TRIS)
    SPIRAMInit();
#endif
#if defined(EEPROM_CS_TRIS)
    XEEInit();
#endif
#if defined(SPIFLASH_CS_TRIS)
    SPIFlashInit();
#endif
}

/*********************************************************************
 * Function:        void InitAppConfig(void)
 *
 * PreCondition:    MPFSInit() is already called.
 *
 * Input:           None
 *
 * Output:          Write/Read non-volatile config variables.
 *
 * Side Effects:    None
 *
 * Overview:        None
 *
 * Note:            None
 ********************************************************************/
// MAC Address Serialization using a MPLAB PM3 Programmer and 
// Serialized Quick Turn Programming (SQTP). 
// The advantage of using SQTP for programming the MAC Address is it
// allows you to auto-increment the MAC address without recompiling 
// the code for each unit.  To use SQTP, the MAC address must be fixed
// at a specific location in program memory.  Uncomment these two pragmas
// that locate the MAC address at 0x1FFF0.  Syntax below is for MPLAB C 
// Compiler for PIC18 MCUs. Syntax will vary for other compilers.
//#pragma romdata MACROM=0x1FFF0
static ROM BYTE SerializedMACAddress[6] = {MY_DEFAULT_MAC_BYTE1, MY_DEFAULT_MAC_BYTE2, MY_DEFAULT_MAC_BYTE3, MY_DEFAULT_MAC_BYTE4, MY_DEFAULT_MAC_BYTE5, MY_DEFAULT_MAC_BYTE6};
//#pragma romdata

static void InitAppConfig(void) {
    AppConfig.Flags.bIsDHCPEnabled = TRUE;
    AppConfig.Flags.bInConfigMode = TRUE;
    memcpypgm2ram((void*) &AppConfig.MyMACAddr, (ROM void*) SerializedMACAddress, sizeof (AppConfig.MyMACAddr));
    //	{
    //		_prog_addressT MACAddressAddress;
    //		MACAddressAddress.next = 0x157F8;
    //		_memcpy_p2d24((char*)&AppConfig.MyMACAddr, MACAddressAddress, sizeof(AppConfig.MyMACAddr));
    //	}
    AppConfig.MyIPAddr.Val = MY_DEFAULT_IP_ADDR_BYTE1 | MY_DEFAULT_IP_ADDR_BYTE2 << 8ul | MY_DEFAULT_IP_ADDR_BYTE3 << 16ul | MY_DEFAULT_IP_ADDR_BYTE4 << 24ul;
    AppConfig.DefaultIPAddr.Val = AppConfig.MyIPAddr.Val;
    AppConfig.MyMask.Val = MY_DEFAULT_MASK_BYTE1 | MY_DEFAULT_MASK_BYTE2 << 8ul | MY_DEFAULT_MASK_BYTE3 << 16ul | MY_DEFAULT_MASK_BYTE4 << 24ul;
    AppConfig.DefaultMask.Val = AppConfig.MyMask.Val;
    AppConfig.MyGateway.Val = MY_DEFAULT_GATE_BYTE1 | MY_DEFAULT_GATE_BYTE2 << 8ul | MY_DEFAULT_GATE_BYTE3 << 16ul | MY_DEFAULT_GATE_BYTE4 << 24ul;
    AppConfig.PrimaryDNSServer.Val = MY_DEFAULT_PRIMARY_DNS_BYTE1 | MY_DEFAULT_PRIMARY_DNS_BYTE2 << 8ul | MY_DEFAULT_PRIMARY_DNS_BYTE3 << 16ul | MY_DEFAULT_PRIMARY_DNS_BYTE4 << 24ul;
    AppConfig.SecondaryDNSServer.Val = MY_DEFAULT_SECONDARY_DNS_BYTE1 | MY_DEFAULT_SECONDARY_DNS_BYTE2 << 8ul | MY_DEFAULT_SECONDARY_DNS_BYTE3 << 16ul | MY_DEFAULT_SECONDARY_DNS_BYTE4 << 24ul;


    // SNMP Community String configuration
#if defined(STACK_USE_SNMP_SERVER)
    {
        BYTE i;
        static ROM char * ROM cReadCommunities[] = SNMP_READ_COMMUNITIES;
        static ROM char * ROM cWriteCommunities[] = SNMP_WRITE_COMMUNITIES;
        ROM char * strCommunity;

        for (i = 0; i < SNMP_MAX_COMMUNITY_SUPPORT; i++) {
            // Get a pointer to the next community string
            strCommunity = cReadCommunities[i];
            if (i >= sizeof (cReadCommunities) / sizeof (cReadCommunities[0]))
                strCommunity = "";

            // Ensure we don't buffer overflow.  If your code gets stuck here,
            // it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h
            // is either too small or one of your community string lengths
            // (SNMP_READ_COMMUNITIES) are too large.  Fix either.
            if (strlenpgm(strCommunity) >= sizeof (AppConfig.readCommunity[0]))
                while (1);

            // Copy string into AppConfig
            strcpypgm2ram((char*) AppConfig.readCommunity[i], strCommunity);

            // Get a pointer to the next community string
            strCommunity = cWriteCommunities[i];
            if (i >= sizeof (cWriteCommunities) / sizeof (cWriteCommunities[0]))
                strCommunity = "";

            // Ensure we don't buffer overflow.  If your code gets stuck here,
            // it means your SNMP_COMMUNITY_MAX_LEN definition in TCPIPConfig.h
            // is either too small or one of your community string lengths
            // (SNMP_WRITE_COMMUNITIES) are too large.  Fix either.
            if (strlenpgm(strCommunity) >= sizeof (AppConfig.writeCommunity[0]))
                while (1);

            // Copy string into AppConfig
            strcpypgm2ram((char*) AppConfig.writeCommunity[i], strCommunity);
        }
    }
#endif

    // Load the default NetBIOS Host Name
    memcpypgm2ram(AppConfig.NetBIOSName, (ROM void*) MY_DEFAULT_HOST_NAME, 16);
    FormatNetBIOSName(AppConfig.NetBIOSName);


#if defined(EEPROM_CS_TRIS)
    {
        BYTE c;

        // When a record is saved, first byte is written as 0x60 to indicate
        // that a valid record was saved.  Note that older stack versions
        // used 0x57.  This change has been made to so old EEPROM contents
        // will get overwritten.  The AppConfig() structure has been changed,
        // resulting in parameter misalignment if still using old EEPROM
        // contents.
        XEEReadArray(0x0000, &c, 1);
        if (c == 0x60u)
            XEEReadArray(0x0001, (BYTE*) & AppConfig, sizeof (AppConfig));
        else
            SaveAppConfig();
    }
#elif defined(SPIFLASH_CS_TRIS)
    {
        BYTE c;

        SPIFlashReadArray(0x0000, &c, 1);
        if (c == 0x60u)
            SPIFlashReadArray(0x0001, (BYTE*) & AppConfig, sizeof (AppConfig));
        else
            SaveAppConfig();
    }
#endif
}

#if defined(EEPROM_CS_TRIS) || defined(SPIFLASH_CS_TRIS)

void SaveAppConfig(void) {
    // Ensure adequate space has been reserved in non-volatile storage to
    // store the entire AppConfig structure.  If you get stuck in this while(1)
    // trap, it means you have a design time misconfiguration in TCPIPConfig.h.
    // You must increase MPFS_RESERVE_BLOCK to allocate more space.
#if defined(STACK_USE_MPFS) || defined(STACK_USE_MPFS2)
    if (sizeof (AppConfig) > MPFS_RESERVE_BLOCK)
        while (1);
#endif

#if defined(EEPROM_CS_TRIS)
    XEEBeginWrite(0x0000);
    XEEWrite(0x60);
    XEEWriteArray((BYTE*) & AppConfig, sizeof (AppConfig));
#else
    SPIFlashBeginWrite(0x0000);
    SPIFlashWrite(0x60);
    SPIFlashWriteArray((BYTE*) & AppConfig, sizeof (AppConfig));
#endif
}
#endif

