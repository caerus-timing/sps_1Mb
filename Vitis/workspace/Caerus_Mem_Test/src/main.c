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
#include "cmdline.h"
#include "sleep.h"
#include "memory.h"
#include "xdebug.h"
#include "xil_cache.h"

#include "chDriver.h"


#define SYS_CLK_HZ 100000000
#define MIN_PB_HZ 60
#define MAX_PB_HZ SYS_CLK_HZ

#define CH_COUNT 4

#define MEM_LENGTH 1048576 //65536

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
	//xil_printf("Config = %lx \r\n", readConfig(stop_ch));
	//xil_printf("REG1 = %lx \r\n", readPeriod(stop_ch));
	//xil_printf("REG2 = %lx \r\n", readAddr(stop_ch));
	//xil_printf("REG3 = %lx \r\n", readStart(stop_ch));
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
	//readDev();
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

int main(void) {

	init();
//	XGpio_DiscreteWrite(&Gpio_7,WRITE_HP_CH,0b1111);
//	XGpio_DiscreteWrite(&Gpio_7,LOOP_PB_GPIO_CH,0b0000);
	char a;

	//set_stop_addr(0,232);
	u8 buffer_index = 0;
	while (1) {
		a = XUartPs_RecvByte(STDIN_BASEADDRESS);
		if (a == '\n' || a == '\r') {
			CmdLineProcess(input_buffer);
			xil_printf("OK\n");

			buffer_index = 0;
			clear_input_buffer();

		} else {
			input_buffer[buffer_index] = a;
			buffer_index++;
		}
	}

	return 0;
}
void clear_input_buffer(void) {
	u16 i = 0;

	for (i = 0; i < 256; i++) {
		input_buffer[i] = 0;
	}
}
