/*
 * chDriver.h
 *
 *  Created on: Aug 13, 2020
 *      Author: mulholbn
 */

#ifndef SRC_CHDRIVER_H_
#define SRC_CHDRIVER_H_

#include "xil_types.h"

#define CH1_ADDR XPAR_CH_UNIT_0_S00_AXI_BASEADDR
#define CH2_ADDR XPAR_CH_UNIT_1_S00_AXI_BASEADDR
#define CH3_ADDR XPAR_CH_UNIT_2_S00_AXI_BASEADDR
#define CH4_ADDR XPAR_CH_UNIT_3_S00_AXI_BASEADDR

#define REG0 0
#define REG1 4
#define REG2 8
#define REG3 12
#define REG4 16

u32 readConfig(u8 channel);
void writeMode(u8 channel,u8 mode);
void enablePlayback(u8 channel);
void disablePlayback(u8 channel);
void writeAddr(u8 channel, u32 addr);
void stopAddr(u8 channel, u32 addr);
void writeHalfPeriod(u8 channel, u32 period);
void loopPlayback(u8 channel, u8 enabled);
u32 readAddr(u8 channel);
u32 readStop(u8 channel);
u32 readStart(u8 channel);
u32 readPeriod(u8 channel);



#endif /* SRC_CHDRIVER_H_ */
