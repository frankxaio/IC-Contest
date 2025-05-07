module LBP (
  // Request data interface
  output logic [13:0] gray_addr,
  output logic        gray_req,
  // Write data interface
  output logic [13:0] lbp_addr,
  output logic        lbp_valid,
  output logic [ 7:0] lbp_data,
  // Finish signal
  output logic        finish,
  // Clock/reset and data ports
  input  logic        clk,
  input  logic        reset,
  input  logic        gray_ready,
  input  logic [ 7:0] gray_data
);

  localparam int WIDTH = 128;
  localparam int DATAWIDTH = 8;
  localparam int ADDRWIDTH = $clog2(WIDTH);  // For WIDTH=128, ADDRWIDTH=7
  // -------------------------------
  // Internal Signal Declarations
  // -------------------------------
  logic [          3:0] req_cnt;  //* Counter to track the number of requests made
  logic [ADDRWIDTH-1:0] ctr_i;  //* Row (ctr_i) counters for pixel traversal
  logic [ADDRWIDTH-1:0] ctr_j;  //* column (ctr_j) counters for pixel traversal
  logic [DATAWIDTH-1:0] ctr_data;  //* Temporary storage for gray-scale data being processed
  logic [DATAWIDTH-1:0] lbp_cal;  //* Temporary storage for calculated LBP value

  // State machine declaration using enum
  typedef enum logic [1:0] {
    IDLE,
    REQ,
    WR,
    DONE
  } state_t;
  state_t current_state, next_state;

  // -------------------------------
  // Functions
  // -------------------------------
  // Function to compute a 14-bit address from row and column coordinates.
  function automatic logic [13:0] calc_addr(input logic [ADDRWIDTH-1:0] row,
                                            input logic [ADDRWIDTH-1:0] col);
    // Concatenation is equivalent to (row << ADDRWIDTH) + col.
    calc_addr = {row, col};
  endfunction

  // -------------------------------
  // Request Counter: increments during REQ state only.
  // -------------------------------
  always_ff @(posedge clk) begin
    req_cnt <= (current_state == REQ) ? req_cnt + 4'd1 : 4'b0;
  end

  // -------------------------------
  // Center Pixel Data Capture
  // -------------------------------
  // Capture the center pixel on the first REQ cycle.
  always_ff @(posedge clk) begin
    ctr_data <= (req_cnt == 0) ? gray_data : ctr_data;
  end

  // -------------------------------
  // Gray Request Signal
  // -------------------------------
  assign gray_req = (current_state == REQ);

  // -------------------------------
  // LBP Window Coordinate Update
  // -------------------------------
  // Update the (ctr_i, ctr_j) position after completing a WR cycle.
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      ctr_i <= 1;
      ctr_j <= 1;
    end else if (current_state == WR) begin
      if (ctr_j == WIDTH - 2) begin  // When ctr_j reaches 126 (for WIDTH=128)
        ctr_j <= 1;
        ctr_i <= (ctr_i == WIDTH - 2) ? 1 : (ctr_i + 1);
      end else begin
        ctr_j <= ctr_j + 1;
      end
    end
  end

  // -------------------------------
  // Gray Address Generation
  // -------------------------------
  // The 3x3 window is arranged as:
  //
  //       +------+------+------+
  //       | nbr0 | nbr1 | nbr2 |
  //       +------+------+------+
  //       | nbr3 | ctr  | nbr4 |
  //       +------+------+------+
  //       | nbr5 | nbr6 | nbr7 |
  //       +------+------+------+
  //
  // req_cnt values:
  //   0: center, 1: top-left, 2: top-middle, 3: top-right,
  //   4: middle-left, 5: middle-right, 6: bottom-left, 7: bottom-middle, 8: bottom-right.
  // Concatenation is equivalent to (row << ADDRWIDTH) + col.
  always_comb begin
    unique case (req_cnt)
      4'd0:    gray_addr = calc_addr(ctr_i, ctr_j);  // center
      4'd1:    gray_addr = calc_addr(ctr_i - 1, ctr_j - 1);  // top-left
      4'd2:    gray_addr = calc_addr(ctr_i - 1, ctr_j);  // top-middle
      4'd3:    gray_addr = calc_addr(ctr_i - 1, ctr_j + 1);  // top-right
      4'd4:    gray_addr = calc_addr(ctr_i, ctr_j - 1);  // middle-left
      4'd5:    gray_addr = calc_addr(ctr_i, ctr_j + 1);  // middle-right
      4'd6:    gray_addr = calc_addr(ctr_i + 1, ctr_j - 1);  // bottom-left
      4'd7:    gray_addr = calc_addr(ctr_i + 1, ctr_j);  // bottom-middle
      4'd8:    gray_addr = calc_addr(ctr_i + 1, ctr_j + 1);  // bottom-right
      default: gray_addr = calc_addr(ctr_i, ctr_j);
    endcase
  end

  //------------------------------------------------------------------------------
  // LBP Calculation Logic
  //------------------------------------------------------------------------------
  // Compute the LBP value in the REQ state. For each neighbor (req_cnt 1 to 8),
  // set the corresponding bit if gray_data >= center pixel.
  always_ff @(posedge clk) begin
    if (req_cnt == 4'd0) lbp_cal <= 8'd0;
    else if (gray_data >= ctr_data) lbp_cal <= lbp_cal | (8'd1 << (req_cnt - 1));
  end

  //------------------------------------------------------------------------------
  // Output Data Logic
  //------------------------------------------------------------------------------
  assign lbp_data  = lbp_cal;
  assign lbp_addr  = calc_addr(ctr_i, ctr_j);
  assign lbp_valid = (current_state == WR);

  // -------------------------------
  // Finite State Machine (FSM)
  // -------------------------------
  // State register update.
  always_ff @(posedge clk or posedge reset) begin
    if (reset) current_state <= IDLE;
    else current_state <= next_state;
  end

  // Next-state combinational logic using a unique case statement.
  always_comb begin
    unique case (current_state)
      IDLE:    next_state = gray_ready ? REQ : IDLE;
      REQ:     next_state = (req_cnt == 4'd8) ? WR : REQ;
      WR:      next_state = (lbp_addr == 14'd16254) ? DONE : REQ;
      DONE:    next_state = IDLE;
      default: next_state = IDLE;
    endcase
  end

  // Finish signal is asserted when the FSM enters the DONE state.
  assign finish = (next_state == DONE);

endmodule
