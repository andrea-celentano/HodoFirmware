#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-FT.mk)" "nbproject/Makefile-local-FT.mk"
include nbproject/Makefile-local-FT.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=FT
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED="../Microchip/TCPIP Stack/WiFi/WFScan.c" "../Microchip/TCPIP Stack/WiFi/WF_Spi.c" "../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c" "../Microchip/TCPIP Stack/WiFi/WFConsole.c" "../Microchip/TCPIP Stack/WiFi/WF_Eint.c" "../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c" "../Microchip/TCPIP Stack/WiFi/WFPowerSave.c" "../Microchip/TCPIP Stack/WiFi/WFParamMsg.c" "../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c" "../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c" "../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c" "../Microchip/TCPIP Stack/WiFi/WFTxPower.c" "../Microchip/TCPIP Stack/WiFi/WFInit.c" "../Microchip/TCPIP Stack/WiFi/WFDriverCom.c" "../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c" "../Microchip/TCPIP Stack/WiFi/WFEventHandler.c" "../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c" "../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c" "../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c" "../Microchip/TCPIP Stack/WiFi/WFMac.c" "../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c" "../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c" "../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c" "../Microchip/TCPIP Stack/TFTPc.c" "../Microchip/TCPIP Stack/Announce.c" "../Microchip/TCPIP Stack/CAN2TCPBridge.c" "../Microchip/TCPIP Stack/FTP.c" "../Microchip/TCPIP Stack/ENC28J60.c" "../Microchip/TCPIP Stack/SPIRAM.c" "../Microchip/TCPIP Stack/SNMP.c" "../Microchip/TCPIP Stack/Hashes.c" "../Microchip/TCPIP Stack/LCDBlocking.c" "../Microchip/TCPIP Stack/StackTsk.c" "../Microchip/TCPIP Stack/ARP.c" "../Microchip/TCPIP Stack/HTTP.c" "../Microchip/TCPIP Stack/SNTP.c" "../Microchip/TCPIP Stack/RSA.c" "../Microchip/TCPIP Stack/UART.c" "../Microchip/TCPIP Stack/ZeroconfHelper.c" "../Microchip/TCPIP Stack/HTTP2.c" "../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c" "../Microchip/TCPIP Stack/NBNS.c" "../Microchip/TCPIP Stack/ENCX24J600.c" "../Microchip/TCPIP Stack/BerkeleyAPI.c" "../Microchip/TCPIP Stack/TCPPerformanceTest.c" "../Microchip/TCPIP Stack/UART2TCPBridge.c" "../Microchip/TCPIP Stack/AutoIP.c" "../Microchip/TCPIP Stack/DHCPs.c" "../Microchip/TCPIP Stack/DHCP.c" "../Microchip/TCPIP Stack/Reboot.c" "../Microchip/TCPIP Stack/SPIEEPROM.c" "../Microchip/TCPIP Stack/SSL.c" "../Microchip/TCPIP Stack/Delay.c" "../Microchip/TCPIP Stack/SPIFlash.c" "../Microchip/TCPIP Stack/DNSs.c" "../Microchip/TCPIP Stack/BigInt.c" "../Microchip/TCPIP Stack/UDP.c" "../Microchip/TCPIP Stack/DNS.c" "../Microchip/TCPIP Stack/ICMP.c" "../Microchip/TCPIP Stack/ETHPIC32IntMac.c" "../Microchip/TCPIP Stack/ETH97J60.c" "../Microchip/TCPIP Stack/Helpers.c" "../Microchip/TCPIP Stack/ZeroconfLinkLocal.c" "../Microchip/TCPIP Stack/IP.c" "../Microchip/TCPIP Stack/TCP.c" "../Microchip/TCPIP Stack/ETHPIC32ExtPhyDP83848.c" "../Microchip/TCPIP Stack/SMTP.c" "../Microchip/TCPIP Stack/Tick.c" "../Microchip/TCPIP Stack/Telnet.c" "../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c" "../Microchip/TCPIP Stack/Random.c" "../Microchip/TCPIP Stack/MPFS.c" "../Microchip/TCPIP Stack/MPFS2.c" "../Microchip/TCPIP Stack/DynDNS.c" "../Microchip/TCPIP Stack/UDPPerformanceTest.c" "../Microchip/TCPIP Stack/ARCFOUR.c" ../i2c_support.c ../main.c ../MyTFTP.c ../Settings.c ../HodoCrate.c ../BerkeleyTCPServerDemo.c ../PingDemo.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/100901378/WFScan.o ${OBJECTDIR}/_ext/100901378/WF_Spi.o ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o ${OBJECTDIR}/_ext/100901378/WFConsole.o ${OBJECTDIR}/_ext/100901378/WF_Eint.o ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o ${OBJECTDIR}/_ext/100901378/WFPowerSave.o ${OBJECTDIR}/_ext/100901378/WFParamMsg.o ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/100901378/WFTxPower.o ${OBJECTDIR}/_ext/100901378/WFInit.o ${OBJECTDIR}/_ext/100901378/WFDriverCom.o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/100901378/WFEventHandler.o ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/100901378/WFMac.o ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o ${OBJECTDIR}/_ext/867694782/TFTPc.o ${OBJECTDIR}/_ext/867694782/Announce.o ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o ${OBJECTDIR}/_ext/867694782/FTP.o ${OBJECTDIR}/_ext/867694782/ENC28J60.o ${OBJECTDIR}/_ext/867694782/SPIRAM.o ${OBJECTDIR}/_ext/867694782/SNMP.o ${OBJECTDIR}/_ext/867694782/Hashes.o ${OBJECTDIR}/_ext/867694782/LCDBlocking.o ${OBJECTDIR}/_ext/867694782/StackTsk.o ${OBJECTDIR}/_ext/867694782/ARP.o ${OBJECTDIR}/_ext/867694782/HTTP.o ${OBJECTDIR}/_ext/867694782/SNTP.o ${OBJECTDIR}/_ext/867694782/RSA.o ${OBJECTDIR}/_ext/867694782/UART.o ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o ${OBJECTDIR}/_ext/867694782/HTTP2.o ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/867694782/NBNS.o ${OBJECTDIR}/_ext/867694782/ENCX24J600.o ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o ${OBJECTDIR}/_ext/867694782/AutoIP.o ${OBJECTDIR}/_ext/867694782/DHCPs.o ${OBJECTDIR}/_ext/867694782/DHCP.o ${OBJECTDIR}/_ext/867694782/Reboot.o ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o ${OBJECTDIR}/_ext/867694782/SSL.o ${OBJECTDIR}/_ext/867694782/Delay.o ${OBJECTDIR}/_ext/867694782/SPIFlash.o ${OBJECTDIR}/_ext/867694782/DNSs.o ${OBJECTDIR}/_ext/867694782/BigInt.o ${OBJECTDIR}/_ext/867694782/UDP.o ${OBJECTDIR}/_ext/867694782/DNS.o ${OBJECTDIR}/_ext/867694782/ICMP.o ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/867694782/ETH97J60.o ${OBJECTDIR}/_ext/867694782/Helpers.o ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/867694782/IP.o ${OBJECTDIR}/_ext/867694782/TCP.o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/867694782/SMTP.o ${OBJECTDIR}/_ext/867694782/Tick.o ${OBJECTDIR}/_ext/867694782/Telnet.o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/867694782/Random.o ${OBJECTDIR}/_ext/867694782/MPFS.o ${OBJECTDIR}/_ext/867694782/MPFS2.o ${OBJECTDIR}/_ext/867694782/DynDNS.o ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o ${OBJECTDIR}/_ext/867694782/ARCFOUR.o ${OBJECTDIR}/_ext/1472/i2c_support.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/MyTFTP.o ${OBJECTDIR}/_ext/1472/Settings.o ${OBJECTDIR}/_ext/1472/HodoCrate.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/PingDemo.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/100901378/WFScan.o.d ${OBJECTDIR}/_ext/100901378/WF_Spi.o.d ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d ${OBJECTDIR}/_ext/100901378/WFConsole.o.d ${OBJECTDIR}/_ext/100901378/WF_Eint.o.d ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d ${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d ${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d ${OBJECTDIR}/_ext/100901378/WFTxPower.o.d ${OBJECTDIR}/_ext/100901378/WFInit.o.d ${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d ${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d ${OBJECTDIR}/_ext/100901378/WFMac.o.d ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d ${OBJECTDIR}/_ext/867694782/TFTPc.o.d ${OBJECTDIR}/_ext/867694782/Announce.o.d ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d ${OBJECTDIR}/_ext/867694782/FTP.o.d ${OBJECTDIR}/_ext/867694782/ENC28J60.o.d ${OBJECTDIR}/_ext/867694782/SPIRAM.o.d ${OBJECTDIR}/_ext/867694782/SNMP.o.d ${OBJECTDIR}/_ext/867694782/Hashes.o.d ${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d ${OBJECTDIR}/_ext/867694782/StackTsk.o.d ${OBJECTDIR}/_ext/867694782/ARP.o.d ${OBJECTDIR}/_ext/867694782/HTTP.o.d ${OBJECTDIR}/_ext/867694782/SNTP.o.d ${OBJECTDIR}/_ext/867694782/RSA.o.d ${OBJECTDIR}/_ext/867694782/UART.o.d ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d ${OBJECTDIR}/_ext/867694782/HTTP2.o.d ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d ${OBJECTDIR}/_ext/867694782/NBNS.o.d ${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d ${OBJECTDIR}/_ext/867694782/AutoIP.o.d ${OBJECTDIR}/_ext/867694782/DHCPs.o.d ${OBJECTDIR}/_ext/867694782/DHCP.o.d ${OBJECTDIR}/_ext/867694782/Reboot.o.d ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d ${OBJECTDIR}/_ext/867694782/SSL.o.d ${OBJECTDIR}/_ext/867694782/Delay.o.d ${OBJECTDIR}/_ext/867694782/SPIFlash.o.d ${OBJECTDIR}/_ext/867694782/DNSs.o.d ${OBJECTDIR}/_ext/867694782/BigInt.o.d ${OBJECTDIR}/_ext/867694782/UDP.o.d ${OBJECTDIR}/_ext/867694782/DNS.o.d ${OBJECTDIR}/_ext/867694782/ICMP.o.d ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d ${OBJECTDIR}/_ext/867694782/ETH97J60.o.d ${OBJECTDIR}/_ext/867694782/Helpers.o.d ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d ${OBJECTDIR}/_ext/867694782/IP.o.d ${OBJECTDIR}/_ext/867694782/TCP.o.d ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d ${OBJECTDIR}/_ext/867694782/SMTP.o.d ${OBJECTDIR}/_ext/867694782/Tick.o.d ${OBJECTDIR}/_ext/867694782/Telnet.o.d ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d ${OBJECTDIR}/_ext/867694782/Random.o.d ${OBJECTDIR}/_ext/867694782/MPFS.o.d ${OBJECTDIR}/_ext/867694782/MPFS2.o.d ${OBJECTDIR}/_ext/867694782/DynDNS.o.d ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d ${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d ${OBJECTDIR}/_ext/1472/i2c_support.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/MyTFTP.o.d ${OBJECTDIR}/_ext/1472/Settings.o.d ${OBJECTDIR}/_ext/1472/HodoCrate.o.d ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d ${OBJECTDIR}/_ext/1472/PingDemo.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/100901378/WFScan.o ${OBJECTDIR}/_ext/100901378/WF_Spi.o ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o ${OBJECTDIR}/_ext/100901378/WFConsole.o ${OBJECTDIR}/_ext/100901378/WF_Eint.o ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o ${OBJECTDIR}/_ext/100901378/WFPowerSave.o ${OBJECTDIR}/_ext/100901378/WFParamMsg.o ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o ${OBJECTDIR}/_ext/100901378/WFTxPower.o ${OBJECTDIR}/_ext/100901378/WFInit.o ${OBJECTDIR}/_ext/100901378/WFDriverCom.o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o ${OBJECTDIR}/_ext/100901378/WFEventHandler.o ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o ${OBJECTDIR}/_ext/100901378/WFMac.o ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o ${OBJECTDIR}/_ext/867694782/TFTPc.o ${OBJECTDIR}/_ext/867694782/Announce.o ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o ${OBJECTDIR}/_ext/867694782/FTP.o ${OBJECTDIR}/_ext/867694782/ENC28J60.o ${OBJECTDIR}/_ext/867694782/SPIRAM.o ${OBJECTDIR}/_ext/867694782/SNMP.o ${OBJECTDIR}/_ext/867694782/Hashes.o ${OBJECTDIR}/_ext/867694782/LCDBlocking.o ${OBJECTDIR}/_ext/867694782/StackTsk.o ${OBJECTDIR}/_ext/867694782/ARP.o ${OBJECTDIR}/_ext/867694782/HTTP.o ${OBJECTDIR}/_ext/867694782/SNTP.o ${OBJECTDIR}/_ext/867694782/RSA.o ${OBJECTDIR}/_ext/867694782/UART.o ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o ${OBJECTDIR}/_ext/867694782/HTTP2.o ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o ${OBJECTDIR}/_ext/867694782/NBNS.o ${OBJECTDIR}/_ext/867694782/ENCX24J600.o ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o ${OBJECTDIR}/_ext/867694782/AutoIP.o ${OBJECTDIR}/_ext/867694782/DHCPs.o ${OBJECTDIR}/_ext/867694782/DHCP.o ${OBJECTDIR}/_ext/867694782/Reboot.o ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o ${OBJECTDIR}/_ext/867694782/SSL.o ${OBJECTDIR}/_ext/867694782/Delay.o ${OBJECTDIR}/_ext/867694782/SPIFlash.o ${OBJECTDIR}/_ext/867694782/DNSs.o ${OBJECTDIR}/_ext/867694782/BigInt.o ${OBJECTDIR}/_ext/867694782/UDP.o ${OBJECTDIR}/_ext/867694782/DNS.o ${OBJECTDIR}/_ext/867694782/ICMP.o ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o ${OBJECTDIR}/_ext/867694782/ETH97J60.o ${OBJECTDIR}/_ext/867694782/Helpers.o ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o ${OBJECTDIR}/_ext/867694782/IP.o ${OBJECTDIR}/_ext/867694782/TCP.o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o ${OBJECTDIR}/_ext/867694782/SMTP.o ${OBJECTDIR}/_ext/867694782/Tick.o ${OBJECTDIR}/_ext/867694782/Telnet.o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o ${OBJECTDIR}/_ext/867694782/Random.o ${OBJECTDIR}/_ext/867694782/MPFS.o ${OBJECTDIR}/_ext/867694782/MPFS2.o ${OBJECTDIR}/_ext/867694782/DynDNS.o ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o ${OBJECTDIR}/_ext/867694782/ARCFOUR.o ${OBJECTDIR}/_ext/1472/i2c_support.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/MyTFTP.o ${OBJECTDIR}/_ext/1472/Settings.o ${OBJECTDIR}/_ext/1472/HodoCrate.o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ${OBJECTDIR}/_ext/1472/PingDemo.o

# Source Files
SOURCEFILES=../Microchip/TCPIP Stack/WiFi/WFScan.c ../Microchip/TCPIP Stack/WiFi/WF_Spi.c ../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c ../Microchip/TCPIP Stack/WiFi/WFConsole.c ../Microchip/TCPIP Stack/WiFi/WF_Eint.c ../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c ../Microchip/TCPIP Stack/WiFi/WFPowerSave.c ../Microchip/TCPIP Stack/WiFi/WFParamMsg.c ../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c ../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c ../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c ../Microchip/TCPIP Stack/WiFi/WFTxPower.c ../Microchip/TCPIP Stack/WiFi/WFInit.c ../Microchip/TCPIP Stack/WiFi/WFDriverCom.c ../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c ../Microchip/TCPIP Stack/WiFi/WFEventHandler.c ../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c ../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c ../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c ../Microchip/TCPIP Stack/WiFi/WFMac.c ../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c ../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c ../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c ../Microchip/TCPIP Stack/TFTPc.c ../Microchip/TCPIP Stack/Announce.c ../Microchip/TCPIP Stack/CAN2TCPBridge.c ../Microchip/TCPIP Stack/FTP.c ../Microchip/TCPIP Stack/ENC28J60.c ../Microchip/TCPIP Stack/SPIRAM.c ../Microchip/TCPIP Stack/SNMP.c ../Microchip/TCPIP Stack/Hashes.c ../Microchip/TCPIP Stack/LCDBlocking.c ../Microchip/TCPIP Stack/StackTsk.c ../Microchip/TCPIP Stack/ARP.c ../Microchip/TCPIP Stack/HTTP.c ../Microchip/TCPIP Stack/SNTP.c ../Microchip/TCPIP Stack/RSA.c ../Microchip/TCPIP Stack/UART.c ../Microchip/TCPIP Stack/ZeroconfHelper.c ../Microchip/TCPIP Stack/HTTP2.c ../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c ../Microchip/TCPIP Stack/NBNS.c ../Microchip/TCPIP Stack/ENCX24J600.c ../Microchip/TCPIP Stack/BerkeleyAPI.c ../Microchip/TCPIP Stack/TCPPerformanceTest.c ../Microchip/TCPIP Stack/UART2TCPBridge.c ../Microchip/TCPIP Stack/AutoIP.c ../Microchip/TCPIP Stack/DHCPs.c ../Microchip/TCPIP Stack/DHCP.c ../Microchip/TCPIP Stack/Reboot.c ../Microchip/TCPIP Stack/SPIEEPROM.c ../Microchip/TCPIP Stack/SSL.c ../Microchip/TCPIP Stack/Delay.c ../Microchip/TCPIP Stack/SPIFlash.c ../Microchip/TCPIP Stack/DNSs.c ../Microchip/TCPIP Stack/BigInt.c ../Microchip/TCPIP Stack/UDP.c ../Microchip/TCPIP Stack/DNS.c ../Microchip/TCPIP Stack/ICMP.c ../Microchip/TCPIP Stack/ETHPIC32IntMac.c ../Microchip/TCPIP Stack/ETH97J60.c ../Microchip/TCPIP Stack/Helpers.c ../Microchip/TCPIP Stack/ZeroconfLinkLocal.c ../Microchip/TCPIP Stack/IP.c ../Microchip/TCPIP Stack/TCP.c ../Microchip/TCPIP Stack/ETHPIC32ExtPhyDP83848.c ../Microchip/TCPIP Stack/SMTP.c ../Microchip/TCPIP Stack/Tick.c ../Microchip/TCPIP Stack/Telnet.c ../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c ../Microchip/TCPIP Stack/Random.c ../Microchip/TCPIP Stack/MPFS.c ../Microchip/TCPIP Stack/MPFS2.c ../Microchip/TCPIP Stack/DynDNS.c ../Microchip/TCPIP Stack/UDPPerformanceTest.c ../Microchip/TCPIP Stack/ARCFOUR.c ../i2c_support.c ../main.c ../MyTFTP.c ../Settings.c ../HodoCrate.c ../BerkeleyTCPServerDemo.c ../PingDemo.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-FT.mk dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/100901378/WFScan.o: ../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFScan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFScan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFScan.o.d" -o ${OBJECTDIR}/_ext/100901378/WFScan.o "../Microchip/TCPIP Stack/WiFi/WFScan.c"  
	
${OBJECTDIR}/_ext/100901378/WF_Spi.o: ../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WF_Spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/100901378/WF_Spi.o "../Microchip/TCPIP Stack/WiFi/WF_Spi.c"  
	
${OBJECTDIR}/_ext/100901378/WFEasyConfig.o: ../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o "../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsole.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsole.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsole.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsole.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsole.o "../Microchip/TCPIP Stack/WiFi/WFConsole.c"  
	
${OBJECTDIR}/_ext/100901378/WF_Eint.o: ../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WF_Eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/100901378/WF_Eint.o "../Microchip/TCPIP Stack/WiFi/WF_Eint.c"  
	
${OBJECTDIR}/_ext/100901378/WFConnectionManager.o: ../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o "../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  
	
${OBJECTDIR}/_ext/100901378/WFPowerSave.o: ../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFPowerSave.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/100901378/WFPowerSave.o "../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"  
	
${OBJECTDIR}/_ext/100901378/WFParamMsg.o: ../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFParamMsg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/100901378/WFParamMsg.o "../Microchip/TCPIP Stack/WiFi/WFParamMsg.c"  
	
${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o: ../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o "../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  
	
${OBJECTDIR}/_ext/100901378/WFDriverRaw.o: ../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o "../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o "../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  
	
${OBJECTDIR}/_ext/100901378/WFTxPower.o: ../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFTxPower.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFTxPower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/100901378/WFTxPower.o "../Microchip/TCPIP Stack/WiFi/WFTxPower.c"  
	
${OBJECTDIR}/_ext/100901378/WFInit.o: ../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFInit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFInit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFInit.o.d" -o ${OBJECTDIR}/_ext/100901378/WFInit.o "../Microchip/TCPIP Stack/WiFi/WFInit.c"  
	
${OBJECTDIR}/_ext/100901378/WFDriverCom.o: ../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverCom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/100901378/WFDriverCom.o "../Microchip/TCPIP Stack/WiFi/WFDriverCom.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o "../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  
	
${OBJECTDIR}/_ext/100901378/WFEventHandler.o: ../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEventHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/100901378/WFEventHandler.o "../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o "../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o "../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  
	
${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o: ../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o "../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  
	
${OBJECTDIR}/_ext/100901378/WFMac.o: ../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFMac.o.d" -o ${OBJECTDIR}/_ext/100901378/WFMac.o "../Microchip/TCPIP Stack/WiFi/WFMac.c"  
	
${OBJECTDIR}/_ext/100901378/WFDataTxRx.o: ../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o "../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  
	
${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o: ../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o "../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o "../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  
	
${OBJECTDIR}/_ext/867694782/TFTPc.o: ../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/TFTPc.o.d" -o ${OBJECTDIR}/_ext/867694782/TFTPc.o "../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/867694782/Announce.o: ../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Announce.o.d" -o ${OBJECTDIR}/_ext/867694782/Announce.o "../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o: ../Microchip/TCPIP\ Stack/CAN2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o "../Microchip/TCPIP Stack/CAN2TCPBridge.c"  
	
${OBJECTDIR}/_ext/867694782/FTP.o: ../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/FTP.o.d" -o ${OBJECTDIR}/_ext/867694782/FTP.o "../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/867694782/ENC28J60.o: ../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENC28J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/867694782/ENC28J60.o "../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/867694782/SPIRAM.o: ../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIRAM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/867694782/SPIRAM.o "../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/867694782/SNMP.o: ../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SNMP.o.d" -o ${OBJECTDIR}/_ext/867694782/SNMP.o "../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/867694782/Hashes.o: ../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Hashes.o.d" -o ${OBJECTDIR}/_ext/867694782/Hashes.o "../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/867694782/LCDBlocking.o: ../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/867694782/LCDBlocking.o "../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/867694782/StackTsk.o: ../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/StackTsk.o.d" -o ${OBJECTDIR}/_ext/867694782/StackTsk.o "../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/867694782/ARP.o: ../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ARP.o.d" -o ${OBJECTDIR}/_ext/867694782/ARP.o "../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/867694782/HTTP.o: ../Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/HTTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/HTTP.o.d" -o ${OBJECTDIR}/_ext/867694782/HTTP.o "../Microchip/TCPIP Stack/HTTP.c"  
	
${OBJECTDIR}/_ext/867694782/SNTP.o: ../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SNTP.o.d" -o ${OBJECTDIR}/_ext/867694782/SNTP.o "../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/867694782/RSA.o: ../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/RSA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/RSA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/RSA.o.d" -o ${OBJECTDIR}/_ext/867694782/RSA.o "../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/867694782/UART.o: ../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UART.o.d" -o ${OBJECTDIR}/_ext/867694782/UART.o "../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o: ../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o "../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/867694782/HTTP2.o: ../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/HTTP2.o.d" -o ${OBJECTDIR}/_ext/867694782/HTTP2.o "../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o: ../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o "../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/867694782/NBNS.o: ../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/NBNS.o.d" -o ${OBJECTDIR}/_ext/867694782/NBNS.o "../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/867694782/ENCX24J600.o: ../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENCX24J600.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/867694782/ENCX24J600.o "../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o: ../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o "../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o: ../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o "../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o: ../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o "../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/867694782/AutoIP.o: ../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/AutoIP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/AutoIP.o.d" -o ${OBJECTDIR}/_ext/867694782/AutoIP.o "../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/867694782/DHCPs.o: ../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DHCPs.o.d" -o ${OBJECTDIR}/_ext/867694782/DHCPs.o "../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/867694782/DHCP.o: ../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DHCP.o.d" -o ${OBJECTDIR}/_ext/867694782/DHCP.o "../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/867694782/Reboot.o: ../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Reboot.o.d" -o ${OBJECTDIR}/_ext/867694782/Reboot.o "../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/867694782/SPIEEPROM.o: ../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o "../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/867694782/SSL.o: ../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SSL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SSL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SSL.o.d" -o ${OBJECTDIR}/_ext/867694782/SSL.o "../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/867694782/Delay.o: ../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Delay.o.d" -o ${OBJECTDIR}/_ext/867694782/Delay.o "../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/867694782/SPIFlash.o: ../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/867694782/SPIFlash.o "../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/867694782/DNSs.o: ../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNSs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DNSs.o.d" -o ${OBJECTDIR}/_ext/867694782/DNSs.o "../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/867694782/BigInt.o: ../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/BigInt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/BigInt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/BigInt.o.d" -o ${OBJECTDIR}/_ext/867694782/BigInt.o "../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/867694782/UDP.o: ../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UDP.o.d" -o ${OBJECTDIR}/_ext/867694782/UDP.o "../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/867694782/DNS.o: ../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DNS.o.d" -o ${OBJECTDIR}/_ext/867694782/DNS.o "../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/867694782/ICMP.o: ../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ICMP.o.d" -o ${OBJECTDIR}/_ext/867694782/ICMP.o "../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o: ../Microchip/TCPIP\ Stack/ETHPIC32IntMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o "../Microchip/TCPIP Stack/ETHPIC32IntMac.c"  
	
${OBJECTDIR}/_ext/867694782/ETH97J60.o: ../Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/867694782/ETH97J60.o "../Microchip/TCPIP Stack/ETH97J60.c"  
	
${OBJECTDIR}/_ext/867694782/Helpers.o: ../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Helpers.o.d" -o ${OBJECTDIR}/_ext/867694782/Helpers.o "../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o: ../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o "../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/867694782/IP.o: ../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/IP.o.d" -o ${OBJECTDIR}/_ext/867694782/IP.o "../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/867694782/TCP.o: ../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/TCP.o.d" -o ${OBJECTDIR}/_ext/867694782/TCP.o "../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o "../Microchip/TCPIP Stack/ETHPIC32ExtPhyDP83848.c"  
	
${OBJECTDIR}/_ext/867694782/SMTP.o: ../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SMTP.o.d" -o ${OBJECTDIR}/_ext/867694782/SMTP.o "../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/867694782/Tick.o: ../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Tick.o.d" -o ${OBJECTDIR}/_ext/867694782/Tick.o "../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/867694782/Telnet.o: ../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Telnet.o.d" -o ${OBJECTDIR}/_ext/867694782/Telnet.o "../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o: ../Microchip/TCPIP\ Stack/ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o "../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c"  
	
${OBJECTDIR}/_ext/867694782/Random.o: ../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Random.o.d" -o ${OBJECTDIR}/_ext/867694782/Random.o "../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/867694782/MPFS.o: ../Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/MPFS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/MPFS.o.d" -o ${OBJECTDIR}/_ext/867694782/MPFS.o "../Microchip/TCPIP Stack/MPFS.c"  
	
${OBJECTDIR}/_ext/867694782/MPFS2.o: ../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/MPFS2.o.d" -o ${OBJECTDIR}/_ext/867694782/MPFS2.o "../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/867694782/DynDNS.o: ../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DynDNS.o.d" -o ${OBJECTDIR}/_ext/867694782/DynDNS.o "../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o: ../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o "../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/867694782/ARCFOUR.o: ../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARCFOUR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/867694782/ARCFOUR.o "../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1472/i2c_support.o: ../i2c_support.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_support.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_support.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/i2c_support.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/i2c_support.o.d" -o ${OBJECTDIR}/_ext/1472/i2c_support.o ../i2c_support.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/1472/MyTFTP.o: ../MyTFTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MyTFTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MyTFTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MyTFTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/MyTFTP.o.d" -o ${OBJECTDIR}/_ext/1472/MyTFTP.o ../MyTFTP.c  
	
${OBJECTDIR}/_ext/1472/Settings.o: ../Settings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Settings.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Settings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/Settings.o.d" -o ${OBJECTDIR}/_ext/1472/Settings.o ../Settings.c  
	
${OBJECTDIR}/_ext/1472/HodoCrate.o: ../HodoCrate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HodoCrate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HodoCrate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HodoCrate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/HodoCrate.o.d" -o ${OBJECTDIR}/_ext/1472/HodoCrate.o ../HodoCrate.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PIC32MXSK=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
else
${OBJECTDIR}/_ext/100901378/WFScan.o: ../Microchip/TCPIP\ Stack/WiFi/WFScan.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFScan.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFScan.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFScan.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFScan.o.d" -o ${OBJECTDIR}/_ext/100901378/WFScan.o "../Microchip/TCPIP Stack/WiFi/WFScan.c"  
	
${OBJECTDIR}/_ext/100901378/WF_Spi.o: ../Microchip/TCPIP\ Stack/WiFi/WF_Spi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Spi.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WF_Spi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WF_Spi.o.d" -o ${OBJECTDIR}/_ext/100901378/WF_Spi.o "../Microchip/TCPIP Stack/WiFi/WF_Spi.c"  
	
${OBJECTDIR}/_ext/100901378/WFEasyConfig.o: ../Microchip/TCPIP\ Stack/WiFi/WFEasyConfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFEasyConfig.o.d" -o ${OBJECTDIR}/_ext/100901378/WFEasyConfig.o "../Microchip/TCPIP Stack/WiFi/WFEasyConfig.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsole.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsole.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsole.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsole.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsole.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsole.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsole.o "../Microchip/TCPIP Stack/WiFi/WFConsole.c"  
	
${OBJECTDIR}/_ext/100901378/WF_Eint.o: ../Microchip/TCPIP\ Stack/WiFi/WF_Eint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Eint.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WF_Eint.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WF_Eint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WF_Eint.o.d" -o ${OBJECTDIR}/_ext/100901378/WF_Eint.o "../Microchip/TCPIP Stack/WiFi/WF_Eint.c"  
	
${OBJECTDIR}/_ext/100901378/WFConnectionManager.o: ../Microchip/TCPIP\ Stack/WiFi/WFConnectionManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConnectionManager.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConnectionManager.o "../Microchip/TCPIP Stack/WiFi/WFConnectionManager.c"  
	
${OBJECTDIR}/_ext/100901378/WFPowerSave.o: ../Microchip/TCPIP\ Stack/WiFi/WFPowerSave.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFPowerSave.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFPowerSave.o.d" -o ${OBJECTDIR}/_ext/100901378/WFPowerSave.o "../Microchip/TCPIP Stack/WiFi/WFPowerSave.c"  
	
${OBJECTDIR}/_ext/100901378/WFParamMsg.o: ../Microchip/TCPIP\ Stack/WiFi/WFParamMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFParamMsg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFParamMsg.o.d" -o ${OBJECTDIR}/_ext/100901378/WFParamMsg.o "../Microchip/TCPIP Stack/WiFi/WFParamMsg.c"  
	
${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o: ../Microchip/TCPIP\ Stack/WiFi/WFConnectionProfile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConnectionProfile.o "../Microchip/TCPIP Stack/WiFi/WFConnectionProfile.c"  
	
${OBJECTDIR}/_ext/100901378/WFDriverRaw.o: ../Microchip/TCPIP\ Stack/WiFi/WFDriverRaw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFDriverRaw.o.d" -o ${OBJECTDIR}/_ext/100901378/WFDriverRaw.o "../Microchip/TCPIP Stack/WiFi/WFDriverRaw.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwpriv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleIwpriv.o "../Microchip/TCPIP Stack/WiFi/WFConsoleIwpriv.c"  
	
${OBJECTDIR}/_ext/100901378/WFTxPower.o: ../Microchip/TCPIP\ Stack/WiFi/WFTxPower.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFTxPower.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFTxPower.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFTxPower.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFTxPower.o.d" -o ${OBJECTDIR}/_ext/100901378/WFTxPower.o "../Microchip/TCPIP Stack/WiFi/WFTxPower.c"  
	
${OBJECTDIR}/_ext/100901378/WFInit.o: ../Microchip/TCPIP\ Stack/WiFi/WFInit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFInit.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFInit.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFInit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFInit.o.d" -o ${OBJECTDIR}/_ext/100901378/WFInit.o "../Microchip/TCPIP Stack/WiFi/WFInit.c"  
	
${OBJECTDIR}/_ext/100901378/WFDriverCom.o: ../Microchip/TCPIP\ Stack/WiFi/WFDriverCom.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDriverCom.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFDriverCom.o.d" -o ${OBJECTDIR}/_ext/100901378/WFDriverCom.o "../Microchip/TCPIP Stack/WiFi/WFDriverCom.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgHandler.o "../Microchip/TCPIP Stack/WiFi/WFConsoleMsgHandler.c"  
	
${OBJECTDIR}/_ext/100901378/WFEventHandler.o: ../Microchip/TCPIP\ Stack/WiFi/WFEventHandler.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFEventHandler.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFEventHandler.o.d" -o ${OBJECTDIR}/_ext/100901378/WFEventHandler.o "../Microchip/TCPIP Stack/WiFi/WFEventHandler.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleIwconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleIwconfig.o "../Microchip/TCPIP Stack/WiFi/WFConsoleIwconfig.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleIfconfig.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleIfconfig.o "../Microchip/TCPIP Stack/WiFi/WFConsoleIfconfig.c"  
	
${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o: ../Microchip/TCPIP\ Stack/WiFi/WFConnectionAlgorithm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConnectionAlgorithm.o "../Microchip/TCPIP Stack/WiFi/WFConnectionAlgorithm.c"  
	
${OBJECTDIR}/_ext/100901378/WFMac.o: ../Microchip/TCPIP\ Stack/WiFi/WFMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFMac.o.d" -o ${OBJECTDIR}/_ext/100901378/WFMac.o "../Microchip/TCPIP Stack/WiFi/WFMac.c"  
	
${OBJECTDIR}/_ext/100901378/WFDataTxRx.o: ../Microchip/TCPIP\ Stack/WiFi/WFDataTxRx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFDataTxRx.o.d" -o ${OBJECTDIR}/_ext/100901378/WFDataTxRx.o "../Microchip/TCPIP Stack/WiFi/WFDataTxRx.c"  
	
${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o: ../Microchip/TCPIP\ Stack/WiFi/WFMgmtMsg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o.d" -o ${OBJECTDIR}/_ext/100901378/WFMgmtMsg.o "../Microchip/TCPIP Stack/WiFi/WFMgmtMsg.c"  
	
${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o: ../Microchip/TCPIP\ Stack/WiFi/WFConsoleMsgs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/100901378 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d 
	@${RM} ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o.d" -o ${OBJECTDIR}/_ext/100901378/WFConsoleMsgs.o "../Microchip/TCPIP Stack/WiFi/WFConsoleMsgs.c"  
	
${OBJECTDIR}/_ext/867694782/TFTPc.o: ../Microchip/TCPIP\ Stack/TFTPc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/TFTPc.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/TFTPc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/TFTPc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/TFTPc.o.d" -o ${OBJECTDIR}/_ext/867694782/TFTPc.o "../Microchip/TCPIP Stack/TFTPc.c"  
	
${OBJECTDIR}/_ext/867694782/Announce.o: ../Microchip/TCPIP\ Stack/Announce.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Announce.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Announce.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Announce.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Announce.o.d" -o ${OBJECTDIR}/_ext/867694782/Announce.o "../Microchip/TCPIP Stack/Announce.c"  
	
${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o: ../Microchip/TCPIP\ Stack/CAN2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/867694782/CAN2TCPBridge.o "../Microchip/TCPIP Stack/CAN2TCPBridge.c"  
	
${OBJECTDIR}/_ext/867694782/FTP.o: ../Microchip/TCPIP\ Stack/FTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/FTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/FTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/FTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/FTP.o.d" -o ${OBJECTDIR}/_ext/867694782/FTP.o "../Microchip/TCPIP Stack/FTP.c"  
	
${OBJECTDIR}/_ext/867694782/ENC28J60.o: ../Microchip/TCPIP\ Stack/ENC28J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENC28J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENC28J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ENC28J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ENC28J60.o.d" -o ${OBJECTDIR}/_ext/867694782/ENC28J60.o "../Microchip/TCPIP Stack/ENC28J60.c"  
	
${OBJECTDIR}/_ext/867694782/SPIRAM.o: ../Microchip/TCPIP\ Stack/SPIRAM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIRAM.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIRAM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SPIRAM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SPIRAM.o.d" -o ${OBJECTDIR}/_ext/867694782/SPIRAM.o "../Microchip/TCPIP Stack/SPIRAM.c"  
	
${OBJECTDIR}/_ext/867694782/SNMP.o: ../Microchip/TCPIP\ Stack/SNMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SNMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SNMP.o.d" -o ${OBJECTDIR}/_ext/867694782/SNMP.o "../Microchip/TCPIP Stack/SNMP.c"  
	
${OBJECTDIR}/_ext/867694782/Hashes.o: ../Microchip/TCPIP\ Stack/Hashes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Hashes.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Hashes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Hashes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Hashes.o.d" -o ${OBJECTDIR}/_ext/867694782/Hashes.o "../Microchip/TCPIP Stack/Hashes.c"  
	
${OBJECTDIR}/_ext/867694782/LCDBlocking.o: ../Microchip/TCPIP\ Stack/LCDBlocking.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/LCDBlocking.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/LCDBlocking.o.d" -o ${OBJECTDIR}/_ext/867694782/LCDBlocking.o "../Microchip/TCPIP Stack/LCDBlocking.c"  
	
${OBJECTDIR}/_ext/867694782/StackTsk.o: ../Microchip/TCPIP\ Stack/StackTsk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/StackTsk.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/StackTsk.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/StackTsk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/StackTsk.o.d" -o ${OBJECTDIR}/_ext/867694782/StackTsk.o "../Microchip/TCPIP Stack/StackTsk.c"  
	
${OBJECTDIR}/_ext/867694782/ARP.o: ../Microchip/TCPIP\ Stack/ARP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ARP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ARP.o.d" -o ${OBJECTDIR}/_ext/867694782/ARP.o "../Microchip/TCPIP Stack/ARP.c"  
	
${OBJECTDIR}/_ext/867694782/HTTP.o: ../Microchip/TCPIP\ Stack/HTTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/HTTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/HTTP.o.d" -o ${OBJECTDIR}/_ext/867694782/HTTP.o "../Microchip/TCPIP Stack/HTTP.c"  
	
${OBJECTDIR}/_ext/867694782/SNTP.o: ../Microchip/TCPIP\ Stack/SNTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SNTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SNTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SNTP.o.d" -o ${OBJECTDIR}/_ext/867694782/SNTP.o "../Microchip/TCPIP Stack/SNTP.c"  
	
${OBJECTDIR}/_ext/867694782/RSA.o: ../Microchip/TCPIP\ Stack/RSA.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/RSA.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/RSA.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/RSA.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/RSA.o.d" -o ${OBJECTDIR}/_ext/867694782/RSA.o "../Microchip/TCPIP Stack/RSA.c"  
	
${OBJECTDIR}/_ext/867694782/UART.o: ../Microchip/TCPIP\ Stack/UART.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UART.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UART.o.d" -o ${OBJECTDIR}/_ext/867694782/UART.o "../Microchip/TCPIP Stack/UART.c"  
	
${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o: ../Microchip/TCPIP\ Stack/ZeroconfHelper.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o.d" -o ${OBJECTDIR}/_ext/867694782/ZeroconfHelper.o "../Microchip/TCPIP Stack/ZeroconfHelper.c"  
	
${OBJECTDIR}/_ext/867694782/HTTP2.o: ../Microchip/TCPIP\ Stack/HTTP2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP2.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/HTTP2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/HTTP2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/HTTP2.o.d" -o ${OBJECTDIR}/_ext/867694782/HTTP2.o "../Microchip/TCPIP Stack/HTTP2.c"  
	
${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o: ../Microchip/TCPIP\ Stack/ZeroconfMulticastDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o.d" -o ${OBJECTDIR}/_ext/867694782/ZeroconfMulticastDNS.o "../Microchip/TCPIP Stack/ZeroconfMulticastDNS.c"  
	
${OBJECTDIR}/_ext/867694782/NBNS.o: ../Microchip/TCPIP\ Stack/NBNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/NBNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/NBNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/NBNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/NBNS.o.d" -o ${OBJECTDIR}/_ext/867694782/NBNS.o "../Microchip/TCPIP Stack/NBNS.c"  
	
${OBJECTDIR}/_ext/867694782/ENCX24J600.o: ../Microchip/TCPIP\ Stack/ENCX24J600.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ENCX24J600.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ENCX24J600.o.d" -o ${OBJECTDIR}/_ext/867694782/ENCX24J600.o "../Microchip/TCPIP Stack/ENCX24J600.c"  
	
${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o: ../Microchip/TCPIP\ Stack/BerkeleyAPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o.d" -o ${OBJECTDIR}/_ext/867694782/BerkeleyAPI.o "../Microchip/TCPIP Stack/BerkeleyAPI.c"  
	
${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o: ../Microchip/TCPIP\ Stack/TCPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/867694782/TCPPerformanceTest.o "../Microchip/TCPIP Stack/TCPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o: ../Microchip/TCPIP\ Stack/UART2TCPBridge.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o.d" -o ${OBJECTDIR}/_ext/867694782/UART2TCPBridge.o "../Microchip/TCPIP Stack/UART2TCPBridge.c"  
	
${OBJECTDIR}/_ext/867694782/AutoIP.o: ../Microchip/TCPIP\ Stack/AutoIP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/AutoIP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/AutoIP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/AutoIP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/AutoIP.o.d" -o ${OBJECTDIR}/_ext/867694782/AutoIP.o "../Microchip/TCPIP Stack/AutoIP.c"  
	
${OBJECTDIR}/_ext/867694782/DHCPs.o: ../Microchip/TCPIP\ Stack/DHCPs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCPs.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCPs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DHCPs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DHCPs.o.d" -o ${OBJECTDIR}/_ext/867694782/DHCPs.o "../Microchip/TCPIP Stack/DHCPs.c"  
	
${OBJECTDIR}/_ext/867694782/DHCP.o: ../Microchip/TCPIP\ Stack/DHCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DHCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DHCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DHCP.o.d" -o ${OBJECTDIR}/_ext/867694782/DHCP.o "../Microchip/TCPIP Stack/DHCP.c"  
	
${OBJECTDIR}/_ext/867694782/Reboot.o: ../Microchip/TCPIP\ Stack/Reboot.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Reboot.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Reboot.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Reboot.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Reboot.o.d" -o ${OBJECTDIR}/_ext/867694782/Reboot.o "../Microchip/TCPIP Stack/Reboot.c"  
	
${OBJECTDIR}/_ext/867694782/SPIEEPROM.o: ../Microchip/TCPIP\ Stack/SPIEEPROM.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SPIEEPROM.o.d" -o ${OBJECTDIR}/_ext/867694782/SPIEEPROM.o "../Microchip/TCPIP Stack/SPIEEPROM.c"  
	
${OBJECTDIR}/_ext/867694782/SSL.o: ../Microchip/TCPIP\ Stack/SSL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SSL.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SSL.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SSL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SSL.o.d" -o ${OBJECTDIR}/_ext/867694782/SSL.o "../Microchip/TCPIP Stack/SSL.c"  
	
${OBJECTDIR}/_ext/867694782/Delay.o: ../Microchip/TCPIP\ Stack/Delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Delay.o.d" -o ${OBJECTDIR}/_ext/867694782/Delay.o "../Microchip/TCPIP Stack/Delay.c"  
	
${OBJECTDIR}/_ext/867694782/SPIFlash.o: ../Microchip/TCPIP\ Stack/SPIFlash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIFlash.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SPIFlash.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SPIFlash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SPIFlash.o.d" -o ${OBJECTDIR}/_ext/867694782/SPIFlash.o "../Microchip/TCPIP Stack/SPIFlash.c"  
	
${OBJECTDIR}/_ext/867694782/DNSs.o: ../Microchip/TCPIP\ Stack/DNSs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNSs.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNSs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DNSs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DNSs.o.d" -o ${OBJECTDIR}/_ext/867694782/DNSs.o "../Microchip/TCPIP Stack/DNSs.c"  
	
${OBJECTDIR}/_ext/867694782/BigInt.o: ../Microchip/TCPIP\ Stack/BigInt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/BigInt.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/BigInt.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/BigInt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/BigInt.o.d" -o ${OBJECTDIR}/_ext/867694782/BigInt.o "../Microchip/TCPIP Stack/BigInt.c"  
	
${OBJECTDIR}/_ext/867694782/UDP.o: ../Microchip/TCPIP\ Stack/UDP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UDP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UDP.o.d" -o ${OBJECTDIR}/_ext/867694782/UDP.o "../Microchip/TCPIP Stack/UDP.c"  
	
${OBJECTDIR}/_ext/867694782/DNS.o: ../Microchip/TCPIP\ Stack/DNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DNS.o.d" -o ${OBJECTDIR}/_ext/867694782/DNS.o "../Microchip/TCPIP Stack/DNS.c"  
	
${OBJECTDIR}/_ext/867694782/ICMP.o: ../Microchip/TCPIP\ Stack/ICMP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ICMP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ICMP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ICMP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ICMP.o.d" -o ${OBJECTDIR}/_ext/867694782/ICMP.o "../Microchip/TCPIP Stack/ICMP.c"  
	
${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o: ../Microchip/TCPIP\ Stack/ETHPIC32IntMac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o.d" -o ${OBJECTDIR}/_ext/867694782/ETHPIC32IntMac.o "../Microchip/TCPIP Stack/ETHPIC32IntMac.c"  
	
${OBJECTDIR}/_ext/867694782/ETH97J60.o: ../Microchip/TCPIP\ Stack/ETH97J60.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETH97J60.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETH97J60.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETH97J60.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETH97J60.o.d" -o ${OBJECTDIR}/_ext/867694782/ETH97J60.o "../Microchip/TCPIP Stack/ETH97J60.c"  
	
${OBJECTDIR}/_ext/867694782/Helpers.o: ../Microchip/TCPIP\ Stack/Helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Helpers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Helpers.o.d" -o ${OBJECTDIR}/_ext/867694782/Helpers.o "../Microchip/TCPIP Stack/Helpers.c"  
	
${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o: ../Microchip/TCPIP\ Stack/ZeroconfLinkLocal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o.d" -o ${OBJECTDIR}/_ext/867694782/ZeroconfLinkLocal.o "../Microchip/TCPIP Stack/ZeroconfLinkLocal.c"  
	
${OBJECTDIR}/_ext/867694782/IP.o: ../Microchip/TCPIP\ Stack/IP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/IP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/IP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/IP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/IP.o.d" -o ${OBJECTDIR}/_ext/867694782/IP.o "../Microchip/TCPIP Stack/IP.c"  
	
${OBJECTDIR}/_ext/867694782/TCP.o: ../Microchip/TCPIP\ Stack/TCP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/TCP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/TCP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/TCP.o.d" -o ${OBJECTDIR}/_ext/867694782/TCP.o "../Microchip/TCPIP Stack/TCP.c"  
	
${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o: ../Microchip/TCPIP\ Stack/ETHPIC32ExtPhyDP83848.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o.d" -o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhyDP83848.o "../Microchip/TCPIP Stack/ETHPIC32ExtPhyDP83848.c"  
	
${OBJECTDIR}/_ext/867694782/SMTP.o: ../Microchip/TCPIP\ Stack/SMTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/SMTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/SMTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/SMTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/SMTP.o.d" -o ${OBJECTDIR}/_ext/867694782/SMTP.o "../Microchip/TCPIP Stack/SMTP.c"  
	
${OBJECTDIR}/_ext/867694782/Tick.o: ../Microchip/TCPIP\ Stack/Tick.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Tick.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Tick.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Tick.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Tick.o.d" -o ${OBJECTDIR}/_ext/867694782/Tick.o "../Microchip/TCPIP Stack/Tick.c"  
	
${OBJECTDIR}/_ext/867694782/Telnet.o: ../Microchip/TCPIP\ Stack/Telnet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Telnet.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Telnet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Telnet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Telnet.o.d" -o ${OBJECTDIR}/_ext/867694782/Telnet.o "../Microchip/TCPIP Stack/Telnet.c"  
	
${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o: ../Microchip/TCPIP\ Stack/ETHPIC32ExtPhy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o.d" -o ${OBJECTDIR}/_ext/867694782/ETHPIC32ExtPhy.o "../Microchip/TCPIP Stack/ETHPIC32ExtPhy.c"  
	
${OBJECTDIR}/_ext/867694782/Random.o: ../Microchip/TCPIP\ Stack/Random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/Random.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/Random.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/Random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/Random.o.d" -o ${OBJECTDIR}/_ext/867694782/Random.o "../Microchip/TCPIP Stack/Random.c"  
	
${OBJECTDIR}/_ext/867694782/MPFS.o: ../Microchip/TCPIP\ Stack/MPFS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/MPFS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/MPFS.o.d" -o ${OBJECTDIR}/_ext/867694782/MPFS.o "../Microchip/TCPIP Stack/MPFS.c"  
	
${OBJECTDIR}/_ext/867694782/MPFS2.o: ../Microchip/TCPIP\ Stack/MPFS2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS2.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/MPFS2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/MPFS2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/MPFS2.o.d" -o ${OBJECTDIR}/_ext/867694782/MPFS2.o "../Microchip/TCPIP Stack/MPFS2.c"  
	
${OBJECTDIR}/_ext/867694782/DynDNS.o: ../Microchip/TCPIP\ Stack/DynDNS.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/DynDNS.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/DynDNS.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/DynDNS.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/DynDNS.o.d" -o ${OBJECTDIR}/_ext/867694782/DynDNS.o "../Microchip/TCPIP Stack/DynDNS.c"  
	
${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o: ../Microchip/TCPIP\ Stack/UDPPerformanceTest.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o.d" -o ${OBJECTDIR}/_ext/867694782/UDPPerformanceTest.o "../Microchip/TCPIP Stack/UDPPerformanceTest.c"  
	
${OBJECTDIR}/_ext/867694782/ARCFOUR.o: ../Microchip/TCPIP\ Stack/ARCFOUR.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/867694782 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d 
	@${RM} ${OBJECTDIR}/_ext/867694782/ARCFOUR.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/867694782/ARCFOUR.o.d" -o ${OBJECTDIR}/_ext/867694782/ARCFOUR.o "../Microchip/TCPIP Stack/ARCFOUR.c"  
	
${OBJECTDIR}/_ext/1472/i2c_support.o: ../i2c_support.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_support.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/i2c_support.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/i2c_support.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/i2c_support.o.d" -o ${OBJECTDIR}/_ext/1472/i2c_support.o ../i2c_support.c  
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  
	
${OBJECTDIR}/_ext/1472/MyTFTP.o: ../MyTFTP.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/MyTFTP.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/MyTFTP.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/MyTFTP.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/MyTFTP.o.d" -o ${OBJECTDIR}/_ext/1472/MyTFTP.o ../MyTFTP.c  
	
${OBJECTDIR}/_ext/1472/Settings.o: ../Settings.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/Settings.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/Settings.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/Settings.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/Settings.o.d" -o ${OBJECTDIR}/_ext/1472/Settings.o ../Settings.c  
	
${OBJECTDIR}/_ext/1472/HodoCrate.o: ../HodoCrate.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/HodoCrate.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HodoCrate.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/HodoCrate.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/HodoCrate.o.d" -o ${OBJECTDIR}/_ext/1472/HodoCrate.o ../HodoCrate.c  
	
${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o: ../BerkeleyTCPServerDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o.d" -o ${OBJECTDIR}/_ext/1472/BerkeleyTCPServerDemo.o ../BerkeleyTCPServerDemo.c  
	
${OBJECTDIR}/_ext/1472/PingDemo.o: ../PingDemo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/PingDemo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/PingDemo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ -c ${MP_CC} $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../Microchip/Include" -I"../Microchip/Include/TCPIP Stack" -I".." -I"../Microchip/Include/peripheral" -MMD -MF "${OBJECTDIR}/_ext/1472/PingDemo.o.d" -o ${OBJECTDIR}/_ext/1472/PingDemo.o ../PingDemo.c  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PIC32MXSK=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PIC32MXSK=1,--defsym=_min_heap_size=16000,--defsym=_min_stack_size=2048,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-Os 
else
dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}       -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=16000,--defsym=_min_stack_size=2048,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",-Os
	${MP_CC_DIR}/pic32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/HodoFirmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/FT
	${RM} -r dist/FT

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
