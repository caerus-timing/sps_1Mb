/*
 * memory.c
 *
 *  Created on: Aug 11, 2020
 *      Author: mulholbn
 */

#include "memory.h"
#include "xil_types.h"
#include <stdbool.h>
#include "xaxicdma.h"
#include "xil_cache.h"
#include <stdio.h>

//Define an accumulator value for storing data that is sent as a single bit

u32 ch1Acc = 0;
u32 ch2Acc = 0;
u32 ch3Acc = 0;
u32 ch4Acc = 0;

u32 ch1Count = 0;
u32 ch2Count = 0;
u32 ch3Count = 0;
u32 ch4Count = 0;

volatile u32 * ch1Loc = (u32 *) CH1BASE;
volatile u32 * ch2Loc = (u32 *) CH2BASE;
volatile u32 * ch3Loc = (u32 *) CH3BASE;
volatile u32 * ch4Loc = (u32 *) CH4BASE;

static XAxiCdma AxiCdma0;	/* Instance of the XAxiCdma */
static XAxiCdma AxiCdma1;	/* Instance of the XAxiCdma */
static XAxiCdma AxiCdma2;	/* Instance of the XAxiCdma */
static XAxiCdma AxiCdma3;	/* Instance of the XAxiCdma */

#define BRAM 0xC0000000


u32 random = 0;
void toMemory(u8 chUnit);

void initMemory(){
	XAxiCdma_Config *CfgPtr;
	int Status;

	//Init CDMA 0
	CfgPtr = XAxiCdma_LookupConfig(XPAR_AXI_CDMA_0_DEVICE_ID);
	if (!CfgPtr) {
		printf("This is really bad.\r\n");
		while(1);
	}

	Status = XAxiCdma_CfgInitialize(&AxiCdma0, CfgPtr,CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		printf("This is really bad.\r\n");
		while(1);
	}
	/* Disable interrupts, we use polling mode
	 */
	XAxiCdma_IntrDisable(&AxiCdma0, XAXICDMA_XR_IRQ_ALL_MASK);

	//Init CDMA 1
	CfgPtr = XAxiCdma_LookupConfig(XPAR_AXI_CDMA_1_DEVICE_ID);
	if (!CfgPtr) {
		printf("This is really bad.\r\n");
		while(1);
	}

	Status = XAxiCdma_CfgInitialize(&AxiCdma1, CfgPtr,CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		printf("This is really bad.\r\n");
		while(1);
	}
	/* Disable interrupts, we use polling mode
	 */
	XAxiCdma_IntrDisable(&AxiCdma1, XAXICDMA_XR_IRQ_ALL_MASK);


	//Init CDMA 2
	CfgPtr = XAxiCdma_LookupConfig(XPAR_AXI_CDMA_2_DEVICE_ID);
	if (!CfgPtr) {
		printf("This is really bad.\r\n");
		while(1);
	}

	Status = XAxiCdma_CfgInitialize(&AxiCdma2, CfgPtr,CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		printf("This is really bad.\r\n");
		while(1);
	}
	/* Disable interrupts, we use polling mode
	 */
	XAxiCdma_IntrDisable(&AxiCdma2, XAXICDMA_XR_IRQ_ALL_MASK);

	//Init CDMA 3
	CfgPtr = XAxiCdma_LookupConfig(XPAR_AXI_CDMA_3_DEVICE_ID);
	if (!CfgPtr) {
		printf("This is really bad.\r\n");
		while(1);
	}

	Status = XAxiCdma_CfgInitialize(&AxiCdma3, CfgPtr,CfgPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		printf("This is really bad.\r\n");
		while(1);
	}
	/* Disable interrupts, we use polling mode
	 */
	XAxiCdma_IntrDisable(&AxiCdma3, XAXICDMA_XR_IRQ_ALL_MASK);



}

void writeWord(u32 data, u8 chUnit){
	u32 * chStore;
	//i++;
	switch(chUnit){
		case 1:
			chStore = &ch1Acc;
			break;
		case 2:
			chStore = &ch2Acc;
			break;
		case 3:
			chStore = &ch3Acc;
			break;
		case 4:
			chStore = &ch4Acc;
			break;
		default:
			return;
			break;
	}
	*chStore = data;


	toMemory(chUnit);
}


void toMemory(u8 chUnit){

	switch(chUnit){
			case 1:
				* ch1Loc = ch1Acc;
				ch1Loc += 0x1;
				printf("@ %p ch1Acc: %lX \r\n",(void *)ch1Loc,ch1Acc);
				ch1Acc = 0;
				ch1Count = 0;
				break;
			case 2:
				* ch2Loc = ch2Acc;
				ch2Loc += 0x1;
				printf("@ %p ch2Acc: %lX \r\n",(void *)ch2Loc, ch2Acc);
				ch2Acc = 0;
				ch2Count = 0;
				break;
			case 3:
				* ch3Loc = ch3Acc;
				ch3Loc += 0x1;
				printf("@ %p ch3Acc: %lX \r\n",(void *)ch3Loc, ch3Acc);
				ch3Acc = 0;
				ch3Count = 0;
				break;
			case 4:
				* ch4Loc = ch4Acc;
				ch4Loc += 0x1;
				printf("@ %p ch4Acc: %lX \r\n",(void *)ch4Loc, ch4Acc);
				ch4Acc = 0;
				ch4Count = 0;
				break;
			default:
				return;
				break;

		}
}



void writeBit(u8 val, u8 chUnit){
	u32 * chStore;
	u32 * chCount;
	//i++;
	switch(chUnit){
		case 1:
			chStore = &ch1Acc;
			chCount = &ch1Count;
			break;
		case 2:
			chStore = &ch2Acc;
			chCount = &ch2Count;
			break;
		case 3:
			chStore = &ch3Acc;
			chCount = &ch3Count;
			break;
		case 4:
			chStore = &ch4Acc;
			chCount = &ch4Count;
			break;
		default:
			return;
			break;

	}
	//printf("We have gone through %d values\r\n",i);
	//Now we need to do some math with the count and the storage. Little Endian mode

	//Shift the bit 0 of the input over a set amount
	u32 temp = (val & 0x1) << *chCount;

	//Now that we have our value, we need to and it with the current value in the channel Storage
	*chStore = (*chStore | temp);

	*chCount += 1;

	if(*chCount == 32){
		toMemory(chUnit);
	}

}

void readDev(){

	u32 length;
	int Status;
	int CDMA_Status;
	for(int i=0; i <= random; i++){
				ch2Loc[i] = 0;
	}
	printf("The engine is going to transfer %ld words from BRAM to CH2BASE \r\n",random);


	Status = XAxiCdma_SimpleTransfer(&AxiCdma0, (u32) BRAM, (u32) CH2BASE, (random*4), NULL, NULL);

	if (Status != XST_SUCCESS) {
		xil_printf("CDMA STATUS: %d\r\n",Status);
		CDMA_Status = XAxiCdma_GetError(&AxiCdma0);
		if (CDMA_Status != 0x0) {
			XAxiCdma_Reset(&AxiCdma0);
			xil_printf("Error Code = %x\r\n",CDMA_Status);
		}
		printf("Error: CDMA 0\r\n");
		while(1);
	}




	for(int i=0; i <= random; i++){
		xil_printf("@ %d ch2Data: %lX \r\n",i, ch2Loc[i]);
	}
}

void writetoDev(){

	u32 length;
	int Status;
	int CDMA_Status;
	length =  ch1Loc - (u32 *) CH1BASE;
	printf("The engine is going to transfer %ld words from CH1BASE to BRAM \r\n",length);
	if(length != 0){
		Status = XAxiCdma_SimpleTransfer(&AxiCdma0, (u32) CH1BASE, (u32) BRAM, (length*4), NULL, NULL);

		if (Status != XST_SUCCESS) {
			CDMA_Status = XAxiCdma_GetError(&AxiCdma0);
			if (CDMA_Status != 0x0) {
				XAxiCdma_Reset(&AxiCdma0);
				xil_printf("Error Code = %x\r\n",CDMA_Status);
			}
			printf("Error: CDMA 0\r\n");
			while(1);
		}
	}
	random = length;
	length =  ch2Loc - (u32 *) CH2BASE;
	if(length != 0){
		Status = XAxiCdma_SimpleTransfer(&AxiCdma1, (u32) CH2BASE, (u32) BRAM, length, NULL, NULL);

		if (Status != XST_SUCCESS) {
			CDMA_Status = XAxiCdma_GetError(&AxiCdma1);
			if (CDMA_Status != 0x0) {
				XAxiCdma_Reset(&AxiCdma1);
				xil_printf("Error Code = %x\r\n",CDMA_Status);
			}
			printf("Error: CDMA 1\r\n");
			while(1);
		}
	}
	length =  ch3Loc - (u32 *) CH3BASE;
	if(length != 0){
		Status = XAxiCdma_SimpleTransfer(&AxiCdma2, (u32) CH3BASE, (u32) BRAM, length, NULL, NULL);

		if (Status != XST_SUCCESS) {
			CDMA_Status = XAxiCdma_GetError(&AxiCdma2);
			if (CDMA_Status != 0x0) {
				XAxiCdma_Reset(&AxiCdma2);
				xil_printf("Error Code = %x\r\n",CDMA_Status);
			}
			printf("Error: CDMA 2\r\n");
			while(1);
		}
	}
	length =  ch4Loc - (u32 *) CH4BASE;
	if(length != 0){
		Status = XAxiCdma_SimpleTransfer(&AxiCdma3, (u32) CH4BASE, (u32) BRAM, length, NULL, NULL);

		if (Status != XST_SUCCESS) {
			CDMA_Status = XAxiCdma_GetError(&AxiCdma3);
			if (CDMA_Status != 0x0) {
				XAxiCdma_Reset(&AxiCdma3);
				xil_printf("Error Code = %x\r\n",CDMA_Status);
			}
			printf("Error: CDMA 3\r\n");
			while(1);
		}
	}
	while (XAxiCdma_IsBusy(&AxiCdma0)) {
			/* Wait */
	}

	//Now we have to null out all the accumulators and memory address holders.
	ch1Acc = 0;
	ch2Acc = 0;
	ch3Acc = 0;
	ch4Acc = 0;

	ch1Count = 0;
	ch2Count = 0;
	ch3Count = 0;
	ch4Count = 0;

	ch1Loc = (u32 *) CH1BASE;
	ch2Loc = (u32 *) CH2BASE;
	ch3Loc = (u32 *) CH3BASE;
	ch4Loc = (u32 *) CH4BASE;

}


