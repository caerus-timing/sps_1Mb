`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Adam Satar
//winter 1819
//ece team17
//positive oneshot module
//////////////////////////////////////////////////////////////////////////////////



module pos_oneshot(
		input i_clk, i_reset,
				input_pulse,
		output reg oneshot
    );


parameter state0=0, state1=1, state2=2, state3=3;
reg [1:0] state = 0;

always@(state)
	if(state==state1) oneshot<=1;
	else oneshot<=0;

always @ (posedge i_clk)
    if( i_reset==0) begin 
	   state <= 0;
    end 
	else begin
        case (state)
            0: begin
                if (input_pulse==0) 
                    state<=state0; 
                else 
                    state<=state1;
            end
            1: begin
                if (input_pulse==0)
                    state<=state0;
                else
                    state<=state3;
            end
            2: begin
                state<=state0;
            end            
            3: begin
                if (input_pulse==0)
                    state<=state0;
                else
                    state<=state3;
            end                
        endcase
    end

endmodule