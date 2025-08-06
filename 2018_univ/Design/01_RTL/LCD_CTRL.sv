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

  state_t cs, ns;

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

  logic [3:0] op_x, op_y;  // The coordinates of the operating point fall within the range 0 to 8

  logic [2*BIT_WIDTH-1:0] calc_res, calc_res_tmp1, calc_res_tmp2;

  logic [2:0] rom_rd_x, rom_rd_y, ram_wr_x, ram_wr_y;

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
    if (reset) rom_rd_cnt_r <= '0;
    else rom_rd_cnt_r <= rom_rd_cnt;
  end


  // rom_rd_x, rom_rd_y
  assign rom_rd_x = rom_rd_cnt_r[2:0];
  assign rom_rd_y = rom_rd_cnt_r[5:3];
  assign ram_wr_x = rom_rd_cnt[2:0];
  assign ram_wr_y = rom_rd_cnt[5:3];

  // IROM_A
  always_ff @(posedge clk or posedge reset) begin
    if (reset) IROM_A <= '0;
    else if (cs == ROM_RD) IROM_A <= rom_rd_cnt;
  end

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
    if (IROM_rd == 1'b1) map[rom_rd_y][rom_rd_x] <= IROM_Q;  // Read from rom
    else if (cs == CMD_MAX || cs == CMD_MIN || cs == CMD_AVG) begin  // MAX, MIN, AVG
      map[op_y][op_x]      <= calc_res;
      map[op_y-1'b1][op_x] <= calc_res;
      map[op_y][op_x-1'b1] <= calc_res;
      map[op_y-1][op_x-1]  <= calc_res;
    end else if (cs == CMD_CCW) begin  // CCW
      map[op_y-1][op_x-1] <= map[op_y-1][op_x];
      map[op_y][op_x-1]   <= map[op_y-1][op_x-1];
      map[op_y][op_x]     <= map[op_y][op_x-1];
      map[op_y-1][op_x]   <= map[op_y][op_x];
    end else if (cs == CMD_CW) begin  // CW
      map[op_y-1][op_x-1] <= map[op_y][op_x-1];
      map[op_y-1][op_x]   <= map[op_y-1][op_x-1];
      map[op_y][op_x]     <= map[op_y-1][op_x];
      map[op_y][op_x-1]   <= map[op_y][op_x];
    end else if (cs == CMD_MX) begin  // Mirror X
      map[op_y-1][op_x-1] <= map[op_y][op_x-1];
      map[op_y-1][op_x]   <= map[op_y][op_x];
      map[op_y][op_x]     <= map[op_y-1][op_x];
      map[op_y][op_x-1]   <= map[op_y-1][op_x-1];
    end else if (cs == CMD_MY) begin  // Mirror Y
      map[op_y-1][op_x-1] <= map[op_y-1][op_x];
      map[op_y-1][op_x]   <= map[op_y-1][op_x-1];
      map[op_y][op_x]     <= map[op_y][op_x-1];
      map[op_y][op_x-1]   <= map[op_y][op_x];
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
    else if (cs == CMD_WR) IRAM_D <= map[ram_wr_y][ram_wr_x];
  end

  // ===================================================
  // Operation point
  // ===================================================

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      op_x <= 4'd4;
      op_y <= 4'd4;
    end else begin
      case (cs)
        CMD_SU: begin
          op_x <= op_x;
          op_y <= (op_y != 4'd1) ? op_y - 1'd1 : op_y;
        end
        CMD_SD: begin
          op_x <= op_x;
          op_y <= (op_y != 4'd7) ? op_y + 1'd1 : op_y;
        end
        CMD_SL: begin
          op_x <= (op_x != 4'd1) ? op_x - 1'd1 : op_x;
          op_y <= op_y;
        end
        CMD_SR: begin
          op_x <= (op_x != 4'd7) ? op_x + 1'd1 : op_x;
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

    case (cs)
      CMD_MAX: begin
        // calc_res_tmp1
        if (map[op_y][op_x] > map[op_y][op_x-1]) calc_res_tmp1 = map[op_y][op_x];
        else calc_res_tmp1 = map[op_y][op_x-1];

        // calc_res_tmp2
        if (map[op_y-1][op_x] > map[op_y-1][op_x-1]) calc_res_tmp2 = map[op_y-1][op_x];
        else calc_res_tmp2 = map[op_y-1][op_x-1];

        // calc_res
        if (calc_res_tmp1 > calc_res_tmp2) calc_res = calc_res_tmp1;
        else calc_res = calc_res_tmp2;
      end
      CMD_MIN: begin
        // calc_res_tmp1
        if (map[op_y][op_x] < map[op_y][op_x-1]) calc_res_tmp1 = map[op_y][op_x];
        else calc_res_tmp1 = map[op_y][op_x-1];

        // calc_res_tmp2
        if (map[op_y-1][op_x] < map[op_y-1][op_x-1]) calc_res_tmp2 = map[op_y-1][op_x];
        else calc_res_tmp2 = map[op_y-1][op_x-1];

        // calc_res
        if (calc_res_tmp1 < calc_res_tmp2) calc_res = calc_res_tmp1;
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


  // State register
  always_ff @(posedge clk or posedge reset) begin
    if (reset) cs <= ROM_RD;
    else cs <= ns;
  end

  // Next-state logic
  always_comb begin
    case (cs)
      // IDLE:    ns = (cmd_valid == 1) ? decoded_cmd : IDLE;
      IDLE: begin
        case (cmd)
          4'b0000: ns = (cmd_valid == 1) ? CMD_WR : IDLE;  // Write
          4'b0001: ns = (cmd_valid == 1) ? CMD_SU : IDLE;  // Shift Up
          4'b0010: ns = (cmd_valid == 1) ? CMD_SD : IDLE;  // Shift Down
          4'b0011: ns = (cmd_valid == 1) ? CMD_SL : IDLE;  // Shift Left
          4'b0100: ns = (cmd_valid == 1) ? CMD_SR : IDLE;  // Shift Right
          4'b0101: ns = (cmd_valid == 1) ? CMD_MAX : IDLE;  // Max
          4'b0110: ns = (cmd_valid == 1) ? CMD_MIN : IDLE;  // Min
          4'b0111: ns = (cmd_valid == 1) ? CMD_AVG : IDLE;  // Average
          4'b1000: ns = (cmd_valid == 1) ? CMD_CCW : IDLE;  // Counterclockwise Rotation
          4'b1001: ns = (cmd_valid == 1) ? CMD_CW : IDLE;  // Clockwise Rotation
          4'b1010: ns = (cmd_valid == 1) ? CMD_MX : IDLE;  // Mirror X
          4'b1011: ns = (cmd_valid == 1) ? CMD_MY : IDLE;  // Mirror Y
          default: ns = (cmd_valid == 1) ? CMD_WR : IDLE;  // Default to write or error handling
        endcase
      end
      ROM_RD:  ns = (rom_rd_cnt_r == 63) ? IDLE : ROM_RD;
      CMD_SU:  ns = IDLE;
      CMD_SD:  ns = IDLE;
      CMD_SL:  ns = IDLE;
      CMD_SR:  ns = IDLE;
      CMD_MAX: ns = IDLE;
      CMD_MIN: ns = IDLE;
      CMD_AVG: ns = IDLE;
      CMD_CW:  ns = IDLE;
      CMD_CCW: ns = IDLE;
      CMD_MX:  ns = IDLE;
      CMD_MY:  ns = IDLE;
      // Write 64 points into RAM, one point per cycle
      CMD_WR:  ns = (rom_rd_cnt_r == 63) ? DONE : CMD_WR;
      DONE:    ns = IDLE;
      default: ns = cs;  // default: hold current state
    endcase
  end

  // Output logic
  assign done = (cs == DONE);
  assign busy = (cs != IDLE);

endmodule
