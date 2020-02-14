`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Adam Satar
//team17 ece1819
//module that splits 32 bit gpio into 16 bit addresses
//////////////////////////////////////////////////////////////////////////////////


module gpio_bridge 
    
    (     
  input [19:0]ch_0_write_addr_in, ch_1_write_addr_in,ch_2_write_addr_in, ch_3_write_addr_in,
                       ch_0_stop_addr_in, ch_1_stop_addr_in, ch_2_stop_addr_in, ch_3_stop_addr_in,
                       
  input [3:0] mode,playback_en,din,write_addr,write_stop_addr, write_ram,write_half_period,loop_pb,                    
   
  output [19:0] ch_0_write_addr,ch_0_stop_addr,           
                          ch_1_write_addr,ch_1_stop_addr, 
                          ch_2_write_addr,ch_2_stop_addr,
                          ch_3_write_addr,ch_3_stop_addr,
  
 output mode_0,mode_1,mode_2,mode_3,
              playback_en_0,playback_en_1,playback_en_2,playback_en_3,
              din_0,din_1,din_2,din_3,
              write_addr_0,write_addr_1,write_addr_2,write_addr_3,
              write_stop_addr_0,write_stop_addr_1,write_stop_addr_2,write_stop_addr_3,
              write_ram_0,write_ram_1,write_ram_2,write_ram_3,
              write_hp_0,write_hp_1,write_hp_2,write_hp_3,
           loop_pb_0,loop_pb_1,loop_pb_2,loop_pb_3                                                              
  );
  
    assign  loop_pb_0 = loop_pb[0];
  assign loop_pb_1 = loop_pb[1];
  assign loop_pb_2 = loop_pb[2];
  assign loop_pb_3     = loop_pb[3];
  
  
  assign  write_hp_0 = write_half_period[0];
  assign write_hp_1 = write_half_period[1];
  assign write_hp_2 = write_half_period[2];
  assign write_hp_3     = write_half_period[3];
  
assign write_ram_0 = write_ram[0];
assign write_ram_1 = write_ram[1];
assign write_ram_2 = write_ram[2];
assign write_ram_3 = write_ram[3];
  
  
  assign mode_0 = mode[0];
  assign mode_1 = mode[1];
  assign mode_2 = mode[2];
  assign mode_3 = mode[3];
  
  assign playback_en_0 = playback_en[0];
  assign playback_en_1 = playback_en[1];
  assign playback_en_2 = playback_en[2];
  assign playback_en_3 = playback_en[3];
  
  
  assign din_0 = din[0];
  assign din_1 = din[1];
  assign din_2 = din[2];
  assign din_3 = din[3];
  
assign write_addr_0 = write_addr[0];
assign write_addr_1 = write_addr[1];
assign write_addr_2 = write_addr[2];
assign write_addr_3 = write_addr[3];
  
  
assign write_stop_addr_0 = write_stop_addr[0];
assign write_stop_addr_1 = write_stop_addr[1];
assign write_stop_addr_2 = write_stop_addr[2];
assign write_stop_addr_3 = write_stop_addr[3];
  
  assign ch_0_write_addr = ch_0_write_addr_in;
  assign ch_1_write_addr = ch_1_write_addr_in;
  
  assign ch_0_stop_addr = ch_0_stop_addr_in;
  assign ch_1_stop_addr = ch_1_stop_addr_in;
  
  assign ch_2_write_addr = ch_2_write_addr_in;
  assign ch_3_write_addr = ch_3_write_addr_in;
  
  assign ch_2_stop_addr = ch_2_stop_addr_in;
  assign ch_3_stop_addr = ch_3_stop_addr_in;
  
    endmodule
