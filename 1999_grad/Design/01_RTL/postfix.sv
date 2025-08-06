module postfix (
  // Outputs
  output [9:0] ADRS,
  output       R_WB,
  output       FINISH,

  // Bidirectional
  inout [7:0] DATA,

  // Inputs
  input START,
  input CLK
);

  assign R_WB = 0;
  assign FINISH = 0;
  assign ADRS = 0;

  function automatic logic [16:0] sign_mag_add(input logic [15:0] a, input logic [15:0] b);
    logic sign_a, sign_b, sign_r;
    logic [14:0] mag_a, mag_b;
    logic [15:0] mag_r_full;

    sign_a = a[15];
    sign_b = b[15];
    mag_a  = a[14:0];
    mag_b  = b[14:0];

    if (sign_a == sign_b) begin
      // Same sign -> add magnitudes
      mag_r_full = mag_a + mag_b;
      sign_r     = sign_a;
    end else begin
      // Opposite signs -> subtract smaller from larger
      if (mag_a >= mag_b) begin
        mag_r_full = mag_a - mag_b;
        sign_r     = sign_a;
      end else begin
        mag_r_full = mag_b - mag_a;
        sign_r     = sign_b;
      end
    end

    return {sign_r, mag_r_full};

  endfunction

  function automatic logic [16:0] sign_mag_sub(input logic [15:0] a, input logic [15:0] b);
      return sign_mag_add(a, {~b[15], b[14:0]});
  endfunction

  function automatic logic [32:0] sign_mag_mul(input logic [15:0] a, input logic [15:0] b);
    logic sign_a, sign_b, sign_r;
    logic [14:0] mag_a, mag_b;
    logic [29:0] mag_product;
    sign_a      = a[15];
    sign_b      = b[15];
    mag_a       = a[14:0];
    mag_b       = b[14:0];
    sign_r      = sign_a ^ sign_b;

    mag_product = mag_a * mag_b;

    return {
      sign_r, mag_product
    };  // 1-bit sign + 30-bit magnitude -> 31 bits max, using 33 bits total for headroom

  endfunction




endmodule
