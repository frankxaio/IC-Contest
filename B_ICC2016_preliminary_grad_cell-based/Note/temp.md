# Local Binary Patterns


# Template

Moore machine of 3 block style

```sv
module moore_fsm_enum (
    input  logic clk,
    input  logic rst_n,
    input  logic in_signal,
    output logic out_signal
);

    // 1. State encoding using enum
    typedef enum logic [1:0] {
        IDLE,     // 2'b00
        STATE1,   // 2'b01
        STATE2,   // 2'b10
        STATE3    // 2'b11
    } state_t;

    state_t current_state, next_state;

    // 2. State Register (sequential logic)
    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end

    // 3. Next-State Logic (combinational)
    always_comb begin
        case (current_state)
            IDLE:    next_state = in_signal ? STATE1 : IDLE;
            STATE1:  next_state = in_signal ? STATE2 : IDLE;
            STATE2:  next_state = in_signal ? STATE3 : IDLE;
            STATE3:  next_state = in_signal ? STATE3 : IDLE;
            default: next_state = IDLE;
        endcase
    end

    // 4. Output Logic (Moore-style: only depends on state)
    always_comb begin
        case (current_state)
            IDLE:    out_signal = 1'b0;
            STATE1:  out_signal = 1'b0;
            STATE2:  out_signal = 1'b1;
            STATE3:  out_signal = 1'b1;
            default: out_signal = 1'b0;
        endcase
    end

endmodule
```


Shift Register

```sv
module shift_reg_9x8 (
    input  logic         clk,
    input  logic         rst,
    input  logic         en,
    input  logic [7:0]   din,
    output logic [7:0]   data_out [8:0]  // 9 parallel outputs
);

    // 9 x 8-bit shift register
    logic [7:0] shift_reg [8:0];

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            for (int i = 0; i < 9; i++) begin
                shift_reg[i] <= 8'd0;
            end
        end else if (en) begin
            // Shift data toward higher indices
            for (int i = 8; i > 0; i--) begin
                shift_reg[i] <= shift_reg[i-1];
            end
            shift_reg[0] <= din;  // New data goes into index 0
        end
    end

    // Output assignment
    assign data_out = shift_reg;

endmodule


```



# Debug


## Why combinational for loop need a initial value?

ChatGPT:

You're **absolutely right** — and it's great you're thinking deeply about this.

Let's clarify the **subtle but important difference** here between **simulation behavior**, **synthesizable hardware**, and **Verilog semantics**.

---

### 🧠 You’re Correct About Wires:
- In hardware, **`wire`** doesn’t hold state — it’s just a **connection** between logic.
- It doesn’t need to be "initialized" because its value is always driven by some logic.
- In contrast, `reg` (or `logic` in SystemVerilog) **can** hold state (e.g., in flip-flops).

---

### 💡 But in `always_comb`:
You're writing:
```verilog
always_comb begin
    // your logic...
end
```

This means you're defining **pure combinational logic**, and variables like `lbp_cal` inside this block are **temporary signals** used to build up a final result.

Now, if you **don’t initialize** `lbp_cal` before doing something like:
```verilog
lbp_cal = lbp_cal + something;
```

You’re doing a **read-before-write** in simulation — which causes **X-propagation**.

This has **nothing to do with actual synthesized hardware** — synthesis will unroll the loop, connect all the logic properly, and there’s no "initial value problem" because the whole logic cone is fully defined.

But **in simulation**, if `lbp_cal` is not assigned an initial value before the loop:
```verilog
lbp_cal = lbp_cal + ... // lbp_cal is 'X' => result is 'X'
```

---

### 🔍 So what does `lbp_cal = 8'd0;` really mean?

**Not a register, not a flip-flop, not storage** — it’s just a way to say:

> “Start this wire off at zero when building up its final value.”

This prevents X propagation in simulation and ensures clarity.

---

### ✅ So how should you think about it?

| In simulation | In synthesis |
|---------------|--------------|
| Needed to avoid `X` due to read-before-write in `always_comb` | Synthesized away entirely — compiler sees full logic |
| Think of it as a "default value for a wire-like signal" | Just part of combinational logic construction |
| Doesn't create memory or state | Just affects the netlist built by the tool |

---

### 🔧 Tip for Practice:
If you're doing any **accumulation** or **bitwise OR** or similar operation in `always_comb`, always do:
```verilog
lbp_cal = 8'd0;
for (...) begin
    lbp_cal = lbp_cal + ...;
end
```

Otherwise, tools like Verdi or ModelSim will show `X` values that don’t actually exist in hardware.


---

## req_cnt

req_cnt 代表目前正在拿每一次計算 LBP 中的第幾筆資料。可參考 shift register 的圖。

# Gatel-level simulation
需要將 tsmc13_neg.v 從 cad/cbdk 拉過來。


# Result

**評分標準**

score = time(ns) * cell area

score < 12,000,000,000 => A tier
12,000,000,000 < score < 24,000,000,000 => B tier

---

## Version 1


### default cycle time: 10ns

cell area = 10720.778249
time = 1750250000 ps = 1750250 ns
score: 1750250*10720.778249 = 18764042130.312252 = 18,764,042,130 => B tier

### My cycle time: 5.25ns

cell area = 10785.279468
time = 920631500 ps = 920631.5 ns
score: 920631.5*10785.279468 = 9929268014.544043 = 9,929,268,015 => A tier


## Version 2

cell area = 6597.793761
time = 904960500 ps = 904960.5 ns
score = 6597.793761 * 904960.5 = 5,970,742,740.85 => A tier

## Version 3

cell area = 5015.816957
time = 904960500 ps = 904960.5 ns
score = 5015.816957 * 904960.5 = 4,537,580,591.51 => A tier

## Verison 4

cell area = 4971.684548
time = 904960500 ps = 904960.5 ns
score = 4971.684548 * 904960.5 = 4,497,634,586.40 => A tier

## Version 5

cell area = 3856.5
time = 904960500 = 904960.5 ns
score = 3856.5 * 904960.5 = 3,489,980,168 => A tier