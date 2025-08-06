# Image Display Control

https://onedrive.live.com/view.aspx?resid=D829BC94B5D660F5%21105&id=documents&wd=target%28IC%20Contest.one%7C109664DE-3DA4-8E45-B839-CDC3F0FB6D2F%2F2018%20univ%20Image%20Display%20Control%7C49860C05-1163-9C41-84F8-A026EA2D0318%2F%29
onenote:https://d.docs.live.net/d829bc94b5d660f5/Documents/Xiao's%20Notebook/IC%20Contest.one#2018%20univ%20Image%20Display%20Control&section-id={109664DE-3DA4-8E45-B839-CDC3F0FB6D2F}&page-id={49860C05-1163-9C41-84F8-A026EA2D0318}&end

---

將這段 code 改成 combinational 會遇到 `compile` GLS(Gate-level simulation) 通過，但是 `compile_ultra` GLS 失敗。

```verilog
  always_ff @(posedge clk or posedge reset) begin
    if (reset) IRAM_D <= '0;
    else if (cs == CMD_WR) IRAM_D <= map[ram_wr_y][ram_wr_x];
  end
```

```verilog
assign IRAM_D = map[rom_rd_y][rom_rd_x];

```

## Result

Area with `compile_ultra`

```
  Area
  -----------------------------------
  Combinational Area:    40194.432707
  Noncombinational Area: 15203.611607
  Buf/Inv Area:           3444.024595
  Total Buffer Area:          1154.23
  Total Inverter Area:        2289.79
  Macro/Black Box Area:      0.000000
  Net Area:             774157.199951
  -----------------------------------
  Cell Area:             55398.044314
  Design Area:          829555.244265
```

Area with `compile`

```
  Area
  -----------------------------------
  Combinational Area:   130090.432261
  Noncombinational Area: 16955.328693
  Buf/Inv Area:          14366.793449
  Total Buffer Area:          8914.74
  Total Inverter Area:        5452.05
  Macro/Black Box Area:      0.000000
  Net Area:            2299091.382965
  -----------------------------------
  Cell Area:            147045.760954
  Design Area:         2446137.143919
```