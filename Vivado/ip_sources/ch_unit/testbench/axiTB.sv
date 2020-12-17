module axiTB(
    output logic out,
    output logic outEnable,
    output logic interrupt,
    output logic [31 : 0] addr,
    output logic [31 : 0] writeData,
    output logic bramEnable,
    output logic bramWe,
    output logic bramResetOut,
    output logic [3:0] stateDbg
    );
    
    
    logic clk;
    logic resetN;
    logic in;
    logic [31: 0] readData;
    logic resetBusy;
    logic clkOut;
    
    
    //AXI Stuff
    //Write Address channel (AW)
	logic [31:0] write_addr;	//Master write address
	logic [2:0] write_prot;	//type of write(leave at 0)
	logic write_addr_valid;	//master indicating address is valid
	logic write_addr_ready;		//slave ready to receive address

	//Write Data Channel (W)
	logic [31:0] write_data;	//Master write data
	logic [3:0] write_strb;	//Master byte-wise write strobe
	logic write_data_valid;	//Master indicating write data is valid
	logic write_data_ready;		//slave ready to receive data

	//Write Response Channel (WR)
	logic write_resp_ready;	//Master ready to receive write response
	logic [1:0] write_resp;		//slave write response
	logic write_resp_valid;		//slave response valid
	
	//Read Address channel (AR)
	logic [31:0] read_addr;	//Master read address
	logic [2:0] read_prot;	//type of read(leave at 0)
	logic read_addr_valid;	//Master indicating address is valid
	logic read_addr_ready;		//slave ready to receive address

	//Read Data Channel (R)
	logic read_data_ready;	//Master indicating ready to receive data
	logic [31:0] read_data;		//slave read data
	logic [1:0] read_resp;		//slave read response
	logic read_data_valid;		//slave indicating data in channel is valid
    
    
    sampleIP_tl uut
	(
        .clkA(clkOut),
		.wea(bramWe),
		.addra(addr),
		.dina(writeData),
		.douta(readData),
		.canIn(in),
		.dOut(out),
		.enOut(outEnable),
		.interrupt,
		.bramReset(resetBusy),
		.ena(bramEnable),
		.metaState(stateDbg),
		.clk,
		.resetn(resetN),
		.s00_axi_awaddr(write_addr),
		.s00_axi_awprot(write_prot),
		.s00_axi_awvalid(write_addr_valid),
		.s00_axi_awready(write_addr_ready),
		.s00_axi_wdata(write_data),
		.s00_axi_wstrb(write_strb),
		.s00_axi_wvalid(write_data_valid),
		.s00_axi_wready(write_data_ready),
		.s00_axi_bresp(write_resp),
		.s00_axi_bvalid(write_resp_valid),
		.s00_axi_bready(write_resp_ready),
		.s00_axi_araddr(read_addr),
		.s00_axi_arprot(read_prot),
		.s00_axi_arvalid(read_addr_valid),
		.s00_axi_arready(read_addr_ready),
		.s00_axi_rdata(read_data),
		.s00_axi_rresp(read_resp),
		.s00_axi_rvalid(read_data_valid),
		.s00_axi_rready(read_data_ready)
	);
	
	//Set all values at the beginning
    initial begin
        clk = 1;
        resetN = 1;
        in = 0;
        interrupt = 0;
        readData = 0;
        resetBusy = 0;
        write_addr = 32'b0;
        write_prot = 3'b0;
        write_addr_valid = 1'b0;
        write_data = 32'b0;
        write_strb = 4'b0;
        write_data_valid = 1'b0;
        write_resp_ready = 1'b0;
        read_addr = 32'b0;
        read_prot = 3'b0;
        read_addr_valid = 1'b0;
        read_data_ready = 1'b0;
        
    end
    
    //Clock generation block
    always begin
        #2.5 clk = !clk;
    end
    
    logic [31:0] memVals [0:7];

    initial begin
        memVals[0] = 32'h6F3B2A1C;
        memVals[1] = 32'h12345678;
        memVals[2] = 32'hEABC9724;
        memVals[3] = 32'h33333333;
        memVals[4] = 32'h456789AB;
        memVals[5] = 32'hBB1BB1BB;
        memVals[6] = 32'h1BBBBBB1;
        memVals[7] = 32'h0F0F0F0F;
    end
    
    	task axi_write;
	input [31:0] addr;
	input [31:0] data;
	begin
		#3 write_addr <= addr;	//Put write address on bus
		write_data <= data;	//put write data on bus
		write_addr_valid <= 1'b1;	//indicate address is valid
		write_data_valid <= 1'b1;	//indicate data is valid
		write_resp_ready <= 1'b1;	//indicate ready for a response
		write_strb <= 4'hF;		//writing all 4 bytes

		//wait for one slave ready signal or the other
		wait(write_data_ready || write_addr_ready);
			
		@(posedge clk); //one or both signals and a positive edge
		if(write_data_ready&&write_addr_ready)//received both ready signals
		begin
			write_addr_valid<=0;
			write_data_valid<=0;
		end
		else    //wait for the other signal and a positive edge
		begin
			if(write_data_ready)    //case data handshake completed
			begin
				write_data_valid<=0;
				wait(write_addr_ready); //wait for address address ready
			end
            		else if(write_addr_ready)   //case address handshake completed
            		begin
				write_addr_valid<=0;
                		wait(write_data_ready); //wait for data ready
            		end 
			@ (posedge clk);// complete the second handshake
			write_addr_valid<=0; //make sure both valid signals are deasserted
			write_data_valid<=0;
		end
            
		//both handshakes have occured
		//deassert strobe
		write_strb<=0;

		//wait for valid response
		wait(write_resp_valid);
		
		//both handshake signals and rising edge
		@(posedge clk);

		//deassert ready for response
		write_resp_ready<=0;


		//end of write transaction
	end
	endtask;
	
	task stateSetupRun();
        begin
            //Initialize all the values
            resetN = 0;
            resetBusy = 1;
    
            #30;
    
            resetN = 1;
          
            #15;
            
            resetBusy = 0;
            //Set values not at the same time, we want to mimic the system being setup like real
            #20;
            
            axi_write(32'd0,{21'h1FFFFF,11'b00010011011});
            #25;
            axi_write(32'd4,32'd20);
            #25;
            axi_write(32'd8,32'd1);
            #25;
            axi_write(32'd12,{16'd2,16'd4});
            #25;
            axi_write(32'd16,32'b11);
            
                    
            for(int i =0; i < 2; i++) begin
                wait(bramEnable == 1);
                //Hold for 2 clk cycles, per spec
                @(posedge clk);
                #1;
                @(posedge clk);
                #1;
                //Output the data;
                readData = memVals[i];
                //Wait for bramEnable to be deasserted.
                wait(bramEnable == 0);
                #1;
            end
            
            //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
            @(posedge clk);
            #245;
            
            //Enable the playback.
            //We will have a second request
            for(int i =2; i < 4; i++) begin
                wait(bramEnable == 1);
                //Hold for 2 clk cycles, per spec
                @(posedge clk);
                #1;
                @(posedge clk);
                #1;
                //Output the data;
                readData = memVals[i];
                //Wait for bramEnable to be deasserted.
                wait(bramEnable == 0);
                #1;
            end
                   
            #20;
        end
    endtask
    
    task sendSig1();
        begin
            in = 1;
            #4000;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
        end
    endtask
    
    task sendSig2();
        begin
            in = 1;
            #4000;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
        end
    endtask
    
    task sendSig3();
        begin
            in = 1;
            #4000;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
            #200;
            in = 0;
            #200;
            in = 1;
            #200;
            in = 1;
        end
    endtask        
    
     initial begin
        #5; //Just wait so we are posedge aligned
        fork
            begin
                //Run the initial setup
                stateSetupRun();
            end
            
            begin
                sendSig3();
                sendSig2();
                sendSig3();
                sendSig1();
                sendSig1();
            end
        join
        wait(interrupt == 1);
        //Now we start the second round of testing, seeing how the system reacts to being run again
        #100us;
        fork
            begin
                 axi_write(32'd0,{21'h1FFFFF,11'b00010011011});
                #25;
                axi_write(32'd4,32'd20);
                #25;
                axi_write(32'd8,32'd1);
                #25;
                axi_write(32'd12,{16'd2,16'd4});
                #25;
                axi_write(32'd16,32'b11);
                for(int i =0; i < 2; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
            
                //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
                @(posedge clk);
                #245;
                
                //Enable the playback.
                //We will have a second request
                for(int i =2; i < 3; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
            end
            
            begin
                #25us;
                sendSig3();
                sendSig2();
                sendSig3();
                sendSig1();
                sendSig1();
            end
        join
        wait(interrupt == 1);
        //Next we see how the system reacts to not finding a valid signal
        #100us;
        fork
            begin
                axi_write(32'd16,32'b00);
                axi_write(32'd0,{21'h1FFFFF,11'b00010011011});
                #25;
                axi_write(32'd4,32'd20);
                #25;
                axi_write(32'd8,32'd1);
                #25;
                axi_write(32'd12,{16'd2,16'd4});
                #25;
                axi_write(32'd16,32'b11);
                for(int i =0; i < 2; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
            
                //Memory is configured. I'm going to wait for 50 cycles to simulate the intermediate steps that are being done
                @(posedge clk);
                #245;
                
                //Enable the playback.
                //We will have a second request
                for(int i =2; i < 4; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
                //We will have a third request
                for(int i =4; i < 6; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
                for(int i =4; i < 6; i++) begin
                    wait(bramEnable == 1);
                    //Hold for 2 clk cycles, per spec
                    @(posedge clk);
                    #1;
                    @(posedge clk);
                    #1;
                    //Output the data;
                    readData = memVals[i];
                    //Wait for bramEnable to be deasserted.
                    wait(bramEnable == 0);
                    #1;
                end
                @(posedge clk);
            end
            
            begin
                #25us;
                sendSig3();
                sendSig2();
                sendSig3();
                sendSig2();
                sendSig2();
                sendSig2();
                sendSig2();
                sendSig2();
                sendSig2();
            end
        join
        //Finally we need to see if the system can clear out all values without having to be fully reset.
    end
    
    
endmodule
