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

void init();

#endif /* SRC_MAIN_H_ */
