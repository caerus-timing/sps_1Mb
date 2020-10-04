/*
 * main.h
 *
 *  Created on: Sep 9, 2020
 *      Author: mulholbn
 */

#ifndef SRC_MAIN_H_
#define SRC_MAIN_H_

#include "xil_types.h"

void set_addr(u8 ch_num, u32 address);
void clear_input_buffer();
void ch_on();
void ch_off();
u32 get_ch_addr(u8 ch_num);

void set_freq(u8 ch_num, u32 frequency);
void write_din(u8 ch_num, u32 address, u8 din);
void set_stop_addr(u8 ch_num, u32 address);

void play(u8);
void stop();
void load(u8, u8, u32);

int init();


typedef struct CAN_Message {
   u16 id;     // 11 bit id
   u32 eid;    // 18 bit extended id
   u8 ide;     // 1 to enable sending extended id
   u8 rtr;     // Remote transmission request bit
   u8 srr;     // Standard Frame Remote Transmit Request
   u8 dlc;     // Data length
   u8 data[8]; // Data buffer
   // Some additional information has not yet been encapsulated here
   // (ex:priority bits), primarily, no TXBxCTRL bits
} CAN_Message;


#endif /* SRC_MAIN_H_ */
