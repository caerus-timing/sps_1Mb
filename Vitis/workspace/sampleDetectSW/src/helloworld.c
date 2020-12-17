/******************************************************************************
 *
 * Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Use of the Software is limited solely to applications:
 * (a) running on a Xilinx device, or
 * (b) that interact with a Xilinx device through a bus or interconnect.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
 * OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Except as contained in this notice, the name of the Xilinx shall not be used
 * in advertising or otherwise to promote the sale, use or other dealings in
 * this Software without prior written authorization from Xilinx.
 *
 ******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "xuartps_hw.h"
#include "xparameters.h"

#include "xil_printf.h"
#include "sleep.h"
#include "memory.h"
#include "xdebug.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xscugic.h"

static XScuGic GICInstance;
#define INTC_INTERRUPT_ID_0 28 // IRQ_F2P[0]

#define NUMSIGS 100
#define SIGBITS 100
#define NUMBYTE 28
//Hex Values
//A: 2 are turned on and set to dominant
//E: Both turned on, first value is dominant, second is recessive
//B: Both turned on, first value is recessive, second is dominant

u8 sem; //Worst semaphore implimentation of all time.




void isr(){
	//SOOOO STUPID. BUT IT IS NEEDED
	if(sem == 1){
		sem = 0;
	} else {
		sem = 1;
	}
}

// sets up the interrupt system and enables interrupts for IRQ_F2P[1:0]
int setup_interrupt_system() {

    int result;
    XScuGic *intc_instance_ptr = &GICInstance;
    XScuGic_Config *intc_config;

    // get config for interrupt controller
    intc_config = XScuGic_LookupConfig(XPAR_PS7_SCUGIC_0_DEVICE_ID);
    if (NULL == intc_config) {
        return (XST_FAILURE);
    }

    // initialize the interrupt controller driver
    result = XScuGic_CfgInitialize(intc_instance_ptr, intc_config, intc_config->CpuBaseAddress);

    if (result != XST_SUCCESS) {
        return (result);
    }
    //Interrupt 0
    //Priority will be set in sequence. Will not restart the solvers until all 16 have been solved.
    XScuGic_SetPriorityTriggerType(intc_instance_ptr, INTC_INTERRUPT_ID_0, 0xB0, 0x3);

    result = XScuGic_Connect(intc_instance_ptr, INTC_INTERRUPT_ID_0, (Xil_ExceptionHandler)isr, (void *)&GICInstance);

    if (result != XST_SUCCESS) {
        return (result);
    }

    XScuGic_Enable(intc_instance_ptr, INTC_INTERRUPT_ID_0);

    // initialize the exception table and register the interrupt controller handler with the exception table
    Xil_ExceptionInit();

    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler, intc_instance_ptr);

    // enable non-critical exceptions
    Xil_ExceptionEnable();

    return (XST_SUCCESS);
}


int init() {
	int Status;

	initMemory();
	// Disable DCache
	Xil_DCacheDisable();

	setup_interrupt_system();
}



int main() {
	init();
	print("Hello World\n\r");
	print("Successfully ran Hello World application");
	sleep(5);

	sem = 1;

	//Create the signal for the system.
	//This should run 100 times to create 100 signals
	for (u16 i = 0; i < NUMSIGS; i++) {
		//The array of our signals
		u8 sigArr[NUMBYTE];
		//We need to get these down into groups of 4's
		u16 highCount = (NUMSIGS - i) >> 2; // Divide by 4.
		u16 mixedCount = i % 4;
		u16 counter = 0;
		for (int j = 0; j < highCount; j++) {
			sigArr[j] = 0xAA;
			counter++;
		}
		switch (mixedCount) {
		case 1:
			sigArr[highCount] = 0x2A;
			break;
		case 2:
			sigArr[highCount] = 0x0A;
			break;
		case 3:
			sigArr[highCount] = 0x02;
			break;
		default:
			sigArr[highCount] = 0x00;
			break;
		}
		counter++;
		for (int j = counter; j <= NUMBYTE; j++) {
			//This should fit the signal toa  32 bit word.
			sigArr[counter] = 0x00;
		}

		//Move the signal to the memory thing as it should work this way.
		//This ensures the correct ordering
		//PLAN:
		//31	24 23		16 15 		8 7 	0
		// j+3			j+2			j+1		j
		//MSB   LSB MSB	  LSB    MSB   LSB  MSB LSB
		for (int j = 0; j < NUMBYTE; j += 4) {
			writeWord((sigArr[j + 3] << 24) + (sigArr[j + 2] << 16) + (sigArr[j + 1] << 8) + sigArr[j]);
		}

	}
	writetoDev();
	//Configure the stuff
	//SEND THE ID:
	Xil_Out32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+0,0xFFFFF89B); //ID: 09B
	//Input Baud Rate
	Xil_Out32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+4,0x64); //ID: 26A
	//Playback Rate
	Xil_Out32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+8,0x1); //ID: 26A

	//Signal Stuff
	Xil_Out32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+12,0x70064); //ID: 26A

	xil_printf("Return value:: %X \r\n",Xil_In32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+20));

	//Play
	Xil_Out32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+16,0x3); //ID: 26A

	//Wait for the semaphore to get set. This may never happen.

	while(sem == 1){
		xil_printf("Return value:: %X \r\n",Xil_In32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+20));
	}

	xil_printf("Out of semaphore \r\n");

	//Read the thing
	xil_printf("Return value:: %X \r\n",Xil_In32(XPAR_SAMPLEPOINTDETECTOR_0_BASEADDR+20));

	//Calling it here. Gotta make the algorithm in reverse next time.

	cleanup_platform();
	return 0;
}
