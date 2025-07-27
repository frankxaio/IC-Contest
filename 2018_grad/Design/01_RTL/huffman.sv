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
  // TYPEDEFS, ENUMS
  // =============================================
  typedef enum logic [7:0] {
    IDLE,
    INPUT,
    INIT,
    INIT_DONE,
    COMB_C1,
    SORT_C1_ST,
    SORT_C1,
    SORT_C1_DONE,
    SORT_C2_ST,
    COMB_C2,
    SORT_C2,
    SORT_C2_DONE,
    SORT_C3_ST,
    COMB_C3,
    SORT_C3,
    SORT_C3_DONE,
    SORT_C4_ST,
    COMB_C4,
    SORT_C4,
    SORT_C4_DONE,
    COMB_C5,
    SORT_C5_ST,
    SORT_C5,
    SORT_C5_DONE,
    SPLIT,
    DONE
  } state_t;

  state_t cs, ns;

  typedef enum logic [7:0] {
    A1   = 8'h01,
    A2   = 8'h02,
    A3   = 8'h03,
    A4   = 8'h04,
    A5   = 8'h05,
    A6   = 8'h06,
    COMB = 8'h07,
    X    = 8'hFF   // dont care term for sorting
  } symbol_t;

  // =============================================
  // STRUCT SIGNALS
  // =============================================



  // =============================================
  // INTERNAL SIGNALS
  // =============================================
  typedef struct {
    logic [7:0] symbol;  // symbol
    logic [7:0] freq;    // frequency
  } item_t;

  item_t items[6], unsorted[6];

  typedef struct {
    logic [7:0] symbol[6];  // symbol
    // logic [7:0] freq;       // frequency
    logic [7:0] left[6];    // symbol
    logic [7:0] right[6];   // symbol
  } comb_item_t;

  comb_item_t comb_item_C1, comb_item_C2, comb_item_C3, comb_item_C4, comb_item_C5;

  //  selection sort control signals
  logic sort_start, sort_done;
  logic [7:0] symbol_sort                           [6];
  logic [7:0] freq_sort                             [6];
  logic [7:0] items_num;

  // combine
  logic [7:0] combine_idx;  // current combine index
  logic [7:0] combine_symbol                        [6];  // all combined symbols

  // split
  logic [7:0] split_cnt, split_cnt_r;
  logic [7:0] pop;
  logic       m_toggle     [6];
  logic       left_or_right[4];

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
        A1: CNT1 <= CNT1 + 1'b1;  // A1
        A2: CNT2 <= CNT2 + 1'b1;  // A2
        A3: CNT3 <= CNT3 + 1'b1;  // A3
        A4: CNT4 <= CNT4 + 1'b1;  // A4
        A5: CNT5 <= CNT5 + 1'b1;  // A5
        A6: CNT6 <= CNT6 + 1'b1;  // A6
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
    else if (cs == INPUT && ns == INIT) CNT_valid <= 1'b1;
    else CNT_valid <= 1'b0;
  end

  // =============================================
  // Selection sort
  // =============================================

  // // items_num
  // always_ff @(posedge clk or posedge reset) begin
  //   if (reset) items_num <= '0;
  //   else if (cs == INIT) items_num <= 'd6;
  //   else if (cs == SORT_C1_ST) items_num <= 'd5;
  //   else if (cs == SORT_C2_ST) items_num <= 'd4;
  //   else if (cs == SORT_C3_ST) items_num <= 'd3;
  //   else if (cs == SORT_C4_ST) items_num <= 'd2;
  //   else if (cs == SORT_C5_ST) items_num <= 'd1;
  //   else items_num <= '0;
  // end

  // sort start
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      sort_start <= 1'b0;
    end else begin
      if (CNT_valid == 1'b1) sort_start <= 1'b1;
      else if (cs == SORT_C1_ST) sort_start <= 1'b1;
      else if (cs == SORT_C2_ST) sort_start <= 1'b1;
      else if (cs == SORT_C3_ST) sort_start <= 1'b1;
      else if (cs == SORT_C4_ST) sort_start <= 1'b1;
      else if (cs == SORT_C5_ST) sort_start <= 1'b1;
      else sort_start <= 1'b0;
    end
  end

  // unsorted
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      unsorted[0].freq   <= '0;
      unsorted[1].freq   <= '0;
      unsorted[2].freq   <= '0;
      unsorted[3].freq   <= '0;
      unsorted[4].freq   <= '0;
      unsorted[5].freq   <= '0;
      unsorted[0].symbol <= '0;
      unsorted[1].symbol <= '0;
      unsorted[2].symbol <= '0;
      unsorted[3].symbol <= '0;
      unsorted[4].symbol <= '0;
      unsorted[5].symbol <= '0;
    end else if (cs == INIT) begin
      unsorted[0].freq   <= CNT1;
      unsorted[1].freq   <= CNT2;
      unsorted[2].freq   <= CNT3;
      unsorted[3].freq   <= CNT4;
      unsorted[4].freq   <= CNT5;
      unsorted[5].freq   <= CNT6;
      unsorted[0].symbol <= A1;
      unsorted[1].symbol <= A2;
      unsorted[2].symbol <= A3;
      unsorted[3].symbol <= A4;
      unsorted[4].symbol <= A5;
      unsorted[5].symbol <= A6;
    end else if (ns == SORT_C1) begin
      unsorted[0].freq   <= items[1].freq;
      unsorted[1].freq   <= items[2].freq;
      unsorted[2].freq   <= items[3].freq;
      unsorted[3].freq   <= items[4].freq;
      unsorted[4].freq   <= items[5].freq;
      unsorted[5].freq   <= X;
      unsorted[0].symbol <= items[1].symbol;
      unsorted[1].symbol <= items[2].symbol;
      unsorted[2].symbol <= items[3].symbol;
      unsorted[3].symbol <= items[4].symbol;
      unsorted[4].symbol <= items[5].symbol;
      unsorted[5].symbol <= X;
    end else if (ns == SORT_C2) begin
      unsorted[0].freq   <= items[1].freq;
      unsorted[1].freq   <= items[2].freq;
      unsorted[2].freq   <= items[3].freq;
      unsorted[3].freq   <= items[4].freq;
      unsorted[4].freq   <= X;
      unsorted[5].freq   <= X;
      unsorted[0].symbol <= items[1].symbol;
      unsorted[1].symbol <= items[2].symbol;
      unsorted[2].symbol <= items[3].symbol;
      unsorted[3].symbol <= items[4].symbol;
      unsorted[4].symbol <= X;
      unsorted[5].symbol <= X;
    end else if (ns == SORT_C3) begin
      unsorted[0].freq   <= items[1].freq;
      unsorted[1].freq   <= items[2].freq;
      unsorted[2].freq   <= items[3].freq;
      unsorted[3].freq   <= X;
      unsorted[4].freq   <= X;
      unsorted[5].freq   <= X;
      unsorted[0].symbol <= items[1].symbol;
      unsorted[1].symbol <= items[2].symbol;
      unsorted[2].symbol <= items[3].symbol;
      unsorted[3].symbol <= X;
      unsorted[4].symbol <= X;
      unsorted[5].symbol <= X;
    end else if (ns == SORT_C4) begin
      unsorted[0].freq   <= items[1].freq;
      unsorted[1].freq   <= items[2].freq;
      unsorted[2].freq   <= X;
      unsorted[3].freq   <= X;
      unsorted[4].freq   <= X;
      unsorted[5].freq   <= X;
      unsorted[0].symbol <= items[1].symbol;
      unsorted[1].symbol <= items[2].symbol;
      unsorted[2].symbol <= X;
      unsorted[3].symbol <= X;
      unsorted[4].symbol <= X;
      unsorted[5].symbol <= X;
    end else if (ns == SORT_C5) begin
      unsorted[0].freq   <= items[1].freq;
      unsorted[1].freq   <= X;
      unsorted[2].freq   <= X;
      unsorted[3].freq   <= X;
      unsorted[4].freq   <= X;
      unsorted[5].freq   <= X;
      unsorted[0].symbol <= items[1].symbol;
      unsorted[1].symbol <= X;
      unsorted[2].symbol <= X;
      unsorted[3].symbol <= X;
      unsorted[4].symbol <= X;
      unsorted[5].symbol <= X;
    end
  end

  selection_sort_6 #(
    .WIDTH(8)
  ) selection_sort_inst (
    .clk             (clk),
    .reset           (reset),
    .start           (sort_start),
    // .items_num       (items_num),
    .combine_idx     (combine_idx),
    .unsorted_counts1(unsorted[0].freq),
    .unsorted_counts2(unsorted[1].freq),
    .unsorted_counts3(unsorted[2].freq),
    .unsorted_counts4(unsorted[3].freq),
    .unsorted_counts5(unsorted[4].freq),
    .unsorted_counts6(unsorted[5].freq),
    .unsorted_symbol1(unsorted[0].symbol),
    .unsorted_symbol2(unsorted[1].symbol),
    .unsorted_symbol3(unsorted[2].symbol),
    .unsorted_symbol4(unsorted[3].symbol),
    .unsorted_symbol5(unsorted[4].symbol),
    .unsorted_symbol6(unsorted[5].symbol),
    .done            (sort_done),
    .freq_sort1      (freq_sort[0]),
    .freq_sort2      (freq_sort[1]),
    .freq_sort3      (freq_sort[2]),
    .freq_sort4      (freq_sort[3]),
    .freq_sort5      (freq_sort[4]),
    .freq_sort6      (freq_sort[5]),
    .symbol_sort1    (symbol_sort[0]),
    .symbol_sort2    (symbol_sort[1]),
    .symbol_sort3    (symbol_sort[2]),
    .symbol_sort4    (symbol_sort[3]),
    .symbol_sort5    (symbol_sort[4]),
    .symbol_sort6    (symbol_sort[5])
  );


  // =============================================
  // Items
  // =============================================
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      items[0].freq   <= '0;
      items[1].freq   <= '0;
      items[2].freq   <= '0;
      items[3].freq   <= '0;
      items[4].freq   <= '0;
      items[5].freq   <= '0;
      items[0].symbol <= '0;
      items[1].symbol <= '0;
      items[2].symbol <= '0;
      items[3].symbol <= '0;
      items[4].symbol <= '0;
      items[5].symbol <= '0;
    end else if (cs == INIT_DONE) begin
      items[0].freq   <= freq_sort[0];
      items[1].freq   <= freq_sort[1];
      items[2].freq   <= freq_sort[2];
      items[3].freq   <= freq_sort[3];
      items[4].freq   <= freq_sort[4];
      items[5].freq   <= freq_sort[5];
      items[0].symbol <= symbol_sort[0];
      items[1].symbol <= symbol_sort[1];
      items[2].symbol <= symbol_sort[2];
      items[3].symbol <= symbol_sort[3];
      items[4].symbol <= symbol_sort[4];
      items[5].symbol <= symbol_sort[5];
    end else if (cs == COMB_C1) begin
      items[0].symbol <= '0;
      items[0].freq   <= '0;
      items[1].symbol <= COMB;
      items[1].freq   <= items[0].freq + items[1].freq;
    end else if (cs == SORT_C1_DONE) begin
      items[0].freq   <= freq_sort[0];
      items[1].freq   <= freq_sort[1];
      items[2].freq   <= freq_sort[2];
      items[3].freq   <= freq_sort[3];
      items[4].freq   <= freq_sort[4];
      items[0].symbol <= symbol_sort[0];
      items[1].symbol <= symbol_sort[1];
      items[2].symbol <= symbol_sort[2];
      items[3].symbol <= symbol_sort[3];
      items[4].symbol <= symbol_sort[4];
    end else if (cs == COMB_C2) begin
      items[0].symbol <= '0;
      items[0].freq   <= '0;
      items[1].symbol <= COMB;
      items[1].freq   <= items[0].freq + items[1].freq;
    end else if (cs == SORT_C2_DONE) begin
      items[0].freq   <= freq_sort[0];
      items[1].freq   <= freq_sort[1];
      items[2].freq   <= freq_sort[2];
      items[3].freq   <= freq_sort[3];
      items[0].symbol <= symbol_sort[0];
      items[1].symbol <= symbol_sort[1];
      items[2].symbol <= symbol_sort[2];
      items[3].symbol <= symbol_sort[3];
    end else if (cs == COMB_C3) begin
      items[0].symbol <= '0;
      items[0].freq   <= '0;
      items[1].symbol <= COMB;
      items[1].freq   <= items[0].freq + items[1].freq;
    end else if (cs == SORT_C3_DONE) begin
      items[0].freq   <= freq_sort[0];
      items[1].freq   <= freq_sort[1];
      items[2].freq   <= freq_sort[2];
      items[0].symbol <= symbol_sort[0];
      items[1].symbol <= symbol_sort[1];
      items[2].symbol <= symbol_sort[2];
    end else if (cs == COMB_C4) begin
      items[0].symbol <= '0;
      items[0].freq   <= '0;
      items[1].symbol <= COMB;
      items[1].freq   <= items[0].freq + items[1].freq;
    end else if (cs == SORT_C4_DONE) begin
      items[0].freq   <= freq_sort[0];
      items[1].freq   <= freq_sort[1];
      items[0].symbol <= symbol_sort[0];
      items[1].symbol <= symbol_sort[1];
    end else if (cs == COMB_C5) begin
      items[0].symbol <= '0;
      items[0].freq   <= '0;
      items[1].symbol <= COMB;
      items[1].freq   <= items[0].freq + items[1].freq;
    end else if (cs == SORT_C5_DONE) begin
      items[0].freq   <= freq_sort[0];
      items[0].symbol <= symbol_sort[0];
    end
  end

  // =============================================
  // Combination
  // =============================================

  // combine_symbol
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      combine_symbol <= '{default: '0};
    end else if (cs == COMB_C1) begin
      combine_symbol[0] <= items[1].symbol;
      combine_symbol[1] <= items[0].symbol;
    end else if (cs == COMB_C2 || cs == COMB_C3 || cs == COMB_C4 || cs == COMB_C5) begin

      combine_symbol[0] <= (combine_idx == 1'b0) ? items[1].symbol : items[0].symbol;
      for (int i = 1; i < 6; i++) begin
        combine_symbol[i] <= combine_symbol[i-1];
      end

      // if (combine_idx == 1'b0) begin
      //   combine_symbol[0] <= items[1].symbol;
      //   for (int i = 1; i < 6; i++) begin
      //     combine_symbol[i] <= combine_symbol[i-1];
      //   end
      // end
      // end else if (combine_idx == 1'b1) begin
      //   unique case (cs)
      //     COMB_C2: combine_symbol[2] <= items[0].symbol;
      //     COMB_C3: combine_symbol[3] <= items[0].symbol;
      //     COMB_C4: combine_symbol[4] <= items[0].symbol;
      //     COMB_C5: combine_symbol[5] <= items[0].symbol;
      //   endcase
      // end
    end
  end

  //left_or_right
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      left_or_right <= '{default: 1'b0};
    end else begin
      unique case (cs)
        COMB_C2: left_or_right[0] <= (combine_idx == 1'b1) ? 1'b1 : 1'b0;
        COMB_C3: left_or_right[1] <= (combine_idx == 1'b1) ? 1'b1 : 1'b0;
        COMB_C4: left_or_right[2] <= (combine_idx == 1'b1) ? 1'b1 : 1'b0;
        COMB_C5: left_or_right[3] <= (combine_idx == 1'b1) ? 1'b1 : 1'b0;
        SORT_C5_ST: begin
          // reverse left_or_right signal
          for (int i = 0; i < 4; i++) begin
            left_or_right[i] <= left_or_right[3-i];
          end
        end
      endcase
    end
  end

  // =============================================
  // Split
  // =============================================
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      pop <= '0;
    end else if (cs == SPLIT) begin
      pop <= combine_symbol[split_cnt];
    end
  end

  // split_cnt
  always_ff @(posedge clk or posedge reset) begin
    if (reset) split_cnt <= '0;
    else if (cs == SPLIT) split_cnt <= split_cnt + 1'b1;
    else split_cnt <= '0;
  end

  // m_toggle
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      m_toggle[0] <= 1'b0;
      m_toggle[1] <= 1'b0;
      m_toggle[2] <= 1'b0;
      m_toggle[3] <= 1'b0;
      m_toggle[4] <= 1'b0;
      m_toggle[5] <= 1'b0;
    end else if (cs == SPLIT) begin
      unique case (pop)
        A1: m_toggle[0] <= 1'b1;
        A2: m_toggle[1] <= 1'b1;
        A3: m_toggle[2] <= 1'b1;
        A4: m_toggle[3] <= 1'b1;
        A5: m_toggle[4] <= 1'b1;
        A6: m_toggle[5] <= 1'b1;
      endcase
    end
  end

  // split_cnt_r
  always_ff @(posedge clk) begin
    split_cnt_r <= split_cnt;
  end

  // HC1 - HC6 (output)
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      HC1 <= '0;
      HC2 <= '0;
      HC3 <= '0;
      HC4 <= '0;
      HC5 <= '0;
      HC6 <= '0;
    end else if (cs == SPLIT) begin
      unique case (pop)
        A1: begin
          if (split_cnt_r == 8'd0 || split_cnt_r == 8'd1
              || split_cnt_r == 8'd2 || split_cnt_r == 8'd3) begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, left_or_right[split_cnt_r]};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, ~left_or_right[split_cnt_r]};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, ~left_or_right[split_cnt_r]};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, ~left_or_right[split_cnt_r]};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, ~left_or_right[split_cnt_r]};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, ~left_or_right[split_cnt_r]};
          end else begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, 1'b0};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, 1'b1};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, 1'b1};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, 1'b1};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, 1'b1};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, 1'b1};
          end
        end
        A2: begin
          if (split_cnt_r == 8'd0 || split_cnt_r == 8'd1
              || split_cnt_r == 8'd2 || split_cnt_r == 8'd3) begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, ~left_or_right[split_cnt_r]};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, left_or_right[split_cnt_r]};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, ~left_or_right[split_cnt_r]};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, ~left_or_right[split_cnt_r]};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, ~left_or_right[split_cnt_r]};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, ~left_or_right[split_cnt_r]};
          end else begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC2, 1'b1};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, 1'b0};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, 1'b1};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, 1'b1};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, 1'b1};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, 1'b1};
          end
        end
        A3: begin
          if (split_cnt_r == 8'd0 || split_cnt_r == 8'd1
              || split_cnt_r == 8'd2 || split_cnt_r == 8'd3) begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, ~left_or_right[split_cnt_r]};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, ~left_or_right[split_cnt_r]};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, left_or_right[split_cnt_r]};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, ~left_or_right[split_cnt_r]};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, ~left_or_right[split_cnt_r]};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, ~left_or_right[split_cnt_r]};
          end else begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC2, 1'b1};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, 1'b1};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, 1'b0};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, 1'b1};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, 1'b1};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, 1'b1};
          end
        end
        A4: begin
          if (split_cnt_r == 8'd0 || split_cnt_r == 8'd1
              || split_cnt_r == 8'd2 || split_cnt_r == 8'd3) begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, ~left_or_right[split_cnt_r]};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, ~left_or_right[split_cnt_r]};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, ~left_or_right[split_cnt_r]};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, left_or_right[split_cnt_r]};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, ~left_or_right[split_cnt_r]};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, ~left_or_right[split_cnt_r]};
          end else begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC2, 1'b1};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, 1'b1};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, 1'b1};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, 1'b0};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, 1'b1};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, 1'b1};
          end
        end
        A5: begin
          if (split_cnt_r == 8'd0 || split_cnt_r == 8'd1
              || split_cnt_r == 8'd2 || split_cnt_r == 8'd3) begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, ~left_or_right[split_cnt_r]};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, ~left_or_right[split_cnt_r]};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, ~left_or_right[split_cnt_r]};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, ~left_or_right[split_cnt_r]};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, left_or_right[split_cnt_r]};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, ~left_or_right[split_cnt_r]};
          end else begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC2, 1'b1};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, 1'b1};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, 1'b1};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, 1'b1};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, 1'b0};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, 1'b1};
          end
        end
        A6: begin
          if (split_cnt_r == 8'd0 || split_cnt_r == 8'd1
              || split_cnt_r == 8'd2 || split_cnt_r == 8'd3) begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC1, ~left_or_right[split_cnt_r]};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, ~left_or_right[split_cnt_r]};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, ~left_or_right[split_cnt_r]};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, ~left_or_right[split_cnt_r]};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, ~left_or_right[split_cnt_r]};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, left_or_right[split_cnt_r]};
          end else begin
            HC1 <= (m_toggle[0]) ? HC1 : {HC2, 1'b1};
            HC2 <= (m_toggle[1]) ? HC2 : {HC2, 1'b1};
            HC3 <= (m_toggle[2]) ? HC3 : {HC3, 1'b1};
            HC4 <= (m_toggle[3]) ? HC4 : {HC4, 1'b1};
            HC5 <= (m_toggle[4]) ? HC5 : {HC5, 1'b1};
            HC6 <= (m_toggle[5]) ? HC6 : {HC6, 1'b0};
          end
        end
      endcase
    end
  end

  // M1 - M6 (output)
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      M1 <= '0;
      M2 <= '0;
      M3 <= '0;
      M4 <= '0;
      M5 <= '0;
      M6 <= '0;
    end else if (cs == SPLIT && split_cnt > 1'b0) begin
      M1 <= (m_toggle[0] == 1'b0) ? {M1, 1'b1} : M1;
      M2 <= (m_toggle[1] == 1'b0) ? {M2, 1'b1} : M2;
      M3 <= (m_toggle[2] == 1'b0) ? {M3, 1'b1} : M3;
      M4 <= (m_toggle[3] == 1'b0) ? {M4, 1'b1} : M4;
      M5 <= (m_toggle[4] == 1'b0) ? {M5, 1'b1} : M5;
      M6 <= (m_toggle[5] == 1'b0) ? {M6, 1'b1} : M6;
    end
  end

  // =============================================
  // FSM
  // =============================================

  always_ff @(posedge clk or posedge reset) begin
    if (reset) cs <= IDLE;
    else cs <= ns;
  end

  always_comb begin
    case (cs)
      IDLE:         ns = gray_valid ? INPUT : IDLE;
      INPUT:        ns = gray_valid ? INPUT : INIT;
      INIT:         ns = sort_done ? INIT_DONE : INIT;
      INIT_DONE:    ns = COMB_C1;
      COMB_C1:      ns = SORT_C1_ST;
      SORT_C1_ST:   ns = SORT_C1;
      SORT_C1:      ns = sort_done ? SORT_C1_DONE : SORT_C1;
      SORT_C1_DONE: ns = COMB_C2;
      COMB_C2:      ns = SORT_C2_ST;
      SORT_C2_ST:   ns = SORT_C2;
      SORT_C2:      ns = sort_done ? SORT_C2_DONE : SORT_C2;
      SORT_C2_DONE: ns = COMB_C3;
      COMB_C3:      ns = SORT_C3_ST;
      SORT_C3_ST:   ns = SORT_C3;
      SORT_C3:      ns = sort_done ? SORT_C3_DONE : SORT_C3;
      SORT_C3_DONE: ns = COMB_C4;
      COMB_C4:      ns = SORT_C4_ST;
      SORT_C4_ST:   ns = SORT_C4;
      SORT_C4:      ns = sort_done ? SORT_C4_DONE : SORT_C4;
      SORT_C4_DONE: ns = COMB_C5;
      COMB_C5:      ns = SORT_C5_ST;
      SORT_C5_ST:   ns = SORT_C5;
      SORT_C5:      ns = sort_done ? SORT_C5_DONE : SORT_C5;
      SORT_C5_DONE: ns = SPLIT;
      SPLIT:        ns = (split_cnt == 5) ? DONE : SPLIT;
      DONE:         ns = IDLE;
      default:      ns = IDLE;
    endcase
  end

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      code_valid <= 1'b0;
    end else if (cs == DONE) begin
      code_valid <= 1'b1;
    end
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
  input                    reset,             // active-high reset
  input                    start,
  // input        [      7:0] items_num,
  input        [WIDTH-1:0] unsorted_counts1,
  input        [WIDTH-1:0] unsorted_counts2,
  input        [WIDTH-1:0] unsorted_counts3,
  input        [WIDTH-1:0] unsorted_counts4,
  input        [WIDTH-1:0] unsorted_counts5,
  input        [WIDTH-1:0] unsorted_counts6,
  input        [WIDTH-1:0] unsorted_symbol1,
  input        [WIDTH-1:0] unsorted_symbol2,
  input        [WIDTH-1:0] unsorted_symbol3,
  input        [WIDTH-1:0] unsorted_symbol4,
  input        [WIDTH-1:0] unsorted_symbol5,
  input        [WIDTH-1:0] unsorted_symbol6,
  output logic             done,
  output logic [WIDTH-1:0] combine_idx,
  output logic [WIDTH-1:0] freq_sort1,
  output logic [WIDTH-1:0] freq_sort2,
  output logic [WIDTH-1:0] freq_sort3,
  output logic [WIDTH-1:0] freq_sort4,
  output logic [WIDTH-1:0] freq_sort5,
  output logic [WIDTH-1:0] freq_sort6,
  output logic [WIDTH-1:0] symbol_sort1,
  output logic [WIDTH-1:0] symbol_sort2,
  output logic [WIDTH-1:0] symbol_sort3,
  output logic [WIDTH-1:0] symbol_sort4,
  output logic [WIDTH-1:0] symbol_sort5,
  output logic [WIDTH-1:0] symbol_sort6
);

  typedef enum logic [7:0] {
    A1   = 8'h01,
    A2   = 8'h02,
    A3   = 8'h03,
    A4   = 8'h04,
    A5   = 8'h05,
    A6   = 8'h06,
    COMB = 8'h07
  } symbol_t;

  // Internal signal
  typedef struct packed {
    logic [WIDTH-1:0] symbol;  // symbol
    logic [WIDTH-1:0] freq;    // frequency
  } item_t;
  item_t items[6];


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

  // logic [2:0] imax, jmax;

  // FSM with asynchronous active-high reset
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      state   <= IDLE;
      done    <= 1'b0;
      i       <= 3'd0;
      j       <= 3'd0;
      min_idx <= 3'd0;
      // imax    <= 3'd0;
      // jmax    <= 3'd0;
    end else begin
      case (state)
        IDLE: begin
          done <= 1'b0;
          if (start) begin
            // load inputs
            items[0].freq   <= unsorted_counts1;
            items[1].freq   <= unsorted_counts2;
            items[2].freq   <= unsorted_counts3;
            items[3].freq   <= unsorted_counts4;
            items[4].freq   <= unsorted_counts5;
            items[5].freq   <= unsorted_counts6;
            items[0].symbol <= unsorted_symbol1;
            items[1].symbol <= unsorted_symbol2;
            items[2].symbol <= unsorted_symbol3;
            items[3].symbol <= unsorted_symbol4;
            items[4].symbol <= unsorted_symbol5;
            items[5].symbol <= unsorted_symbol6;
            i               <= 3'd0;
            // imax <= items_num - 1;
            // jmax <= items_num - 2;
            state           <= INIT_PASS;
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
          if (items[j].freq < items[min_idx].freq) min_idx <= j;
          else if (items[j].freq == items[min_idx].freq) begin
            // if same probability, keep the smaller index
            min_idx <= (items[j].symbol > items[min_idx].symbol) ? j : min_idx;
          end

          // increment j
          // 3'd5 for comparing 6 unsotred items
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
          items[i].freq         <= items[min_idx].freq;
          items[min_idx].freq   <= items[i].freq;

          items[i].symbol       <= items[min_idx].symbol;
          items[min_idx].symbol <= items[i].symbol;

          // increment i
          // 3'd4 for comparing 6 unsotred items
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
          freq_sort1   <= items[0].freq;
          freq_sort2   <= items[1].freq;
          freq_sort3   <= items[2].freq;
          freq_sort4   <= items[3].freq;
          freq_sort5   <= items[4].freq;
          freq_sort6   <= items[5].freq;
          symbol_sort1 <= items[0].symbol;
          symbol_sort2 <= items[1].symbol;
          symbol_sort3 <= items[2].symbol;
          symbol_sort4 <= items[3].symbol;
          symbol_sort5 <= items[4].symbol;
          symbol_sort6 <= items[5].symbol;
          // index of combine term
          for (int i = 0; i < 6; i++) begin
            if (items[i].symbol == COMB) combine_idx <= i;
          end
          done  <= 1'b1;
          state <= IDLE;
        end

        default: state <= IDLE;
      endcase
    end
  end

endmodule
