`timescale 1ns / 1ps


module ch_unit_tb();

//inputs
reg s_axi_clk = 0;
reg s_axi_reset = 0;
reg playback_clk = 0;
reg [19:0] i_gpio_set_ram_addr = 0;
reg i_gpio_write_ram = 0;
reg i_gpio_din = 0;
reg i_gpio_mode = 0;
reg i_gpio_write_addr = 0;
reg [19:0] i_gpio_stop_addr = 0;
reg i_gpio_write_stop_addr = 90;
reg i_gpio_playback_en = 0;
reg i_gpio_loop_playback = 0;
//outputs
wire ch_out;
wire [19:0] o_gpio_addr_readback;
wire o_gpio_playback_done;

//32768

ch_unit uut (
            .s_axi_clk(s_axi_clk),
            .s_axi_reset(s_axi_reset),
            .playback_clk(playback_clk),
            .i_gpio_set_ram_addr(i_gpio_set_ram_addr),
            .i_gpio_write_ram(i_gpio_write_ram),
            .i_gpio_din(i_gpio_din),
            .ch_out(ch_out),
            .o_gpio_addr_readback(o_gpio_addr_readback),
            .i_gpio_mode(i_gpio_mode),
            .i_gpio_write_addr(i_gpio_write_addr),
            .o_gpio_playback_done(o_gpio_playback_done),
            .i_gpio_write_stop_addr(i_gpio_write_stop_addr),
            .i_gpio_stop_addr(i_gpio_stop_addr),
            .i_gpio_playback_en(i_gpio_playback_en),
            .i_gpio_loop_playback(i_gpio_loop_playback)
);

initial fork
#6  s_axi_reset = 1;
#25 i_gpio_stop_addr = 10;
#27 i_gpio_write_stop_addr = 1;
#29 i_gpio_write_stop_addr = 0;
#30 i_gpio_playback_en = 1;
#40 i_gpio_loop_playback = 0;
////#70 i_gpio_set_ram_addr = 16889;
//#71 i_gpio_write_addr = 1;
//#73 i_gpio_write_addr = 0;

//#105 i_gpio_mode = 1;
//#105 i_gpio_set_ram_addr = 0;
//#107 i_gpio_write_addr = 1;
//#109 i_gpio_write_addr = 0;
//#111 i_gpio_write_ram = 1;
//#113 i_gpio_write_ram = 0;
//#115 i_gpio_set_ram_addr = 10;
//#117 i_gpio_write_addr = 1;
//#119 i_gpio_write_addr = 0;
//#121 i_gpio_write_ram = 1;
//#123 i_gpio_write_ram = 0;

#250  $stop;
join

always #1 s_axi_clk = ~s_axi_clk;
always #3 playback_clk = ~playback_clk;

endmodule
