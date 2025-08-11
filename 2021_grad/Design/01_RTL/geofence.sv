module geofence (
  input               clk,
  input               reset,
  input        [ 9:0] X,
  input        [ 9:0] Y,
  input        [10:0] R,
  output logic        valid,
  output logic        is_inside
);

  // ===============================================
  // TYPES
  // ===============================================

  typedef enum logic [1:0] {
    MUL_1 = 2'b00,
    MUL_2 = 2'b01,
    CROSS = 2'b10,
    SWAP = 2'b11
  } mul_t;


  typedef enum logic [6:0] {
    IDLE,
    INPUT,
    LIST_3,
    LIST_4,
    LIST_5,
    LIST_6,
    DONE
  } state_t;

  state_t cs, ns;

  typedef struct packed {
    logic [9:0]  x;
    logic [9:0]  y;
    logic [10:0] r;
  } point_t;

  point_t point_1, point_2, point_3, point_4, point_5, point_6;
  point_t point_cal_vec1, point_cal_vec2;

  // A point's x and y coordinates are both positive integers. In contrast,
  // a vector's x and y coordinates can be negative, but must still cover the range of
  // positive integers. I need to add one bit to accommodate this.
  typedef struct packed {
    logic signed [10:0] x;
    logic signed [10:0] y;
  } vector_t;

  vector_t vector_A, vector_B, vector_C, vector_D, vector_E;
  vector_t            vector_tmp;

  // ===============================================
  // INTERNAL SIGNALS
  // ===============================================
  logic        [ 2:0] input_list_cnt;
  logic        [ 3:0] cclockwise     [6];  // counter clockwise list
  logic signed [21:0] cross_product;
  logic signed [21:0] mul_in1, mul_in2, mul_res_tmp, mul_res1, mul_res2;
  logic       swap_done;
  logic [3:0] swap_cnt;
  // logic          is_negative;


  // ===============================================
  // FUNCTIONS
  // ===============================================
  function automatic vector_t cal_vector(point_t p1, point_t p2);
    vector_t v;
    v.x = (p2.x) - (p1.x);
    v.y = (p2.y) - (p1.y);
    return v;
  endfunction

  function automatic logic signed [21:0] multiply(logic signed [10:0] a, logic signed [10:0] b);
    multiply = a * b;
    return multiply;
  endfunction

  // ===============================================
  // point
  // ===============================================

  // input_list_cnt
  always_ff @(posedge clk or posedge reset) begin
    if (reset) input_list_cnt <= 0;
    else if (cs == INPUT) input_list_cnt <= input_list_cnt + 1;
    else if (cs == LIST_3 || cs == LIST_4)
      input_list_cnt <= (swap_done) ? input_list_cnt + 1 : input_list_cnt;
    else input_list_cnt <= 0;
  end

  // point_t
  always_ff @(posedge clk) begin
    if (cs == INPUT) begin
      case (input_list_cnt)
        0:       point_1 <= '{x: X, y: Y, r: R};
        1:       point_2 <= '{x: X, y: Y, r: R};
        2:       point_3 <= '{x: X, y: Y, r: R};
        3:       point_4 <= '{x: X, y: Y, r: R};
        4:       point_5 <= '{x: X, y: Y, r: R};
        5:       point_6 <= '{x: X, y: Y, r: R};
        default: ;  // do nothing
      endcase
    end
  end

  // ===============================================
  // vector
  // ===============================================


  // point_cal_vec2
  always_comb begin
    case (input_list_cnt)
      2:       point_cal_vec2 = point_2;
      3:       point_cal_vec2 = point_3;
      4:       point_cal_vec2 = point_4;
      5:       point_cal_vec2 = point_5;
      6:       point_cal_vec2 = point_6;
      default: ;  // do nothing
    endcase
  end

  // point_cal_vec1
  assign point_cal_vec1 = point_1;

  // vector_tmp
  assign vector_tmp     = cal_vector(point_cal_vec1, point_cal_vec2);

  // vector_t
  always_ff @(posedge clk) begin
    if (cs == INPUT) begin
      case (input_list_cnt)
        2:       vector_A <= vector_tmp;
        3:       vector_B <= vector_tmp;
        4:       vector_C <= vector_tmp;
        5:       vector_D <= vector_tmp;
        6:       vector_E <= vector_tmp;
        default: ;  // do nothing
      endcase
    end
  end

  // ===============================================
  // CROSS PRODUCT
  // ===============================================
  // Break it into two periods to perform the cross product

  // swap_cnt
  always_ff @(posedge clk or posedge reset) begin
    if (reset) swap_cnt <= 0;
    else if (cs == LIST_3 || cs == LIST_4 ) begin
      if (swap_cnt == 4) swap_cnt <= 0;
      else swap_cnt <= swap_cnt + 1;
    end else swap_cnt <= 0;
  end

  // mul_in1, mul_in2
  always_ff @(posedge clk) begin
    if (cs == LIST_3) begin
      if (swap_cnt == MUL_1) begin
        mul_in1 <= vector_A.x;
        mul_in2 <= vector_B.y;
      end else if (swap_cnt == MUL_2) begin
        mul_in1 <= vector_B.x;
        mul_in2 <= vector_A.y;
      end
    end else if (cs == LIST_4) begin
      if (swap_cnt == MUL_1) begin
        mul_in1 <= vector_A.x;
        mul_in2 <= vector_C.y;
      end else if (swap_cnt == MUL_2) begin
        mul_in1 <= vector_C.x;
        mul_in2 <= vector_A.y;
      end else if (swap_cnt == MUL_1) begin
        mul_in1 <= vector_B.x;
        mul_in2 <= vector_C.y;
      end else if (swap_cnt == MUL_2) begin
        mul_in1 <= vector_C.x;
        mul_in2 <= vector_B.y;
      end
    end
  end

  // [21:0] mul_res_tmp
  always_comb begin
    mul_res_tmp = multiply(mul_in1, mul_in2);
  end

  // mul_res1, mul_res2
  always_ff @(posedge clk) begin
    if (swap_cnt == MUL_2) begin
      mul_res1 <= mul_res_tmp;
    end else if (swap_cnt == CROSS) begin
      mul_res2 <= mul_res_tmp;
    end
    // if (cs == LIST_3) begin
    //   if (swap_cnt == 1) begin
    //     mul_res1 <= mul_res_tmp;
    //   end else if (swap_cnt == 2) begin
    //     mul_res2 <= mul_res_tmp;
    //   end
    // end else if (cs == LIST_4) begin
    //   if (swap_cnt == 1) begin
    //     mul_res1 <= mul_res_tmp;
    //   end else if (swap_cnt == 2) begin
    //     mul_res2 <= mul_res_tmp;
    //   end
    // end
  end


  // cross product
  always_ff @(posedge clk) begin
    if (swap_cnt == CROSS) begin
      cross_product <= mul_res1 - mul_res2;
    end
  end



  //swap_done
  always_ff @(posedge clk or posedge reset) begin
    if (reset) swap_done <= 0;
    else if (swap_cnt == SWAP) swap_done <= 1;
    else swap_done <= 0;
  end





  // ===============================================
  // LIST
  // ===============================================

  // list
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cclockwise <= '{1, 2, 3, 4, 5, 6};
    else if (cs == LIST_3) begin
      if (input_list_cnt == 0 && swap_done) begin
        if (cross_product > 0) begin
          cclockwise[1] <= cclockwise[2];
          cclockwise[2] <= cclockwise[1];
        end
      end
    end else if (cs == LIST_4) begin

    end
  end



  // ===============================================
  // FSM
  // ===============================================

  // current state
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cs <= INPUT;
    else cs <= ns;
  end

  // next state
  always_comb begin
    case (cs)
      IDLE:    ns = INPUT;
      INPUT:   ns = (input_list_cnt == 6) ? LIST_3 : INPUT;
      LIST_3:  ns = (input_list_cnt == 1) ? LIST_4 : LIST_3;
      LIST_4:  ns = (input_list_cnt == 2) ? LIST_5 : LIST_4;
      default: ns = cs;
    endcase
  end


  // ===============================================
  // OUTPUT LOGIC
  // ===============================================

  // TODO valid
  assign valid = (cs == DONE);

  // TODO is inside
  assign is_inside = (vector_A.x * vector_B.y - vector_A.y * vector_B.x) + (vector_B.x * vector_C.y - vector_B.y * vector_C.x) + (vector_C.x * vector_D.y - vector_C.y * vector_D.x) + (vector_D.x * vector_E.y - vector_D.y * vector_E.x) + (vector_E.x * vector_A.y - vector_E.y * vector_A.x) > 0;





endmodule
