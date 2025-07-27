# 2018 Grad Huffman Coding



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
