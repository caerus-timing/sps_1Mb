/*
 * memory.h
 *
 *  Created on: Aug 11, 2020
 *      Author: mulholbn
 */

#ifndef SRC_MEMORY_H_
#define SRC_MEMORY_H_
#include "xparameters.h"
#include "xil_types.h"
/*
 * This section describes the RAM addressing and creates objects and locations for a simple file system.
 * Files are described in the file header.
 * This section is based on a memory map made for a 4 channel object handler, with sections set aside for heap and stack
 *
 *  OVERALL DESIGN from "top to bottom" "low addr -> high":
 *  (fmH) Free Memory High: 261 MB
 * 	White Space: 5 MB
 * 	(ipC) Inter Process Communciation: 64 MB
 * 	White Space: 5 MB
 * 	(mm) Memory Mapper: 64 MB
 * 	White Space: 5 MB
 * 	(ch1) Channel 1: 128 MB
 * 	White Space: 5 MB
 * 	(ch2) Channel 2: 64 MB
 * 	White Space: 5 MB
 * 	(ch3) Channel 3: 64 MB
 * 	White Space: 5 MB
 * 	(ch4) Channel 4: 64 MB
 * 	White Space: 5 MB
 * 	(fmL) Free Memory Low: 256 MB
 *
 *
 * Reasoning:
 * Free Memory High: More stack type items then heap, want enough to handle large data sets outside of the channel blocks
 * Inter Process Communication: Allows for data to transfer between the two cores
 * Memory Mapper: Lets me implement a malloc/ calloc type of thing eventually
 * Channel 1: Allows for larger data sets to be streamed to the channel 1 unit
 * Channel 2 & 3: Both utilize a high bandwidth connection but with smaller datasets than channel 1
 * Channel 4: Will be cache coherent
 * Free Memory Low: Less heap space, than stack
 * White Space: Gives us a little breathing room
 *
 */


//Common MB sizes for easier code readability. And these never change
#define oneMB 0x100000
#define fiveMB 0x500000
#define sixtyfourMB 0x4000000

#define FMHBASE XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define FMHHIGH (FMHBASE + (4*sixtyfourMB) + fiveMB)

#define IPCBASE (FMHHIGH + fiveMB)
#define IPCHIGH (IPCBASE + sixtyfourMB)

#define MMBASE (IPCHIGH + fiveMB)
#define MMHIGH (MMBASE + sixtyfourMB)

#define CH1BASE (MMHIGH + fiveMB)
#define CH1HIGH (CH1BASE + 2* sixtyfourMB)

#define CH2BASE (CH1HIGH + fiveMB)
#define CH2HIGH (CH2BASE + sixtyfourMB)

#define CH3BASE (CH2HIGH + fiveMB)
#define CH3HIGH (CH3BASE + sixtyfourMB)

#define CH4BASE (CH3HIGH + fiveMB)
#define CH4HIGH (CH4BASE + sixtyfourMB)

#define FMLBASE (CH4HIGH + fiveMB)
#define FMLHIGH XPAR_PS7_DDR_0_S_AXI_HIGHADDR


void initMemory();
void writetoDev();
void readDev();
void writeWord(u32 data);




#endif /* SRC_MEMORY_H_ */
