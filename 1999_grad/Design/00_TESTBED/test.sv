/*
=========================================================================
				Test bench
=========================================================================
 1. The test bench files contain 6 files:
	test.v		testfixture file
	rtl.f		RTL simulation option file
	INPUT.DAT	input data
	EXPECT.DAT	expected result
        in_file         The initial file of the Compass Mercury
                        Delay Calculator.
        dlc.init        The initial file of the Cadence CDC.

 2. To test your circuit's performance you can change the clock
    period by modifing the parameter "HALF_CYCLE_TIME" in this file.
    clock period = HALF_CYCLE_TIME * 2

 3. You can use the Compass Mercury Delay Calculator with the Linear
    Model(cb60hp231d.vmd) or use the Cadence CDC with the Table Model
    (hp_io_time.v,hp_io_typ.ctlf) to do simulation.

    To use the Compass Mercury Delay Calculator please reference the
    test.v:   // $VTOOLS_decal ("in_file","product.xch");

    To use the Cadence CDC please reference the test.v:
              // $cdc(top, "dlc.init");
    Please modify the CTLF_FILE specification in the dlc.init:
    	      CTLF_FILE "Your_Lib_Path/hp_io_typ.ctlf"

    P.S. The Compass Mercury Delay Calculator can only be used on the
         Solaris platform.
         The Cadence CDC can be used on the SunOS 4.1.x and the Solaris
         platform.

 4. If you want to save the SHM waveform please reference the test.v:
              // $shm_open("waves.shm");
              // $shm_probe("AS");
=========================================================================
*/

`timescale 1ns/10ps
`define SDFFILE "../02_SYN/Netlist/POSTFIX_syn.sdf"   // Modify your sdf file name

module clkgen(CLK);

// ========================================================
//   Modify this parameter to change clock period
// ========================================================
parameter HALF_CYCLE_TIME = 10;

output CLK;
reg CLK;

initial
   CLK = 1'b0;
always
   #(HALF_CYCLE_TIME) CLK = ~CLK;

endmodule


module test();
parameter ANS_BYTE = 	14;
parameter ANS_START =   512;
reg START;
wire [9:0] ADRS;
wire [7:0] DATA;

reg [7:0] answer[0:1023];
reg [7:0] cmp1,cmp2;
integer i, pass_num, clk_num, end_clk_num;
real t1, t2, start_time, end_time;
event finish_evt;

clkgen ckgen(CLK);
postfix top(.ADRS(ADRS), .DATA(DATA), .R_WB(R_WB), .FINISH(FINISH), .START(START), .CLK(CLK));
ram1024x8 ram(ADRS, R_WB, DATA);

initial
    begin
    $timeformat(-9, 2, "ns", 10);

    `ifdef GATE
      initial $sdf_annotate(`SDFFILE, top);
    `endif

    $fsdbDumpfile("postfix.fsdb");
    $fsdbDumpvars;
    $fsdbDumpMDA;
//   Invoke the COMPASS Mercury Delay Calculator.
//   $VTOOLS_decal ("in_file","product.xch");

//   Invoke the Cadence Central Delay Calculator.
//   $cdc(top, "dlc.init");
   end

initial
   begin
   START = 1'b0;
   #97;
   START = 1'b1;
   clk_num = 0;
   start_time = $realtime;
   #(ckgen.HALF_CYCLE_TIME*4);
   START = 1'b0;
   @(finish_evt)
   $display("\n\nTime period %t", end_time-start_time);
   $readmemb("EXPECT.DAT", answer);
   $display("\nChecking the result.....\n");
   pass_num = 0;
   for(i=0;i<ANS_BYTE;i=i+1)
      begin
      cmp1 = answer[i];
      cmp2 = ram.U0.memory[i+ANS_START];
      if(cmp1 == cmp2)
         pass_num = pass_num + 1;
      else
         $display("ERROR: address=%h,  value=%h", i+ANS_START, ram.U0.memory[i+ANS_START]);
      end
   if(pass_num == ANS_BYTE)
      begin
      $display("==============\n");
      $display("PASS THE TEST!");
      $display("\n==============\n");
      end
   $display("\n\n\n");
   $finish;
   end

always @(posedge CLK)
   clk_num = clk_num + 1;

always @(posedge FINISH)
   begin
   t1 = $realtime;
   end_time = $realtime;
   end_clk_num = clk_num;
   @(negedge FINISH);
   t2 = $realtime;
   if((t2 - t1 + 1) >= ckgen.HALF_CYCLE_TIME*2)
      ->finish_evt;
   end

endmodule


module ram1024x8(ADRS, R_WB, DATA);
input [9:0] ADRS;
input R_WB;
inout [7:0] DATA;
reg rw1, rw2;

aram1024x8 U0(.a(ADRS), .csb(1'b0), .web(rw2), .oe(1'b1), .io(DATA));

always @(negedge R_WB)
   begin
   rw1 = 1'b0;
   #2.5;
   rw1 = 1'b1;
   end

initial
   rw1 = 1'b1;

always @(rw1 or R_WB)
   rw2 = R_WB | rw1;

initial
   $readmemb("/home/host/Documents/IC-Contest/1999_grad/Design/00_TESTBED/INPUT.DAT", U0.memory);

endmodule


module aram1024x8(a, csb, web, oe, io);

`define numOut 8
parameter maxOut   = 7,
          maxAddr  = 9,
          maxDepth = 1023,
          tAA      = 2.5,  //4.9,
          tHZ      = 0.5,  //0.9,
          tLZ      = 0.3,  //0.5,
          tHZCSd   = 0.5,  //0.9,
          tLZCSd   = 0.5,  //1.0,
          tDSW     = 1.2,  //2.5,
          tDHW     = 0.0,
          tWP      = 1.8, //3.7,
          tCSBW    = 1.2, //2.3,
          tAW      = 2.5, //4.9,
          selectName = "CSB";

input csb, web, oe;
buf (CSB, csb);
buf (WEB, web);
buf (OE,  oe);

input [maxAddr:0] a;
wire  [maxAddr:0] a, A;
buf (A[9], a[9]),
    (A[8], a[8]),
    (A[7], a[7]),
    (A[6], a[6]),
    (A[5], a[5]),
    (A[4], a[4]),
    (A[3], a[3]),
    (A[2], a[2]),
    (A[1], a[1]),
    (A[0], a[0]);

inout [maxOut:0] io;
wire  [maxOut:0] io, IO;
buf (IO[7], io[7]),
    (IO[6], io[6]),
    (IO[5], io[5]),
    (IO[4], io[4]),
    (IO[3], io[3]),
    (IO[2], io[2]),
    (IO[1], io[1]),
    (IO[0], io[0]);

reg [maxOut:0] intBus, memory[maxDepth:0];
bufif1 (io[7], intBus[7], enable),
       (io[6], intBus[6], enable),
       (io[5], intBus[5], enable),
       (io[4], intBus[4], enable),
       (io[3], intBus[3], enable),
       (io[2], intBus[2], enable),
       (io[1], intBus[1], enable),
       (io[0], intBus[0], enable);

reg read, writeb;
integer addr, saveAddr;
real tlastWrite, tlastCSB, tlastWEB, tlastA, tlastIO;

initial begin
  tlastWrite <= -tDHW;
  tlastCSB   <= -tCSBW;
  tlastWEB   <= -tWP;
  tlastA     <= -tAW;
  tlastIO    <= -tDSW;
end

wire #(tHZCSd, tLZCSd, 0.0) csbeb = CSB;
assign #(tLZ, tHZ, 0) enable = ~csbeb & WEB & OE;

// OUTPUT ERROR HANDLING
always @enable begin
  if ((enable === 1'bx) && ((OE === 1'bx) || (OE === 1'bz)) &&
     (csbeb === 1'b0) && (WEB === 1'b1))
    $display("%m> OE unknown during read cycle at time %.1f", $realtime);
end

// Generate read signal.  This signal goes high only when:
// CSB, WEB, and A stable for tAA, CSB low, and WEB high
always @(CSB or WEB or A) begin
  disable readstable;
  read = 0;
  begin :readstable
    if ((CSB === 1'b0) && (WEB === 1'b1))
      read <= #tAA 1'b1;
  end
end

// Assign address and check for unknown address or address change
// during write cycle.
always @A begin
  addr = A;
  if (addr === 1'bx)
    $display("%m> A unknown at time %.1f", $realtime);
  `ifdef depthChk
  else if (addr > maxDepth) begin
    $display("%m> A is out of range at time %.1f", $realtime);
    addr = 1'bx;
  end
  `endif
  if ((writeb === 1'b0) && (WEB === 1'b0) && (CSB === 1'b0)) begin
    $display("%m> Address should not change during write cycle at time %.1f", $realtime);
    addr = 1'bx;
  end
  tlastA <= #0 $realtime;
end

task memoryErr;
begin
  if (saveAddr !== 1'bx)
    memory[saveAddr] = `numOut'bx;
  intBus = `numOut'bx;
end
endtask

// Read cycle
always @(posedge read) begin
  if (addr === 1'bx) begin
    $display("%m> Address invalid - read not completed - at time %.1f", $realtime);
    intBus = `numOut'bx;
  end else
    intBus = memory[addr];
end

// Check for unknown CSB
always @CSB begin
  if ((CSB===1'bx) || (CSB===1'bz)) begin
    if (writeb === 1'b0) begin
      $display("%m> Write cycle terminated early by unknown %s - writing unknown to memory at time %.1f",
               selectName, $realtime);
      memoryErr;
    end else begin
      $display("%m> %s is unknown at time %.1f", selectName, $realtime);
      intBus = `numOut'bx;
    end
  end
  tlastCSB <= #0 $realtime;
end

always @WEB tlastWEB <= #0 $realtime;

// Write cycle
always @(CSB or WEB) begin
  // Check for unknown WEB during output cycle
  if (((WEB===1'bx) || (WEB===1'bz)) && (CSB===1'b0)) begin
    if (writeb === 1'b0) begin
      $display("%m> Write cycle terminated early by unknown WEB - writing unknown to memory at time %.1f", $realtime);
      memoryErr;
    end else begin
      $display("%m> WEB is unknown during output cycle at time %.1f", $realtime);
      intBus = `numOut'bx;
      $finish; // me edited
    end
  // End of write cycle
  end else if ((writeb===1'b0) && (CSB!==1'bx) && (CSB!==1'bz)) begin
    tlastWrite <= #0 $realtime;
    saveAddr = addr;
    if (addr === 1'bx) begin
      $display("%m> Address invalid - write not completed - at time %.1f", $realtime);
      intBus = `numOut'bx;
    end else begin
      memory[addr] = IO;
      intBus       = IO;
    end
    if (($realtime - tlastWEB) < tWP) begin
      $display("%m> WEB pulse width not met - write not completed at time %.1f", $realtime);
      memoryErr;
    end
    if (($realtime - tlastCSB) < tCSBW) begin
      $display("%m> %s low to write end time not met - write not completed at time %.1f",
               selectName, $realtime);
      memoryErr;
    end
    if (($realtime - tlastA) < tAW) begin
      $display("%m> Address setup time to write end time not met - write not completed at time %.1f", $realtime);
      memoryErr;
    end
    if (($realtime - tlastIO) < tDSW) begin
      $display("%m> Data setup time not met - data unknown at time %.1f", $realtime);
      memoryErr;
    end
  end
  writeb <= #0 CSB | WEB;
end

// Data hold time check
always @IO begin
  if (($realtime - tlastWrite) < tDHW) begin
    $display("%m> Data hold time not met - data unknown at time %.1f", $realtime);
    memoryErr;
  end
  tlastIO <= #0 $realtime;
end

endmodule
