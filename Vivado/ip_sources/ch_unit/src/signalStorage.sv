module sigStorage
    #(
        parameter integer DEPTH = 256,
        parameter integer DELAY = 3
    )
    (
        //Common Signals
        input logic clk,
        input logic resetN,

        //Standard Operation Signals (Controller Side)
        input logic [$clog2(DEPTH)-1 : 0] baseAddr,
        input logic [$clog2(DEPTH)-1 : 0] numFetches,
        input logic storeConfig,
        input logic fetch,
        input logic returnToBaseAddr,
        output logic request,

        //Standard Operation Signals (Playback Side)
        input logic incrementAddr,


        //Data Signals

        input dataTypes_pkg::mem_t bramIn,

        output dataTypes_pkg::mem_t playbackOut,

        //DFT Signals

        output logic writeDBG,
        output logic [$clog2(DEPTH)-1 : 0] pointerDBG

    );


    //Variables

    logic [$clog2(DEPTH)-1 : 0] pointer;
    logic write;
    logic [$clog2(DEPTH)-1 : 0] storedBase;
    logic [$clog2(DEPTH) : 0] storedFetches;
    logic [$clog2(DELAY) : 0] delayCounter;
    logic [$clog2(DEPTH) : 0] fetchCounter;
    logic internalIncrement;
    logic runDelay;
    logic incrementOS;
    logic rstIncrement;

    //External Increment OS
    oneshot os(.*, .pulse(incrementAddr), .oneshot(incrementOS));



    //DFT Interface
    always_comb begin
        pointerDBG = pointer;
        writeDBG = write;
    end


    //Store Base Values
    always_ff @(posedge clk) begin
        if(!resetN) begin
            storedBase <= 0;
            storedFetches <= 0;
        end else begin
            if(storeConfig) begin
                storedBase <= baseAddr;
                storedFetches <= numFetches;
            end else begin
                storedBase <= storedBase;
                storedFetches <= storedFetches;
            end
        end
    end

    //Curr Fetch Counter
    always_ff @(posedge clk) begin
        if(!resetN || rstIncrement) begin
            fetchCounter <= 0;
        end else begin
            if(internalIncrement) begin
                fetchCounter <= fetchCounter + 1;
            end else begin
                fetchCounter <= fetchCounter;
            end
        end
    end

    //Delay Counter
    always_ff @(posedge clk) begin
        if(!resetN) begin
            delayCounter <= 0;
        end
        else begin
            if(runDelay) begin
                delayCounter <= delayCounter + 1;
            end else begin
                delayCounter <= 0;
            end
        end
    end

    //Pointer logic
    always_ff @(posedge clk) begin
        if(!resetN) begin
            pointer <= 0;
        end else begin
            if(returnToBaseAddr) begin
                pointer <= storedBase;
            end else begin
                if(internalIncrement || incrementOS) begin
                    if(pointer == (DEPTH - 1)) begin
                        pointer <= 0;
                    end else begin
                        pointer <= pointer + 1;
                    end
                end else begin
                    pointer <= pointer;
                end
            end
        end
    end

    typedef enum logic [2:0] {s_init, s_disabled, s_store, s_request, s_increment, s_delay} storage_t;

    (* fsm_encoding = "one_hot" *) storage_t currState, nextState;

    always_ff @(posedge clk) begin
        if(!resetN) begin
            currState <= s_init;
        end else begin
            currState <= nextState;
        end
    end

    always_comb begin
        unique case(currState)
            s_init: begin
                nextState = s_disabled;
            end
            s_disabled:begin
                if(fetch) begin
                    nextState = s_store;
                end else begin
                    nextState = currState;
                end
            end
            s_store, s_request, s_increment:begin
                nextState = currState.next;
            end
            s_delay:begin
                //TODO: FIX STORED FETCH CAUSING EXTRA RUN FIXED!
                if(fetchCounter == storedFetches && fetch) begin
                    nextState = currState;
                end else begin
                    if(!fetch) begin
                        nextState = s_disabled;
                    end else begin
                        if(delayCounter == DELAY) begin
                            nextState = s_store;
                        end else begin
                            nextState = currState;
                        end
                    end
                end
            end
        endcase
    end

    always_comb begin
        unique case(currState)
            s_init, s_disabled: {request, write, runDelay, internalIncrement, rstIncrement} = 5'b0001;
            s_store: {request, write, runDelay, internalIncrement, rstIncrement} = 5'b0100;
            s_request: {request, write, runDelay, internalIncrement, rstIncrement} = 5'b1000;
            s_increment: {request, write, runDelay, internalIncrement, rstIncrement} = 5'b0001;
            s_delay: {request, write, runDelay, internalIncrement, rstIncrement} = 5'b0010;
        endcase
    end




    //MEMORY: THIS IS A TEMPLATE
    // XPM_MEMORY instantiation template for Single Port RAM configurations

//  <-----Cut code below this line---->

   // xpm_memory_spram: Single Port RAM
   // Xilinx Parameterized Macro, version 2020.1

   xpm_memory_spram #(
      .ADDR_WIDTH_A($clog2(DEPTH)),
      .AUTO_SLEEP_TIME(0),
      .BYTE_WRITE_WIDTH_A(32),
      .CASCADE_HEIGHT(0),
      .ECC_MODE("no_ecc"),
      .MEMORY_INIT_FILE("none"),
      .MEMORY_INIT_PARAM("0"),
      .MEMORY_OPTIMIZATION("true"),
      .MEMORY_PRIMITIVE("distributed"),
      .MEMORY_SIZE(DEPTH*32),
      .MESSAGE_CONTROL(0),
      .READ_DATA_WIDTH_A(32),
      .READ_LATENCY_A(1),
      .READ_RESET_VALUE_A("0"),
      .RST_MODE_A("SYNC"),
      .SIM_ASSERT_CHK(1),
      .USE_MEM_INIT(0),
      .WAKEUP_TIME("disable_sleep"),
      .WRITE_DATA_WIDTH_A(32),
      .WRITE_MODE_A("read_first")
   )
   xpm_memory_spram_inst (

      .douta(playbackOut.rawMemData),   // READ_DATA_WIDTH_A-bit output: Data output for port A read operations.
      .addra(pointer),                  // ADDR_WIDTH_A-bit input: Address for port A write and read operations.
      .clka(clk),                       // 1-bit input: Clock signal for port A.
      .dina(bramIn.rawMemData),         // WRITE_DATA_WIDTH_A-bit input: Data input for port A write operations.
      .ena(1'b1),                       // Always enable, mimicks the FWFT of the FIFO
      .injectdbiterra(1'b0),            // 1-bit input: Controls double bit error injection
      .injectsbiterra(1'b0),            // 1-bit input: Controls single bit error injection on input
      .regcea(1'b1),                    // 1-bit input: Clock Enable
        .rsta(~resetN),                 // 1-bit input: Reset signal for the final port A output register stage.
      .sleep(1'b0),                     // 1-bit input: sleep signal to enable the dynamic power saving feature.
      .wea(write)                       // WRITE_DATA_WIDTH_A/BYTE_WRITE_WIDTH_A-bit input: Write enable

   );

   // End of xpm_memory_spram_inst instantiation





endmodule