/*
 * command_io.h
 *
 *  Created on: Aug 6, 2020
 *      Author: mulholbn
 */

#ifndef SRC_COMMAND_IO_H_
#define SRC_COMMAND_IO_H_


// Command line functions
int cmd_help(int argc, char *argv[]);
int cmd_set_freq(int argc, char *argv[]);
//int cmd_pb_ch_off(int argc, char *argv[]);
//int cmd_pb_ch_on(int argc, char *argv[]);


int cmd_set_freq(int argc, char *argv[]);

//int cmd_write_din(int argc, char *argv[]);
//int cmd_pb_clk_on(int argc, char *argv[]);

int cmd_get_ch_addr(int argc, char *argv[]);
int cmd_set_addr(int argc, char *argv[]);

int cmd_play(int argc, char *argv[]);
int cmd_load(int argc, char *argv[]);
int cmd_stop(int argc, char *argv[]);

int cmd_set_stop_addr(int argc, char *argv[]);
int cmd_read(int argc, char *argv[]);

#endif /* COMMAND_IO_H_ */

