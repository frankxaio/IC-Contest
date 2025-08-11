module geofence (
  input              clk,
  input              reset,
  input        [9:0] X,
  input        [9:0] Y,
  output logic       valid,
  output logic       is_inside
);

  // ===============================================
  // TYPES
  // ===============================================



  typedef enum logic [6:0] {
    IDLE,
    INPUT,
    LIST,
    CROSS,
    WAIT_CROSS,
    SWAP,
    CHECK_LIST,
    LIST_DONE,
    CAL_VEC,
    CAL_VEC_A,
    CAL_VEC_B,
    CHECK_CROSS,
    DONE
  } state_t;

  state_t cs, ns;

  typedef struct {
    logic [9:0] x;
    logic [9:0] y;
  } point_t;

  point_t point_object, point_1, point_2, point_3, point_4, point_5, point_6;
  point_t point_cal_vec1, point_cal_vec2;

  // A point's x and y coordinates are both positive integers. In contrast,
  // a vector's x and y coordinates can be negative, but must still cover the range of
  // positive integers. I need to add one bit to accommodate this.
  typedef struct {
    logic signed [10:0] x;
    logic signed [10:0] y;
  } vector_t;

  vector_t vector_A, vector_B, vector_C, vector_D, vector_E;
  vector_t            vector_tmp;

  // ===============================================
  // INTERNAL SIGNALS
  // ===============================================
  logic        [ 3:0] input_list_cnt;
  logic        [ 2:0] cclockwise     [6];  // counter clockwise list
  logic signed [21:0] cross_product, cross_product_r;

  // Cross product module signals
  logic signed [10:0] cross_vector_a_x, cross_vector_a_y;
  logic signed [10:0] cross_vector_b_x, cross_vector_b_y;
  logic cross_input_ready, cross_output_valid;

  // 
  logic       list_done;


  // ===============================================
  // FUNCTIONS
  // ===============================================
  function automatic vector_t cal_vector(point_t p1, point_t p2);
    vector_t v;
    v.x = (p2.x) - (p1.x);
    v.y = (p2.y) - (p1.y);
    return v;
  endfunction

  // ===============================================
  // point
  // ===============================================

  // input_list_cnt
  always_ff @(posedge clk or posedge reset) begin
    if (reset) input_list_cnt <= 0;
    else if (cs == INPUT) input_list_cnt <= (input_list_cnt == 'd7) ? 0 : input_list_cnt + 1;
    else if (cs == CHECK_LIST) input_list_cnt <= (input_list_cnt == 'd9) ? 0 : input_list_cnt + 1;
    else if (cs == CHECK_CROSS) input_list_cnt <= (input_list_cnt == 'd5) ? 0 : input_list_cnt + 1;
  end


  // point_t
  always_ff @(posedge clk) begin
    if (cs == INPUT) begin
      case (input_list_cnt)
        'd0:     point_object <= '{x: X, y: Y};
        'd1:     point_1 <= '{x: X, y: Y};
        'd2:     point_2 <= '{x: X, y: Y};
        'd3:     point_3 <= '{x: X, y: Y};
        'd4:     point_4 <= '{x: X, y: Y};
        'd5:     point_5 <= '{x: X, y: Y};
        'd6:     point_6 <= '{x: X, y: Y};
        default: ;  // do nothing
      endcase
    end
  end

  // ===============================================
  // vector
  // ===============================================


  // point_cal_vec2
  always_comb begin
    point_cal_vec2 = '{x: 0, y: 0};
    if (cs == INPUT) begin
      case (input_list_cnt)
        'd3:     point_cal_vec2 = point_2;
        'd4:     point_cal_vec2 = point_3;
        'd5:     point_cal_vec2 = point_4;
        'd6:     point_cal_vec2 = point_5;
        'd7:     point_cal_vec2 = point_6;
        default: ;  // do nothing
      endcase
    end else if (cs == CAL_VEC_A) begin
      case (cclockwise[input_list_cnt])
        'd1:     point_cal_vec2 = point_1;
        'd2:     point_cal_vec2 = point_2;
        'd3:     point_cal_vec2 = point_3;
        'd4:     point_cal_vec2 = point_4;
        'd5:     point_cal_vec2 = point_5;
        'd6:     point_cal_vec2 = point_6;
        default: ;  // do nothing
      endcase
    end else if (cs == CAL_VEC_B) begin
      if (input_list_cnt + 'd1 == 6) begin
        case (cclockwise[0])
          'd1:     point_cal_vec2 = point_1;
          'd2:     point_cal_vec2 = point_2;
          'd3:     point_cal_vec2 = point_3;
          'd4:     point_cal_vec2 = point_4;
          'd5:     point_cal_vec2 = point_5;
          'd6:     point_cal_vec2 = point_6;
        endcase
      end else begin
        case (cclockwise[input_list_cnt+'d1])
          'd1:     point_cal_vec2 = point_1;
          'd2:     point_cal_vec2 = point_2;
          'd3:     point_cal_vec2 = point_3;
          'd4:     point_cal_vec2 = point_4;
          'd5:     point_cal_vec2 = point_5;
          'd6:     point_cal_vec2 = point_6;
        endcase
      end
    end
  end

  // point_cal_vec1
  always_comb begin
    point_cal_vec1 = '{x: 0, y: 0};
    if (cs == INPUT) begin
      point_cal_vec1 = point_1;
    end else if (cs == CAL_VEC_A) begin
      point_cal_vec1 = point_object;
    end else if (cs == CAL_VEC_B) begin
      case (cclockwise[input_list_cnt])
        'd1:     point_cal_vec1 = point_1;
        'd2:     point_cal_vec1 = point_2;
        'd3:     point_cal_vec1 = point_3;
        'd4:     point_cal_vec1 = point_4;
        'd5:     point_cal_vec1 = point_5;
        'd6:     point_cal_vec1 = point_6;
        default: ;  // do nothing
      endcase
    end
  end

  // vector_tmp
  assign vector_tmp = cal_vector(point_cal_vec1, point_cal_vec2);

  // vector_t
  always_ff @(posedge clk) begin
    if (cs == INPUT) begin
      case (input_list_cnt)
        'd3: vector_A <= vector_tmp;
        'd4: vector_B <= vector_tmp;
        'd5: vector_C <= vector_tmp;
        'd6: vector_D <= vector_tmp;
        'd7: vector_E <= vector_tmp;
      endcase
    end else if (cs == CAL_VEC_A) begin
      vector_A <= vector_tmp;
    end else if (cs == CAL_VEC_B) begin
      vector_B <= vector_tmp;
    end else begin
      vector_A <= vector_A;
      vector_B <= vector_B;
      vector_C <= vector_C;
      vector_D <= vector_D;
      vector_E <= vector_E;
    end
  end

  // ===============================================
  // CROSS PRODUCT MODULE
  // ===============================================

  // Cross product input vector selection
  always_ff @(posedge clk) begin
    if (cs == CROSS && (!list_done)) begin
      case (input_list_cnt)
        'd0: begin
          cross_vector_a_x <= vector_B.x;
          cross_vector_a_y <= vector_B.y;
          cross_vector_b_x <= vector_A.x;
          cross_vector_b_y <= vector_A.y;
        end
        // ================================= cclockwise = {1 , o, o, o}
        'd1: begin
          cross_vector_a_x <= vector_C.x;
          cross_vector_a_y <= vector_C.y;
          case (cclockwise[2])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
          endcase
        end
        'd2: begin
          cross_vector_a_x <= vector_C.x;
          cross_vector_a_y <= vector_C.y;
          case (cclockwise[1])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
          endcase
        end
        // ================================= cclockwise = {1 , o, o, o, o}
        'd3: begin
          cross_vector_a_x <= vector_D.x;
          cross_vector_a_y <= vector_D.y;
          case (cclockwise[3])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
          endcase
        end
        'd4: begin
          cross_vector_a_x <= vector_D.x;
          cross_vector_a_y <= vector_D.y;
          case (cclockwise[2])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
          endcase
        end
        'd5: begin
          cross_vector_a_x <= vector_D.x;
          cross_vector_a_y <= vector_D.y;
          case (cclockwise[1])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
          endcase
        end
        // ================================= cclockwise = {1 , o, o, o, o, o}
        'd6: begin
          cross_vector_a_x <= vector_E.x;
          cross_vector_a_y <= vector_E.y;
          case (cclockwise[4])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
            5: begin
              cross_vector_b_x <= vector_D.x;
              cross_vector_b_y <= vector_D.y;
            end
          endcase
        end
        'd7: begin
          cross_vector_a_x <= vector_E.x;
          cross_vector_a_y <= vector_E.y;
          case (cclockwise[3])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
            5: begin
              cross_vector_b_x <= vector_D.x;
              cross_vector_b_y <= vector_D.y;
            end
          endcase
        end
        'd8: begin
          cross_vector_a_x <= vector_E.x;
          cross_vector_a_y <= vector_E.y;
          case (cclockwise[2])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
            5: begin
              cross_vector_b_x <= vector_D.x;
              cross_vector_b_y <= vector_D.y;
            end
          endcase
        end
        'd9: begin
          cross_vector_a_x <= vector_E.x;
          cross_vector_a_y <= vector_E.y;
          case (cclockwise[1])
            2: begin
              cross_vector_b_x <= vector_A.x;
              cross_vector_b_y <= vector_A.y;
            end
            3: begin
              cross_vector_b_x <= vector_B.x;
              cross_vector_b_y <= vector_B.y;
            end
            4: begin
              cross_vector_b_x <= vector_C.x;
              cross_vector_b_y <= vector_C.y;
            end
            5: begin
              cross_vector_b_x <= vector_D.x;
              cross_vector_b_y <= vector_D.y;
            end
          endcase
        end
        // =================================
        default: begin
          cross_vector_a_x <= cross_vector_a_x;
          cross_vector_a_y <= cross_vector_a_y;
          cross_vector_b_x <= cross_vector_b_x;
          cross_vector_b_y <= cross_vector_b_y;
        end
      endcase
    end else if (cs == CROSS && list_done) begin
      cross_vector_a_x <= vector_A.x;
      cross_vector_a_y <= vector_A.y;
      cross_vector_b_x <= vector_B.x;
      cross_vector_b_y <= vector_B.y;
    end
  end

  // Cross product input ready signal
  assign cross_input_ready = (cs == CROSS);

  // Cross product module instantiation
  cross_product_module u_cross_product (
    .clk          (clk),
    .reset        (reset),
    .vector_a_x   (cross_vector_a_x),
    .vector_a_y   (cross_vector_a_y),
    .vector_b_x   (cross_vector_b_x),
    .vector_b_y   (cross_vector_b_y),
    .input_ready  (cross_input_ready),
    .cross_product(cross_product),
    .output_valid (cross_output_valid)
  );

  // cross_product_r
  always_ff @(posedge clk) begin
    if (list_done && input_list_cnt != 'd0 && cross_input_ready) cross_product_r <= cross_product;
  end


  // ===============================================
  // LIST
  // ===============================================

  // list
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cclockwise <= '{1, 2, 3, 4, 5, 6};
    else if (cs == IDLE) cclockwise <= '{1, 2, 3, 4, 5, 6};
    else if (cs == SWAP && cross_product > 0) begin
      if (input_list_cnt == 0) begin
        cclockwise[1] <= cclockwise[2];
        cclockwise[2] <= cclockwise[1];
        // ================================================================================
      end else if (input_list_cnt == 1) begin
        cclockwise[2] <= cclockwise[3];
        cclockwise[3] <= cclockwise[2];
      end else if (input_list_cnt == 2) begin
        cclockwise[1] <= cclockwise[2];
        cclockwise[2] <= cclockwise[1];
        // ================================================================================
      end else if (input_list_cnt == 3) begin
        cclockwise[3] <= cclockwise[4];
        cclockwise[4] <= cclockwise[3];
      end else if (input_list_cnt == 4) begin
        cclockwise[2] <= cclockwise[3];
        cclockwise[3] <= cclockwise[2];
      end else if (input_list_cnt == 5) begin
        cclockwise[1] <= cclockwise[2];
        cclockwise[2] <= cclockwise[1];
        // ================================================================================
      end else if (input_list_cnt == 6) begin
        cclockwise[4] <= cclockwise[5];
        cclockwise[5] <= cclockwise[4];
      end else if (input_list_cnt == 7) begin
        cclockwise[3] <= cclockwise[4];
        cclockwise[4] <= cclockwise[3];
      end else if (input_list_cnt == 8) begin
        cclockwise[2] <= cclockwise[3];
        cclockwise[3] <= cclockwise[2];
      end else if (input_list_cnt == 9) begin
        cclockwise[1] <= cclockwise[2];
        cclockwise[2] <= cclockwise[1];
      end
    end
  end

  // list_done
  always_ff @(posedge clk or posedge reset) begin
    if (reset) list_done <= 1'b0;
    else if (cs == LIST_DONE) list_done <= 1'b1;
    else if (cs == IDLE) list_done <= 1'b0;
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
      IDLE:        ns = INPUT;
      INPUT:       ns = (input_list_cnt == 'd7) ? LIST : INPUT;
      LIST:        ns = CROSS;
      CROSS:       ns = WAIT_CROSS;
      WAIT_CROSS:  ns = (!cross_output_valid) ? WAIT_CROSS : (list_done) ? CHECK_CROSS : SWAP;
      SWAP:        ns = CHECK_LIST;
      CHECK_LIST:  ns = (input_list_cnt == 'd9) ? LIST_DONE : LIST;
      LIST_DONE:   ns = CAL_VEC_A;
      CAL_VEC_A:   ns = CAL_VEC_B;
      CAL_VEC_B:   ns = CROSS;
      CHECK_CROSS: ns = (input_list_cnt == 'd5) ? DONE : CAL_VEC_A;
      DONE:        ns = IDLE;
      default:     ns = cs;
    endcase
  end


  // ===============================================
  // OUTPUT LOGIC
  // ===============================================

  always_ff @(posedge clk or posedge reset) begin
    if (reset) valid <= 1'b0;
    else if (cs == DONE) valid <= 1'b1;
    else valid <= 1'b0;
  end

  always_ff @(posedge clk or posedge reset) begin
    if (reset) is_inside <= 1'b1;
    else if (cs == IDLE) is_inside <= 1'b1;
    else if (cs == CHECK_CROSS && input_list_cnt != 'd0) begin 
      if (cross_product == 'd0) is_inside <= 1'b0;
      else if (cross_product_r > 'sd0 && cross_product < 'sd0) is_inside <= 1'b0;
      else if (cross_product_r < 'sd0 && cross_product > 'sd0) is_inside <= 1'b0;
    end
  end





endmodule


module cross_product_module (
  input                      clk,
  input                      reset,
  input  signed       [10:0] vector_a_x,
  input  signed       [10:0] vector_a_y,
  input  signed       [10:0] vector_b_x,
  input  signed       [10:0] vector_b_y,
  input                      input_ready,
  output logic signed [21:0] cross_product,
  output logic               output_valid
);

  // ===============================================
  // TYPES AND INTERNAL SIGNALS
  // ===============================================

  typedef enum logic [3:0] {
    IDLE       = 4'b0000,
    MUL_1      = 4'b0001,
    MUL_1_DONE = 4'b0010,
    MUL_2      = 4'b0011,
    MUL_2_DONE = 4'b0100,
    CROSS_CAL  = 4'b0101,
    DONE       = 4'b0110
  } cross_state_t;

  cross_state_t cs, ns;

  logic signed [10:0] mul_in1, mul_in2;
  logic signed [21:0] mul_res_tmp, mul_res1, mul_res2;

  // ===============================================
  // MULTIPLICATION FUNCTION
  // ===============================================

  function automatic logic signed [21:0] multiply(logic signed [10:0] a, logic signed [10:0] b);
    multiply = a * b;
    return multiply;
  endfunction

  // ===============================================
  // STATE MACHINE
  // ===============================================

  // Current state
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cs <= IDLE;
    else cs <= ns;
  end

  // Next state logic
  always_comb begin
    case (cs)
      IDLE:       ns = input_ready ? MUL_1 : IDLE;
      MUL_1:      ns = MUL_1_DONE;
      MUL_1_DONE: ns = MUL_2;
      MUL_2:      ns = MUL_2_DONE;
      MUL_2_DONE: ns = CROSS_CAL;
      CROSS_CAL:  ns = DONE;
      DONE:       ns = IDLE;
      default:    ns = IDLE;
    endcase
  end

  // ===============================================
  // MULTIPLICATION PIPELINE
  // ===============================================

  // Multiplier inputs
  always_ff @(posedge clk) begin
    case (cs)
      MUL_1: begin
        mul_in1 <= vector_a_x;
        mul_in2 <= vector_b_y;
      end
      MUL_2: begin
        mul_in1 <= vector_a_y;
        mul_in2 <= vector_b_x;
      end
      default: begin
        mul_in1 <= 11'b0;
        mul_in2 <= 11'b0;
      end
    endcase
  end

  // Multiplication result
  always_comb begin
    mul_res_tmp = multiply(mul_in1, mul_in2);
  end

  // Store multiplication results
  always_ff @(posedge clk) begin
    case (cs)
      MUL_1_DONE: mul_res1 <= mul_res_tmp;  // Store A.x * B.y
      MUL_2_DONE: mul_res2 <= mul_res_tmp;  // Store A.y * B.x
      default: begin
        mul_res1 <= mul_res1;
        mul_res2 <= mul_res2;
      end
    endcase
  end

  // ===============================================
  // OUTPUT LOGIC
  // ===============================================

  // Cross product calculation: A.x * B.y - A.y * B.x
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cross_product <= 22'b0;
    else if (cs == CROSS_CAL) cross_product <= mul_res1 - mul_res2;
    else cross_product <= cross_product;
  end

  // Output valid signal
  always_ff @(posedge clk or posedge reset) begin
    if (reset) output_valid <= 1'b0;
    else output_valid <= (ns == DONE);
  end

endmodule