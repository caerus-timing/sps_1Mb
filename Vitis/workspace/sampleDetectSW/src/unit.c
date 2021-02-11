/*
 * memory.c
 *
 *  Created on: Aug 11, 2020
 *      Author: mulholbn
 */

#include "unit.h"
#include "xil_types.h"
#include <stdbool.h>
#include "xaxicdma.h"
#include "xil_cache.h"
#include <stdio.h>

//Define an accumulator value for storing data that is sent as a single bit

u32 ch1Acc = 0;

u32 ch1Count = 0;

volatile u32 * ch1Loc = (u32 *) CH1BASE;


static XAxiCdma AxiCdma0;	/* Instance of the XAxiCdma */

#define BRAM 0xC0000000


u32 random = 0;
void toMemory();

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
	XAxiCdma_IntrDisable(&AxiCdma0, XAXICDMA_XR_IRQ_ALL_MASK);



}

void writeWord(u32 data){
	ch1Acc = data;


	toMemory();
}


void toMemory(){
	* ch1Loc = ch1Acc;
	ch1Loc += 0x1;
	printf("@ %p ch1Acc: %lX \r\n",(void *)ch1Loc,ch1Acc);
	ch1Acc = 0;
	ch1Count = 0;
}


void readDev(){
	u32 length;
	int Status;
	int CDMA_Status;
	for(int i=0; i <= 64; i++){
		ch1Loc[i] = 0;
	}
	printf("The engine is going to transfer %ld words from BRAM to CH2BASE \r\n",64);


	Status = XAxiCdma_SimpleTransfer(&AxiCdma0, (u32) BRAM, (u32) CH1BASE, (64*4), NULL, NULL);

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




	for(int i=0; i <= 64; i++){
		xil_printf("@ %d ch1Data: %lX \r\n",i, ch1Loc[i]);
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
	while (XAxiCdma_IsBusy(&AxiCdma0)) {
			/* Wait */
	}

	//Now we have to null out all the accumulators and memory address holders.
	ch1Acc = 0;

	ch1Count = 0;

	ch1Loc = (u32 *) CH1BASE;

}


