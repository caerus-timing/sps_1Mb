`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Adam Satar
//winter 1819
//ece team17
//combines memory controller and memory 
//////////////////////////////////////////////////////////////////////////////////

module ch_unit #(parameter N_ADDR_BITS = 20, DATA_WIDTH = 1,
                 MEM_DEPTH = 1048576,MEM_INIT_FILE =  "/home/adam/repos/sig_replay/mem_init_files/65k_10.txt")
                 
                 (
input s_axi_clk, s_axi_reset,playback_clk,
input [N_ADDR_BITS - 1 : 0] i_gpio_set_ram_addr,
input i_gpio_loop_playback,
input i_gpio_write_ram,
input i_gpio_din,
output ch_out,
output  [N_ADDR_BITS - 1 : 0] o_gpio_addr_readback,
input i_gpio_mode,
input i_gpio_write_addr,
output o_gpio_playback_done,
input i_gpio_write_stop_addr,
input [N_ADDR_BITS - 1 : 0] i_gpio_stop_addr,
input i_gpio_playback_en
);
///home/adam/repos/sig-gen-name-tbd/vivado/ip/ch_unit_v99/src
assign ch_out = dout;
 
    
      wire  [N_ADDR_BITS - 1 : 0] ram_addr;
    
assign o_gpio_addr_readback = ram_addr;
    
          ram_ctrl ram_ctrl_unit (
           .s_axi_clk(s_axi_clk),
            .s_axi_reset(s_axi_reset),
          .playback_clk(playback_clk),
          .set_ram_addr(i_gpio_set_ram_addr),
          .ram_addr(ram_addr),
          .write_oneshot(write_oneshot), //to ram
          .playback_done(o_gpio_playback_done),
          .wen(wen), //to ram
          .mode(i_gpio_mode),
          .ram_write(i_gpio_write_ram),
          .write_stop_addr(i_gpio_write_stop_addr),
.write_addr(i_gpio_write_addr),
.stop_addr(i_gpio_stop_addr),
.playback_en(i_gpio_playback_en),
.loop_playback(i_gpio_loop_playback)

      );


/*ram #(.DATA_WIDTH(DATA_WIDTH), .DATA_DEPTH(MEM_DEPTH),  
.MEM_INIT_FILE(MEM_INIT_FILE), 
.ADDR_BITS(N_ADDR_BITS))

ram_unit
 (.s_axi_clk(s_axi_clk),.write_oneshot(write_oneshot),  .wen(wen), .addr(ram_addr), .din(i_gpio_din), .dout(dout));*/
 
 bram_wrapper ram_unit(.clka(s_axi_clk), .wea(wen), .addra(ram_addr), .dina(i_gpio_din), .douta(dout));
    
endmodule
