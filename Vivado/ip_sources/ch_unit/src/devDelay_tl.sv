module devDelay_tl
    (
        //Standard I/O
		input logic clk,
		input logic resetN,
		input logic enable,
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
        input logic [31:0] recordRate,
		input logic setValues,
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
		output logic [5:0] stateDbg,
        output logic err,

		//BRAM Connections
		input logic [31: 0] readData,
		input logic resetBusy,
		output logic [31 : 0] addr,
		output logic [31 : 0] writeData,
		output logic bramEnable,
		//output logic bramResetOut,
		output logic bramWe,
		output logic [5:0] ifState

    );

    localparam CANWAITTIME = 3; //Originally 5, if this breaks
    localparam CANDEFAULTMSGLENGTH = 65;
    localparam CANMSGLENGTHCRCERR = 85;
    localparam VALIDCOUNTVAL = 7;

//Top Level FSM Definition

    typedef enum logic [5:0] {s_reset, s_init, s_IF, s_waitBus, s_IDDetect, s_playInvalid, s_decodeLen, s_latchLen, s_waitTgt, s_playACK, s_waitCalc,
        s_playCRC, s_recordCRC, s_writeCache, s_writeBRAM, s_playValid, s_report, s_waitPB} delayFSM_t;


    (* fsm_encoding = "sequential" *) (* mark_debug = "true" *)  delayFSM_t currState, nextState;


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
    logic playbackreqResetN; //Active low signal to request a reset of the playback unit
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
    logic clkRecord;
    

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
    logic waitLeave;
    logic tenPulse;

    //ID Comparator Signals
    logic idReset;
    logic idResetN;
    logic compareEnable;
    logic idValidation;
    logic idMatch;

    //Other random signals
    logic prevClkVal;
	logic countEn;
    logic [7:0] canClkCounter;
    logic threeSamplePoint;
    logic postInterframeReq;
    logic errorDetected;

    //Length detector logic
    logic sizeDetected;
    logic sizeResetN;
    logic sizeReqResetN;
    logic [3:0] msgLengthInput;
    logic sizeDetectEnable;
    logic resetLengthN;

    //Record Unit Logic
    logic recordResetN;
    logic recordEnable;
    logic writeRecording;
    logic calcRecording;
    logic ow;
    logic owValid;
    logic recordOpDone;
    logic runRecord;
    logic stopOnPlayback;
    logic recordResetNReq;

    //Init state machine logic

    logic [15:0] sigSize;
    logic [1:0] sigSelector;
    logic [15:0] i;
    logic rstIN;
    logic incI;
    logic setupRunning;

    //FSM Logic
    logic overWrite;
    logic setOverwrite;
    logic [3:0] msgLength;
    logic setMsgLength;

    //Debug Logic
    logic [5:0] idDBG;
    logic [5:0] lenDBG;
    logic [5:0] waitDBG;
    logic [5:0] crcDBG;
    logic [5:0] detectDBG;
    logic [5:0] ifDebug;
    
// DEBUG SWITCHING UNIT
    always_comb begin
        if(currState == s_IDDetect) begin
            ifState = idDBG;
        end else if(currState == s_decodeLen || currState == s_latchLen) begin
            ifState = lenDBG;
        end else if(currState == s_waitTgt) begin
            ifState = canClkCounter[5:0];
        end else if(currState == s_playCRC) begin
            ifState = {complete,incrementCRC,play,clkPlayback,sampleOut,outSwitch};
        end else if(currState == s_IF) begin
            ifState = ifDebug;
        end else begin
            ifState = {canClk,detectDBG[3:0],dIn};
        end
    end
    /*always_comb begin
        ifState = {canClk,detectDBG[3:0],dIn};
    end*/

//Submodule declarations

    //
    //Signal Storage
    //

    //Overwrite
    sigStorage owStorage(.clk, .resetN, .baseAddr(baseAddrOW), .numFetches(sigSizeWordsOW), .storeConfig(storeConfigOW), .fetch(startWriteOW),
        .returnToBaseAddr(returnOW), .request(storeReqOW), .bramIn(bramOut), .playbackOut(storeOutOW), .incrementAddr(incrementOW));

    //Invalid
    sigStorage invalidStorage(.clk, .resetN, .baseAddr(baseAddrInvalid), .numFetches(sigSizeWordsInvalid), .storeConfig(storeConfigInvalid),
        .fetch(startWriteInvalid), .returnToBaseAddr(returnInvalid), .request(storeReqInvalid), .bramIn(bramOut), .playbackOut(storeOutInvalid), .incrementAddr(incrementInvalid));

    //Valid
    sigStorage validStorage(.clk, .resetN, .baseAddr(baseAddrValid), .numFetches(sigSizeWordsValid), .storeConfig(storeConfigValid),
        .fetch(startWriteValid), .returnToBaseAddr(returnValid), .request(storeReqValid), .bramIn(bramOut), .playbackOut(storeOutValid), .incrementAddr(incrementValid));

    //CRC
    sigStorage crcStorage(.clk, .resetN, .baseAddr(baseAddrCRC), .numFetches(sigSizeWordsCRC), .storeConfig(storeConfigCRC),
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
        playbackResetN = resetN & playbackreqResetN;
        popRead = storeReqCRC || storeReqValid || storeReqInvalid || storeReqOW;
    end


    //
    //Clock Units
    //

    //Overwrite
    clkUnit owRef(.clk, .resetN(rstIN), .period(playbackRateOW), .clkOut(clkOW));

    //Invalid
    clkUnit invalidRef(.clk, .resetN(rstIN), .period(playbackRateInvalid), .clkOut(clkInvalid));

    //Valid
    clkUnit validRef(.clk, .resetN(rstIN), .period(playbackRateValid), .clkOut(clkValid));

    //CRC
    clkUnit crcRef(.clk, .resetN(rstIN), .period(playbackRateCRC), .clkOut(clkCRC));

    //Recording
    clkUnit recordClock(.clk, .resetN(rstIN), .period(recordRate), .clkOut(clkRecord));

    //
    //BRAM Controller
    //
    halfDuplex bC(.clk, .resetN, .advanceBuffer(popRead), .clear(clearReadFIFO), .requestAddr_read(readBaseAddr), .numReads(sigSize),
        .requestAddr_write(writeBaseAddr), .numWrites(numWrites), .sendData(bramIn), .pulseWrite(pulseWrite), .readReq(readReq), .writeReq(writeReq),
        .requestData(bramOut), .wr_data_count(numWrites), .*);

    always_comb begin
        writeBaseAddr = 16'b0;
    end



    //
    //Sync Unit
    //
    syncUnit su(.clk, .resetN(rstIN), .bitPeriod(baudRate), .dIn, .override(syncOverride), .syncCANClk(canClk), .syncIn(sampleInput), .multiSelect(threeSamplePoint) , .oneShotSample(samplePulse),
        .earlyCycleWarn(waitLeave), .TenPulse(tenPulse));

    //
    //Error Detector
    //
	errorDetect error(.clk, .resetN, .dIn(calculatedInput), .errorFrame(errorDetected), .samplePulse, .rateSelector(threeSamplePoint));

    //
    //Transmission Window
    //
    //THIS UNIT DOES NOT WORK WITH TRIPLE SAMPLE POINTS HERE. I DO NOT KNOW WHY. THIS SHOULD BE USING TRIPLE SAMPLING POINTS AND CALCULATED INPUT, BUT TO KEEP THE SYSTEM WORKING CORRECTLY, IT IS NOT.
	interframeDetect ifDetect(.clk, .resetN, .dIn(sampleInput), .interframePeriod(postInterframeReq), .samplePulse, .rateSelector(1'b0), .DBG(ifDebug));


    //
    //ID Comparator
    //

    //IDComparitor Reset Logic
	always_comb begin
		idReset = idResetN && resetN;
	end


	idComparator idUnit(.clk, .resetN(idReset), .enable(compareEnable), .dIn(sampleInput), .id(canID), .samplePulse, .idCheckComplete(idValidation), .idMatch, .DBG(idDBG));

    //Delay Detector logic

    always_comb begin
        sizeResetN = sizeReqResetN & resetN;
    end

    sizeDetect sizeDetector(.clk, .resetN(idReset), .enable(sizeDetectEnable), .dIn(sampleInput), .samplePulse, .completeConfig(sizeDetected),
     .msgSize(msgLengthInput), .rateSelector(threeSamplePoint), .DBG(lenDBG));

    //Size Detector Latch Logic
    always_ff @(posedge clk) begin
        if(!(resetN && resetLengthN)) begin
            msgLength <= 0;
        end else begin
            if(setMsgLength) begin
                msgLength <= msgLengthInput;
            end else begin
                msgLength <= msgLength;
            end
        end
    end



    //Record Unit
    recordMaster rm(.clk, .resetN(recordResetN), .enable(recordEnable), .writeOut(writeRecording), .determineOW(calcRecording), .samplePulse(clkRecord),
        .dIn, .owTrue(ow), .owReady(owValid), .pulseWrite, .playbackOut(bramIn), .complete(recordOpDone), .DBG(detectDBG));


    always_comb begin
        recordResetN = resetN & recordResetNReq;
    end

    always_comb begin
        recordEnable = runRecord & !(outSwitch & stopOnPlayback);
    end

    always_ff @(posedge clk) begin
        if(!resetN) begin
            overWrite <= 0;
        end else begin
            if(setOverwrite) begin
                overWrite <= (owValid & ow);
            end else begin
                overWrite <= overWrite;
            end
        end
    end


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
				if(tenPulse) begin
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


    //Wait Bus Counter
    //This is neccessary to bring devices slowly into Bus off mode, but not the DUT
    //Adding this really late, as I did not notice this key portion of my algorithm was wrong until final testing

    logic [4:0] waitTime;
    logic resetWait;
    logic incWait;
    logic resetWaitOS;
    logic incWaitOS;


    always_ff @(posedge clk) begin
        if(!resetN) begin
            waitTime <= CANWAITTIME;
        end else begin
            if(resetWaitOS) begin
                waitTime <= CANWAITTIME;
            end else begin
                if(incWaitOS) begin
                    if(waitTime != 15) begin
                        waitTime <= waitTime + 4;
                    end else begin
                        waitTime <= waitTime;
                    end
                end else begin
                    waitTime <= waitTime;
                end
            end
        end
    end

    //Play Counter Neccessary to increment during valid playback, so as to bring all devices out of RX error

    logic [7:0] validCount;
    logic resetValidCount;
    logic incValidCount;
    logic resetValidOS;
    logic incValidOS;

    always_ff @(posedge clk) begin
        if(!resetN) begin
            validCount <= 0;
        end else begin
            if(resetValidOS) begin
                validCount <= 0;
            end else begin
                if(incValidOS) begin
                    validCount <= validCount + 1;
                end else begin
                    validCount <= validCount;
                end
            end
        end
    end

    oneshot osIW(.*, .pulse(incWait), .oneshot(incWaitOS));
    oneshot osRW(.*, .pulse(resetWait), .oneshot(resetWaitOS));
    oneshot osIE(.*, .pulse(incValidCount), .oneshot(incValidOS));
    oneshot osRE(.*, .pulse(resetValidCount), .oneshot(resetValidOS));



//Top Level FSM Variables

    logic initStart;




    always_ff @(posedge clk) begin
        if(!resetN) begin
            currState <= s_reset;
        end else begin
            currState <= nextState;
        end
    end

    always_comb begin
        unique case(currState)
            s_reset: begin
                nextState = s_init;
            end
            s_init: begin
                if(setupRunning) begin
                    nextState = currState;
                end else begin
                    nextState = s_IF;
                end
            end
            s_IF: begin
                if(!postInterframeReq) begin
                    nextState = currState;
                end else begin
                    nextState = s_waitBus;
                end
            end
            s_waitBus: begin
                if(waitLeave) begin
                    nextState = s_IDDetect;
                end else begin
                    if(canClkCounter >= waitTime) begin
                        if(overWrite) begin
                            nextState = s_playCRC;
                        end else begin
                            nextState = s_playValid;
                        end
                    end else begin
                        nextState = currState;
                    end
                end
            end
            s_IDDetect: begin
                if(!idValidation) begin 
					nextState = currState;
				end
				else begin
					if(idMatch) begin
						nextState = s_decodeLen;
					end
					else begin
						nextState = s_playInvalid;
					end
				end
            end
            s_playInvalid: begin
                if(!complete) begin
                    nextState = currState;
                end else begin
                    nextState = s_IF;
                end
            end
            s_decodeLen: begin
                if(!sizeDetected) begin
                    nextState = currState;
                end else begin
                    nextState = s_latchLen;
                end
            end
            s_latchLen: begin
                nextState = s_waitTgt;
            end
            s_waitTgt: begin
                if(canClkCounter >= ((msgLength << 3) + 16)) begin
                    nextState = s_playACK;
                end else begin
                    nextState = currState;
                end
            end
            s_playACK: begin
                if(recordEnable) begin
                    nextState = currState;
                end else begin
                    nextState = s_waitCalc;
                end
            end
            s_waitCalc: begin
                if(recordOpDone) begin
                    nextState = s_waitPB;
                end else begin
                    nextState = currState;
                end
            end
            s_waitPB: begin
                if(recordOpDone && complete) begin
                    nextState = s_IF;
                end else begin
                    nextState = currState;
                end
            end
            s_playCRC: begin
                if(canClkCounter >= (CANDEFAULTMSGLENGTH + waitTime - 5)) begin
                    nextState = s_recordCRC;
                end else begin
                    nextState = currState;
                end
            end
            s_recordCRC: begin
                if(canClkCounter >= (CANMSGLENGTHCRCERR + waitTime - 5)) begin
                    nextState = s_writeCache;
                end else begin
                    nextState = currState;
                end
            end
            s_writeCache: begin
                if(!recordOpDone) begin
                    nextState = currState;
                end else begin
                    nextState = s_writeBRAM;
                end
            end
            s_writeBRAM: begin
                if(dataValid) begin
                    nextState = s_report;
                end else begin
                    nextState = currState;
                end
            end
            s_playValid: begin
                if(!complete) begin
                    nextState = currState;
                end else begin
                    nextState = s_IF;
                end
            end
            s_report: begin
                nextState = currState;
            end
        endcase
    end

    always_comb begin
        unique case(currState)
            s_reset: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0101;                             //Additional Signals Added Late into Dev
            end
            s_init: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b10;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3    
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b100000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b00000;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0101;                             //Additional Signals Added Late into Dev
            end
            s_IF: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b10;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b10110;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b1111;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                if(validCount == VALIDCOUNTVAL) begin
                    {incWait, resetWait, incValidCount, resetValidCount} = 4'b1001;                             //Additional Signals Added Late into Dev
                end else begin
                    {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
                end
            end
            s_waitBus: begin
                threeSamplePoint = 1;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b10;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b001000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_IDDetect: begin
                threeSamplePoint = 1;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b01;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b010100;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_playInvalid: begin
                threeSamplePoint = 1;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b01;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000010;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b01001;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0101;                             //Additional Signals Added Late into Dev
            end
            s_decodeLen:  begin
                threeSamplePoint = 1;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000100;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_latchLen:  begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b01;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b001100;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_waitTgt:  begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b001000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11101;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_playACK:  begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000010;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b1101;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b1101;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_waitCalc:  begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b10;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000010;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0001;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_waitPB:  begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3 
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000010;      //Enable Signals
               {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b1001;                             //Additional Signals Added Late into Dev
            end
            s_playCRC: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b11;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b001010;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_recordCRC: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b11;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b001010;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b1010;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_writeCache: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b01;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b10111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0010;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_writeBRAM: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b01;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000001;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
            s_playValid: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 1;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b10;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b00;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000010;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0010;                             //Additional Signals Added Late into Dev
            end
            s_report: begin
                threeSamplePoint = 0;           //Select the total sample point rate.
				syncOverride = 0;               //Override syncronization(used during playback)
                {setOverwrite, setMsgLength} = 2'b00;               //Latches
                playbackSelector = 2'b00;       //Playback Signal Selector   OW = 0, Invalid = 1, Valid = 2, CRC = 3  
                {err, interrupt} = 2'b01;       //System Status Outputs
                {initStart, compareEnable, countEn, sizeDetectEnable, play, writeReq} = 6'b000000;      //Enable Signals
                {sizeReqResetN, playbackreqResetN, resetLengthN, idResetN, recordResetNReq} = 5'b11111;                   //Reset Signals
                {baseAddrOW, baseAddrInvalid, baseAddrValid, baseAddrCRC} = {8'b0, 8'b0, 8'b0, 8'b0};   //Base address signals
                {returnOW, returnInvalid, returnValid, returnCRC} = 4'b0000;                            //Return to base addr signals
                {runRecord, stopOnPlayback, writeRecording, calcRecording} = 4'b0000;                   //Recording Unit Signals
                {incWait, resetWait, incValidCount, resetValidCount} = 4'b0000;                             //Additional Signals Added Late into Dev
            end
        endcase
    end


    always_comb begin
        stateDbg = currState;
    end


//Init State FSM Definition


    typedef enum logic [4:0] {i_init_hold, i_wait[0:1], i_readOW, i_writeOW, i_owWait, i_readInvalid, i_writeInvalid,
         i_invalidWait, i_readValid, i_writeValid, i_validWait, i_readCRC, i_writeCRC, i_hold} init_t;

    (* fsm_encoding = "one_hot" *) init_t currInit, nextInit;

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

    always_comb begin
        unique case(currInit)
            i_init_hold, i_wait0: begin
                clearReadFIFO = 1;
                sigSelector = 2'b00;
                rstIN = 1;
                readReq = 0;
                setupRunning = 1;
                {storeConfigOW, storeConfigInvalid, storeConfigValid, storeConfigCRC} = 4'b0000;
                {startWriteOW, startWriteInvalid, startWriteValid, startWriteCRC} = 4'b000;
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