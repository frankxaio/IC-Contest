module LBP #(
    parameter WIDTH      = 128,
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = $clog2(WIDTH)  // For WIDTH=128, ADDR_WIDTH=7
) (
    // Request data interface
    output logic [13:0] gray_addr,
    output logic        gray_req,
    // Write data interface
    output logic [13:0] lbp_addr,
    output logic        lbp_valid,
    output logic [7:0]  lbp_data,
    // Finish signal
    output logic        finish,
    // Clock/reset and data ports
    input  logic        clk,
    input  logic        reset,
    input  logic        gray_ready,
    input  logic [7:0]  gray_data
);

    // -------------------------------
    // Internal Signal Declarations
    // -------------------------------
    logic [3:0] req_cnt;
    logic [ADDR_WIDTH-1:0] ctr_i, ctr_j;
    logic [DATA_WIDTH-1:0] ctr_data;
    logic [DATA_WIDTH-1:0] lbp_cal;

    // State machine declaration using enum
    typedef enum logic [1:0] {
        IDLE,     
        REQ,   
        CAL,   
        DONE    
    } state_t;
    state_t current_state, next_state;

    // -------------------------------
    // Functions
    // -------------------------------
    // Function to compute a 14-bit address from row and column coordinates.
    function automatic logic [13:0] calc_addr (
        input logic [ADDR_WIDTH-1:0] row,
        input logic [ADDR_WIDTH-1:0] col
    );
        // Concatenation is equivalent to (row << ADDR_WIDTH) + col.
        calc_addr = {row, col};
    endfunction

    // -------------------------------
    // Request Counter: increments during REQ state only.
    // -------------------------------
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            req_cnt <= 4'd0;
        else if (current_state == REQ)
            req_cnt <= req_cnt + 4'd1;
        else 
            req_cnt <= 4'd0;
    end

    // -------------------------------
    // Center Pixel Data Capture
    // -------------------------------
    // Capture the center pixel on the first REQ cycle.
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            ctr_data <= '0;
        else if (current_state == REQ && req_cnt == 4'd0)
            ctr_data <= gray_data;
    end

    // -------------------------------
    // Gray Request Signal
    // -------------------------------
    assign gray_req = (current_state == REQ);

    // -------------------------------
    // LBP Window Coordinate Update
    // -------------------------------
    // Update the (ctr_i, ctr_j) position after completing a CAL cycle.
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ctr_i <= 1;
            ctr_j <= 1;
        end else if (current_state == CAL && next_state == REQ) begin
            if (ctr_j == WIDTH-2) begin // When ctr_j reaches 126 (for WIDTH=128)
                ctr_j <= 1;
                if (ctr_i == WIDTH-2)
                    ctr_i <= 1;  // Wrap-around or hold depending on design
                else
                    ctr_i <= ctr_i + 1;
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
    always_comb begin
        unique case (req_cnt)
            4'd0: gray_addr = calc_addr(ctr_i, ctr_j);                   // center
            4'd1: gray_addr = calc_addr(ctr_i - 1, ctr_j - 1);             // top-left
            4'd2: gray_addr = calc_addr(ctr_i - 1, ctr_j);                 // top-middle
            4'd3: gray_addr = calc_addr(ctr_i - 1, ctr_j + 1);             // top-right
            4'd4: gray_addr = calc_addr(ctr_i, ctr_j - 1);                 // middle-left
            4'd5: gray_addr = calc_addr(ctr_i, ctr_j + 1);                 // middle-right
            4'd6: gray_addr = calc_addr(ctr_i + 1, ctr_j - 1);             // bottom-left
            4'd7: gray_addr = calc_addr(ctr_i + 1, ctr_j);                 // bottom-middle
            4'd8: gray_addr = calc_addr(ctr_i + 1, ctr_j + 1);             // bottom-right
            default: gray_addr = calc_addr(ctr_i, ctr_j);
        endcase
    end

    // -------------------------------
    // LBP Calculation and Output Logic
    // -------------------------------
    // Compute the LBP value in the REQ state. For each neighbor (req_cnt 1 to 8),
    // set the corresponding bit if gray_data >= center pixel.
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            lbp_cal   <= 8'd0;
            lbp_data  <= 8'd0;
            lbp_valid <= 1'b0;
        end else begin
            if (current_state == REQ) begin
                if (req_cnt == 4'd0)
                    lbp_cal <= 8'd0;
                else if (gray_data >= ctr_data)
                    lbp_cal <= lbp_cal | (8'd1 << (req_cnt - 1));
            end
            // Update outputs
            lbp_data  <= lbp_cal;
            lbp_valid <= (current_state == CAL);
        end
    end

    // LBP Address: Set during the transition to CAL state.
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            lbp_addr <= 14'd0;
        else if (next_state == CAL)
            lbp_addr <= {ctr_i, ctr_j};  // Concatenation for a 14-bit address
    end

    // -------------------------------
    // Finite State Machine (FSM)
    // -------------------------------
    // State register update.
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end

    // Next-state combinational logic using a unique case statement.
    always_comb begin
        unique case (current_state)
            IDLE:  next_state = gray_ready ? REQ : IDLE;
            REQ:   next_state = (req_cnt == 4'd8) ? CAL : REQ;
            CAL:   next_state = (lbp_addr == 14'd16254) ? DONE : REQ;
            DONE:  next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // Finish signal is asserted when the FSM enters the DONE state.
    assign finish = (next_state == DONE);

endmodule
