/*
 * chDriver.c
 *
 *  Created on: Aug 13, 2020
 *      Author: mulholbn
 */

#include "chDriver.h"
#include "xil_io.h"


u32 readReg(u8 channel, u8 offset);
void writeReg(u8 channel, u8 offset, u32 data);



u32 readReg(u8 channel, u8 offset){
	switch(channel){
	case 0:
		return Xil_In32(CH1_ADDR+offset);
		break;
	case 1:
		return Xil_In32(CH2_ADDR+offset);
		break;
	case 2:
		return Xil_In32(CH3_ADDR+offset);
		break;
	case 3:
		return Xil_In32(CH4_ADDR+offset);
		break;
	default:
		break;
	}
	return 0;
}

void writeReg(u8 channel, u8 offset, u32 data){
	switch(channel){
		case 0:
			Xil_Out32(CH1_ADDR+offset,data);
			break;
		case 1:
			Xil_Out32(CH2_ADDR+offset,data);
			break;
		case 2:
			Xil_Out32(CH3_ADDR+offset,data);
			break;
		case 3:
			Xil_Out32(CH4_ADDR+offset,data);
			break;
		default:
			break;
		}
}



u32 readConfig(u8 channel){
	return readReg(channel, REG0);
}
void writeMode(u8 channel,u8 mode){
	u32 storage;
	storage = readReg(channel, REG0);
	if(mode == 0){
		storage = storage | 0x1;
	}
	else{
		storage = storage & 0xFFFFFFFE;
	}
	writeReg(channel, REG0, storage);
}


void enablePlayback(u8 channel){
	volatile u32 storage;
	storage = readReg(channel, REG0);
	storage = storage | 0x4;
	writeReg(channel, REG0, storage);
}

void disablePlayback(u8 channel){
	volatile u32 storage;
	storage = readReg(channel, REG0);
	storage = storage & 0xFFFFFFFB;
	writeReg(channel, REG0, storage);
}

void writeAddr(u8 channel, u32 addr){
	//Assume that the value in the reg is always low except when we set it high
	writeReg(channel, REG3, addr);
	volatile u32 storage, storageHigh;
	storage = readReg(channel, REG0);
	storageHigh = storage | 0x10;
	writeReg(channel, REG0, storageHigh);
	writeReg(channel, REG0, storage);

}

void stopAddr(u8 channel, u32 addr){
	//Assume that the value in the reg is always low except when we set it high
	writeReg(channel, REG4, addr);
	volatile u32 storage, storageHigh;
	storage = readReg(channel, REG0);
	storageHigh = storage | 0x40;
	writeReg(channel, REG0, storageHigh);
	writeReg(channel, REG0, storage);
}

void writeHalfPeriod(u8 channel, u32 period){
	//Assume that the value in the reg is always low except when we set it high
	writeReg(channel, REG1, period);
	volatile u32 storage, storageHigh;
	storage = readReg(channel, REG0);
	storageHigh = storage | 0x1000;
	writeReg(channel, REG0, storageHigh);
	writeReg(channel, REG0, storage);
}

void loopPlayback(u8 channel, u8 enabled){
	volatile u32 storage;
	storage = readReg(channel, REG0);
	if(enabled == 0){
		storage = storage | 0x4000;
	}
	else{
		storage = storage & 0xFFFFBFFF;
	}
	writeReg(channel, REG0, storage);
}

u32 readAddr(u8 channel){
	return readReg(channel, REG2);
}

u32 readStop(u8 channel){
	return readReg(channel, REG4);
}

u32 readPeriod(u8 channel){
	return readReg(channel, REG1);
}

u32 readStart(u8 channel){
	return readReg(channel, REG3);
}
