module LCD_CTRL (
  input        clk,
  input        reset,
  input  [3:0] cmd,
  input        cmd_valid,
  input  [7:0] IROM_Q,
  output       IROM_rd,
  output logic [5:0] IROM_A,
  output       IRAM_valid,
  output [7:0] IRAM_D,
  output [5:0] IRAM_A,
  output       busy,
  output       done
);


  // ===================================================
  // Typedef
  // ===================================================
  typedef enum logic [7:0] {
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
  // Internal Signal
  // ===================================================
  logic [7:0] map        [8][8];
  logic [5:0] rom_rd_cnt;
  logic [6:0] cmd_cnt;

  logic [2:0] rom_rd_x, rom_rd_y;

  logic [5:0] decoded_cmd;

  // ===================================================
  // Read ROM
  // ===================================================

  // rom_rd_cnt
  always_ff @(posedge clk or posedge reset) begin
    if (reset) rom_rd_cnt <= 0;
    else if (cs == ROM_RD) rom_rd_cnt <= rom_rd_cnt + 1;
  end

  // rom_rd_x, rom_rd_y
  assign rom_rd_x = rom_rd_cnt[2:0];
  assign rom_rd_y = rom_rd_cnt[5:3];

  // IROM_A
  always_ff @(posedge clk or posedge clk) begin
    if (reset) IROM_A <= '0;
    else if (cs == ROM_RD) IROM_A <= rom_rd_cnt;
  end

  // map
  always_ff @(posedge clk or posedge reset) begin
    if (reset) map <= 0;
    else if (cs == ROM_RD) map[rom_rd_x][rom_rd_y] <= IROM_Q;
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
    ns = cs;  // default: hold current state
    case (cs)
      IDLE:    ns = (cmd_valid == 1) ? decoded_cmd : IDLE;
      ROM_RD:  ns = (rom_rd_cnt == 64) ? IDLE : ROM_RD;
      CMD_SU:  ns = (cmd_cnt == 1) ? IDLE : CMD_SD;
      CMD_SD:  ns = CMD_SL;
      CMD_SL:  ns = CMD_SR;
      CMD_SR:  ns = CMD_MAX;
      CMD_MAX: ns = CMD_MIN;
      CMD_MIN: ns = CMD_AVG;
      CMD_AVG: ns = CMD_CCW;
      CMD_CCW: ns = CMD_MX;
      CMD_MX:  ns = CMD_MY;
      CMD_MY:  ns = CMD_WR;
      CMD_WR:  ns = DONE;
      DONE:    ns = IDLE;
      default: ns = IDLE;
    endcase
  end

  // Output logic
  assign done = (cs == DONE);
  assign busy = (cs != IDLE);

endmodule



