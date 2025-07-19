module LCD_CTRL (
  input              clk,
  input              reset,
  input        [3:0] cmd,
  input              cmd_valid,
  input        [7:0] IROM_Q,
  output logic       IROM_rd,
  output logic [5:0] IROM_A,
  output logic       IRAM_valid,
  output logic [7:0] IRAM_D,
  output logic [5:0] IRAM_A,
  output logic       busy,
  output             done
);


  // ===================================================
  // Typedef
  // ===================================================
  typedef enum logic [3:0] {
    IDLE,
    ROM_RD,
    CMD_SU,
    CMD_SD,
    CMD_SL,
    CMD_SR,
    CMD_MAX,
    CMD_MIN,
    CMD_AVG,
    CMD_CCW,
    CMD_CW,
    CMD_MX,
    CMD_MY,
    CMD_WR,
    DONE
  } state_t;

  state_t cs, ns, decoded_cmd;

  // ===================================================
  // Parameter
  // ===================================================
  parameter int BIT_WIDTH = 8;

  // ===================================================
  // Internal Signal
  // ===================================================
  logic [BIT_WIDTH-1:0] map[8][8];
  logic [6:0] rom_rd_cnt, rom_rd_cnt_r;
  logic [6:0] cmd_cnt;

  logic [3:0] op_x, op_y; // The coordinates of the operating point fall within the range 0 to 8

  logic [BIT_WIDTH-1:0] calc_res, calc_res_tmp1, calc_res_tmp2;

  logic [2:0] rom_rd_x, rom_rd_y;

  // ===================================================
  // Read ROM
  // ===================================================

  // rom_rd_cnt
  always_ff @(posedge clk or posedge reset) begin
    if (reset) rom_rd_cnt <= '0;
    else if (cs == ROM_RD) rom_rd_cnt <= rom_rd_cnt + 1'b1;
    else if (cs == CMD_WR) rom_rd_cnt <= rom_rd_cnt + 1'b1;
    else rom_rd_cnt <= '0;
  end

  // rom_rd_cnt_r: delay 1 cycle of rom_rd_cnt
  always_ff @(posedge clk or posedge reset) begin
    rom_rd_cnt_r <= rom_rd_cnt;
  end


  // rom_rd_x, rom_rd_y
  assign rom_rd_x = (cs == ROM_RD) ? rom_rd_cnt_r[2:0]
                  : (cs == CMD_WR) ? rom_rd_cnt[2:0] : '0;
  assign rom_rd_y = (cs == ROM_RD) ? rom_rd_cnt_r[5:3]
                  : (cs == CMD_WR) ? rom_rd_cnt[5:3] : '0;

  // IROM_A
  always_ff @(posedge clk or posedge reset) begin
    if (reset) IROM_A <= '0;
    else if (cs == ROM_RD) IROM_A <= rom_rd_cnt;
  end/home/host/Documents/IC-Contest/2018_univ/Design/01_RTL/csrc

  //IROM_rd
  always_ff @(posedge clk or posedge reset) begin
    if (reset) IROM_rd <= 1'b0;
    else if (cs == ROM_RD) IROM_rd <= 1'b1;
    else IROM_rd <= 1'b0;
  end

  // ===================================================
  // Map
  //
  // Map and operation point
  // +-----------------------+----------------------+
  // | [op_y-1, op_x-1]      | [op_y-1, op_x]       |
  // +-----------------------+----------------------+
  // | [op_y,   op_x-1]      | [op_y,   op_x]       |
  // +-----------------------+----------------------+
  //
  // ===================================================
  always_ff @(posedge clk) begin
    // Read from rom
    if (IROM_rd == 1'b1) map[rom_rd_y][rom_rd_x] <= IROM_Q;
    else if (cs == CMD_MAX || cs == CMD_MIN || cs == CMD_AVG) begin
      map[op_y][op_x] <= calc_res;
      map[op_y-1'b1][op_x] <= calc_res;
      map[op_y][op_x-1'b1] <= calc_res;
      map[op_y-1][op_x-1] <= calc_res;
    end
  end

  // ===================================================
  // CMD_WR
  // ===================================================

  // IRAM_valid
  always_ff @(posedge clk or posedge reset) begin
    if (reset) IRAM_valid <= 1'b0;
    else if (cs == CMD_WR) IRAM_valid <= 1'b1;
    else IRAM_valid <= 1'b0;
  end

  // IRAM_A
  assign IRAM_A = rom_rd_cnt_r;

  // IRAM_D
  always_ff @(posedge clk or posedge reset) begin
    if (reset) IRAM_D <= '0;
    else if (cs == CMD_WR) IRAM_D <= map[rom_rd_y][rom_rd_x];
  end

  // ===================================================
  // Operation point
  // ===================================================

  always_ff @(posedge clk or posedge reset) begin
    if(reset) begin
      op_x <= 4'd4;
      op_y <= 4'd4;
    end else begin
      case(cs)
        CMD_SU: begin
          op_x <= op_x;
          op_y <= op_y - 1'd1;
        end
        CMD_SD: begin
          op_x <= op_x;
          op_y <= op_y + 1'd1;
        end
        CMD_SL: begin
          op_x <= op_x - 1'd1;
          op_y <= op_y;
        end
        CMD_SR: begin
          op_x <= op_x + 1'd1;
          op_y <= op_y;
        end
        default: begin
          op_x <= op_x;
          op_y <= op_y;
        end
      endcase
    end
  end


  // ===================================================
  // MAX, MIN, AVG
  // ===================================================

  // calc_res
  always_comb begin

    case(cs)
      CMD_MAX:begin
        // calc_res_tmp1
        if ( map[op_y][op_x] > map[op_y][op_x-1] ) calc_res_tmp1 = map[op_y][op_x];
        else calc_res_tmp1 = map[op_y][op_x];

        // calc_res_tmp2
        if ( map[op_y][op_x-1] > map[op_y-1][op_x-1] ) calc_res_tmp2 = map[op_y][op_x-1];
        else calc_res_tmp2 = map[op_y-1][op_x-1];

        // calc_res
        if ( calc_res_tmp1 > calc_res_tmp2 ) calc_res = calc_res_tmp1;
        else calc_res = calc_res_tmp2;
      end
      CMD_MIN: begin
        // calc_res_tmp1
        if ( map[op_y][op_x] < map[op_y][op_x-1] ) calc_res_tmp1 = map[op_y][op_x];
        else calc_res_tmp1 = map[op_y][op_x];

        // calc_res_tmp2
        if ( map[op_y][op_x-1] < map[op_y-1][op_x-1] ) calc_res_tmp2 = map[op_y][op_x-1];
        else calc_res_tmp2 = map[op_y-1][op_x-1];

        // calc_res
        if ( calc_res_tmp1 < calc_res_tmp2 ) calc_res = calc_res_tmp1;
        else calc_res = calc_res_tmp2;
      end
      CMD_AVG: begin
        calc_res_tmp1 = map[op_y][op_x] + map[op_y][op_x-1] + map[op_y-1][op_x] + map[op_y-1][op_x-1];
        calc_res_tmp2 = calc_res_tmp1 >> 2;
        calc_res = calc_res_tmp2;
      end
      default: calc_res = '0;
    endcase
  end



  // ===================================================
  // FSM
  // ===================================================

  // cmd decode
  always_comb begin
    case (cmd)
      4'b0000: decoded_cmd = CMD_WR;  // Write
      4'b0001: decoded_cmd = CMD_SU;  // Shift Up
      4'b0010: decoded_cmd = CMD_SD;  // Shift Down
      4'b0011: decoded_cmd = CMD_SL;  // Shift Left
      4'b0100: decoded_cmd = CMD_SR;  // Shift Right
      4'b0101: decoded_cmd = CMD_MAX;  // Max
      4'b0110: decoded_cmd = CMD_MIN;  // Min
      4'b0111: decoded_cmd = CMD_AVG;  // Average
      4'b1000: decoded_cmd = CMD_CCW;  // Counterclockwise Rotation
      4'b1001: decoded_cmd = CMD_CW;  // Clockwise Rotation
      4'b1010: decoded_cmd = CMD_MX;  // Mirror X
      4'b1011: decoded_cmd = CMD_MY;  // Mirror Y
      default: decoded_cmd = CMD_WR;  // Default to write or error handling
    endcase
  end


  // State register
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cs <= ROM_RD;
    else cs <= ns;
  end

  // Next-state logic
  always_comb begin
    case (cs)
      IDLE:    ns = (cmd_valid == 1) ? decoded_cmd : IDLE;
      ROM_RD:  ns = (rom_rd_cnt == 64) ? IDLE : ROM_RD;
      CMD_SU:  ns = IDLE;
      CMD_SD:  ns = IDLE;
      CMD_SL:  ns = IDLE;
      CMD_SR:  ns = IDLE;
      CMD_MAX: ns = CMD_MIN;
      CMD_MIN: ns = CMD_AVG;
      CMD_AVG: ns = CMD_CCW;
      CMD_CCW: ns = CMD_MX;
      CMD_MX:  ns = CMD_MY;
      CMD_MY:  ns = CMD_WR;
      // Write 64 points into RAM, one point per cycle
      CMD_WR:  ns = (rom_rd_cnt == 64) ? DONE : CMD_WR;
      DONE:    ns = IDLE;
      default: ns = cs;  // default: hold current state
    endcase
  end

  // Output logic
  assign done = (cs == DONE);

  always @(posedge clk) begin
    busy <= (cs != IDLE);
  end

  // assign busy = ( cs != IDLE);

endmodule



