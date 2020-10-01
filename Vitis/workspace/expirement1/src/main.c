/*
 * main.c
 *
 *  Created on: Aug 6, 2020
 *      Author: mulholbn
 */

#include "main.h"

#include "xuartps_hw.h"
#include "xparameters.h"

#include "xil_printf.h"
#include "sleep.h"
#include "memory.h"
#include "xdebug.h"
#include "xil_cache.h"

#include "chDriver.h"
#include "PmodCAN.h"
#include "xgpiops.h"


#define SYS_CLK_HZ 100000000
#define MIN_PB_HZ 60
#define MAX_PB_HZ SYS_CLK_HZ

#define CH_COUNT 4

#define MEM_LENGTH 1048576 //65536
#define DESIRED_ID 0x543

#define MIO_PIN 13


//Special defines to get rid of magic numbers
#define SOF 1
#define ID_BITS 11
#define IDE_BITS 1
#define RTR_BITS 1
#define RESERVED 1
#define SIZE_BITS 4
#define DATA_SIZE 8
#define CRC_SIZE 15
#define EXEMPT_SIZE 10
#define MAX_FRAME_SIZE 200

/*
 * CHANNEL ADDRESSING GPIO DEVICES
 *
 * axi_gpio 0 and axi_gpio_1 have two 32 bit output channels that transmit playback channel addresses to the PL
 *
 * bits [15:0] are playback channel 0 and playback channel 1 addresses
 * bits [31:16] are playback channel 2 and playback channel 3 addresses
 *
 * axi_gpio_0 stores the playback channel write address; this is the address used when
 * "setting" a channels address during write functionality
 *
 * axi_gpio_1 stores the playback channel stop address; it defaults to the memory depth oneb 22, 2019
 *CHANNEL PLAYBACK GPIO DEVICES
 *
 *axi_gpio_3
 *  ch1: 4 bit output for playback channel mode (level signal)
 *  ch2:  4 bit output for playback channel enable (level signal)
 *
 *
 *  axi_gpio_4
 **ch1: 4 bit output for playback channel din (level signal)
 *  ch2:  4 bit output for playback channel write stop address (oneshot)
 *
 *  axi_gpio_5
 *  ch1: 4 bit output for playback channel write address (oneshot)
 *  ch2:  4 bit output for playback channel write din to ram(oneshot)
 ***********************************************************************************
 *  PLAYBACK CLOCK GPIO DEVICES
 *
 *  axi_gpio_2
 *  ch 1: 32 bit input of readback address of playback channel 0 (lower 16 bits), channel 1(upper 16 bits)
 *  ch 2: 32 bit output for setting  playback clock frequency
 *
 *  axi_gpio_6
 *  ch1: 4 bit output for playback channel clock enable
 *  ch2:  4 bit output for playback channel clock write frequency (oneshot)
 *
 *
 * *  axi_gpio_7
 *  ch1:  *  ch 1: 32 bit input of readback address of playback channel 2 (lower 16 bits), channel 3(upper 16 bits)
 *  ch2:  4 bit output for enabling loop playback (ie playback doesn't stop at stop address, address wraps to 0)
 *
 *  */



char input_buffer[256];


//void read();

u32 ch_frequencies[4] = {2000, 2000, 2000, 2000};
u32 stop_addr[4] 	  = {MEM_LENGTH-1, MEM_LENGTH-1, MEM_LENGTH-1, MEM_LENGTH-1};
u8  ch_repeat_mask    = 0b0000;

PmodCAN busDev;
static XGpioPs mio;


void init() {

	initMemory();
	// Disable DCache
	Xil_DCacheDisable();

	//double checked above

	//TODO : check functions
}


void set_stop_addr(u8 ch_num, u32 address) {



	stop_addr[ch_num] = address;

	stopAddr(ch_num, address);


}

void set_addr(u8 ch_num, u32 address) {

	writeAddr(ch_num, address);
}


u32 get_ch_addr(u8 ch_num) {
	return readAddr(ch_num);
}

void set_freq(u8 ch_num, u32 frequency) {

	/* period bus is 22 bits which allows minimum frequency of 30Hz*/

	if (frequency < MIN_PB_HZ || frequency > MAX_PB_HZ) {
		xil_printf(
				"ERROR: %d Hz out of range. Frequency must be between %d and %d. Ignoring command.\n",
				frequency, MIN_PB_HZ, MAX_PB_HZ);
	} else {
		// Period is the duration a single sample value is held on the output
		ch_frequencies[ch_num] = frequency;
		xil_printf("Using period duration: %d\n", SYS_CLK_HZ / frequency);


		writeHalfPeriod(ch_num,SYS_CLK_HZ / frequency);

	}

}

void load(u8 ch_mask, u8 loop_mask, u32 length) {
	char c;

	if((loop_mask & 0x1) == 0x1){
		loopPlayback(0, 1);
	}
	else{
		loopPlayback(0, 0);
	}
	if((loop_mask & 0x2) == 0x2){
		loopPlayback(1, 1);
	}
	else{
		loopPlayback(1, 0);
	}
	if((loop_mask & 0x4) == 0x4){
		loopPlayback(2, 1);
	}
	else{
		loopPlayback(2, 0);
	}
	if((loop_mask & 0x8) == 0x8){
		loopPlayback(3, 1);
	}
	else{
		loopPlayback(3, 0);
	}
	ch_repeat_mask = loop_mask;

	xil_printf("The length of the message is %ld\r\n", length);

	for (u32 i=0; i<length; ++i) {
		c = XUartPs_RecvByte(STDIN_BASEADDRESS);


		//Ugly but works out well
		if((ch_mask & 0x1) == 0x1){
			writeBit((c & 0x1), 1);
		}
		if((ch_mask & 0x2) == 0x2){
			writeBit((c & 0x2), 2);
		}
		if((ch_mask & 0x4) == 0x4){
			writeBit((c & 0x4), 3);
		}
		if((ch_mask & 0x8) == 0x8){
			writeBit((c & 0x8), 4);
		}

	}

	//TODO: GET TO THIS NEED TO ADD STUFF SOON!

}


void play(u8 ch_mask)
{
	// Reset address to zero and find which channel is the "stop channel"
	u8 stop_ch = 0;
	u64 min_duration = -1;

	//This is a stupid way to do the loading of data, but it insures that all writes are completed.

	writetoDev();

	for (u8 ch=0; ch<CH_COUNT; ++ch)
	{
		if ((ch_mask >> ch) & 1)
		{
			set_addr(ch, 0);
			xil_printf("ch %d address set to %d\n", ch, get_ch_addr(ch));
			xil_printf("sysclk freq: %d \r\n", ch_frequencies[ch]);

			if (((ch_repeat_mask >> ch) & 1) == 0)  // Don't trigger on repeat signal
			{
				u64 duration = stop_addr[ch] * (SYS_CLK_HZ / ch_frequencies[ch]);
				xil_printf("ch=%d Not repeat, duration=%d\n", ch, duration);
				if (duration < min_duration)
				{
					xil_printf("ch=%d Is min duration\n", ch);
					min_duration = duration;
					stop_ch = ch;
				}
			}
		}
	}

	xil_printf("Waiting for addr=%d read: %d on ch=%d\n\r", stop_addr[stop_ch], readStop(stop_ch), stop_ch);
	xil_printf("Config = %lx \r\n", readConfig(stop_ch));
	xil_printf("REG1 = %lx \r\n", readPeriod(stop_ch));
	xil_printf("REG2 = %lx \r\n", readAddr(stop_ch));
	xil_printf("REG3 = %lx \r\n", readStart(stop_ch));
	xil_printf("PLAY!!!\r\n");
	sleep(3);
	// Start playback
	//Ugly but works out well
	if((ch_mask & 0x1) == 0x1){
		enablePlayback(0);
	}
	if((ch_mask & 0x2) == 0x2){
		enablePlayback(1);
	}
	if((ch_mask & 0x4) == 0x4){
		enablePlayback(2);
	}
	if((ch_mask & 0x8) == 0x8){
		enablePlayback(3);
	}
	//XGpio_DiscreteWrite(&Gpio_9, PB_CH_EN_GPIO_CH, 1000);

	// Wait for stop channel to reach stop address

	int i = get_ch_addr(stop_ch);
	xil_printf("RAM Address Readback: %d\n\r", i);
	//xil_printf("GPIO Period Val Readback: %d\n\r",XGpio_DiscreteRead(&Gpio_2, PB_CH_HP_GPIO_CH));
	//xil_printf("%d\n",XGpio_DiscreteRead(&Gpio_9, PB_CH_HP_GPIO_CH));
	while (i < stop_addr[stop_ch]) {
		xil_printf("RAM Address Readback: %d\n\r", i);
		i = get_ch_addr(stop_ch);
		//xil_printf("%d\n",XGpio_DiscreteRead(&Gpio_3, PB_CH_EN_GPIO_CH));
		//xil_printf("%d\n",XGpio_DiscreteRead(&Gpio_8, PB_CH_HP_GPIO_CH));
	}

	xil_printf("Stopping\n\r");
	readDev();
	stop();



	//XGpio_DiscreteWrite(&Gpio_3, PB_CH_EN_GPIO_CH, 0b0000);
}

void stop()
{
	disablePlayback(0);
	disablePlayback(1);
	disablePlayback(2);
	disablePlayback(3);
}


void doPlayback(u32 baud, u8 msgSize){
	set_stop_addr(0,msgSize*32);
	//set_addr(0,0);
	loopPlayback(0, 1);
	set_freq(0,baud);
	play(1);
}


//This assumes the output array is large enough to handle the data
u8 bitStuff(u32* input, u8 size, u32* output){
	//SOF is always 0, so this will reset correctly
	u8 previousBit = 1;
	u8 runCount = 1;
	u8 stuffedNum = 0;
	for(u8 i =0; i < size; i++){
		u8 bit = (input[i] & 0x1);
		if(bit != previousBit){
			previousBit = bit;
			runCount = 0;
			output[i+stuffedNum] = input[i];
		} else{
			if(runCount == 4){
				output[i+stuffedNum] = ~input[i];
				stuffedNum ++;
				runCount = 0;
				previousBit = ~input[i];

			} else{
				runCount++;
			}
			output[i+stuffedNum] = input[i];
		}
	}
	return size+stuffedNum;
}


//I am assuming that this is right. Eek
u16 genCRC(u32* input, u8 size){
	u16 crc = 0;
	for(int i = 0; i < size; i++){
		u8 crcTmp = (input[i] & 0x1) ^ ((crc >> 14) & 0x1);
		crc <<= 1;
		if(crcTmp > 0){
			crc ^= 0x4599;
		}
	}
	return crc;
}



//Construts a CAN Low Message, easier for me, as 0 == 0
u8 createCANMessage(CAN_Message message, u8 chUnit){
	if(message.ide){
		xil_printf("This is a long ID. I don't know what to do \r\n");
		while(1);
	}
	/* Ok this is a huge waste of data for this experiment. Each bit is represented by a full 32 bit number. While this may seem over zealous when the system will\
	 * only detect a single bit at a time, this gets us closer to the memory usage for the signal if it was played back during the real experiment. In truth, we may be looking
	 * at multiple times more if we are going to do analog.
	*/

	//TODO: BAD. FIX SOME TIME
	//Going to be doing a lot of stuff with scope to minimize data on the stack

	u32 canBits[SOF+ID_BITS+IDE_BITS+RTR_BITS+RESERVED+SIZE_BITS+DATA_SIZE*message.dlc+CRC_SIZE];
	u32 postStuffed[MAX_FRAME_SIZE];
	//Initialize both to be 0.
	for(int i = 0;i < SOF+ID_BITS+IDE_BITS+RTR_BITS+RESERVED+SIZE_BITS+DATA_SIZE*message.dlc+CRC_SIZE; i++){
		canBits[i] = 0;
	}
	for(int i=0; i < MAX_FRAME_SIZE; i++){
		postStuffed[i] = 0;
	}

	//Start with adding the SOF

	canBits[0] = 0;

	//Next add the ID Bits

	//There is probably a mathematical way to do this that doesn't involve branching, but it escapes me. This should only be a few instructions longer.

	for(int i = 0; i < ID_BITS; i++){
		u8 bit = ((message.id >> ((ID_BITS-1) - i)) & 0x1);
		if(bit){
			canBits[SOF+i] = 0xFFFFFFFF;
		} else{
			canBits[SOF+i] = 0;
		}
	}

	//Add request remote
	{
		u8 bit = (message.rtr & 0x1);
		if(bit){
			canBits[SOF+ID_BITS] = 0xFFFFFFFF;
		} else{
			canBits[SOF+ID_BITS] = 0;
		}
	}
	//Add ID Ext. Bit, always a 0, and reserved, also 0

	canBits[SOF+ID_BITS+RTR_BITS] = 0;
	canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS] = 0;

	//Add the length bits
	for(int i = 0; i < SIZE_BITS; i++){
		u8 bit = ((message.dlc >> ((SIZE_BITS-1) - i)) & 0x1);
		if(bit){
			canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+i] = 0xFFFFFFFF;
		} else{
			canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+i] = 0;
		}
	}

	//This is the fun one, add the data

	for(int j = 0; j < message.dlc; j++){
		for(int i = 0; i < DATA_SIZE; i++){
			u8 bit = ((message.data[j] >> ((DATA_SIZE-1) - i)) & 0x1);
			if(bit){
				canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+SIZE_BITS+(j*DATA_SIZE)+i] = 0xFFFFFFFF;
			} else{
				canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+SIZE_BITS+(j*DATA_SIZE)+i] = 0;
			}
		}
	}

	//Now given the first few fields, we need to create the CRC

	u16 CRC = genCRC(canBits, (SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+SIZE_BITS+(message.dlc * DATA_SIZE)));

	//Now that we have our CRC, we need to place it into the canBits array

	for(int i = 0; i < CRC_SIZE; i++){
		u8 bit = ((CRC >> ((CRC_SIZE - 1) - i)) & 0x1);
		if(bit){
			canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+SIZE_BITS+(message.dlc * DATA_SIZE)+i] = 0xFFFFFFFF;
		} else{
			canBits[SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+SIZE_BITS+(message.dlc * DATA_SIZE)+i] = 0;
		}
	}

	//Now we have to bitstuff. From this point on, we are modifying postStuffed
	u8 newSize = bitStuff(canBits,(SOF+ID_BITS+RTR_BITS+IDE_BITS+RESERVED+SIZE_BITS+(message.dlc * DATA_SIZE)+CRC_SIZE),postStuffed);

	//Use newSize as our epoc, as that should be the last bit of the CRC + 1;

	//TODO: CRC DELIM, ACK AND ACK DELIM ARE INVERTED
	//Add CRC Delim
	postStuffed[newSize] = 0;

	//Add ACK
	postStuffed[newSize + 1] = 0xFFFFFFFF;

	//Add ACK Delim
	postStuffed[newSize + 2] = 0;

	//Add 10 low bits, 7 for EOF, 3 for Interframe spacing

	for(int i = 0; i < 10; i++){
		postStuffed[newSize + 3 + i] = 0;
	}

	//Print out the CANL data, debugging

	for(int i =0; i < newSize+13; i++){
		//Print a byte to a line, but only one bit at a time, stops us from overflowing
		xil_printf("%d", (postStuffed[i] & 0x1));
		if(((i+1) % 8) == 0){
			xil_printf("\r\n");
		}
		writeWord(postStuffed[i], 1);
	}


	//send stuff to memory

	//return newSize+13+30;
	return newSize+13;




}


int main(void) {

	CAN_Message RxMessage;
	CAN_RxBuffer target;
	u8 status;
	u8 rx_int_mask;
	XGpioPs_Config *ConfigPtr;


	init();

	ConfigPtr = XGpioPs_LookupConfig(0);
	XGpioPs_CfgInitialize(&mio,ConfigPtr,ConfigPtr->BaseAddr);
	XGpioPs_SetDirectionPin(&mio, MIO_PIN,1);
	XGpioPs_SetOutputEnablePin(&mio, MIO_PIN,1);
	XGpioPs_WritePin(&mio, MIO_PIN,0);
	/*
	CAN_begin(&busDev, XPAR_PMODCAN_0_AXI_LITE_GPIO_BASEADDR,XPAR_PMODCAN_0_AXI_LITE_SPI_BASEADDR);
	CAN_Configure(&busDev, CAN_ModeNormalOperation);
	xil_printf("Waiting to receive\r\n");
	while (1) {
		do {
			status = CAN_ReadStatus(&busDev);
		} while ((status & CAN_STATUS_RX0IF_MASK) != 0 && (status & CAN_STATUS_RX1IF_MASK) != 0);

		switch (status & 0x03) {
		case 0b01:
		case 0b11:
			xil_printf("fetching message from receive buffer 0\r\n");
			target = CAN_Rx0;
			rx_int_mask = CAN_CANINTF_RX0IF_MASK;
			break;
		case 0b10:
			xil_printf("fetching message from receive buffer 1\r\n");
			target = CAN_Rx1;
			rx_int_mask = CAN_CANINTF_RX1IF_MASK;
			break;
		default:
			//xil_printf("Error, message not received\r\n");
			continue;
		}

		CAN_ReceiveMessage(&busDev, &RxMessage, target);

		CAN_ModifyReg(&busDev, CAN_CANINTF_REG_ADDR, rx_int_mask, 0);
		XGpioPs_WritePin(&mio, MIO_PIN,1);
		xil_printf("Received Message");
		xil_printf("ID: %03x\r\n", RxMessage.id);
		if(RxMessage.id == DESIRED_ID){
			u8 bitsize = createCANMessage(RxMessage, 1);
			doPlayback((250000*32),bitsize);
		}
		XGpioPs_WritePin(&mio, MIO_PIN,0);

		sleep(1);
		xil_printf("Waiting to receive\r\n");
	}
	*/
	RxMessage.id = 0x543;
	RxMessage.rtr = 0;
	RxMessage.ide = 0;
	RxMessage.srr = 0;
	RxMessage.dlc = 6;
	RxMessage.data[0] = 0xAB;
	RxMessage.data[1] = 0x56;
	RxMessage.data[2] = 0x32;
	RxMessage.data[3] = 0xFD;
	RxMessage.data[4] = 0xC2;
	RxMessage.data[5] = 0x3D;
	xil_printf("Received Message");
	xil_printf("ID: %03x\r\n", RxMessage.id);
	XGpioPs_WritePin(&mio, MIO_PIN,1);
	if(RxMessage.id == DESIRED_ID){
		u8 bitsize = createCANMessage(RxMessage, 1);
		doPlayback((250000*32),bitsize);
	}
	xil_printf("\r\n\r\n\r\n\r\n\r\n\r\n\r\n");

}

