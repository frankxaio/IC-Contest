module huffman (
  input              clk,
  input              reset,
  input              gray_valid,
  input        [7:0] gray_data,
  output logic       CNT_valid,
  output logic [7:0] CNT1,
  output logic [7:0] CNT2,
  output logic [7:0] CNT3,
  output logic [7:0] CNT4,
  output logic [7:0] CNT5,
  output logic [7:0] CNT6,
  output logic       code_valid,
  output logic [7:0] HC1,
  output logic [7:0] HC2,
  output logic [7:0] HC3,
  output logic [7:0] HC4,
  output logic [7:0] HC5,
  output logic [7:0] HC6,
  output logic [7:0] M1,
  output logic [7:0] M2,
  output logic [7:0] M3,
  output logic [7:0] M4,
  output logic [7:0] M5,
  output logic [7:0] M6
);

  // =============================================
  // TYPEDEFS
  // =============================================
  typedef enum logic [5:0] {
    IDLE,
    INPUT,
    HUFF_INIT,
    HUFF_INIT_DONE,
    HUFF_COMB
  } state_t;

  state_t cs, ns;

  // =============================================
  // STRUCT SIGNALS
  // =============================================

  // =============================================
  // INTERNAL SIGNALS
  // =============================================

  // Array
  logic [7:0] cnt_sorted[6];


  //  selection sort control signals
  logic sort_start, sort_done;
  logic [7:0] sorted1, sorted2, sorted3, sorted4, sorted5, sorted6;

  // =============================================
  // CNT1 - CNT6 (output)
  // =============================================
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      CNT1 <= '0;
      CNT2 <= '0;
      CNT3 <= '0;
      CNT4 <= '0;
      CNT5 <= '0;
      CNT6 <= '0;
    end else if (ns == INPUT) begin
      case (gray_data)
        8'b0000_0001: CNT1 <= CNT1 + 1'b1;  // A1
        8'b0000_0010: CNT2 <= CNT2 + 1'b1;  // A2
        8'b0000_0011: CNT3 <= CNT3 + 1'b1;  // A3
        8'b0000_0100: CNT4 <= CNT4 + 1'b1;  // A4
        8'b0000_0101: CNT5 <= CNT5 + 1'b1;  // A5
        8'b0000_0110: CNT6 <= CNT6 + 1'b1;  // A6
        default: begin
          CNT1 <= CNT1;
          CNT2 <= CNT2;
          CNT3 <= CNT3;
          CNT4 <= CNT4;
          CNT5 <= CNT5;
          CNT6 <= CNT6;
        end
      endcase
    end
  end

  // =============================================
  // CNT_valid (output)
  // =============================================
  always_ff @(posedge clk or posedge reset) begin
    if (reset) CNT_valid <= 1'b0;
    else if (cs == INPUT && ns == HUFF_INIT) CNT_valid <= 1'b1;
    else CNT_valid <= 1'b0;
  end

  // =============================================
  // Selection sort
  // =============================================

  // sort done
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      sort_start <= 1'b0;
    end else begin
      if (cs != HUFF_INIT && ns == HUFF_INIT) begin
        sort_start <= 1'b1;
      end else begin
        sort_start <= 1'b0;
      end
    end
  end

  assign cnt_sorted = '{sorted1, sorted2, sorted3, sorted4, sorted5, sorted6};


  selection_sort_6 #(
    .WIDTH(8)
  ) selection_sort_inst (
    .clk    (clk),
    .reset  (reset),
    .start  (sort_start),
    .CNT1   (CNT1),
    .CNT2   (CNT2),
    .CNT3   (CNT3),
    .CNT4   (CNT4),
    .CNT5   (CNT5),
    .CNT6   (CNT6),
    .done   (sort_done),
    .sorted1(sorted1),
    .sorted2(sorted2),
    .sorted3(sorted3),
    .sorted4(sorted4),
    .sorted5(sorted5),
    .sorted6(sorted6)
  );



  // =============================================
  // FSM
  // =============================================

  always_ff @(posedge clk or posedge reset) begin
    if (reset) cs <= IDLE;
    else cs <= ns;
  end

  always_comb begin
    case (cs)
      IDLE:           ns = gray_valid ? INPUT : IDLE;
      INPUT:          ns = gray_valid ? INPUT : HUFF_INIT;
      HUFF_INIT:      ns = sort_done ? HUFF_INIT_DONE : HUFF_INIT;
      HUFF_INIT_DONE: ns = HUFF_COMB;
      HUFF_COMB: ns = IDLE;
      default:        ns = IDLE;
    endcase
  end


endmodule


/*
 * Initial synthesizable SystemVerilog module for selection-sort of 6 elements
 * Elements CNT1...CNT6 are loaded on "start", sorted outputs appear on sorted1...sorted6
 * Reset signal renamed to 'reset' (active-high asynchronous reset)
 */
module selection_sort_6 #(
  parameter int WIDTH = 8
) (
  input                    clk,
  input                    reset,    // active-high reset
  input                    start,
  input        [WIDTH-1:0] CNT1,
  input        [WIDTH-1:0] CNT2,
  input        [WIDTH-1:0] CNT3,
  input        [WIDTH-1:0] CNT4,
  input        [WIDTH-1:0] CNT5,
  input        [WIDTH-1:0] CNT6,
  output logic             done,
  output logic [WIDTH-1:0] sorted1,
  output logic [WIDTH-1:0] sorted2,
  output logic [WIDTH-1:0] sorted3,
  output logic [WIDTH-1:0] sorted4,
  output logic [WIDTH-1:0] sorted5,
  output logic [WIDTH-1:0] sorted6
);

  // Internal array
  logic [WIDTH-1:0] A[6];
  // FSM indices
  logic [2:0] i, j, min_idx;
  typedef enum logic [2:0] {
    IDLE,
    INIT_PASS,
    COMPARE,
    // UPDATE_MIN,
    // INCR_J,
    SWAP,
    // INCR_I,
    DONE_STATE
  } state_t;
  state_t             state;

  // Swap temporary
  logic   [WIDTH-1:0] tmp;

  // FSM with asynchronous active-high reset
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      state   <= IDLE;
      done    <= 1'b0;
      i       <= 3'd0;
      j       <= 3'd0;
      min_idx <= 3'd0;
    end else begin
      case (state)
        IDLE: begin
          done <= 1'b0;
          if (start) begin
            // load inputs
            A[0]  <= CNT1;
            A[1]  <= CNT2;
            A[2]  <= CNT3;
            A[3]  <= CNT4;
            A[4]  <= CNT5;
            A[5]  <= CNT6;
            i     <= 3'd0;
            state <= INIT_PASS;
          end
        end

        INIT_PASS: begin
          min_idx <= i;
          j       <= i + 3'd1;
          state   <= COMPARE;
        end

        COMPARE: begin
          // Since j is defined as i + 1,
          // by properly bounding i you don't have to worry about j overflowing

          // compare
          if (A[j] < A[min_idx]) min_idx <= j;
          // TODO compare when the same probabiltiy occur

          // increment j
          if (j < 3'd5) begin
            j     <= j + 3'd1;
            state <= COMPARE;
          end else begin
            state <= SWAP;
          end
        end

        // COMPARE: begin
        //   if (j <= 3'd5) state <= UPDATE_MIN;
        //   else state <= SWAP;
        // end

        // UPDATE_MIN: begin
        //   if (A[j] < A[min_idx]) min_idx <= j;
        //   state <= INCR_J;
        // end

        // INCR_J: begin
        //   if (j < 3'd5) begin
        //     j     <= j + 3'd1;
        //     state <= COMPARE;
        //   end else begin
        //     state <= SWAP;
        //   end
        // end

        SWAP: begin
          // perform swap A[i] <-> A[min_idx]
          A[i]       <= A[min_idx];
          A[min_idx] <= A[i];
          state      <= INCR_I;

          // increment i
          if (i < 3'd4) begin
            i     <= i + 3'd1;
            state <= INIT_PASS;
          end else begin
            state <= DONE_STATE;
          end
        end

        // INCR_I: begin
        //   if (i < 3'd4) begin
        //     i     <= i + 3'd1;
        //     state <= INIT_PASS;
        //   end else begin
        //     state <= DONE_STATE;
        //   end
        // end

        DONE_STATE: begin
          // output sorted values
          sorted1 <= A[0];
          sorted2 <= A[1];
          sorted3 <= A[2];
          sorted4 <= A[3];
          sorted5 <= A[4];
          sorted6 <= A[5];
          done    <= 1'b1;
          state   <= IDLE;
        end

        default: state <= IDLE;
      endcase
    end
  end

endmodule
