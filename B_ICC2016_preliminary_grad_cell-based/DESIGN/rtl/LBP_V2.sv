module LBP (
    // Request data 
    output reg [13:0] gray_addr,
    output            gray_req,
    // Write data 
    output reg [13:0] lbp_addr,
    output reg        lbp_valid,
    output reg [ 7:0] lbp_data,
    // finish signal
    output reg        finish,
    input             clk,
    input             reset,
    input             gray_ready,
    input      [ 7:0] gray_data
);

    // === Parameters ===
    parameter WIDTH = 128;
    parameter DATA_WIDTH = 8;


    // =========== Internal signals ===========
    // Request data 
    logic [3:0] req_cnt;

    // track the current location of the LBP calculation
    logic [$clog2(WIDTH)-1:0] ctr_i, ctr_j;
    // track totla number of LBP calculation
    logic [$clog2(WIDTH)-1:0][$clog2(WIDTH)-1:0] ctr_addr, ctr_addr_reg;

    // write outer zero into LBP memory 
    // FSM of WR_O 
    // wr_o_cnt = 000 represents the not start of the edge
    // wr_o_cnt = 001 represents the top edge done 
    // wr_o_cnt = 010 represents the top, right edge done
    // wr_o_cnt = 011 represents the top, right, bottom edge done
    // wr_o_cnt = 100 represents the top, right, bottom, left edge done
    logic [           2:0] wr_o_cnt;


    // store the gray data
    // logic [DATA_WIDTH-1:0] gray_data_reg [8:0];
    logic [DATA_WIDTH-1:0] ctr_data;
    // logic [DATA_WIDTH-1:0] shift_data;

    // Calculation of LBP
    logic [DATA_WIDTH-1:0] lbp_cal;

    // =========== Internal signals ===========


    // ========== State Declaration==========
    typedef enum logic [2:0] {
        IDLE,
        REQ,
        CAL,
        // WR_LBP,
        WR_O,
        DONE
    } state_t;

    state_t current_state, next_state;


    // Request counter 
    always_ff @(posedge clk or posedge reset) begin
        if (reset) req_cnt <= 0;
        else begin
            if (current_state == REQ) begin
                req_cnt <= req_cnt + 1;
            end else begin
                req_cnt <= 0;
            end
        end
    end


    // Shift register for gray_data
    // +------+------+------+------+------+------+------+------+------+
    // | ctr  | nbr0 | nbr1 | nbr2 | nbr3 | nbr4 | nbr5 | nbr6 | nbr7 |
    // +------+------+------+------+------+------+------+------+------+
    // always_ff @(posedge clk or posedge reset) begin
    //     if (reset) begin
    //         for (int i = 0; i < 9; i++) begin
    //             gray_data_reg[i] <= 8'd0;
    //         end
    //     end else if (current_state == REQ) begin
    //         // Shift data toward higher indices
    //         for (int i = 8; i > 0; i--) begin
    //             gray_data_reg[i] <= gray_data_reg[i-1];
    //         end
    //         gray_data_reg[0] <= gray_data;  // New data goes into index 0
    //     end
    // end


    // ctr_data
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ctr_data <= 8'd0;
        end else if (current_state == REQ) begin
            if (req_cnt == 0) ctr_data <= gray_data;
            else ctr_data <= ctr_data;
        end
    end


    // Gray request
    assign gray_req = (current_state == REQ);

    // ctr_addr, ctr_i and ctr_j
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ctr_i    <= 1;
            ctr_j    <= 1;
            wr_o_cnt <= 0;
            // next state is REQ represents the start of a new LBP calculation
        end else if ((current_state == CAL) && (next_state == REQ)) begin
            if (ctr_j == 126) begin
                ctr_j <= 1;
                if (ctr_i == 126)
                    ctr_i <= 1;  // wrap around or hold at 126 depending on desired behavior
                else ctr_i <= ctr_i + 1;
            end else begin
                ctr_j <= ctr_j + 1;
            end
        end else if (current_state == WR_O) begin
            case (wr_o_cnt)
                3'b000: begin  // Top edge: row=0, col: 0 -> WIDTH-1 (0 to 127)
                    ctr_i <= 0;
                    if (ctr_j < WIDTH - 1) ctr_j <= ctr_j + 1;
                    else begin
                        // Top edge complete; move to right edge
                        wr_o_cnt <= 3'b001;
                        ctr_i    <= 1;  // start at (1,127)
                        ctr_j    <= WIDTH - 1;  // col = 127
                    end
                end
                3'b001: begin  // Right edge: col=WIDTH-1, row: 1 -> WIDTH-1 (1 to 127)
                    ctr_j <= WIDTH - 1;
                    if (ctr_i < WIDTH - 1) ctr_i <= ctr_i + 1;
                    else begin
                        // Right edge complete; move to bottom edge
                        wr_o_cnt <= 3'b010;
                        ctr_i    <= WIDTH - 1;  // row = 127
                        ctr_j    <= WIDTH - 2;  // start at (127,126)
                    end
                end
                3'b010: begin  // Bottom edge: row=WIDTH-1, col: (WIDTH-2) downto 0 (126 downto 0)
                    ctr_i <= WIDTH - 1;
                    if (ctr_j > 0) ctr_j <= ctr_j - 1;
                    else begin
                        // Bottom edge complete; move to left edge
                        wr_o_cnt <= 3'b011;
                        ctr_i    <= WIDTH - 2;  // start at (126,0)
                        ctr_j    <= 0;
                    end
                end
                3'b011: begin  // Left edge: col=0, row: (WIDTH-2) downto 1 (126 downto 1)
                    ctr_j <= 0;
                    if (ctr_i > 1) ctr_i <= ctr_i - 1;
                    else begin
                        // Left edge complete; outer zero write finished.
                        wr_o_cnt <= 3'b100;
                        // Optionally, hold the final address (which should be (1,0))
                    end
                end
                default: begin
                    // All edges completed; hold current values.
                    ctr_i <= ctr_i;
                    ctr_j <= ctr_j;
                end
            endcase
        end
    end


    // Gray address
    // Use req_cnt to track the number of requests.
    // The requested data is stored in the shift register arranged as:
    // [ ctr, nbr0, nbr1, nbr2, nbr3, nbr4, nbr5, nbr6, nbr7 ]
    // The physical 3x3 window is:
    //
    //       +------+------+------+
    //       | nbr0 | nbr1 | nbr2 |
    //       +------+------+------+
    //       | nbr3 | ctr  | nbr4 |
    //       +------+------+------+
    //       | nbr5 | nbr6 | nbr7 |
    //       +------+------+------+
    // 
    // 
    // req_cnt = 0: ctr → (ctr_i, ctr_j)
    // req_cnt = 1: nbr0 → (ctr_i-1, ctr_j-1)
    // req_cnt = 2: nbr1 → (ctr_i-1, ctr_j)
    // req_cnt = 3: nbr2 → (ctr_i-1, ctr_j+1)
    // req_cnt = 4: nbr3 → (ctr_i, ctr_j-1)
    // req_cnt = 5: nbr4 → (ctr_i, ctr_j+1)
    // req_cnt = 6: nbr5 → (ctr_i+1, ctr_j-1)
    // req_cnt = 7: nbr6 → (ctr_i+1, ctr_j)
    // req_cnt = 8: nbr7 → (ctr_i+1, ctr_j+1)

    always_comb begin
        case (req_cnt)
            4'd0: gray_addr = (ctr_i << $clog2(WIDTH)) + ctr_j;  // ctr
            4'd1: gray_addr = ((ctr_i - 1) << $clog2(WIDTH)) + (ctr_j - 1);  // nbr0 (top-left)
            4'd2: gray_addr = ((ctr_i - 1) << $clog2(WIDTH)) + (ctr_j);  // nbr1 (top-middle)
            4'd3: gray_addr = ((ctr_i - 1) << $clog2(WIDTH)) + (ctr_j + 1);  // nbr2 (top-right)
            4'd4: gray_addr = ((ctr_i) << $clog2(WIDTH)) + (ctr_j - 1);  // nbr3 (middle-left)
            4'd5: gray_addr = ((ctr_i) << $clog2(WIDTH)) + (ctr_j + 1);  // nbr4 (middle-right)
            4'd6: gray_addr = ((ctr_i + 1) << $clog2(WIDTH)) + (ctr_j - 1);  // nbr5 (bottom-left)
            4'd7: gray_addr = ((ctr_i + 1) << $clog2(WIDTH)) + (ctr_j);  // nbr6 (bottom-middle)
            4'd8: gray_addr = ((ctr_i + 1) << $clog2(WIDTH)) + (ctr_j + 1);  // nbr7 (bottom-right)
            default: gray_addr = (ctr_i << $clog2(WIDTH)) + ctr_j;
        endcase
    end


    // Calculation of LBP: Compute LBP value in the CAL state.
    // Compare the center pixel (gray_data_reg[0]) with its 8 neighbors (gray_data_reg[1] to gray_data_reg[8])
    // and build the 8-bit LBP code.
    // --- lbp_data ---
    always_ff @(posedge clk or posedge reset) begin
        if (reset) lbp_data <= 8'd0;
        else if (current_state == CAL) lbp_data <= lbp_cal;
        else if (current_state == CAL && next_state == REQ) lbp_data <= 8'd0;
        else lbp_data <= lbp_data;  // hold
    end

    // --- lbp_valid ---
    always_ff @(posedge clk or posedge reset) begin
        if (reset) lbp_valid <= 1'b0;
        else if (current_state == CAL) lbp_valid <= 1'b1;
        else lbp_valid <= 1'b0;
    end


    // 7-p == 7, 6, 5, 4, 3, 2, 1, 0
    // always_ff @(posedge clk or posedge reset) begin
    //     if (reset) begin
    //         lbp_cal <= 8'd0; // Reset LBP calculation for simulation
    //     end else if (current_state == REQ) begin
    //         case (req_cnt)
    //             8'd1: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 0) : 8'd0); //nbr0;  
    //             8'd2: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 1) : 8'd0); //nbr1;
    //             8'd3: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 2) : 8'd0); //nbr2;
    //             8'd4: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 3) : 8'd0); //nbr3;
    //             8'd5: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 4) : 8'd0); //nbr4;
    //             8'd6: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 5) : 8'd0); //nbr5;
    //             8'd7: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 6) : 8'd0); //nbr6;
    //             8'd8: lbp_cal <= lbp_cal + ((gray_data >= ctr_data) ? (8'd1 << 7) : 8'd0); //nbr7;
    //             default: lbp_cal <= lbp_cal; // Hold the LBP value
    //         endcase
    //     end else if (current_state == WR_LBP && next_state == REQ ) begin
    //         lbp_cal <= 8'd0; // Reset LBP calculation for simulation
    //     end
    // end


    // Register to hold the center pixel value.
    reg [7:0] center_reg;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            lbp_cal    <= 8'd0;
            center_reg <= 8'd0;
        end else if (current_state == REQ) begin
            if (req_cnt == 8'd0) begin
                // Capture the center pixel (for use in all neighbor comparisons)
                center_reg <= gray_data;
                lbp_cal    <= 8'd0;  // Clear the accumulator at the start
            end else if (req_cnt >= 8'd1 && req_cnt <= 8'd8) begin
                // For each neighbor (nbr0 to nbr7), compare gray_data with the stored center_reg.
                // Use the same comparator and adder; the shift amount is determined by req_cnt.
                if (gray_data >= center_reg) lbp_cal <= lbp_cal | (8'd1 << (req_cnt - 1));
                // Else, no change (lbp_cal holds its previous value)
            end
        end else if (current_state == CAL && next_state == REQ) begin
            // Reset the accumulator when moving back to a new LBP calculation
            lbp_cal <= 8'd0;
        end
    end



    // ========= Write LBP data to memory =========
    assign ctr_addr = (ctr_i << $clog2(
            WIDTH
        )) + ctr_j;  // Calculate the address for the center pixel
    assign lbp_addr = ctr_addr_reg;

    // ctr_addr_reg
    always_ff @(posedge clk or posedge reset) begin
        if (reset) ctr_addr_reg <= 0;
        else if (next_state == CAL) ctr_addr_reg <= ctr_addr;
        else if (current_state == WR_O) ctr_addr_reg <= ctr_addr;
    end


    // === FSM ===
    // 1. State encoding using enum
    // 2. State Register
    always_ff @(posedge clk or posedge reset) begin
        if (reset) current_state <= IDLE;
        else current_state <= next_state;
    end

    // 3. Next-State Logic (combinational)
    always_comb begin
        case (current_state)
            IDLE:    next_state = gray_ready ? REQ : IDLE;
            REQ:     next_state = (req_cnt == 8) ? CAL : REQ;
            CAL:     next_state = (ctr_addr == 16254) ? WR_O : REQ;
            // WR_LBP:  next_state = (ctr_addr == 16254) ? WR_O : REQ ; //(126,126) = 16254
            WR_O:    next_state = (wr_o_cnt == 3'b1001) ? DONE : WR_O;
            DONE:    next_state = IDLE;
            default: next_state = IDLE;
        endcase
    end

    // 4. Output Logic (Moore-style: only depends on state)
    always_comb begin
        case (current_state)
            DONE:    finish = 1'b1;
            default: finish = 1'b0;
        endcase
    end

endmodule
