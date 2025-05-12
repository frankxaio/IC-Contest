module MAT (
  output logic signed [15:0] out,
  output logic               ready,
  input  logic signed [ 7:0] in,
  input  logic               start,
  input  logic               clock
);

  logic signed [7:0] mat_A[9];
  assign mat_A = '{8'd95, 8'd14, 8'd19, 8'd56, 8'd64, -8'd8, -8'd33, -8'd31, 8'd64};

  // posedge of start
  logic               st_r;
  logic               st_posedge;

  // mul
  logic signed [ 7:0] in_row     [3];
  logic        [ 1:0] cnt_row;
  logic signed [ 7:0] in_prop    [6];
  logic signed [15:0] sum_o      [9];

  // ready
  logic st_2r, st_3r, st_4r;

  // =====================================
  // Capture posedge of start
  // =====================================

  // 1 tap of start siganl
  always_ff @(posedge clock) begin
    st_r <= start;
  end

  // posedge start signal
  assign st_posedge = start & ~st_r;

  // ======================================
  // Systolic input/output - in_row
  // ======================================
  always_ff @(posedge clock) begin
    if (st_posedge) cnt_row <= 0;
    else if (cnt_row == 2) cnt_row <= 0;
    else cnt_row <= cnt_row + 1;
  end

  assign in_row[0] = (cnt_row == 2'd0) ? in : in_row[0];
  assign in_row[1] = (cnt_row == 2'd1) ? in : in_row[1];
  assign in_row[2] = (cnt_row == 2'd2) ? in : in_row[2];


  // =================================
  // systolic array
  // =================================
  // Architecture
  //          +-----+     in_prop[0]   +-----+     in_prop[3]    +-----+
  //  --->    |  A0 |  --------------> |  A3 |  ---------------> |  A6 |
  //          +-----+                  +-----+                   +-----+
  //            |                         |                         |
  //        sum_o[0]                   sum_o[3]                 sum_o[6]
  //            |                         |                         |
  //          +-----+     in_prop[1]   +-----+     in_prop[4]    +-----+
  //  --->    |  A1 |  --------------> |  A4 |  ---------------> |  A7 |
  //          +-----+                  +-----+                   +-----+
  //            |                         |                         |
  //        sum_o[1]                 sum_o[4]                 sum_o[7]
  //            |                         |                         |
  //          +-----+     in_prop[2]   +-----+     in_prop[5]    +-----+
  //  --->    |  A2 |  --------------> |  A5 |  ---------------> |  A8 |
  //          +-----+                  +-----+                   +-----+
  //            |                         |                         |
  //        sum_o[2]                 sum_o[5]                 sum_o[8]


  // row 0
  PE PE0 (
    .sum_o      (sum_o[0]),
    .in_prop    (in_prop[0]),
    .sum_i      (16'd0),
    .in         (in_row[0]),
    .mat_A_coeff(mat_A[0]),
    .clock      (clock)
  );

  PE PE3 (
    .sum_o      (sum_o[3]),
    .in_prop    (in_prop[3]),
    .sum_i      (16'd0),
    .in         (in_prop[0]),
    .mat_A_coeff(mat_A[3]),
    .clock      (clock)
  );

  PE PE6 (
    .sum_o      (sum_o[6]),
    .in_prop    (),
    .sum_i      (16'd0),
    .in         (in_prop[3]),
    .mat_A_coeff(mat_A[6]),
    .clock      (clock)
  );

  //row 1
  PE PE1 (
    .sum_o      (sum_o[1]),
    .in_prop    (in_prop[1]),
    .sum_i      (sum_o[0]),
    .in         (in_row[1]),
    .mat_A_coeff(mat_A[1]),
    .clock      (clock)
  );

  PE PE4 (
    .sum_o      (sum_o[4]),
    .in_prop    (in_prop[4]),
    .sum_i      (sum_o[3]),
    .in         (in_prop[1]),
    .mat_A_coeff(mat_A[4]),
    .clock      (clock)
  );

  PE PE7 (
    .sum_o      (sum_o[7]),
    .in_prop    (),
    .sum_i      (sum_o[6]),
    .in         (in_prop[4]),
    .mat_A_coeff(mat_A[7]),
    .clock      (clock)
  );

  //row 2
  PE PE2 (
    .sum_o      (sum_o[2]),
    .in_prop    (in_prop[2]),
    .sum_i      (sum_o[1]),
    .in         (in_row[2]),
    .mat_A_coeff(mat_A[2]),
    .clock      (clock)
  );

  PE PE5 (
    .sum_o      (sum_o[5]),
    .in_prop    (in_prop[5]),
    .sum_i      (sum_o[4]),
    .in         (in_prop[2]),
    .mat_A_coeff(mat_A[5]),
    .clock      (clock)
  );

  PE PE8 (
    .sum_o      (sum_o[8]),
    .in_prop    (),
    .sum_i      (sum_o[7]),
    .in         (in_prop[5]),
    .mat_A_coeff(mat_A[8]),
    .clock      (clock)
  );

  // ======================================
  // Out signal
  // ======================================
  always_comb begin
    case (cnt_row)
      2'b00: out = sum_o[2];
      2'b01: out = sum_o[5];
      2'b10: out = sum_o[8];
      default: out = 16'd0;
    endcase
  end

  // ready
  // overhead of 3 cycles
  always_ff @(posedge clock) begin
    st_2r <= st_r;
  end

  always_ff @(posedge clock) begin
    st_3r <= st_2r;
  end

  always_ff @(posedge clock) begin
    ready <= st_3r;
  end

endmodule

module PE (
  output logic signed [15:0] sum_o,
  output logic signed [ 7:0] in_prop,
  input  logic signed [15:0] sum_i,
  input  logic signed [ 7:0] in,
  input  logic signed [ 7:0] mat_A_coeff,
  input  logic               clock
);

  always_ff @(posedge clock) begin
    sum_o <= sum_i + in * mat_A_coeff;
  end

  always_ff @(posedge clock) begin
    in_prop <= in;
  end

endmodule
