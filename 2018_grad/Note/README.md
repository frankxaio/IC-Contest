# 2018 IC Design Contest - Huffman Coding Hardware Implementation

## Table of Contents
1. [Project Overview](#project-overview)
2. [Hardware Architecture](#hardware-architecture)
3. [Data Flow Design](#data-flow-design)
4. [State Machine Design](#state-machine-design)
5. [Core Algorithm Implementation](#core-algorithm-implementation)
6. [Data Structures](#data-structures)
7. [Test Cases](#test-cases)
8. [Technical Documentation](#technical-documentation)

## Hardware Architecture

### Top-Level Block Diagram
```
                    ┌─────────────────┐
                    │   Input Buffer  │
                    │   (8-bit gray)  │
                    └─────────┬───────┘
                              │
                    ┌─────────▼───────┐
                    │ Frequency Count │
                    │   (CNT1-CNT6)   │
                    └─────────┬───────┘
                              │
                    ┌─────────▼───────┐
                    │  Selection Sort │
                    │   (Reused)      │
                    └─────────┬───────┘
                              │
                    ┌─────────▼───────┐
                    │ Combine Logic   │
                    │ + History Store │
                    │  (COMB_C1-C5)   │
                    └─────────┬───────┘
                              │
                    ┌─────────▼───────┐
                    │  Code Generator │
                    │  (SPLIT_C1-C5)  │
                    └─────────┬───────┘
                              │
                    ┌─────────▼───────┐
                    │  Output Buffer  │
                    │ (HC1-HC6, M1-M6)│
                    └─────────────────┘
```

### Module Interface
```systemverilog
module huffman (
    input              clk,
    input              reset,
    input              gray_valid,
    input        [7:0] gray_data,
    output logic       CNT_valid,
    output logic [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    output logic       code_valid,
    output logic [7:0] HC1, HC2, HC3, HC4, HC5, HC6,
    output logic [7:0] M1, M2, M3, M4, M5, M6
);
```

## Data Flow Design

### Phase 1: Input Processing & Frequency Counting
```
Input Data Flow:
gray_data[7:0] → Symbol Decoder → Frequency Counters (CNT1-CNT6)

Data Path:
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│  gray_data  │───▶│   Symbol    │───▶│   Counter   │
│   [7:0]     │    │  Decoder    │    │   Array     │
└─────────────┘    └─────────────┘    └─────────────┘
```

**Implementation Details**:
- **Symbol Decoder**: Maps 8-bit gray data to 6 symbols (A1-A6)
- **Counter Array**: 6 counters (CNT1-CNT6) for frequency accumulation
- **Valid Signal**: `gray_valid` controls data acceptance

### Phase 2: Sorting & Tree Construction
```
Frequency Data Flow:
Counters → INIT Sort → Combine C1 → Sort C1 → Combine C2 → Sort C2 → ... → Combine C5 → Sort C5

Data Path:
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   Counters  │───▶│   Selection │───▶│   Combine   │───▶│  Selection  │
│  (CNT1-CNT6)│    │     Sort    │    │   History   │    │  Sort       │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
                                      
```

**Implementation Details**:
- **Initial Sort**: Selection sort processes CNT1-CNT6 in INIT state
- **Combine Logic**: 5 stages (COMB_C1-C5) for tree construction
- **Combine History**: Integrated within combine logic (comb_item_C1-C5 registers)
- **Sort Reuse**: Selection sort module is reused 6 times total (INIT + SORT_C1-C5)
- **Data Preparation**: Each sort stage prepares different unsorted data (items[1:5], items[1:4], etc.)

### Phase 3: Code Generation
```
Combine History Flow:
Stored History → Tree Traversal → Code Assignment → Output

Data Path:
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   Comb      │───▶│    Tree     │───▶│    Code     │───▶│   Output    │
│   History   │    │  Traversal  │    │ Assignment  │    │  (HC1-HC6)  │
│             │    │             │    │             │    │             │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

**Implementation Details**:
- **Tree Traversal**: 5 stages (SPLIT_C1-C5) for code generation
- **Code Assignment**: Left subtree gets '1', right subtree gets '0'
- **Output Format**: 6 Huffman codes (HC1-HC6) and symbol mappings (M1-M6)
- **History Access**: Direct access to comb_item_C1-C5 registers during split phase

## State Machine Design

### State Transition Diagram
```
                    ┌─────────┐
                    │  IDLE   │
                    └────┬────┘
                         │ gray_valid
                    ┌────▼────┐
                    │  INPUT  │
                    └────┬────┘
                         │ !gray_valid
                    ┌────▼────┐
                    │  INIT   │
                    └────┬────┘
                         │ sort_done
                    ┌────▼────┐
                    │INIT_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ COMB_C1 │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │SORT_C1_ST│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SORT_C1 │
                    └────┬────┘
                         │ sort_done
                    ┌────▼────┐
                    │SORT_C1_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ COMB_C2 │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │SORT_C2_ST│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SORT_C2 │
                    └────┬────┘
                         │ sort_done
                    ┌────▼────┐
                    │SORT_C2_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ COMB_C3 │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │SORT_C3_ST│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SORT_C3 │
                    └────┬────┘
                         │ sort_done
                    ┌────▼────┐
                    │SORT_C3_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ COMB_C4 │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │SORT_C4_ST│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SORT_C4 │
                    └────┬────┘
                         │ sort_done
                    ┌────▼────┐
                    │SORT_C4_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ COMB_C5 │
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │SORT_C5_ST│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SORT_C5 │
                    └────┬────┘
                         │ sort_done
                    ┌────▼────┐
                    │SORT_C5_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SPLIT_C5 │
                    └────┬────┘
                         │ split_cnt_r==11
                    ┌────▼────┐
                    │SPLIT_C5_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SPLIT_C4 │
                    └────┬────┘
                         │ split_cnt_r==11
                    ┌────▼────┐
                    │SPLIT_C4_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SPLIT_C3 │
                    └────┬────┘
                         │ split_cnt_r==11
                    ┌────▼────┐
                    │SPLIT_C3_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SPLIT_C2 │
                    └────┬────┘
                         │ split_cnt_r==11
                    ┌────▼────┐
                    │SPLIT_C2_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │ SPLIT_C1 │
                    └────┬────┘
                         │ split_cnt_r==11
                    ┌────▼────┐
                    │SPLIT_C1_DONE│
                    └────┬────┘
                         │
                    ┌────▼────┐
                    │  DONE   │
                    └─────────┘
```

### State Descriptions

| State | Function | Data Processing | Module Usage |
|-------|----------|-----------------|--------------|
| **IDLE** | Initial state | Wait for start signal | - |
| **INPUT** | Input processing | Count symbol frequencies | Frequency Counters |
| **INIT** | Initialization | Load data to sort module | Selection Sort |
| **INIT_DONE** | Init complete | Ready for combine phase | - |
| **COMB_C1-C5** | Combine phase | Build Huffman tree | Combine Logic |
| **SORT_C1_ST-C5_ST** | Sort start | Prepare sort data | Selection Sort |
| **SORT_C1-C5** | Sort phase | Order frequencies | **Selection Sort (Reused)** |
| **SORT_C1_DONE-C5_DONE** | Sort complete | Update items array | - |
| **SPLIT_C1-C5** | Split phase | Generate codes | Code Generator |
| **SPLIT_C1_DONE-C5_DONE** | Split complete | Next split stage | - |
| **DONE** | Completion | Output valid | - |

## Core Algorithm Implementation

### Frequency Counting Module
```systemverilog
// Frequency counter implementation
always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        CNT1 <= 8'h0; CNT2 <= 8'h0; CNT3 <= 8'h0;
        CNT4 <= 8'h0; CNT5 <= 8'h0; CNT6 <= 8'h0;
    end
    else if (gray_valid) begin
        case (gray_data)
            8'h00: CNT1 <= CNT1 + 1;
            8'h33: CNT2 <= CNT2 + 1;
            8'h66: CNT3 <= CNT3 + 1;
            8'h99: CNT4 <= CNT4 + 1;
            8'hCC: CNT5 <= CNT5 + 1;
            8'hFF: CNT6 <= CNT6 + 1;
        endcase
    end
end
```

### Selection Sort Implementation
```systemverilog
// Selection sort module - Reused across all stages
module selection_sort_6 #(
    parameter int WIDTH = 8
) (
    input                    clk,
    input                    reset,
    input                    start,
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
    output logic [WIDTH-1:0] freq_sort1, freq_sort2, freq_sort3,
    output logic [WIDTH-1:0] freq_sort4, freq_sort5, freq_sort6,
    output logic [WIDTH-1:0] symbol_sort1, symbol_sort2, symbol_sort3,
    output logic [WIDTH-1:0] symbol_sort4, symbol_sort5, symbol_sort6
);
```

**Module Reuse Strategy**:
- **Single Instance**: One selection sort module serves all 6 sort operations (INIT + SORT_C1-C5)
- **Time Multiplexing**: Module processes different data sets in sequence
- **Data Preparation**: Each stage prepares different unsorted arrays (6→5→4→3→2→1 items)

### Combine Logic Implementation
```systemverilog
// Combine stage implementation
always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
        comb_item_C1 <= '{default: '0};
        comb_item_C2 <= '{default: '0};
        comb_item_C3 <= '{default: '0};
        comb_item_C4 <= '{default: '0};
        comb_item_C5 <= '{default: '0};
    end
    else if (cs == COMB_C1) begin
        // Combine two lowest frequency items
        // Record left/right child relationships
        // Update symbol sequence
    end
    // Similar logic for COMB_C2-C5
end
```


### Combine History Analysis
The combine history can be categorized into the following scenarios based on the number of combine terms that appear simultaneously during the combination process:

![image-20250806004926452](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250806004926452.png)

**Note**: The IC Contest provided patterns do not include cases with 3 simultaneous combine terms. The hardware implementation is designed based on the patterns that actually occur.

## Test Cases

### Standard Test Cases
| Test Case | Frequencies | Description | Combine Pattern |
|-----------|-------------|-------------|-----------------|
| **TB1** | `[3,6,2,51,13,25]` | General case | Standard 2-by-2 |
| **TB2** | `[10,40,6,10,4,30]` | Duplicate frequencies | Standard 2-by-2 |
| **TB3** | `[9,7,36,8,10,30]` | Different distribution | Standard 2-by-2 |

### Special Case Analysis
IC Contest provided patterns have uncovered scenarios. For example, input `[15,17,17,17,17,17]` produces the following combine history:

```
combine_history:
[{'combined': ['A6', 'A1'], 'left': ['A1'], 'right': ['A6']},
 {'combined': ['A4', 'A5'], 'left': ['A5'], 'right': ['A4']},
 {'combined': ['A2', 'A3'], 'left': ['A3'], 'right': ['A2']},
 {'combined': ['A2', 'A3', 'A6', 'A1'],
  'left': ['A6', 'A1'],
  'right': ['A2', 'A3']},
 {'combined': ['A2', 'A3', 'A6', 'A1', 'A4', 'A5'],
  'left': ['A4', 'A5'],
  'right': ['A2', 'A3', 'A6', 'A1']}]
```

## Syntax Note

### Dump Packed vs Unpacked Structs

Packed struct (like above): treated like a single vector.

Unpacked struct: Verdi can still handle them, but the FSDB format may split fields.

Example:

```verilog
typedef struct {
  logic [7:0] x;
  logic y;
} unpacked_struct_t;

unpacked_struct_t u_struct;
```

Dump like this:

```verilog
$fsdbDumpvars(0, u_struct);
```

---

### assignment value in struct 


```verilog
comb_item_C1.symbol[0] <= '0;
comb_item_C1.symbol[1] <= '0;
comb_item_C1.symbol[2] <= '0;
comb_item_C1.symbol[3] <= '0;
comb_item_C1.symbol[4] <= '0;
comb_item_C1.symbol[5] <= '0;
```

equivalent to:

```verilog
comb_item_C1.symbol <= '{default: '0};
```


## Future Thinking

- Huffman coding 
- Sorting circuit

---

*For detailed implementation questions, refer to the SystemVerilog source code in `Design/01_RTL/huffman.sv`*

