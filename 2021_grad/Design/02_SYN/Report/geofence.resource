 
****************************************
Report : resources
Design : geofence
Version: T-2022.03-SP2
Date   : Thu Aug  7 17:58:42 2025
****************************************

Resource Sharing Report for design geofence in file
        /home/host/Documents/IC-Contest/2021_grad/Design/01_RTL/geofence.sv

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r493     | DW01_inc     | width=3    |               | add_66_S2            |
| r495     | DW01_sub     | width=11   |               | sub_54_C105          |
| r497     | DW01_sub     | width=11   |               | sub_55_C105          |
| r537     | DW_cmp       | width=27   |               | gt_149               |
| r1341    | DW_mult_tc   | a_width=11 |               | mult_149_4           |
|          |              | b_width=11 |               |                      |
| r1343    | DW_mult_tc   | a_width=11 |               | mult_149             |
|          |              | b_width=11 |               |                      |
| r1345    | DW_mult_tc   | a_width=11 |               | mult_149_3           |
|          |              | b_width=11 |               |                      |
| r1347    | DW_mult_tc   | a_width=11 |               | mult_149_2           |
|          |              | b_width=11 |               |                      |
| r1349    | DW_mult_tc   | a_width=11 |               | mult_149_9           |
|          |              | b_width=11 |               |                      |
| r1351    | DW_mult_tc   | a_width=11 |               | mult_149_10          |
|          |              | b_width=11 |               |                      |
| r1353    | DW_mult_tc   | a_width=11 |               | mult_149_7           |
|          |              | b_width=11 |               |                      |
| r1355    | DW_mult_tc   | a_width=11 |               | mult_149_8           |
|          |              | b_width=11 |               |                      |
| r1357    | DW_mult_tc   | a_width=11 |               | mult_149_5           |
|          |              | b_width=11 |               |                      |
| r1359    | DW_mult_tc   | a_width=11 |               | mult_149_6           |
|          |              | b_width=11 |               |                      |
| r1361    | DW01_sub     | width=23   |               | sub_149_2            |
| r1363    | DW01_sub     | width=23   |               | sub_149              |
| r1365    | DW01_sub     | width=23   |               | sub_149_5            |
| r1367    | DW01_sub     | width=23   |               | sub_149_4            |
| r1369    | DW01_sub     | width=23   |               | sub_149_3            |
| r1371    | DW01_add     | width=24   |               | add_3_root_add_149_4 |
| r1373    | DW01_add     | width=25   |               | add_2_root_add_149_4 |
| r1375    | DW01_add     | width=26   |               | add_1_root_add_149_4 |
| r1377    | DW01_add     | width=27   |               | add_0_root_add_149_4 |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| add_0_root_add_149_4                  |                    |                |
|                    | DW01_add         | rpl                |                |
| add_1_root_add_149_4                  |                    |                |
|                    | DW01_add         | rpl                |                |
| add_2_root_add_149_4                  |                    |                |
|                    | DW01_add         | rpl                |                |
| add_3_root_add_149_4                  |                    |                |
|                    | DW01_add         | rpl                |                |
| sub_149_3          | DW01_sub         | rpl                |                |
| sub_149_4          | DW01_sub         | rpl                |                |
| sub_149_5          | DW01_sub         | rpl                |                |
| sub_149            | DW01_sub         | rpl                |                |
| sub_149_2          | DW01_sub         | rpl                |                |
| mult_149_6         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_5         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_8         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_7         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_10        | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_9         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_2         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_3         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149           | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| mult_149_4         | DW_mult_tc       | apparch (area)     |                |
|                    |                  | mult_arch: benc_radix4              |
| sub_54_C105        | DW01_sub         | rpl                |                |
| sub_55_C105        | DW01_sub         | rpl                |                |
===============================================================================

1
