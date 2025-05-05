# Image Convolutional Circuit Design



## DESIGN 文件準備

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





## 摘要

處理順序為Convolutional(Layer 0) -> Max-pooling(Layer 1)等共2層的運算處理流程

![image-20250423102712054](https://raw.githubusercontent.com/frankxaio/markdwon-image/main/data/image-20250423102712054.png)



Input($64\times64$ pixels) -> zero-padding -> conv kernel($3\times3$) -> ，故其結果為1 張尺寸為64(寬)x64(高) pixels 的圖。 Layer  1 要進行最大池化(max-pooling)運算，須採用2x2 的max-pooling 視窗及步幅(stride)為2 的規格進行。故結果將呈現1 張尺寸為32(寬) x 32(高) pixels 的圖。 
最後將Layer 0 和Layer 1 的結果圖依題目規定寫到testfixture 的內建記憶體後即可完成。

