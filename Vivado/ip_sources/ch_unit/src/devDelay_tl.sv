module devDelay_tl
    (
        //Standard I/O
		input logic clk,
		input logic resetN,
		(* mark_debug = "true" *)  input logic enable,
		input logic dIn,
		output logic sampleOut,
		output logic outSwitch,
		output logic interrupt,

		//Algorithm Logic
		input logic [31:0] canID,
		input logic [31:0] baudRate,
        //Following are the rates at which the data should be played back
		input logic [31:0] playbackRateOW, //Rates are multiples of 10ns. Baudrate can not be 0, but a playbackRate of 0 will play at system clk speed.
        input logic [31:0] playbackRateInvalid,
        input logic [31:0] playbackRateValid,
        input logic [31:0] playbackRateCRC,
		(* mark_debug = "true" *)  input logic setValues,
        //Following are the sizes for data
		input logic [15:0] sigSizeWordsOW, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        input logic [15:0] sigSizeWordsInvalid, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        input logic [15:0] sigSizeWordsValid, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        input logic [15:0] sigSizeWordsCRC, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        //Following are the starting addresses for data
        input logic [15:0] initAddrOW, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        input logic [15:0] initAddrInvalid, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        input logic [15:0] initAddrValid, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register
        input logic [15:0] initAddrCRC, //The number of 32 bit words that makeup a signal. These magic numbers are to fit them into a 32 bit register


		//output logic ready,
		output logic [4:0] stateDbg,
        output logic err,

		//BRAM Connections
		input logic [31: 0] readData,
		input logic resetBusy,
		output logic [31 : 0] addr,
		output logic [31 : 0] writeData,
		output logic bramEnable,
		//output logic bramResetOut,
		output logic bramWe

    );


//Submodule logic

    //Signal Storage
    logic storeReqOW;
    logic storeReqInvalid;
    logic storeReqValid;
    logic storeReqCRC;

    logic [7:0] baseAddrOW;
    logic [7:0] baseAddrInvalid;
    logic [7:0] baseAddrValid;
    logic [7:0] baseAddrCRC;

    logic storeConfigOW;
    logic storeConfigInvalid;
    logic storeConfigValid;
    logic storeConfigCRC;

    logic startWriteOW;
    logic startWriteInvalid;
    logic startWriteValid;
    logic startWriteCRC;

    logic returnOW;
    logic returnInvalid;
    logic returnValid;
    logic returnCRC;

    logic increment;

    //Data Connections
    dataTypes_pkg::mem_t bramOut;

    dataTypes_pkg::mem_t bramIn;

    dataTypes_pkg::mem_t storeOutOW;
    dataTypes_pkg::mem_t storeOutInvalid;
    dataTypes_pkg::mem_t storeOutValid;
    dataTypes_pkg::mem_t storeOutCRC;

    dataTypes_pkg::mem_t playbackIn;

    //Playback Units
    logic play;

    logic dOut;
    logic dEnable;

    logic complete;
    logic [1:0] playbackSelector;
    logic playbackResetN;
    logic playbackreqReset; //Active low signal to request a reset of the playback unit
    logic [15:0] sigSizeWords;

    logic incrementOW;
    logic incrementInvalid;
    logic incrementValid;
    logic incrementCRC;
    
    //Clock Units
    logic outputResetN;
    logic clkPlayback;
    logic clkOW;
    logic clkInvalid;
    logic clkValid;
    logic clkCRC;
    

    //Bram Controller
    logic dataValid;
    logic popRead;
    logic pushWrite;
    logic clearReadFIFO;

    logic [15:0] readBaseAddr;
    logic [15:0] writeBaseAddr;
    logic [15:0] numWrites;

    logic pulseWrite;
    logic readReq;
    logic writeReq;

    //Sync Signals
    logic syncOverride;
    logic canClk; //This is not a clk signal. It CAN NOT BE USED AS A CLK SIGNAL: PER Series-7 FPGA Documentation. This will be used as a combinatorial input.
    logic sampleInput;
    logic samplePulse;

    logic calculatedInput;
    logic canClkPrevValue;
    logic [2:0] runningSample;

    //ID Comparator Signals
    logic idReset;
    logic reinitComp;
    logic compareEnable;
    logic idValidation;
    logic idMatch;

    //Other random signals
    logic prevClkVal;
	logic countEn;
    logic [5:0] canClkCounter;


    //Init state machine logic

    logic [15:0] sigSize;
    logic [1:0] sigSelector;
    logic [15:0] i;
    logic rstIN;
    logic incI;
    logic setupRunning;


//Submodule declarations

    //
    //Signal Storage
    //

    //Overwrite
    sigStorage owStorage(.clk, .resetN(outputResetN), .baseAddr(baseAddrOW), .numFetches(sigSizeWordsOW), .storeConfig(storeConfigOW), .fetch(startWriteOW),
        .returnToBaseAddr(returnOW), .request(storeReqOW), .bramIn(bramOut), .playbackOut(storeOutOW), .incrementAddr(incrementOW));

    //Invalid
    sigStorage invalidStorage(.clk, .resetN(outputResetN), .baseAddr(baseAddrInvalid), .numFetches(sigSizeWordsInvalid), .storeConfig(storeConfigInvalid),
        .fetch(startWriteInvalid), .returnToBaseAddr(returnInvalid), .request(storeReqInvalid), .bramIn(bramOut), .playbackOut(storeOutInvalid), .incrementAddr(incrementInvalid));

    //Valid
    sigStorage validStorage(.clk, .resetN(outputResetN), .baseAddr(baseAddrValid), .numFetches(sigSizeWordsValid), .storeConfig(storeConfigValid),
        .fetch(startWriteValid), .returnToBaseAddr(returnValid), .request(storeReqValid), .bramIn(bramOut), .playbackOut(storeOutValid), .incrementAddr(incrementValid));

    //CRC
    sigStorage crcStorage(.clk, .resetN(outputResetN), .baseAddr(baseAddrCRC), .numFetches(sigSizeWordsCRC), .storeConfig(storeConfigCRC),
        .fetch(startWriteCRC), .returnToBaseAddr(returnCRC), .request(storeReqCRC), .bramIn(bramOut), .playbackOut(storeOutCRC), .incrementAddr(incrementCRC));


    //
    //Playback Unit and supporting logic
    //

    playbackUnit owPlayback(.clk, .resetN(playbackResetN), .enable(play), .playbackSig(playbackIn), .requestNum(sigSizeWords), .playbackClk(clkPlayback), .advFIFO(increment),
        .dOut(sampleOut), .dEnable(outSwitch), .complete(complete));

    //Switch between the signal storages to connect to the playback unit
    always_comb begin
        case(playbackSelector)
            2'b00: begin
                playbackIn = storeOutOW;
                clkPlayback = clkOW;
                sigSizeWords = sigSizeWordsOW;
                {incrementOW,incrementInvalid,incrementValid,incrementCRC} = {increment, 3'b000};
            end
            2'b01: begin
                playbackIn = storeOutInvalid;
                clkPlayback = clkInvalid;
                sigSizeWords = sigSizeWordsInvalid;
                {incrementOW,incrementInvalid,incrementValid,incrementCRC} = {1'b00, increment, 2'b00};
            end
            2'b10: begin
                playbackIn = storeOutValid;
                clkPlayback = clkValid;
                sigSizeWords = sigSizeWordsValid;
                {incrementOW,incrementInvalid,incrementValid,incrementCRC} = {2'b00, increment, 1'b0};
            end
            2'b11: begin
                playbackIn = storeOutCRC;
                clkPlayback = clkCRC;
                sigSizeWords = sigSizeWordsCRC;
                {incrementOW,incrementInvalid,incrementValid,incrementCRC} = {3'b000, increment};
            end
        endcase
    end

    always_comb begin
        playbackResetN = resetN && playbackreqReset;
        popRead = storeReqCRC || storeReqValid || storeReqInvalid || storeReqOW;
    end


    //
    //Clock Units
    //

    //Overwrite
    clkUnit owRef(.clk, .resetN, .period(playbackRateOW), .clkOut(clkOW));

    //Invalid
    clkUnit invalidRef(.clk, .resetN, .period(playbackRateInvalid), .clkOut(clkInvalid));

    //Valid
    clkUnit validRef(.clk, .resetN, .period(playbackRateValid), .clkOut(clkValid));

    //CRC
    clkUnit crcRef(.clk, .resetN, .period(playbackRateCRC), .clkOut(clkCRC));


    //
    //BRAM Controller
    //
    bramController bC(.clk, .resetN, .advanceBuffer(popRead), .clear(clearReadFIFO), .requestAddr_read(readBaseAddr), .numReads(sigSize),
        .requestAddr_write(writeBaseAddr), .numWrites(numWrites), .sendData(bramIn), .pulseWrite(pulseWrite), .readReq(readReq), .writeReq(writeReq),
        .requestData(bramOut), .*);


    //
    //Sync Unit
    //
    syncUnit su(.clk, .resetN, .bitPeriod(baudRate), .dIn, .override(syncOverride), .syncCANClk(canClk), .syncIn(sampleInput), .multiSelect(1'b0) , .oneShotSample(samplePulse));

    //
    //Error Detector
    //
	errorDetect error(.clk, .resetN, .dIn(calculatedInput), .errorFrame(errorDetected), .samplePulse, .rateSelector(threeSamplePoint));

    //
    //Transmission Window
    //
	interframeDetect ifDetect(.clk, .resetN, .dIn(calculatedInput), .interframePeriod(postInterframeReq), .samplePulse, .rateSelector(threeSamplePoint));


    //
    //ID Comparator
    //

    //IDComparitor Reset Logic
	always_comb begin
		idReset = reinitComp & resetN;
	end


	idComparator idUnit(.clk, .resetN(idReset), .enable(compareEnable), .dIn(calculatedInput), .id(canID), .samplePulse, .idCheckComplete(idValidation), .idMatch);






//Sampler Control logic
	always_ff @(posedge clk) begin
		if(!resetN) begin
			runningSample   <= 3'b000;
			canClkPrevValue <= 1;
		end
		else begin
			if(canClk == 1 & canClkPrevValue == 0) begin //We just had a rising edge
				runningSample   <= 3'b000;
				canClkPrevValue <= 1;
			end
			else begin
				canClkPrevValue <= canClk;
				if(samplePulse) begin
					runningSample <= {runningSample[1:0],sampleInput};
				end
				else begin
					runningSample <= runningSample;
				end
			end
		end
	end
	always_comb begin
		if(threeSamplePoint) begin
			calculatedInput = (runningSample[2] & runningSample[1]) | (runningSample[2] & runningSample[0]) | (runningSample[1] & runningSample[0]);
		end
		else begin
			calculatedInput = runningSample[0];
		end
	end


    //CAN Clock Count Unit & Logic
	always_ff @(posedge clk) begin
		if(!countEn) begin
			canClkCounter <= 0;
			prevClkVal <= 0;
		end else begin
			if(canClk) begin
				if(!prevClkVal) begin
					canClkCounter <= canClkCounter + 1;
					prevClkVal <= 1;
				end else begin
					canClkCounter <= canClkCounter;
					prevClkVal <= 1;
				end
			end else begin
				canClkCounter <= canClkCounter;
				prevClkVal <= 0;
			end
		end
	end

//Top Level FSM Definition

    typedef enum logic [4:0] {s_reset, s_init, s_IF, s_waitBus, s_IDDetect, s_playInvalid, s_decodeLen, s_waitTgt, s_playACK, s_setOW, s_clrRecording, 
        s_playCRC, s_recordCRC, s_writeBRAM, s_playValid, s_report} delayFSM_t;


    delayFSM_t currState, nextState;


//Top Level FSM Variables

    logic initStart;





//Init State FSM Definition


    typedef enum logic [4:0] {i_init_hold, i_wait[0:1], i_readOW, i_writeOW, i_owWait, i_readInvalid, i_writeInvalid, i_invalidWait, i_readValid, i_writeValid, i_validWait, i_readCRC, i_writeCRC, i_hold} init_t;

    (* fsm_encoding = "sequential" *) (* mark_debug = "true" *) init_t currInit, nextInit;

//Init FSM & Supporting Logic

    

    always_ff @(posedge clk) begin
        if(!resetN) begin
            i <= 0;
        end else begin
            if(!rstIN) begin
                i <= 0;
            end else begin
                if(incI) begin
                    i <= i + 1;
                end else begin
                    i <= i;
                end
            end
        end
    end

    always_comb begin
        unique case(sigSelector)
            2'b00: {sigSize,incI,readBaseAddr} = {sigSizeWordsOW, storeReqOW, initAddrOW};
            2'b01: {sigSize,incI,readBaseAddr} = {sigSizeWordsInvalid, storeReqInvalid, initAddrInvalid};
            2'b10: {sigSize,incI,readBaseAddr} = {sigSizeWordsValid, storeReqValid, initAddrValid};
            2'b11: {sigSize,incI,readBaseAddr} = {sigSizeWordsCRC, storeReqCRC, initAddrCRC};

        endcase
    end
    always_ff @(posedge clk) begin
        if(!resetN) begin
            currInit <= i_init_hold;
        end else begin
            currInit <= nextInit;
        end
    end

    always_comb begin
        unique case (currInit)
            i_init_hold: begin
                if(initStart) begin
                    nextInit = i_wait0;
                end else begin
                    nextInit = currInit;
                end
            end
            i_wait0: begin
                if(setValues) begin
                    nextInit = i_wait1;
                end else begin
                    nextInit = currInit;
                end
            end
            i_wait1, i_owWait, i_invalidWait, i_validWait: begin
                nextInit = currInit.next;
            end
            i_readOW, i_readInvalid, i_readValid, i_readCRC: begin
                if(dataValid) begin
                    nextInit = currInit.next;
                end else begin
                    nextInit = currInit;
                end
            end
            i_writeOW, i_writeInvalid, i_writeValid, i_writeCRC: begin
                if(i == sigSize) begin
                    nextInit = currInit.next;
                end else begin
                    nextInit = currInit;
                end
            end
            i_hold: begin
                if(!initStart) begin
                    nextInit = i_init_hold;
                end else begin
                    nextInit = currInit;
                end
            end
        endcase
    end
    /*
        bramController bC(.clear(clearReadFIFO).readReq(readReq),
    */

    always_comb begin
        unique case(currInit)
            i_init_hold, i_wait0: begin
                clearReadFIFO = 1;
                sigSelector = 2'b00;
                rstIN = 1;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
            end
            i_wait1:begin
                clearReadFIFO = 0;
                sigSelector = 2'b00;
                rstIN = 0;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b000;
            end
            i_readOW: begin
                clearReadFIFO = 1;
                sigSelector = 2'b00;
                rstIN = 0;
                readReq = 1;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b1000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_writeOW: begin
                clearReadFIFO = 1;
                sigSelector = 2'b00;
                rstIN = 1;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b1000;
            end
            i_owWait: begin
                clearReadFIFO = 0;
                sigSelector = 2'b01;
                rstIN = 0;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_readInvalid: begin
                clearReadFIFO = 1;
                sigSelector = 2'b01;
                rstIN = 0;
                readReq = 1;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0100;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_writeInvalid: begin
                clearReadFIFO = 1;
                sigSelector = 2'b01;
                rstIN = 1;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0100;
            end
            i_invalidWait: begin
                clearReadFIFO = 0;
                sigSelector = 2'b10;
                rstIN = 0;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_readValid: begin
                clearReadFIFO = 1;
                sigSelector = 2'b10;
                rstIN = 0;
                readReq = 1;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0010;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_writeValid: begin
                clearReadFIFO = 1;
                sigSelector = 2'b10;
                rstIN = 1;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0010;
            end
            i_validWait: begin
                clearReadFIFO = 0;
                sigSelector = 2'b11;
                rstIN = 0;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_readCRC: begin
                clearReadFIFO = 1;
                sigSelector = 2'b11;
                rstIN = 0;
                readReq = 1;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0001;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
            i_writeCRC: begin
                clearReadFIFO = 1;
                sigSelector = 2'b11;
                rstIN = 1;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0001;
            end
            i_hold: begin
                clearReadFIFO = 1;
                sigSelector = 2'b11;
                rstIN = 1;
                readReq = 0;
                setupRunning = 0;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b0000;
            end
        endcase
    end 




endmodule