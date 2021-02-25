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
#define READBACKLEN 64 //This was determined due to the system sending 20 samples, at 100 bits per sample, coming out to 2000 bits, or 62.5 words, so read 64 in
#define DEBUG


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
	#ifdef DEBUG
	//printf("@ %p ch1Acc: %lX \r\n",(void *)ch1Loc,ch1Acc);
	#endif
	ch1Acc = 0;
	ch1Count = 0;
}

int countZeroes(u32 val){
	int count = 0;
	if(val == 0x00000000){
		return 32;
	} else {
		for(int i = 0; i < 32; i++){
			if(!((val >> i) & 0x1)){
				count++;
			}
		}
	}
	return count;
}

int countOnes(u32 val){
	int count = 0;
	if(val == 0xFFFFFFFF){
		return 32;
	} else {
		for(int i = 0; i < 32; i++){
			if((val >> i) & 0x1){
				count++;
			}
		}
	}
	return count;
}


void readDev(){
	int Status;
	int CDMA_Status;
	for(int i=0; i <= READBACKLEN; i++){
		ch1Loc[i] = 0xF0F0F0F0;
	}
	#ifdef DEBUG
	printf("The engine is going to transfer %d words from BRAM to CH2BASE \r\n",64);
	#endif

	Status = XAxiCdma_SimpleTransfer(&AxiCdma0, (u32) BRAM, (u32) CH1BASE, (READBACKLEN*4), NULL, NULL);

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


	int firstRecessive = 0;
	int firstDominant = 0;
	int secondRecessive = 0;
	int secondDominant = 0;
	int thirdRecessive = 0;
	int thirdDominant = 0;
	int fourthRecessive = 0;
	int fourthDominant = 0;
	int j;
	int prevJ = 0;
	//GROSS
	for(j=0; j <= READBACKLEN; j++){
		int curr = countOnes(ch1Loc[j]);
		firstRecessive += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(; j <= READBACKLEN; j++){
		int curr = countZeroes(ch1Loc[j]);
		firstDominant += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(; j <= READBACKLEN; j++){
		int curr = countOnes(ch1Loc[j]);
		secondRecessive += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(; j <= READBACKLEN; j++){
		int curr = countZeroes(ch1Loc[j]);
		secondDominant += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(;j <= READBACKLEN; j++){
		int curr = countOnes(ch1Loc[j]);
		thirdRecessive += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(; j <= READBACKLEN; j++){
		int curr = countZeroes(ch1Loc[j]);
		thirdDominant += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(;j <= READBACKLEN; j++){
		int curr = countOnes(ch1Loc[j]);
		fourthRecessive += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	prevJ = j;
	for(; j <= READBACKLEN; j++){
		int curr = countZeroes(ch1Loc[j]);
		fourthDominant += curr;
		if(curr != 32 && j != prevJ){
			break;
		}
	}
	printf("%d   |   %d   |   %d   |   %d   |   %d   |   %d   |   %d   |   %d \r\n",firstRecessive,firstDominant,secondRecessive,secondDominant,thirdRecessive,thirdDominant,fourthRecessive,fourthDominant);
}


void writetoDev(){

	u32 length;
	int Status;
	int CDMA_Status;
	length =  ch1Loc - (u32 *) CH1BASE;
	#ifdef DEBUG
	printf("The engine is going to transfer %ld words from CH1BASE to BRAM \r\n",length);
	#endif
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


