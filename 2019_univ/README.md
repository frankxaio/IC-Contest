# Image Convolutional Circuit Design

```YAML 
last edited: 2025/05/06
```

## File Tree

```
DESIGN/
├── CONV.sdc            # Timing constraints
├── CONV.sv             # Top-level design (SystemVerilog)
├── dat_univ/           # Test/data files
│   ├── cnn_bias0.dat         # Bias values
│   ├── cnn_layer0_exp0.dat   # Expected output (layer 0)
│   ├── cnn_layer1_exp0.dat   # Expected output (layer 1)
│   ├── cnn_sti.dat           # Input stimulus
│   └── cnn_weight0.dat       # Weights (layer 0)
├── DC_syn.tcl          # Synthesis script
├── E_ICC2019_priliminary_univ_cell_based.pdf  # Reference doc
├── Makefile            # Build automation
├── synopsys_dc.setup   # DC tool setup
├── testfixture.v       # Testbench
└── tsmc13_neg.v        # TSMC 13nm lib
```

## Algorithm

處理順序為Convolutional(Layer 0) -> Max-pooling(Layer 1)等共2層的運算處理流程

![image-20250423102712054](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250423102712054.png)



>    Input($64\times64$ pixels) -> zero-padding -> conv kernel($3\times3$) -> ，故其結果為1 張尺寸為64(寬)x64(高) pixels 的圖。 Layer  1 要進行最大池化(max-pooling)運算，須採用2x2 的max-pooling 視窗及步幅(stride)為2 的規格進行。故結果將呈現1 張尺寸為32(寬) x 32(高) pixels 的圖。 最後將Layer 0 和Layer 1 的結果圖依題目規定寫到 testfixture 的內建記憶體後即可完成。

## Design

### Internal Signal

| **Signal Name**    | **Bit Width** | **Type**       | **Description**                                  |
| :----------------- | ------------- | -------------- | ------------------------------------------------ |
| `row`              | [5:0]         | `logic`        | Tracks current row index of the 64×64 image      |
| `col`              | [5:0]         | `logic`        | Tracks current column index of the 64×64 image   |
| `idata_r`          | [19:0]        | `logic signed` | Holds one tap of input data for convolution      |
| `conv_mul`         | [39:0]        | `logic signed` | Convolution multiplication result (double width) |
| `conv_mac`         | [39:0]        | `logic signed` | Accumulated MAC result + bias                    |
| `conv_res`         | [19:0]        | `logic`        | Final 20-bit convolution result                  |
| `ST_CONV_cnt`      | [3:0]         | `logic`        | Main convolution state counter                   |
| `ST_CONV_cnt_r`    | [3:0]         | `logic`        | Registered version of convolution counter        |
| `kernel_wire`      | [19:0]        | `logic signed` | Selected kernel coefficient                      |
| `ST_MAXPOOL_cnt`   | [2:0]         | `logic`        | Main max-pooling state counter                   |
| `ST_MAXPOOL_cnt_r` | [2:0]         | `logic`        | Registered version of max-pool counter           |
| `maxpool_res`      | [19:0]        | `logic`        | Final 20-bit result after max-pooling            |

Conv 的所有狀況

![image-20250505161401238](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250505161401238.png)



### Architecture

Dataflow

![image-20250506221554782](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250506221554782.png)

Conv 

![image-20250506221612696](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250506221612696.png)

Max-pooling

![image-20250506221620813](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250506221620813.png)



## Result

-   Clock Frequency: 10 ns
-   Cell Area: 27197.4

![image-20250506233647619](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250506233659637.png)

![image-20250506233603257](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250506233603257.png)
