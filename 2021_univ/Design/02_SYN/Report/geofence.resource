 
****************************************
Report : resources
Design : geofence
Version: T-2022.03-SP2
Date   : Mon Aug 11 17:13:40 2025
****************************************

Resource Sharing Report for design geofence in file
        /home/host/Documents/IC-Contest/2021_univ/Design/01_RTL/geofence.sv

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r476     | DW01_inc     | width=5    |               | add_136 add_86_S2    |
|          |              |            |               | add_87_S2 add_88_S2  |
| r480     | DW01_cmp6    | width=22   |               | gt_437 gt_528 lt_527 |
| r481     | DW01_cmp6    | width=22   |               | gt_527 lt_528        |
| r486     | DW_cmp       | width=5    |               | eq_136               |
| r488     | DW01_sub     | width=11   |               | sub_74_C179          |
| r490     | DW01_sub     | width=11   |               | sub_75_C179          |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
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
| r375     | DW01_sub     | width=22   |               | sub_649_S2           |
| r1091    | DW_mult_tc   | a_width=11 |               | mult_575_C627        |
|          |              | b_width=11 |               |                      |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| mult_575_C627      | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| sub_649_S2         | DW01_sub         | rpl                |                |
===============================================================================

1
