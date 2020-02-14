`timescale 1ns / 1ps
//decoder for mem control signals
module op_decoder_encoder

(
  input [3:0] ps_wen,
  input [3:0] ps_next_addr,
  input [3:0] ps_set_addr,
  input [3:0] ps_write,
  input [3:0]ps_mode,
  input [3:0] ps_playback_en,
  input [3:0]ps_dout_en,
  input [3:0] ps_din,
  
  output[7:0] ctrl_0,ctrl_1,ctrl_2,ctrl_3
  );
  
  wire [7:0] ctrl_0,ctrl_1,ctrl_2,ctrl_3;
  
  assign ctrl_0 = {dout_en_0,din_0,mode_0,wen_0,play_en_0,next_addr_0,set_addr_0,wr_0};
  assign ctrl_1 ={dout_en_1,din_1,mode_1,wen_1,play_en_1,next_addr_1,set_addr_1,wr_1};
  assign ctrl_2 ={dout_en_2,din_2,mode_2,wen_2,play_en_2,next_addr_2,set_addr_2,wr_2};
  assign ctrl_3 ={dout_en_3,din_3,mode_3,wen_3,play_en_3,next_addr_3,set_addr_3,wr_3};
  

  
  assign din_0 = ps_din[0];
  assign din_1 = ps_din[1];
  assign din_2 = ps_din[2];
  assign din_3 = ps_din[3];
  
  assign dout_en_0 = ps_dout_en[0];
  assign dout_en_1 = ps_dout_en[1];
  assign dout_en_2 = ps_dout_en[2];
  assign dout_en_3     = ps_dout_en[3];
  
  
  assign wr_0 = ps_write[0];
  assign wr_1= ps_write[1];
  assign wr_2= ps_write[2];
  assign wr_3= ps_write[3];
  
  assign set_addr_0 =  ps_set_addr[0];
  assign set_addr_1=ps_set_addr[1];
  assign set_addr_2= ps_set_addr[2];
  assign set_addr_3 = ps_set_addr[3];
  
  assign next_addr_0 =  ps_next_addr[0];
  assign next_addr_1 =ps_next_addr[1];
  assign next_addr_2= ps_next_addr[2];
  assign next_addr_3 = ps_next_addr[3];
  
  
  assign wen_0 = ps_wen[0];
  assign wen_1= ps_wen[1];
  assign wen_2= ps_wen[2];
  assign wen_3= ps_wen[3];
  
  
  
  assign play_en_0 =  ps_playback_en[0];
  assign play_en_1 =  ps_playback_en[1];
  assign play_en_2 =  ps_playback_en[2];
  assign play_en_3 =  ps_playback_en[3];
  
  
  
  assign mode_0 = ps_mode[0];
  assign mode_1 = ps_mode[1];
  assign mode_2 = ps_mode[2];
  assign mode_3 = ps_mode[3];
  
  
  
  
  
  endmodule
