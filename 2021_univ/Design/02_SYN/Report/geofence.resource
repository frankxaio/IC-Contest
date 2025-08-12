 
****************************************
Report : resources
Design : geofence
Version: T-2022.03-SP2
Date   : Tue Aug 12 16:09:48 2025
****************************************

Resource Sharing Report for design geofence in file
        /home/host/Documents/IC-Contest/2021_univ/Design/01_RTL/geofence.sv

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r459     | DW01_inc     | width=5    |               | add_132 add_86_S2    |
|          |              |            |               | add_87_S2 add_88_S2  |
| r479     | DW_cmp       | width=5    |               | eq_132               |
| r481     | DW01_sub     | width=11   |               | sub_74_C176          |
| r483     | DW01_sub     | width=11   |               | sub_75_C176          |
| r485     | DW01_sub     | width=11   |               | sub_74_C177          |
| r487     | DW01_sub     | width=11   |               | sub_75_C177          |
| r489     | DW01_sub     | width=11   |               | sub_74_C178          |
| r491     | DW01_sub     | width=11   |               | sub_75_C178          |
| r493     | DW01_sub     | width=11   |               | sub_74_C179          |
| r495     | DW01_sub     | width=11   |               | sub_75_C179          |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| sub_74_C176        | DW01_sub         | rpl                |                |
| sub_75_C176        | DW01_sub         | rpl                |                |
| sub_74_C177        | DW01_sub         | rpl                |                |
| sub_75_C177        | DW01_sub         | rpl                |                |
| sub_74_C178        | DW01_sub         | rpl                |                |
| sub_75_C178        | DW01_sub         | rpl                |                |
| sub_74_C179        | DW01_sub         | rpl                |                |
| sub_75_C179        | DW01_sub         | rpl                |                |
===============================================================================

 
****************************************
Design : cross_product_module
****************************************
Resource Sharing Report for design cross_product_module in file
        /home/host/Documents/IC-Contest/2021_univ/Design/01_RTL/geofence.sv

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r376     | DW_cmp       | width=22   |               | gt_821               |
| r1092    | DW_mult_tc   | a_width=11 |               | mult_753_C802        |
|          |              | b_width=11 |               |                      |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| mult_753_C802      | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| gt_821             | DW_cmp           | apparch (area)     |                |
===============================================================================

1
