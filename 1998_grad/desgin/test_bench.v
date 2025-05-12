/********************************************************
*                     Test bench                        *
*********************************************************
* 1. The test bench files contain four files :          *
*    test_bench.v -->  this file                        *
*    INPUT.DAT --> input data sequence                  *
*    EXPECT.DAT --> expected output sequence            *
*    in_file --> simulation control file                *
* 2. Output report generated :                          *
*     SIM.out-->your simulation result                  *
* 3. You need to modify one thing before simulation :   *
* <clock> : clock rate, e.g., 20 means 20MHz.           *
********************************************************/

`timescale 1ns / 10ps
`define SDFFILE "./MAT_syn.sdf" 

module test_bench;
  wire [15:0] out;
  wire        ready;
  reg  [ 7:0] in;
  reg start, clock;
  reg [ 7:0] rom [0:2999];
  reg [15:0] expt[0:2999];
  integer rom_addr, expt_addr;
  integer file_hdl;




  // =====  Modify this parameter to set the clock rate  ====

   parameter CLOCK_RATE = 100;  // MHz

  // ========================================================




  parameter CYCLE = 1000 / CLOCK_RATE;

  MAT u_MAT (
    out,
    ready,
    in,
    start,
    clock
  );

  initial begin
    //  $VTOOLS_decal("in_file", "product.xch");
    file_hdl = $fopen("SIM_OUT.txt");
    if (file_hdl == 0) begin
      $display("ERROR: Failed to open SIM.OUT!!!\n");
      $finish;
    end
    clock = 1'b1;
    start = 1'b0;
    $readmemh("INPUT.DAT", rom);
    $readmemh("EXPECT.DAT", expt);
    #(10.5 * CYCLE) start = 1'b1;
    for (rom_addr = 0; rom_addr < 3000; rom_addr = rom_addr + 1) begin
      @(posedge clock);
      #(0.1 * CYCLE) in = rom[rom_addr];
    end
    #(0.5 * CYCLE) start = 1'b0;
    wait (ready == 1'b0);
    #(3 * CYCLE) $fclose(file_hdl);
    $finish;
  end

  initial begin
    $fdisplay(file_hdl, "======================================");
    $fdisplay(file_hdl, "Simulation clock rate = %dMHz", CLOCK_RATE);
    $fdisplay(file_hdl, "======================================\n");
    wait (ready == 1'b1);
    @(negedge clock);
    for (expt_addr = 0; expt_addr < 3000; expt_addr = expt_addr + 1) begin
      if (out == expt[expt_addr])
        $fdisplay(file_hdl, "         in %h  out %h  expt %h", in, out, expt[expt_addr]);
      else $fdisplay(file_hdl, "ERROR!!! in %h  out %h  expt %h", in, out, expt[expt_addr]);
      @(negedge clock);
    end
  end

  always #(0.5 * CYCLE) clock = ~clock;

  //FSDB dump
  initial begin
    $fsdbDumpfile("mat.fsdb");
    $fsdbDumpvars(0, test_bench, "+mda");
  end

  `ifdef SDF
     initial $sdf_annotate(`SDFFILE, u_MAT);
  `endif


endmodule
