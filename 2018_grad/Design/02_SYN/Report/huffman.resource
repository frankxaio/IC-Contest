 
****************************************
Report : resources
Design : huffman
Version: T-2022.03-SP2
Date   : Tue Jul 29 01:30:04 2025
****************************************

Resource Sharing Report for design huffman in file
        /home/host/Documents/IC-Contest/2018_grad/Design/01_RTL/huffman.sv

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r600     | DW01_add     | width=8    |               | add_340 add_356      |
|          |              |            |               | add_370 add_382      |
|          |              |            |               | add_392              |
| r601     | DW01_inc     | width=8    |               | add_602_S2           |
|          |              |            |               | add_604_S2           |
|          |              |            |               | add_606_S2           |
|          |              |            |               | add_608_S2           |
|          |              |            |               | add_610_S2           |
| r603     | DW01_cmp6    | width=8    |               | gt_689 lt_654        |
| r614     | DW01_inc     | width=8    |               | add_130              |
| r616     | DW01_inc     | width=8    |               | add_131              |
| r618     | DW01_inc     | width=8    |               | add_132              |
| r620     | DW01_inc     | width=8    |               | add_133              |
| r622     | DW01_inc     | width=8    |               | add_134              |
| r624     | DW01_inc     | width=8    |               | add_135              |
| r626     | DW_cmp       | width=8    |               | gt_654               |
| r628     | DW_cmp       | width=8    |               | lt_689               |
===============================================================================


Implementation Report
===============================================================================
|                    |                  | Current            | Set            |
| Cell               | Module           | Implementation     | Implementation |
===============================================================================
| r600               | DW01_add         | rpl                |                |
| r601               | DW01_inc         | rpl                |                |
| add_130            | DW01_inc         | rpl                |                |
| add_131            | DW01_inc         | rpl                |                |
| add_132            | DW01_inc         | rpl                |                |
| add_133            | DW01_inc         | rpl                |                |
| add_134            | DW01_inc         | rpl                |                |
| add_135            | DW01_inc         | rpl                |                |
===============================================================================

 
****************************************
Design : selection_sort_6_WIDTH8
****************************************
Resource Sharing Report for design selection_sort_6_WIDTH8 in file
        /home/host/Documents/IC-Contest/2018_grad/Design/01_RTL/huffman.sv

===============================================================================
|          |              |            | Contained     |                      |
| Resource | Module       | Parameters | Resources     | Contained Operations |
===============================================================================
| r489     | DW01_inc     | width=3    |               | add_898 add_934      |
| r501     | DW_cmp       | width=8    |               | lt_907               |
| r503     | DW_cmp       | width=8    |               | eq_908               |
| r505     | DW_cmp       | width=8    |               | gt_910               |
| r507     | DW_cmp       | width=3    |               | lt_915               |
| r509     | DW01_inc     | width=3    |               | add_916              |
===============================================================================


No implementations to report
1
