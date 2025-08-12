/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Tue Aug 12 16:09:49 2025
/////////////////////////////////////////////////////////////


module geofence ( clk, reset, X, Y, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input clk, reset;
  output valid, is_inside;
  wire   n1158, n1159, input_list_cnt_2_, N173, N174, N175, N343, N480, N481,
         N482, list_done, cross_product, cross_output_valid, cross_product_r,
         n23, n25, n26, n27, n29, n30, n31, n34, n35, n38, n39, n42, n43, n46,
         n47, n50, n51, n54, n55, n58, n59, n62, n63, n66, n67, n70, n71, n74,
         n75, n78, n79, n82, n83, n86, n87, n90, n91, n94, n95, n98, n99, n102,
         n103, n106, n107, n108, n109, n117, n118, n119, n120, n121, n123,
         n124, n125, n126, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n141, n143, n144, n145, n146, n148, n150, n152,
         n155, n156, n159, n162, n163, n164, n165, n166, n168, n170, n171,
         n172, n1740, n1750, n176, n180, n181, n182, n186, n187, n188, n192,
         n193, n194, n198, n199, n200, n204, n205, n206, n210, n211, n212,
         n216, n217, n218, n222, n223, n224, n228, n229, n230, n234, n235,
         n236, n240, n241, n242, n246, n247, n248, n252, n253, n254, n258,
         n259, n260, n264, n265, n266, n270, n271, n272, n276, n277, n278,
         n282, n283, n284, n288, n290, n291, n292, n293, n295, n296, n297,
         n298, n299, n324, n326, n331, n332, n333, n334, n335, n336, n337,
         n338, n339, n340, n341, n342, n3430, n344, n345, n346, n347, n348,
         n349, n350, n373, n375, n379, n381, n383, n384, n389, n390, n392,
         n393, n394, n395, n401, n402, n403, n404, n407, n408, n411, n413,
         n414, n415, n416, n417, n418, n423, n425, n428, n431, n434, n437,
         n440, n443, n446, n449, n452, n455, n458, n461, n464, n467, n470,
         n473, n476, n479, n4820, n485, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n499, n500, n501, n502, n503, n504, n505,
         n506, n507, n508, n509, n510, n511, n512, n513, n514, n515, n516,
         n517, n518, n519, n520, n521, n522, n524, n525, n526, n527, n528,
         n529, n531, n532, n534, n535, n536, n537, n538, n539, n540, n541,
         n542, n543, n544, n545, n546, n547, n548, n549, n550, n551, n552,
         n553, n554, n555, n556, n557, n558, n559, n560, n561, n562, n563,
         n564, n565, n566, n567, n568, n569, n570, n571, n572, n573, n574,
         n575, n576, n578, n580, n602, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n834, n835, n836, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157;
  wire   [19:0] point_1;
  wire   [19:0] point_2;
  wire   [19:0] point_3;
  wire   [19:0] point_4;
  wire   [19:0] point_5;
  wire   [19:0] point_cal_vec2;
  wire   [14:0] cclockwise;
  wire   [19:0] point_cal_vec1;
  wire   [21:0] vector_tmp;
  wire   [21:0] vector_C;
  wire   [21:0] vector_D;
  wire   [21:0] vector_E;
  wire   [21:0] vector_A;
  wire   [21:0] vector_B;
  wire   [10:0] cross_vector_a_x;
  wire   [10:0] cross_vector_a_y;
  wire   [10:0] cross_vector_b_x;
  wire   [10:0] cross_vector_b_y;
  wire   [3:2] r459_carry;

  cross_product_module u_cross_product ( .clk(clk), .reset(reset), 
        .vector_a_x(cross_vector_a_x), .vector_a_y(cross_vector_a_y), 
        .vector_b_x(cross_vector_b_x), .vector_b_y(cross_vector_b_y), 
        .input_ready(n1012), .cross_product(cross_product), .output_valid(
        cross_output_valid) );
  geofence_DW01_sub_0 sub_75_C179 ( .A({1'b0, Y}), .B({1'b0, point_1[9:0]}), 
        .CI(1'b0), .DIFF(vector_E[10:0]) );
  geofence_DW01_sub_1 sub_74_C179 ( .A({1'b0, X}), .B({1'b0, point_1[19:10]}), 
        .CI(1'b0), .DIFF(vector_E[21:11]) );
  geofence_DW01_sub_2 sub_75_C178 ( .A({1'b0, point_5[9:0]}), .B({1'b0, 
        point_1[9:0]}), .CI(1'b0), .DIFF(vector_D[10:0]) );
  geofence_DW01_sub_3 sub_74_C178 ( .A({1'b0, point_5[19:10]}), .B({1'b0, 
        point_1[19:10]}), .CI(1'b0), .DIFF(vector_D[21:11]) );
  geofence_DW01_sub_4 sub_75_C177 ( .A({1'b0, point_4[9:0]}), .B({1'b0, 
        point_1[9:0]}), .CI(1'b0), .DIFF(vector_C[10:0]) );
  geofence_DW01_sub_5 sub_74_C177 ( .A({1'b0, point_4[19:10]}), .B({1'b0, 
        point_1[19:10]}), .CI(1'b0), .DIFF(vector_C[21:11]) );
  geofence_DW01_sub_6 sub_75_C176 ( .A({1'b0, point_cal_vec2[9:0]}), .B({1'b0, 
        point_cal_vec1[9:0]}), .CI(1'b0), .DIFF(vector_tmp[10:0]) );
  geofence_DW01_sub_7 sub_74_C176 ( .A({1'b0, point_cal_vec2[19:10]}), .B({
        1'b0, point_cal_vec1[19:10]}), .CI(1'b0), .DIFF(vector_tmp[21:11]) );
  DFFQX1 cross_product_r_reg ( .D(n602), .CK(clk), .Q(cross_product_r) );
  DFFQX1 point_2_reg_x__9_ ( .D(n713), .CK(clk), .Q(point_2[19]) );
  DFFQX1 point_2_reg_y__9_ ( .D(n723), .CK(clk), .Q(point_2[9]) );
  DFFX1 point_object_reg_x__9_ ( .D(n753), .CK(clk), .QN(n1102) );
  DFFX1 point_object_reg_y__9_ ( .D(n763), .CK(clk), .QN(n1112) );
  DFFQX1 point_2_reg_x__8_ ( .D(n714), .CK(clk), .Q(point_2[18]) );
  DFFQX1 point_2_reg_y__8_ ( .D(n724), .CK(clk), .Q(point_2[8]) );
  DFFQX1 point_3_reg_x__9_ ( .D(n782), .CK(clk), .Q(point_3[19]) );
  DFFQX1 point_3_reg_y__9_ ( .D(n792), .CK(clk), .Q(point_3[9]) );
  DFFX1 point_object_reg_x__8_ ( .D(n754), .CK(clk), .QN(n1103) );
  DFFX1 point_object_reg_y__8_ ( .D(n764), .CK(clk), .QN(n1113) );
  DFFQX1 point_2_reg_x__7_ ( .D(n715), .CK(clk), .Q(point_2[17]) );
  DFFQX1 point_2_reg_y__7_ ( .D(n725), .CK(clk), .Q(point_2[7]) );
  DFFQX1 point_3_reg_x__8_ ( .D(n783), .CK(clk), .Q(point_3[18]) );
  DFFQX1 point_3_reg_y__8_ ( .D(n793), .CK(clk), .Q(point_3[8]) );
  DFFX1 point_object_reg_x__7_ ( .D(n755), .CK(clk), .QN(n1104) );
  DFFX1 point_object_reg_y__7_ ( .D(n765), .CK(clk), .QN(n1114) );
  DFFQX1 point_2_reg_x__6_ ( .D(n716), .CK(clk), .Q(point_2[16]) );
  DFFQX1 point_2_reg_y__6_ ( .D(n726), .CK(clk), .Q(point_2[6]) );
  DFFQX1 point_3_reg_x__7_ ( .D(n784), .CK(clk), .Q(point_3[17]) );
  DFFQX1 point_3_reg_y__7_ ( .D(n794), .CK(clk), .Q(point_3[7]) );
  DFFX1 point_object_reg_x__6_ ( .D(n756), .CK(clk), .QN(n1105) );
  DFFX1 point_object_reg_y__6_ ( .D(n766), .CK(clk), .QN(n1115) );
  DFFQX1 point_2_reg_x__5_ ( .D(n717), .CK(clk), .Q(point_2[15]) );
  DFFQX1 point_2_reg_y__5_ ( .D(n727), .CK(clk), .Q(point_2[5]) );
  DFFQX1 point_3_reg_x__6_ ( .D(n785), .CK(clk), .Q(point_3[16]) );
  DFFQX1 point_3_reg_y__6_ ( .D(n795), .CK(clk), .Q(point_3[6]) );
  DFFX1 point_object_reg_x__5_ ( .D(n757), .CK(clk), .QN(n1106) );
  DFFX1 point_object_reg_y__5_ ( .D(n767), .CK(clk), .QN(n1116) );
  DFFQX1 point_2_reg_x__4_ ( .D(n718), .CK(clk), .Q(point_2[14]) );
  DFFQX1 point_2_reg_y__4_ ( .D(n728), .CK(clk), .Q(point_2[4]) );
  DFFQX1 point_3_reg_x__5_ ( .D(n786), .CK(clk), .Q(point_3[15]) );
  DFFQX1 point_3_reg_y__5_ ( .D(n796), .CK(clk), .Q(point_3[5]) );
  DFFX1 point_object_reg_x__4_ ( .D(n758), .CK(clk), .QN(n1107) );
  DFFX1 point_object_reg_y__4_ ( .D(n768), .CK(clk), .QN(n1117) );
  DFFQX1 point_2_reg_x__3_ ( .D(n719), .CK(clk), .Q(point_2[13]) );
  DFFQX1 point_2_reg_y__3_ ( .D(n729), .CK(clk), .Q(point_2[3]) );
  DFFQX1 point_3_reg_x__4_ ( .D(n787), .CK(clk), .Q(point_3[14]) );
  DFFQX1 point_3_reg_y__4_ ( .D(n797), .CK(clk), .Q(point_3[4]) );
  DFFX1 point_object_reg_x__3_ ( .D(n759), .CK(clk), .QN(n1108) );
  DFFX1 point_object_reg_y__3_ ( .D(n769), .CK(clk), .QN(n1118) );
  DFFQX1 point_2_reg_x__2_ ( .D(n720), .CK(clk), .Q(point_2[12]) );
  DFFQX1 point_2_reg_y__2_ ( .D(n730), .CK(clk), .Q(point_2[2]) );
  DFFQX1 point_3_reg_x__3_ ( .D(n788), .CK(clk), .Q(point_3[13]) );
  DFFQX1 point_3_reg_y__3_ ( .D(n798), .CK(clk), .Q(point_3[3]) );
  DFFX1 point_object_reg_x__2_ ( .D(n760), .CK(clk), .QN(n1109) );
  DFFX1 point_object_reg_y__2_ ( .D(n770), .CK(clk), .QN(n1119) );
  DFFQX1 point_2_reg_x__1_ ( .D(n721), .CK(clk), .Q(point_2[11]) );
  DFFQX1 point_2_reg_y__1_ ( .D(n731), .CK(clk), .Q(point_2[1]) );
  DFFQX1 point_3_reg_x__2_ ( .D(n789), .CK(clk), .Q(point_3[12]) );
  DFFQX1 point_3_reg_y__2_ ( .D(n799), .CK(clk), .Q(point_3[2]) );
  DFFQX1 point_2_reg_x__0_ ( .D(n722), .CK(clk), .Q(point_2[10]) );
  DFFQX1 point_2_reg_y__0_ ( .D(n732), .CK(clk), .Q(point_2[0]) );
  DFFX1 point_object_reg_x__1_ ( .D(n761), .CK(clk), .QN(n1110) );
  DFFX1 point_object_reg_y__1_ ( .D(n771), .CK(clk), .QN(n1120) );
  DFFX1 point_object_reg_x__0_ ( .D(n762), .CK(clk), .QN(n1111) );
  DFFX1 point_object_reg_y__0_ ( .D(n772), .CK(clk), .QN(n1121) );
  DFFQX1 point_3_reg_x__1_ ( .D(n790), .CK(clk), .Q(point_3[11]) );
  DFFQX1 point_3_reg_y__1_ ( .D(n800), .CK(clk), .Q(point_3[1]) );
  DFFQX1 point_3_reg_x__0_ ( .D(n791), .CK(clk), .Q(point_3[10]) );
  DFFQX1 point_3_reg_y__0_ ( .D(n801), .CK(clk), .Q(point_3[0]) );
  DFFX1 cclockwise_reg_5__1_ ( .D(n650), .CK(clk), .Q(cclockwise[1]), .QN(n608) );
  DFFQX1 cclockwise_reg_5__0_ ( .D(n651), .CK(clk), .Q(cclockwise[0]) );
  DFFQX1 cclockwise_reg_5__2_ ( .D(n649), .CK(clk), .Q(cclockwise[2]) );
  DFFQX1 vector_B_reg_y__8_ ( .D(n619), .CK(clk), .Q(vector_B[8]) );
  DFFQX1 vector_B_reg_x__8_ ( .D(n660), .CK(clk), .Q(vector_B[19]) );
  DFFQX1 vector_A_reg_x__8_ ( .D(n670), .CK(clk), .Q(vector_A[19]) );
  DFFQX1 vector_A_reg_y__8_ ( .D(n620), .CK(clk), .Q(vector_A[8]) );
  DFFQX1 vector_A_reg_y__10_ ( .D(n616), .CK(clk), .Q(vector_A[10]) );
  DFFQX1 vector_A_reg_y__9_ ( .D(n618), .CK(clk), .Q(vector_A[9]) );
  DFFQX1 vector_A_reg_x__10_ ( .D(n672), .CK(clk), .Q(vector_A[21]) );
  DFFQX1 vector_A_reg_x__9_ ( .D(n671), .CK(clk), .Q(vector_A[20]) );
  DFFQX1 vector_A_reg_y__7_ ( .D(n622), .CK(clk), .Q(vector_A[7]) );
  DFFQX1 vector_B_reg_y__9_ ( .D(n617), .CK(clk), .Q(vector_B[9]) );
  DFFQX1 vector_A_reg_x__7_ ( .D(n669), .CK(clk), .Q(vector_A[18]) );
  DFFQX1 vector_B_reg_x__9_ ( .D(n661), .CK(clk), .Q(vector_B[20]) );
  DFFQX1 vector_B_reg_y__10_ ( .D(n615), .CK(clk), .Q(vector_B[10]) );
  DFFQX1 vector_B_reg_x__10_ ( .D(n781), .CK(clk), .Q(vector_B[21]) );
  DFFQX1 vector_B_reg_y__7_ ( .D(n621), .CK(clk), .Q(vector_B[7]) );
  DFFQX1 vector_B_reg_x__7_ ( .D(n659), .CK(clk), .Q(vector_B[18]) );
  DFFQX1 vector_B_reg_x__6_ ( .D(n658), .CK(clk), .Q(vector_B[17]) );
  DFFQX1 vector_B_reg_y__6_ ( .D(n623), .CK(clk), .Q(vector_B[6]) );
  DFFQX1 vector_A_reg_x__6_ ( .D(n668), .CK(clk), .Q(vector_A[17]) );
  DFFQX1 vector_A_reg_y__6_ ( .D(n624), .CK(clk), .Q(vector_A[6]) );
  DFFQX1 point_4_reg_y__9_ ( .D(n703), .CK(clk), .Q(point_4[9]) );
  DFFQX1 point_5_reg_y__9_ ( .D(n683), .CK(clk), .Q(point_5[9]) );
  DFFQX1 point_4_reg_x__9_ ( .D(n693), .CK(clk), .Q(point_4[19]) );
  DFFX1 point_1_reg_y__9_ ( .D(n743), .CK(clk), .Q(point_1[9]), .QN(n1052) );
  DFFQX1 point_5_reg_x__9_ ( .D(n673), .CK(clk), .Q(point_5[19]) );
  DFFX1 point_1_reg_x__9_ ( .D(n733), .CK(clk), .Q(point_1[19]), .QN(n1042) );
  DFFQX1 point_4_reg_y__8_ ( .D(n704), .CK(clk), .Q(point_4[8]) );
  DFFQX1 point_5_reg_y__8_ ( .D(n684), .CK(clk), .Q(point_5[8]) );
  DFFQX1 point_4_reg_x__8_ ( .D(n694), .CK(clk), .Q(point_4[18]) );
  DFFX1 point_1_reg_y__8_ ( .D(n744), .CK(clk), .Q(point_1[8]), .QN(n1053) );
  DFFQX1 point_5_reg_x__8_ ( .D(n674), .CK(clk), .Q(point_5[18]) );
  DFFX1 point_1_reg_x__8_ ( .D(n734), .CK(clk), .Q(point_1[18]), .QN(n1043) );
  DFFQX1 point_4_reg_y__7_ ( .D(n705), .CK(clk), .Q(point_4[7]) );
  DFFQX1 point_5_reg_y__7_ ( .D(n685), .CK(clk), .Q(point_5[7]) );
  DFFQX1 vector_A_reg_y__5_ ( .D(n626), .CK(clk), .Q(vector_A[5]) );
  DFFQX1 point_4_reg_x__7_ ( .D(n695), .CK(clk), .Q(point_4[17]) );
  DFFX1 point_1_reg_y__7_ ( .D(n745), .CK(clk), .Q(point_1[7]), .QN(n1054) );
  DFFQX1 point_5_reg_x__7_ ( .D(n675), .CK(clk), .Q(point_5[17]) );
  DFFQX1 vector_A_reg_x__5_ ( .D(n667), .CK(clk), .Q(vector_A[16]) );
  DFFQX1 vector_B_reg_y__4_ ( .D(n627), .CK(clk), .Q(vector_B[4]) );
  DFFX1 point_1_reg_x__7_ ( .D(n735), .CK(clk), .Q(point_1[17]), .QN(n1044) );
  DFFQX1 vector_B_reg_x__4_ ( .D(n656), .CK(clk), .Q(vector_B[15]) );
  DFFQX1 vector_B_reg_y__5_ ( .D(n625), .CK(clk), .Q(vector_B[5]) );
  DFFQX1 vector_B_reg_x__5_ ( .D(n657), .CK(clk), .Q(vector_B[16]) );
  DFFQX1 vector_A_reg_x__4_ ( .D(n666), .CK(clk), .Q(vector_A[15]) );
  DFFQX1 point_4_reg_y__6_ ( .D(n706), .CK(clk), .Q(point_4[6]) );
  DFFQX1 point_5_reg_y__6_ ( .D(n686), .CK(clk), .Q(point_5[6]) );
  DFFQX1 vector_A_reg_y__4_ ( .D(n628), .CK(clk), .Q(vector_A[4]) );
  DFFQX1 point_4_reg_x__6_ ( .D(n696), .CK(clk), .Q(point_4[16]) );
  DFFX1 point_1_reg_y__6_ ( .D(n746), .CK(clk), .Q(point_1[6]), .QN(n1055) );
  DFFQX1 point_5_reg_x__6_ ( .D(n676), .CK(clk), .Q(point_5[16]) );
  DFFX1 point_1_reg_x__6_ ( .D(n736), .CK(clk), .Q(point_1[16]), .QN(n1045) );
  DFFQX1 vector_A_reg_x__0_ ( .D(n662), .CK(clk), .Q(vector_A[11]) );
  DFFQX1 vector_B_reg_y__0_ ( .D(n635), .CK(clk), .Q(vector_B[0]) );
  DFFQX1 vector_A_reg_y__0_ ( .D(n636), .CK(clk), .Q(vector_A[0]) );
  DFFQX1 vector_B_reg_x__0_ ( .D(n652), .CK(clk), .Q(vector_B[11]) );
  DFFQX1 vector_A_reg_y__2_ ( .D(n632), .CK(clk), .Q(vector_A[2]) );
  DFFQX1 vector_A_reg_x__2_ ( .D(n664), .CK(clk), .Q(vector_A[13]) );
  DFFQX1 vector_A_reg_y__3_ ( .D(n630), .CK(clk), .Q(vector_A[3]) );
  DFFQX1 vector_A_reg_x__3_ ( .D(n665), .CK(clk), .Q(vector_A[14]) );
  DFFQX1 vector_B_reg_y__2_ ( .D(n631), .CK(clk), .Q(vector_B[2]) );
  DFFQX1 vector_B_reg_x__2_ ( .D(n654), .CK(clk), .Q(vector_B[13]) );
  DFFQX1 vector_B_reg_y__3_ ( .D(n629), .CK(clk), .Q(vector_B[3]) );
  DFFQX1 point_4_reg_y__5_ ( .D(n707), .CK(clk), .Q(point_4[5]) );
  DFFQX1 vector_A_reg_y__1_ ( .D(n634), .CK(clk), .Q(vector_A[1]) );
  DFFQX1 point_5_reg_y__5_ ( .D(n687), .CK(clk), .Q(point_5[5]) );
  DFFQX1 vector_B_reg_x__3_ ( .D(n655), .CK(clk), .Q(vector_B[14]) );
  DFFQX1 point_4_reg_x__5_ ( .D(n697), .CK(clk), .Q(point_4[15]) );
  DFFQX1 vector_A_reg_x__1_ ( .D(n663), .CK(clk), .Q(vector_A[12]) );
  DFFQX1 point_5_reg_x__5_ ( .D(n677), .CK(clk), .Q(point_5[15]) );
  DFFQX1 vector_B_reg_y__1_ ( .D(n633), .CK(clk), .Q(vector_B[1]) );
  DFFQX1 vector_B_reg_x__1_ ( .D(n653), .CK(clk), .Q(vector_B[12]) );
  DFFX1 point_1_reg_y__5_ ( .D(n747), .CK(clk), .Q(point_1[5]), .QN(n1056) );
  DFFX1 point_1_reg_x__5_ ( .D(n737), .CK(clk), .Q(point_1[15]), .QN(n1046) );
  DFFQX1 point_4_reg_y__4_ ( .D(n708), .CK(clk), .Q(point_4[4]) );
  DFFQX1 point_5_reg_y__4_ ( .D(n688), .CK(clk), .Q(point_5[4]) );
  DFFQX1 point_4_reg_x__4_ ( .D(n698), .CK(clk), .Q(point_4[14]) );
  DFFQX1 point_5_reg_x__4_ ( .D(n678), .CK(clk), .Q(point_5[14]) );
  DFFX1 point_1_reg_y__4_ ( .D(n748), .CK(clk), .Q(point_1[4]), .QN(n1057) );
  DFFX1 point_1_reg_x__4_ ( .D(n738), .CK(clk), .Q(point_1[14]), .QN(n1047) );
  DFFQX1 point_4_reg_y__3_ ( .D(n709), .CK(clk), .Q(point_4[3]) );
  DFFQX1 point_5_reg_y__3_ ( .D(n689), .CK(clk), .Q(point_5[3]) );
  DFFQX1 point_4_reg_x__3_ ( .D(n699), .CK(clk), .Q(point_4[13]) );
  DFFQX1 point_5_reg_x__3_ ( .D(n679), .CK(clk), .Q(point_5[13]) );
  DFFX1 point_1_reg_y__3_ ( .D(n749), .CK(clk), .Q(point_1[3]), .QN(n1058) );
  DFFX1 point_1_reg_x__3_ ( .D(n739), .CK(clk), .Q(point_1[13]), .QN(n1048) );
  DFFQX1 point_4_reg_y__2_ ( .D(n710), .CK(clk), .Q(point_4[2]) );
  DFFQX1 point_5_reg_y__2_ ( .D(n690), .CK(clk), .Q(point_5[2]) );
  DFFQX1 point_4_reg_x__2_ ( .D(n700), .CK(clk), .Q(point_4[12]) );
  DFFQX1 point_5_reg_x__2_ ( .D(n680), .CK(clk), .Q(point_5[12]) );
  DFFQX1 cclockwise_reg_4__2_ ( .D(n646), .CK(clk), .Q(cclockwise[5]) );
  DFFQX1 cclockwise_reg_1__1_ ( .D(n638), .CK(clk), .Q(cclockwise[13]) );
  DFFQX1 cclockwise_reg_2__1_ ( .D(n641), .CK(clk), .Q(cclockwise[10]) );
  DFFX1 point_1_reg_y__2_ ( .D(n750), .CK(clk), .Q(point_1[2]), .QN(n1059) );
  DFFQX1 point_4_reg_y__1_ ( .D(n711), .CK(clk), .Q(point_4[1]) );
  DFFQX1 point_5_reg_y__1_ ( .D(n691), .CK(clk), .Q(point_5[1]) );
  DFFX1 point_1_reg_x__2_ ( .D(n740), .CK(clk), .Q(point_1[12]), .QN(n1049) );
  DFFQX1 point_4_reg_x__1_ ( .D(n701), .CK(clk), .Q(point_4[11]) );
  DFFQX1 point_5_reg_x__1_ ( .D(n681), .CK(clk), .Q(point_5[11]) );
  DFFQX1 point_5_reg_y__0_ ( .D(n692), .CK(clk), .Q(point_5[0]) );
  DFFQX1 cclockwise_reg_3__0_ ( .D(n645), .CK(clk), .Q(cclockwise[6]) );
  DFFQX1 cclockwise_reg_1__0_ ( .D(n639), .CK(clk), .Q(cclockwise[12]) );
  DFFQX1 point_5_reg_x__0_ ( .D(n682), .CK(clk), .Q(point_5[10]) );
  DFFQX1 cclockwise_reg_3__2_ ( .D(n643), .CK(clk), .Q(cclockwise[8]) );
  DFFQX1 cclockwise_reg_2__0_ ( .D(n642), .CK(clk), .Q(cclockwise[9]) );
  DFFX1 point_1_reg_y__1_ ( .D(n751), .CK(clk), .Q(point_1[1]), .QN(n1060) );
  DFFX1 point_1_reg_x__1_ ( .D(n741), .CK(clk), .Q(point_1[11]), .QN(n1050) );
  DFFX1 point_1_reg_y__0_ ( .D(n752), .CK(clk), .Q(point_1[0]), .QN(n1061) );
  DFFX1 point_1_reg_x__0_ ( .D(n742), .CK(clk), .Q(point_1[10]), .QN(n1051) );
  DFFQX1 cclockwise_reg_4__1_ ( .D(n647), .CK(clk), .Q(cclockwise[4]) );
  DFFQX1 point_4_reg_y__0_ ( .D(n712), .CK(clk), .Q(point_4[0]) );
  DFFQX1 point_4_reg_x__0_ ( .D(n702), .CK(clk), .Q(point_4[10]) );
  DFFRX1 input_list_cnt_reg_3_ ( .D(n773), .CK(clk), .RN(n986), .Q(n1041), 
        .QN(n604) );
  DFFQX1 cclockwise_reg_4__0_ ( .D(n648), .CK(clk), .Q(cclockwise[3]) );
  DFFQX1 cclockwise_reg_3__1_ ( .D(n644), .CK(clk), .Q(cclockwise[7]) );
  DFFQX1 cclockwise_reg_1__2_ ( .D(n637), .CK(clk), .Q(cclockwise[14]) );
  DFFQX1 cclockwise_reg_2__2_ ( .D(n640), .CK(clk), .Q(cclockwise[11]) );
  DFFQX1 is_inside_reg ( .D(n613), .CK(clk), .Q(n1159) );
  DFFQX1 valid_reg ( .D(n614), .CK(clk), .Q(n1158) );
  DFFRX1 cs_reg_3_ ( .D(n780), .CK(clk), .RN(n986), .Q(n1019), .QN(n609) );
  DFFRX1 cs_reg_2_ ( .D(n778), .CK(clk), .RN(n986), .Q(n1020), .QN(n610) );
  DFFSX1 cs_reg_0_ ( .D(n802), .CK(clk), .SN(n986), .Q(n1008), .QN(n612) );
  DFFRX1 cs_reg_1_ ( .D(n779), .CK(clk), .RN(n986), .Q(n1018), .QN(n611) );
  DFFRX2 input_list_cnt_reg_2_ ( .D(n774), .CK(clk), .RN(n986), .Q(
        input_list_cnt_2_), .QN(n605) );
  DFFRX2 input_list_cnt_reg_1_ ( .D(n775), .CK(clk), .RN(n986), .Q(n1040), 
        .QN(n606) );
  DFFRX2 input_list_cnt_reg_0_ ( .D(n776), .CK(clk), .RN(n986), .Q(n1028), 
        .QN(n607) );
  DFFQX2 list_done_reg ( .D(n777), .CK(clk), .Q(list_done) );
  OAI211X1 U882 ( .A0(n844), .A1(n1152), .B0(n540), .C0(n541), .Y(
        cross_vector_a_y[5]) );
  OAI211X1 U883 ( .A0(n844), .A1(n1150), .B0(n544), .C0(n545), .Y(
        cross_vector_a_y[3]) );
  OAI211X1 U884 ( .A0(n844), .A1(n1125), .B0(n566), .C0(n567), .Y(
        cross_vector_a_x[3]) );
  NOR3BXL U885 ( .AN(n131), .B(n1025), .C(n135), .Y(n121) );
  CLKINVX1 U886 ( .A(n125), .Y(n1009) );
  NAND2X2 U887 ( .A(n612), .B(n411), .Y(n125) );
  OAI21X4 U888 ( .A0(n520), .A1(n521), .B0(n1021), .Y(n834) );
  AND2X2 U889 ( .A(cclockwise[10]), .B(n910), .Y(n835) );
  AND2X2 U890 ( .A(cclockwise[11]), .B(n910), .Y(n836) );
  AND2XL U891 ( .A(input_list_cnt_2_), .B(n1028), .Y(n913) );
  OAI21X1 U892 ( .A0(input_list_cnt_2_), .A1(n909), .B0(n908), .Y(N481) );
  OAI21X2 U893 ( .A0(input_list_cnt_2_), .A1(n907), .B0(n906), .Y(N482) );
  BUFX12 U894 ( .A(n1158), .Y(valid) );
  BUFX12 U895 ( .A(n1159), .Y(is_inside) );
  OAI21X2 U896 ( .A0(input_list_cnt_2_), .A1(n916), .B0(n915), .Y(N480) );
  OAI211X2 U897 ( .A0(n844), .A1(n1127), .B0(n562), .C0(n563), .Y(
        cross_vector_a_x[5]) );
  OAI211X2 U898 ( .A0(n844), .A1(n1155), .B0(n534), .C0(n535), .Y(
        cross_vector_a_y[8]) );
  OAI211X2 U899 ( .A0(n844), .A1(n1130), .B0(n556), .C0(n557), .Y(
        cross_vector_a_x[8]) );
  OAI211X2 U900 ( .A0(n844), .A1(n1154), .B0(n536), .C0(n537), .Y(
        cross_vector_a_y[7]) );
  OAI211X2 U901 ( .A0(n844), .A1(n1129), .B0(n558), .C0(n559), .Y(
        cross_vector_a_x[7]) );
  NAND2X1 U902 ( .A(vector_E[21]), .B(n846), .Y(n572) );
  NAND2X1 U903 ( .A(vector_E[10]), .B(n846), .Y(n550) );
  INVXL U904 ( .A(N482), .Y(n1037) );
  OAI211X1 U905 ( .A0(n844), .A1(n1131), .B0(n554), .C0(n555), .Y(
        cross_vector_a_x[9]) );
  OAI211X1 U906 ( .A0(n844), .A1(n1156), .B0(n528), .C0(n529), .Y(
        cross_vector_a_y[9]) );
  NAND2BX1 U907 ( .AN(n413), .B(n1017), .Y(n138) );
  NAND2X1 U908 ( .A(n1024), .B(n1017), .Y(n118) );
  AND3X2 U909 ( .A(n117), .B(n903), .C(n119), .Y(n839) );
  CLKINVX1 U910 ( .A(n31), .Y(n875) );
  CLKINVX1 U911 ( .A(n29), .Y(n884) );
  NAND4XL U912 ( .A(N480), .B(n842), .C(n1038), .D(n1037), .Y(n108) );
  CLKBUFX3 U913 ( .A(n168), .Y(n869) );
  NOR3XL U914 ( .A(n125), .B(N480), .C(n132), .Y(n171) );
  INVX1 U915 ( .A(N481), .Y(n1038) );
  INVX1 U916 ( .A(Y[0]), .Y(n1006) );
  INVX1 U917 ( .A(X[0]), .Y(n996) );
  INVX1 U918 ( .A(Y[1]), .Y(n1005) );
  INVX1 U919 ( .A(X[1]), .Y(n995) );
  INVX1 U920 ( .A(Y[2]), .Y(n1004) );
  INVX1 U921 ( .A(X[2]), .Y(n994) );
  AOI2BB2XL U922 ( .B0(n874), .B1(Y[0]), .A0N(n876), .A1N(n1061), .Y(n66) );
  AOI2BB2XL U923 ( .B0(n874), .B1(X[0]), .A0N(n877), .A1N(n1051), .Y(n106) );
  AOI2BB2XL U924 ( .B0(n874), .B1(Y[1]), .A0N(n877), .A1N(n1060), .Y(n62) );
  AOI2BB2XL U925 ( .B0(n874), .B1(X[1]), .A0N(n876), .A1N(n1050), .Y(n102) );
  INVX1 U926 ( .A(X[3]), .Y(n993) );
  INVX1 U927 ( .A(Y[3]), .Y(n1003) );
  AOI2BB2XL U928 ( .B0(n874), .B1(X[2]), .A0N(n877), .A1N(n1049), .Y(n98) );
  AOI2BB2XL U929 ( .B0(n874), .B1(Y[2]), .A0N(n878), .A1N(n1059), .Y(n58) );
  INVX1 U930 ( .A(Y[4]), .Y(n1002) );
  INVX1 U931 ( .A(X[4]), .Y(n992) );
  AOI2BB2XL U932 ( .B0(n874), .B1(Y[3]), .A0N(n877), .A1N(n1058), .Y(n54) );
  AOI2BB2XL U933 ( .B0(n874), .B1(X[3]), .A0N(n878), .A1N(n1048), .Y(n94) );
  INVX1 U934 ( .A(Y[5]), .Y(n1001) );
  INVX1 U935 ( .A(X[5]), .Y(n991) );
  AOI2BB2XL U936 ( .B0(n874), .B1(Y[4]), .A0N(n876), .A1N(n1057), .Y(n50) );
  AOI2BB2XL U937 ( .B0(n874), .B1(X[4]), .A0N(n877), .A1N(n1047), .Y(n90) );
  INVX1 U938 ( .A(Y[6]), .Y(n1000) );
  INVX1 U939 ( .A(X[6]), .Y(n990) );
  AOI2BB2XL U940 ( .B0(n874), .B1(Y[5]), .A0N(n876), .A1N(n1056), .Y(n46) );
  AOI2BB2XL U941 ( .B0(n874), .B1(X[5]), .A0N(n876), .A1N(n1046), .Y(n86) );
  CLKINVX1 U942 ( .A(Y[7]), .Y(n999) );
  CLKINVX1 U943 ( .A(X[7]), .Y(n989) );
  NAND3X1 U944 ( .A(n144), .B(n1041), .C(n605), .Y(n512) );
  CLKINVX1 U945 ( .A(Y[8]), .Y(n998) );
  CLKINVX1 U946 ( .A(X[8]), .Y(n988) );
  AOI2BB2XL U947 ( .B0(n874), .B1(X[6]), .A0N(n876), .A1N(n1045), .Y(n82) );
  AOI2BB2XL U948 ( .B0(n874), .B1(Y[6]), .A0N(n878), .A1N(n1055), .Y(n42) );
  AND4X1 U949 ( .A(n514), .B(n1021), .C(n515), .D(n516), .Y(n840) );
  NOR2X1 U950 ( .A(n1041), .B(n605), .Y(n578) );
  OR2X1 U951 ( .A(n290), .B(list_done), .Y(n841) );
  CLKINVX1 U952 ( .A(X[9]), .Y(n987) );
  CLKINVX1 U953 ( .A(Y[9]), .Y(n997) );
  CLKINVX1 U954 ( .A(cclockwise[9]), .Y(n1145) );
  CLKINVX1 U955 ( .A(cclockwise[12]), .Y(n1146) );
  CLKINVX1 U956 ( .A(cclockwise[6]), .Y(n1144) );
  BUFX4 U957 ( .A(n527), .Y(n844) );
  CLKINVX1 U958 ( .A(cclockwise[3]), .Y(n1143) );
  CLKINVX1 U959 ( .A(list_done), .Y(n1021) );
  CLKBUFX3 U960 ( .A(n291), .Y(n859) );
  OAI22XL U961 ( .A0(n150), .A1(input_list_cnt_2_), .B0(n141), .B1(n1133), .Y(
        n135) );
  OAI22XL U962 ( .A0(n155), .A1(input_list_cnt_2_), .B0(n608), .B1(n141), .Y(
        n134) );
  OAI22X1 U963 ( .A0(n139), .A1(input_list_cnt_2_), .B0(n141), .B1(n1142), .Y(
        n120) );
  ADDHXL U964 ( .A(n1041), .B(r459_carry[3]), .CO(N343), .S(N175) );
  ADDHXL U965 ( .A(n1040), .B(n1028), .CO(r459_carry[2]), .S(N173) );
  ADDHXL U966 ( .A(input_list_cnt_2_), .B(r459_carry[2]), .CO(r459_carry[3]), 
        .S(N174) );
  AND4X1 U967 ( .A(n611), .B(n610), .C(n1008), .D(n1019), .Y(n842) );
  INVX3 U968 ( .A(n897), .Y(n896) );
  CLKBUFX3 U969 ( .A(n900), .Y(n897) );
  CLKBUFX3 U970 ( .A(n899), .Y(n898) );
  CLKBUFX3 U971 ( .A(n1016), .Y(n890) );
  CLKINVX1 U972 ( .A(n860), .Y(n1016) );
  CLKBUFX3 U973 ( .A(n1015), .Y(n889) );
  CLKINVX1 U974 ( .A(n861), .Y(n1015) );
  CLKBUFX3 U975 ( .A(n1014), .Y(n888) );
  CLKINVX1 U976 ( .A(n862), .Y(n1014) );
  CLKBUFX3 U977 ( .A(n1013), .Y(n887) );
  CLKINVX1 U978 ( .A(n863), .Y(n1013) );
  CLKBUFX3 U979 ( .A(n138), .Y(n893) );
  CLKINVX1 U980 ( .A(n895), .Y(n900) );
  CLKBUFX3 U981 ( .A(n118), .Y(n903) );
  CLKBUFX3 U982 ( .A(n118), .Y(n904) );
  CLKINVX1 U983 ( .A(n895), .Y(n899) );
  CLKBUFX3 U984 ( .A(n373), .Y(n860) );
  CLKBUFX3 U985 ( .A(n381), .Y(n861) );
  CLKBUFX3 U986 ( .A(n379), .Y(n862) );
  CLKBUFX3 U987 ( .A(n375), .Y(n863) );
  CLKBUFX3 U988 ( .A(n138), .Y(n894) );
  CLKINVX1 U989 ( .A(vector_tmp[1]), .Y(n938) );
  CLKINVX1 U990 ( .A(vector_tmp[12]), .Y(n927) );
  CLKINVX1 U991 ( .A(n349), .Y(n1033) );
  CLKINVX1 U992 ( .A(n508), .Y(n1032) );
  NOR2X1 U993 ( .A(n1030), .B(n1032), .Y(n517) );
  NAND2X1 U994 ( .A(n495), .B(n413), .Y(n347) );
  CLKINVX1 U995 ( .A(n513), .Y(n1024) );
  NOR2X1 U996 ( .A(n1024), .B(n1022), .Y(n522) );
  CLKINVX1 U997 ( .A(vector_C[10]), .Y(n951) );
  CLKINVX1 U998 ( .A(vector_C[21]), .Y(n940) );
  CLKINVX1 U999 ( .A(vector_D[10]), .Y(n973) );
  CLKINVX1 U1000 ( .A(vector_D[21]), .Y(n962) );
  CLKINVX1 U1001 ( .A(n839), .Y(n881) );
  CLKINVX1 U1002 ( .A(n839), .Y(n882) );
  CLKINVX1 U1003 ( .A(n875), .Y(n877) );
  CLKINVX1 U1004 ( .A(n875), .Y(n876) );
  CLKINVX1 U1005 ( .A(n839), .Y(n883) );
  CLKINVX1 U1006 ( .A(n875), .Y(n878) );
  INVX3 U1007 ( .A(n873), .Y(n874) );
  CLKINVX1 U1008 ( .A(n30), .Y(n873) );
  OAI31XL U1009 ( .A0(n1039), .A1(n132), .A2(n901), .B0(n133), .Y(n30) );
  INVX3 U1010 ( .A(n871), .Y(n872) );
  CLKINVX1 U1011 ( .A(n23), .Y(n871) );
  AOI32X1 U1012 ( .A0(n121), .A1(n1027), .A2(n1009), .B0(n896), .B1(n137), .Y(
        n23) );
  CLKINVX1 U1013 ( .A(n884), .Y(n885) );
  CLKINVX1 U1014 ( .A(n884), .Y(n886) );
  OAI21X1 U1015 ( .A0(n1023), .A1(n337), .B0(n331), .Y(n333) );
  NAND2BX1 U1016 ( .AN(n324), .B(n332), .Y(n334) );
  NAND2X1 U1017 ( .A(n349), .B(n331), .Y(n342) );
  NAND2BX1 U1018 ( .AN(n346), .B(n338), .Y(n344) );
  NAND2X2 U1019 ( .A(n331), .B(n341), .Y(n332) );
  NAND2X1 U1020 ( .A(n331), .B(n324), .Y(n326) );
  NAND2X2 U1021 ( .A(n331), .B(n347), .Y(n338) );
  NAND2X1 U1022 ( .A(n331), .B(n346), .Y(n348) );
  CLKINVX1 U1023 ( .A(n124), .Y(n1026) );
  CLKBUFX3 U1024 ( .A(n136), .Y(n895) );
  NAND2X1 U1025 ( .A(n901), .B(n893), .Y(n136) );
  CLKBUFX3 U1026 ( .A(n299), .Y(n891) );
  CLKBUFX3 U1027 ( .A(n299), .Y(n892) );
  NAND2X1 U1028 ( .A(n1032), .B(n1017), .Y(n373) );
  NAND2X1 U1029 ( .A(n1023), .B(n1017), .Y(n381) );
  NAND2X1 U1030 ( .A(n1031), .B(n1017), .Y(n379) );
  NAND2X1 U1031 ( .A(n1029), .B(n1017), .Y(n375) );
  AOI2BB1X1 U1032 ( .A0N(n1017), .A1N(n1007), .B0(n1032), .Y(n390) );
  CLKINVX1 U1033 ( .A(n293), .Y(n1007) );
  NAND2X1 U1034 ( .A(vector_E[14]), .B(n846), .Y(n566) );
  NAND2X1 U1035 ( .A(vector_E[3]), .B(n846), .Y(n544) );
  NAND2X1 U1036 ( .A(vector_E[16]), .B(n845), .Y(n562) );
  NAND2X1 U1037 ( .A(vector_E[5]), .B(n846), .Y(n540) );
  NAND2X1 U1038 ( .A(vector_E[12]), .B(n846), .Y(n570) );
  NAND2X1 U1039 ( .A(vector_E[13]), .B(n846), .Y(n568) );
  NAND2X1 U1040 ( .A(vector_E[1]), .B(n846), .Y(n548) );
  NAND2X1 U1041 ( .A(vector_E[2]), .B(n846), .Y(n546) );
  NAND2X1 U1042 ( .A(vector_E[15]), .B(n846), .Y(n564) );
  NAND2X1 U1043 ( .A(vector_E[4]), .B(n845), .Y(n542) );
  OAI211X1 U1044 ( .A0(n844), .A1(n1157), .B0(n550), .C0(n551), .Y(
        cross_vector_a_y[10]) );
  OAI211X1 U1045 ( .A0(n844), .A1(n1132), .B0(n572), .C0(n573), .Y(
        cross_vector_a_x[10]) );
  NAND2X1 U1046 ( .A(vector_E[20]), .B(n846), .Y(n554) );
  NAND2X1 U1047 ( .A(vector_E[9]), .B(n846), .Y(n528) );
  NAND2X1 U1048 ( .A(vector_E[18]), .B(n845), .Y(n558) );
  NAND2X1 U1049 ( .A(vector_E[7]), .B(n846), .Y(n536) );
  NAND2X1 U1050 ( .A(vector_E[17]), .B(n846), .Y(n560) );
  NAND2X1 U1051 ( .A(vector_E[6]), .B(n845), .Y(n538) );
  NAND2X1 U1052 ( .A(vector_E[19]), .B(n846), .Y(n556) );
  NAND2X1 U1053 ( .A(vector_E[8]), .B(n846), .Y(n534) );
  OAI22XL U1054 ( .A0(n1081), .A1(n869), .B0(n1006), .B1(n870), .Y(n224) );
  OAI22XL U1055 ( .A0(n1071), .A1(n869), .B0(n996), .B1(n870), .Y(n284) );
  OAI22XL U1056 ( .A0(n896), .A1(n1157), .B0(n897), .B1(n929), .Y(n616) );
  OAI22XL U1057 ( .A0(n896), .A1(n1132), .B0(n898), .B1(n918), .Y(n672) );
  CLKINVX1 U1058 ( .A(vector_tmp[10]), .Y(n929) );
  CLKINVX1 U1059 ( .A(vector_tmp[21]), .Y(n918) );
  OAI211X1 U1060 ( .A0(n872), .A1(n1100), .B0(n62), .C0(n63), .Y(
        point_cal_vec2[1]) );
  OAI211X1 U1061 ( .A0(n872), .A1(n1090), .B0(n102), .C0(n103), .Y(
        point_cal_vec2[11]) );
  OAI22XL U1062 ( .A0(n896), .A1(n1156), .B0(n897), .B1(n930), .Y(n618) );
  OAI22XL U1063 ( .A0(n895), .A1(n1131), .B0(n898), .B1(n919), .Y(n671) );
  CLKINVX1 U1064 ( .A(vector_tmp[9]), .Y(n930) );
  CLKINVX1 U1065 ( .A(vector_tmp[20]), .Y(n919) );
  OAI22XL U1066 ( .A0(n896), .A1(n1155), .B0(n898), .B1(n931), .Y(n620) );
  OAI22XL U1067 ( .A0(n895), .A1(n1130), .B0(n898), .B1(n920), .Y(n670) );
  CLKINVX1 U1068 ( .A(vector_tmp[8]), .Y(n931) );
  CLKINVX1 U1069 ( .A(vector_tmp[19]), .Y(n920) );
  OAI22XL U1070 ( .A0(n896), .A1(n1154), .B0(n898), .B1(n932), .Y(n622) );
  OAI22XL U1071 ( .A0(n136), .A1(n1129), .B0(n898), .B1(n921), .Y(n669) );
  CLKINVX1 U1072 ( .A(vector_tmp[7]), .Y(n932) );
  CLKINVX1 U1073 ( .A(vector_tmp[18]), .Y(n921) );
  OAI22XL U1074 ( .A0(n896), .A1(n1153), .B0(n898), .B1(n933), .Y(n624) );
  OAI22XL U1075 ( .A0(n136), .A1(n1128), .B0(n898), .B1(n922), .Y(n668) );
  CLKINVX1 U1076 ( .A(vector_tmp[6]), .Y(n933) );
  CLKINVX1 U1077 ( .A(vector_tmp[17]), .Y(n922) );
  OAI22XL U1078 ( .A0(n896), .A1(n1152), .B0(n899), .B1(n934), .Y(n626) );
  OAI22XL U1079 ( .A0(n136), .A1(n1127), .B0(n898), .B1(n923), .Y(n667) );
  CLKINVX1 U1080 ( .A(vector_tmp[5]), .Y(n934) );
  CLKINVX1 U1081 ( .A(vector_tmp[16]), .Y(n923) );
  OAI22XL U1082 ( .A0(n896), .A1(n1151), .B0(n898), .B1(n935), .Y(n628) );
  OAI22XL U1083 ( .A0(n136), .A1(n1126), .B0(n898), .B1(n924), .Y(n666) );
  CLKINVX1 U1084 ( .A(vector_tmp[4]), .Y(n935) );
  CLKINVX1 U1085 ( .A(vector_tmp[15]), .Y(n924) );
  OAI22XL U1086 ( .A0(n896), .A1(n1150), .B0(n898), .B1(n936), .Y(n630) );
  OAI22XL U1087 ( .A0(n136), .A1(n1125), .B0(n898), .B1(n925), .Y(n665) );
  CLKINVX1 U1088 ( .A(vector_tmp[3]), .Y(n936) );
  CLKINVX1 U1089 ( .A(vector_tmp[14]), .Y(n925) );
  OAI22XL U1090 ( .A0(n896), .A1(n1149), .B0(n899), .B1(n937), .Y(n632) );
  OAI22XL U1091 ( .A0(n136), .A1(n1124), .B0(n898), .B1(n926), .Y(n664) );
  CLKINVX1 U1092 ( .A(vector_tmp[2]), .Y(n937) );
  CLKINVX1 U1093 ( .A(vector_tmp[13]), .Y(n926) );
  OAI22XL U1094 ( .A0(n895), .A1(n1148), .B0(n899), .B1(n938), .Y(n634) );
  OAI22XL U1095 ( .A0(n895), .A1(n1123), .B0(n899), .B1(n927), .Y(n663) );
  OAI22XL U1096 ( .A0(n895), .A1(n1147), .B0(n898), .B1(n939), .Y(n636) );
  OAI22XL U1097 ( .A0(n895), .A1(n1122), .B0(n898), .B1(n928), .Y(n662) );
  CLKINVX1 U1098 ( .A(vector_tmp[0]), .Y(n939) );
  CLKINVX1 U1099 ( .A(vector_tmp[11]), .Y(n928) );
  OAI22XL U1100 ( .A0(n888), .A1(n1061), .B0(n1006), .B1(n862), .Y(n752) );
  OAI22XL U1101 ( .A0(n888), .A1(n1051), .B0(n996), .B1(n862), .Y(n742) );
  OAI22XL U1102 ( .A0(n888), .A1(n1060), .B0(n1005), .B1(n862), .Y(n751) );
  OAI22XL U1103 ( .A0(n888), .A1(n1059), .B0(n1004), .B1(n379), .Y(n750) );
  OAI22XL U1104 ( .A0(n888), .A1(n1058), .B0(n1003), .B1(n379), .Y(n749) );
  OAI22XL U1105 ( .A0(n888), .A1(n1057), .B0(n1002), .B1(n379), .Y(n748) );
  OAI22XL U1106 ( .A0(n888), .A1(n1056), .B0(n1001), .B1(n379), .Y(n747) );
  OAI22XL U1107 ( .A0(n888), .A1(n1055), .B0(n1000), .B1(n379), .Y(n746) );
  OAI22XL U1108 ( .A0(n888), .A1(n1054), .B0(n999), .B1(n379), .Y(n745) );
  OAI22XL U1109 ( .A0(n888), .A1(n1053), .B0(n998), .B1(n862), .Y(n744) );
  OAI22XL U1110 ( .A0(n888), .A1(n1052), .B0(n997), .B1(n862), .Y(n743) );
  OAI22XL U1111 ( .A0(n888), .A1(n1050), .B0(n995), .B1(n862), .Y(n741) );
  OAI22XL U1112 ( .A0(n888), .A1(n1049), .B0(n994), .B1(n862), .Y(n740) );
  OAI22XL U1113 ( .A0(n888), .A1(n1048), .B0(n993), .B1(n862), .Y(n739) );
  OAI22XL U1114 ( .A0(n888), .A1(n1047), .B0(n992), .B1(n862), .Y(n738) );
  OAI22XL U1115 ( .A0(n888), .A1(n1046), .B0(n991), .B1(n862), .Y(n737) );
  OAI22XL U1116 ( .A0(n888), .A1(n1045), .B0(n990), .B1(n862), .Y(n736) );
  OAI22XL U1117 ( .A0(n888), .A1(n1044), .B0(n989), .B1(n862), .Y(n735) );
  OAI22XL U1118 ( .A0(n888), .A1(n1043), .B0(n988), .B1(n862), .Y(n734) );
  OAI22XL U1119 ( .A0(n888), .A1(n1042), .B0(n987), .B1(n862), .Y(n733) );
  OAI22XL U1120 ( .A0(n1006), .A1(n863), .B0(n887), .B1(n1101), .Y(n732) );
  OAI22XL U1121 ( .A0(n996), .A1(n863), .B0(n887), .B1(n1091), .Y(n722) );
  OAI22XL U1122 ( .A0(n1006), .A1(n860), .B0(n890), .B1(n1081), .Y(n692) );
  OAI22XL U1123 ( .A0(n996), .A1(n860), .B0(n890), .B1(n1071), .Y(n682) );
  OAI22XL U1124 ( .A0(n1005), .A1(n863), .B0(n887), .B1(n1100), .Y(n731) );
  OAI22XL U1125 ( .A0(n1004), .A1(n375), .B0(n887), .B1(n1099), .Y(n730) );
  OAI22XL U1126 ( .A0(n1003), .A1(n375), .B0(n887), .B1(n1098), .Y(n729) );
  OAI22XL U1127 ( .A0(n1002), .A1(n375), .B0(n887), .B1(n1097), .Y(n728) );
  OAI22XL U1128 ( .A0(n1001), .A1(n375), .B0(n887), .B1(n1096), .Y(n727) );
  OAI22XL U1129 ( .A0(n1000), .A1(n375), .B0(n887), .B1(n1095), .Y(n726) );
  OAI22XL U1130 ( .A0(n999), .A1(n375), .B0(n887), .B1(n1094), .Y(n725) );
  OAI22XL U1131 ( .A0(n998), .A1(n863), .B0(n887), .B1(n1093), .Y(n724) );
  OAI22XL U1132 ( .A0(n997), .A1(n863), .B0(n887), .B1(n1092), .Y(n723) );
  OAI22XL U1133 ( .A0(n995), .A1(n863), .B0(n887), .B1(n1090), .Y(n721) );
  OAI22XL U1134 ( .A0(n994), .A1(n863), .B0(n887), .B1(n1089), .Y(n720) );
  OAI22XL U1135 ( .A0(n993), .A1(n863), .B0(n887), .B1(n1088), .Y(n719) );
  OAI22XL U1136 ( .A0(n992), .A1(n863), .B0(n887), .B1(n1087), .Y(n718) );
  OAI22XL U1137 ( .A0(n991), .A1(n863), .B0(n887), .B1(n1086), .Y(n717) );
  OAI22XL U1138 ( .A0(n990), .A1(n863), .B0(n887), .B1(n1085), .Y(n716) );
  OAI22XL U1139 ( .A0(n989), .A1(n863), .B0(n887), .B1(n1084), .Y(n715) );
  OAI22XL U1140 ( .A0(n988), .A1(n863), .B0(n887), .B1(n1083), .Y(n714) );
  OAI22XL U1141 ( .A0(n987), .A1(n863), .B0(n887), .B1(n1082), .Y(n713) );
  OAI22XL U1142 ( .A0(n1005), .A1(n860), .B0(n890), .B1(n1080), .Y(n691) );
  OAI22XL U1143 ( .A0(n1004), .A1(n373), .B0(n890), .B1(n1079), .Y(n690) );
  OAI22XL U1144 ( .A0(n1003), .A1(n373), .B0(n890), .B1(n1078), .Y(n689) );
  OAI22XL U1145 ( .A0(n1002), .A1(n373), .B0(n890), .B1(n1077), .Y(n688) );
  OAI22XL U1146 ( .A0(n1001), .A1(n373), .B0(n890), .B1(n1076), .Y(n687) );
  OAI22XL U1147 ( .A0(n1000), .A1(n373), .B0(n890), .B1(n1075), .Y(n686) );
  OAI22XL U1148 ( .A0(n999), .A1(n373), .B0(n890), .B1(n1074), .Y(n685) );
  OAI22XL U1149 ( .A0(n998), .A1(n860), .B0(n890), .B1(n1073), .Y(n684) );
  OAI22XL U1150 ( .A0(n997), .A1(n860), .B0(n890), .B1(n1072), .Y(n683) );
  OAI22XL U1151 ( .A0(n995), .A1(n860), .B0(n890), .B1(n1070), .Y(n681) );
  OAI22XL U1152 ( .A0(n994), .A1(n860), .B0(n890), .B1(n1069), .Y(n680) );
  OAI22XL U1153 ( .A0(n993), .A1(n860), .B0(n890), .B1(n1068), .Y(n679) );
  OAI22XL U1154 ( .A0(n992), .A1(n860), .B0(n890), .B1(n1067), .Y(n678) );
  OAI22XL U1155 ( .A0(n991), .A1(n860), .B0(n890), .B1(n1066), .Y(n677) );
  OAI22XL U1156 ( .A0(n990), .A1(n860), .B0(n890), .B1(n1065), .Y(n676) );
  OAI22XL U1157 ( .A0(n989), .A1(n860), .B0(n890), .B1(n1064), .Y(n675) );
  OAI22XL U1158 ( .A0(n988), .A1(n860), .B0(n890), .B1(n1063), .Y(n674) );
  OAI22XL U1159 ( .A0(n987), .A1(n860), .B0(n890), .B1(n1062), .Y(n673) );
  OAI22XL U1160 ( .A0(n1006), .A1(n861), .B0(n889), .B1(n1121), .Y(n772) );
  OAI22XL U1161 ( .A0(n996), .A1(n861), .B0(n889), .B1(n1111), .Y(n762) );
  OAI22XL U1162 ( .A0(n1005), .A1(n861), .B0(n889), .B1(n1120), .Y(n771) );
  OAI22XL U1163 ( .A0(n1004), .A1(n381), .B0(n889), .B1(n1119), .Y(n770) );
  OAI22XL U1164 ( .A0(n1003), .A1(n381), .B0(n889), .B1(n1118), .Y(n769) );
  OAI22XL U1165 ( .A0(n1002), .A1(n381), .B0(n889), .B1(n1117), .Y(n768) );
  OAI22XL U1166 ( .A0(n1001), .A1(n381), .B0(n889), .B1(n1116), .Y(n767) );
  OAI22XL U1167 ( .A0(n1000), .A1(n381), .B0(n889), .B1(n1115), .Y(n766) );
  OAI22XL U1168 ( .A0(n999), .A1(n381), .B0(n889), .B1(n1114), .Y(n765) );
  OAI22XL U1169 ( .A0(n998), .A1(n861), .B0(n889), .B1(n1113), .Y(n764) );
  OAI22XL U1170 ( .A0(n997), .A1(n861), .B0(n889), .B1(n1112), .Y(n763) );
  OAI22XL U1171 ( .A0(n995), .A1(n861), .B0(n889), .B1(n1110), .Y(n761) );
  OAI22XL U1172 ( .A0(n994), .A1(n861), .B0(n889), .B1(n1109), .Y(n760) );
  OAI22XL U1173 ( .A0(n993), .A1(n861), .B0(n889), .B1(n1108), .Y(n759) );
  OAI22XL U1174 ( .A0(n992), .A1(n861), .B0(n889), .B1(n1107), .Y(n758) );
  OAI22XL U1175 ( .A0(n991), .A1(n861), .B0(n889), .B1(n1106), .Y(n757) );
  OAI22XL U1176 ( .A0(n990), .A1(n861), .B0(n889), .B1(n1105), .Y(n756) );
  OAI22XL U1177 ( .A0(n989), .A1(n861), .B0(n889), .B1(n1104), .Y(n755) );
  OAI22XL U1178 ( .A0(n988), .A1(n861), .B0(n889), .B1(n1103), .Y(n754) );
  OAI22XL U1179 ( .A0(n987), .A1(n861), .B0(n889), .B1(n1102), .Y(n753) );
  NOR2BX1 U1180 ( .AN(n578), .B(n146), .Y(n349) );
  NAND4X1 U1181 ( .A(n1033), .B(n495), .C(n512), .D(n507), .Y(n580) );
  OAI221XL U1182 ( .A0(n854), .A1(n971), .B0(n834), .B1(n949), .C0(n4820), .Y(
        cross_vector_b_x[1]) );
  OAI221XL U1183 ( .A0(n854), .A1(n982), .B0(n834), .B1(n960), .C0(n449), .Y(
        cross_vector_b_y[1]) );
  CLKINVX1 U1184 ( .A(vector_D[12]), .Y(n971) );
  INVX3 U1185 ( .A(n857), .Y(n858) );
  CLKINVX1 U1186 ( .A(n425), .Y(n857) );
  OAI31XL U1187 ( .A0(n489), .A1(n490), .A2(n491), .B0(n1021), .Y(n425) );
  OAI22XL U1188 ( .A0(n500), .A1(n501), .B0(n502), .B1(n503), .Y(n489) );
  OAI221XL U1189 ( .A0(n854), .A1(n969), .B0(n834), .B1(n947), .C0(n476), .Y(
        cross_vector_b_x[3]) );
  OAI221XL U1190 ( .A0(n854), .A1(n980), .B0(n834), .B1(n958), .C0(n443), .Y(
        cross_vector_b_y[3]) );
  CLKINVX1 U1191 ( .A(vector_D[14]), .Y(n969) );
  NAND2X1 U1192 ( .A(n578), .B(n143), .Y(n508) );
  NAND2X1 U1193 ( .A(n517), .B(n518), .Y(n337) );
  INVX3 U1194 ( .A(n840), .Y(n855) );
  OAI31XL U1195 ( .A0(n492), .A1(n493), .A2(n494), .B0(n290), .Y(n491) );
  OA21XL U1196 ( .A0(n495), .A1(n496), .B0(n413), .Y(n492) );
  NAND2X1 U1197 ( .A(n576), .B(n1028), .Y(n413) );
  INVX3 U1198 ( .A(n840), .Y(n856) );
  NOR2X2 U1199 ( .A(n1040), .B(n1028), .Y(n144) );
  AOI21X1 U1200 ( .A0(n509), .A1(n510), .B0(n1031), .Y(n501) );
  OAI21XL U1201 ( .A0(n511), .A1(n512), .B0(n513), .Y(n509) );
  INVX3 U1202 ( .A(n853), .Y(n854) );
  CLKINVX1 U1203 ( .A(n852), .Y(n853) );
  OAI31XL U1204 ( .A0(n524), .A1(n525), .A2(n526), .B0(n1021), .Y(n852) );
  CLKINVX1 U1205 ( .A(n507), .Y(n1030) );
  NAND2X1 U1206 ( .A(n578), .B(n144), .Y(n513) );
  OAI221XL U1207 ( .A0(n854), .A1(n970), .B0(n834), .B1(n948), .C0(n479), .Y(
        cross_vector_b_x[2]) );
  OAI221XL U1208 ( .A0(n854), .A1(n981), .B0(n834), .B1(n959), .C0(n446), .Y(
        cross_vector_b_y[2]) );
  CLKINVX1 U1209 ( .A(vector_D[13]), .Y(n970) );
  OAI221XL U1210 ( .A0(n854), .A1(n972), .B0(n834), .B1(n950), .C0(n488), .Y(
        cross_vector_b_x[0]) );
  OAI221XL U1211 ( .A0(n854), .A1(n983), .B0(n834), .B1(n961), .C0(n455), .Y(
        cross_vector_b_y[0]) );
  CLKINVX1 U1212 ( .A(n518), .Y(n1029) );
  AOI21X1 U1213 ( .A0(n504), .A1(n505), .B0(n1029), .Y(n503) );
  OAI21XL U1214 ( .A0(n506), .A1(n507), .B0(n508), .Y(n504) );
  NAND2X1 U1215 ( .A(n1028), .B(n1040), .Y(n148) );
  NAND2BX1 U1216 ( .AN(n148), .B(n578), .Y(n495) );
  CLKINVX1 U1217 ( .A(n519), .Y(n1031) );
  NAND3X1 U1218 ( .A(n513), .B(n519), .C(n512), .Y(n341) );
  OAI22XL U1219 ( .A0(n517), .A1(n505), .B0(n522), .B1(n510), .Y(n520) );
  AO22X1 U1220 ( .A0(n347), .A1(n494), .B0(n349), .B1(n499), .Y(n521) );
  CLKINVX1 U1221 ( .A(n512), .Y(n1022) );
  OAI221XL U1222 ( .A0(n854), .A1(n968), .B0(n834), .B1(n946), .C0(n473), .Y(
        cross_vector_b_x[4]) );
  OAI221XL U1223 ( .A0(n854), .A1(n979), .B0(n834), .B1(n957), .C0(n440), .Y(
        cross_vector_b_y[4]) );
  CLKINVX1 U1224 ( .A(vector_D[15]), .Y(n968) );
  AO22X1 U1225 ( .A0(n1030), .A1(n506), .B0(n1022), .B1(n511), .Y(n524) );
  INVX3 U1226 ( .A(n841), .Y(n848) );
  INVX3 U1227 ( .A(n841), .Y(n847) );
  OAI21XL U1228 ( .A0(n1040), .A1(input_list_cnt_2_), .B0(n1041), .Y(n514) );
  NOR2BX1 U1229 ( .AN(n496), .B(n495), .Y(n526) );
  OAI221XL U1230 ( .A0(n854), .A1(n967), .B0(n834), .B1(n945), .C0(n470), .Y(
        cross_vector_b_x[5]) );
  OAI221XL U1231 ( .A0(n854), .A1(n978), .B0(n834), .B1(n956), .C0(n437), .Y(
        cross_vector_b_y[5]) );
  CLKINVX1 U1232 ( .A(vector_D[16]), .Y(n967) );
  CLKINVX1 U1233 ( .A(vector_C[3]), .Y(n958) );
  CLKINVX1 U1234 ( .A(vector_C[14]), .Y(n947) );
  CLKINVX1 U1235 ( .A(vector_D[3]), .Y(n980) );
  CLKINVX1 U1236 ( .A(vector_C[4]), .Y(n957) );
  CLKINVX1 U1237 ( .A(vector_C[15]), .Y(n946) );
  CLKINVX1 U1238 ( .A(vector_D[4]), .Y(n979) );
  CLKINVX1 U1239 ( .A(vector_C[5]), .Y(n956) );
  OAI221XL U1240 ( .A0(n854), .A1(n966), .B0(n834), .B1(n944), .C0(n467), .Y(
        cross_vector_b_x[6]) );
  OAI221XL U1241 ( .A0(n852), .A1(n977), .B0(n834), .B1(n955), .C0(n434), .Y(
        cross_vector_b_y[6]) );
  CLKINVX1 U1242 ( .A(vector_D[17]), .Y(n966) );
  CLKINVX1 U1243 ( .A(vector_C[16]), .Y(n945) );
  CLKINVX1 U1244 ( .A(vector_D[5]), .Y(n978) );
  CLKINVX1 U1245 ( .A(vector_C[2]), .Y(n959) );
  CLKINVX1 U1246 ( .A(vector_C[13]), .Y(n948) );
  CLKINVX1 U1247 ( .A(vector_D[2]), .Y(n981) );
  CLKINVX1 U1248 ( .A(vector_C[1]), .Y(n960) );
  CLKINVX1 U1249 ( .A(vector_C[12]), .Y(n949) );
  CLKINVX1 U1250 ( .A(vector_D[1]), .Y(n982) );
  CLKINVX1 U1251 ( .A(vector_C[6]), .Y(n955) );
  CLKINVX1 U1252 ( .A(vector_C[17]), .Y(n944) );
  CLKINVX1 U1253 ( .A(vector_D[6]), .Y(n977) );
  OAI221XL U1254 ( .A0(n854), .A1(n965), .B0(n834), .B1(n943), .C0(n464), .Y(
        cross_vector_b_x[7]) );
  OAI221XL U1255 ( .A0(n854), .A1(n976), .B0(n834), .B1(n954), .C0(n431), .Y(
        cross_vector_b_y[7]) );
  CLKINVX1 U1256 ( .A(vector_D[18]), .Y(n965) );
  CLKINVX1 U1257 ( .A(vector_C[0]), .Y(n961) );
  CLKINVX1 U1258 ( .A(vector_C[11]), .Y(n950) );
  CLKINVX1 U1259 ( .A(vector_C[7]), .Y(n954) );
  CLKINVX1 U1260 ( .A(vector_D[0]), .Y(n983) );
  CLKINVX1 U1261 ( .A(vector_C[18]), .Y(n943) );
  CLKINVX1 U1262 ( .A(vector_D[11]), .Y(n972) );
  CLKINVX1 U1263 ( .A(vector_D[7]), .Y(n976) );
  CLKINVX1 U1264 ( .A(vector_C[8]), .Y(n953) );
  CLKINVX1 U1265 ( .A(vector_C[19]), .Y(n942) );
  CLKINVX1 U1266 ( .A(vector_D[8]), .Y(n975) );
  CLKINVX1 U1267 ( .A(vector_D[19]), .Y(n964) );
  CLKINVX1 U1268 ( .A(vector_C[9]), .Y(n952) );
  CLKINVX1 U1269 ( .A(vector_C[20]), .Y(n941) );
  CLKINVX1 U1270 ( .A(vector_D[9]), .Y(n974) );
  CLKINVX1 U1271 ( .A(vector_D[20]), .Y(n963) );
  INVX1 U1272 ( .A(N480), .Y(n1039) );
  NAND3X1 U1273 ( .A(n1009), .B(n120), .C(n121), .Y(n119) );
  NAND4XL U1274 ( .A(N482), .B(n842), .C(N481), .D(n1039), .Y(n117) );
  NAND3XL U1275 ( .A(n1039), .B(n1038), .C(N482), .Y(n129) );
  AOI2BB1X1 U1276 ( .A0N(n902), .A1N(n129), .B0(n130), .Y(n31) );
  AOI211X1 U1277 ( .A0(n123), .A1(n131), .B0(n1026), .C0(n125), .Y(n130) );
  CLKBUFX3 U1278 ( .A(n165), .Y(n868) );
  NOR4XL U1279 ( .A(n1039), .B(n125), .C(N481), .D(N482), .Y(n165) );
  INVX3 U1280 ( .A(n865), .Y(n866) );
  CLKINVX1 U1281 ( .A(n172), .Y(n865) );
  AOI2BB1X1 U1282 ( .A0N(n125), .A1N(n129), .B0(n1017), .Y(n172) );
  OAI21XL U1283 ( .A0(N480), .A1(n132), .B0(n893), .Y(n137) );
  NAND2X1 U1284 ( .A(N481), .B(n1037), .Y(n132) );
  NAND4XL U1285 ( .A(N482), .B(N480), .C(n1009), .D(n1038), .Y(n168) );
  CLKBUFX3 U1286 ( .A(n164), .Y(n867) );
  NOR4XL U1287 ( .A(n1037), .B(n1038), .C(n125), .D(N480), .Y(n164) );
  CLKBUFX3 U1288 ( .A(n170), .Y(n870) );
  NAND3BXL U1289 ( .AN(n132), .B(n1009), .C(N480), .Y(n170) );
  NAND4XL U1290 ( .A(N482), .B(N480), .C(n842), .D(n1038), .Y(n126) );
  INVX3 U1291 ( .A(n879), .Y(n880) );
  CLKINVX1 U1292 ( .A(n27), .Y(n879) );
  OAI31XL U1293 ( .A0(n123), .A1(n124), .A2(n125), .B0(n126), .Y(n27) );
  NAND2X1 U1294 ( .A(n108), .B(n109), .Y(n29) );
  NAND4X1 U1295 ( .A(n1025), .B(n1009), .C(n1027), .D(n1026), .Y(n109) );
  BUFX4 U1296 ( .A(n171), .Y(n864) );
  NOR2X2 U1297 ( .A(n350), .B(cross_product), .Y(n331) );
  NAND2X1 U1298 ( .A(n859), .B(n333), .Y(n324) );
  OAI211X1 U1299 ( .A0(n1146), .A1(n333), .B0(n859), .C0(n336), .Y(n642) );
  OA22X1 U1300 ( .A0(n332), .A1(n1144), .B0(n1145), .B1(n334), .Y(n336) );
  OAI211X1 U1301 ( .A0(n1141), .A1(n333), .B0(n859), .C0(n335), .Y(n641) );
  OA22X1 U1302 ( .A0(n332), .A1(n1139), .B0(n1140), .B1(n334), .Y(n335) );
  NAND2X1 U1303 ( .A(n859), .B(n342), .Y(n346) );
  OAI211X1 U1304 ( .A0(n1142), .A1(n342), .B0(n859), .C0(n345), .Y(n648) );
  OA22X1 U1305 ( .A0(n344), .A1(n1143), .B0(n1144), .B1(n338), .Y(n345) );
  OAI211X1 U1306 ( .A0(n1133), .A1(n342), .B0(n859), .C0(n3430), .Y(n646) );
  OA22X1 U1307 ( .A0(n344), .A1(n1134), .B0(n1135), .B1(n338), .Y(n3430) );
  OAI222XL U1308 ( .A0(n1135), .A1(n332), .B0(n1137), .B1(n333), .C0(n1136), 
        .C1(n334), .Y(n640) );
  OAI221XL U1309 ( .A0(n1140), .A1(n326), .B0(n1141), .B1(n324), .C0(n859), 
        .Y(n638) );
  OAI211X1 U1310 ( .A0(n1134), .A1(n338), .B0(n859), .C0(n339), .Y(n643) );
  OA22X1 U1311 ( .A0(n332), .A1(n1136), .B0(n1135), .B1(n340), .Y(n339) );
  NAND3X1 U1312 ( .A(n332), .B(n859), .C(n338), .Y(n340) );
  OAI221XL U1313 ( .A0(n1134), .A1(n348), .B0(n1133), .B1(n346), .C0(n859), 
        .Y(n649) );
  OAI22XL U1314 ( .A0(n1146), .A1(n324), .B0(n1145), .B1(n326), .Y(n639) );
  OAI22XL U1315 ( .A0(n1137), .A1(n324), .B0(n1136), .B1(n326), .Y(n637) );
  OAI22XL U1316 ( .A0(n1142), .A1(n346), .B0(n1143), .B1(n348), .Y(n651) );
  OAI222XL U1317 ( .A0(n1145), .A1(n332), .B0(n1143), .B1(n338), .C0(n1144), 
        .C1(n340), .Y(n645) );
  OAI222XL U1318 ( .A0(n1140), .A1(n332), .B0(n1138), .B1(n338), .C0(n1139), 
        .C1(n340), .Y(n644) );
  CLKINVX1 U1319 ( .A(cross_product), .Y(n985) );
  NAND2X1 U1320 ( .A(n144), .B(input_list_cnt_2_), .Y(n141) );
  CLKINVX1 U1321 ( .A(n120), .Y(n1027) );
  NAND2X1 U1322 ( .A(n135), .B(n131), .Y(n124) );
  NAND2X1 U1323 ( .A(n1025), .B(n120), .Y(n123) );
  CLKINVX1 U1324 ( .A(n134), .Y(n1025) );
  INVX3 U1325 ( .A(n859), .Y(n1017) );
  NAND4X1 U1326 ( .A(n1009), .B(n1027), .C(n1026), .D(n134), .Y(n133) );
  INVX3 U1327 ( .A(n842), .Y(n901) );
  INVX3 U1328 ( .A(n842), .Y(n902) );
  CLKINVX1 U1329 ( .A(n290), .Y(n1023) );
  AND2X2 U1330 ( .A(n904), .B(n125), .Y(n299) );
  AOI2BB1X1 U1331 ( .A0N(n1030), .A1N(n389), .B0(n390), .Y(n384) );
  NAND2X1 U1332 ( .A(n411), .B(n1008), .Y(n293) );
  NAND2X1 U1333 ( .A(n298), .B(n1020), .Y(n401) );
  NOR2X1 U1334 ( .A(n296), .B(n1019), .Y(n298) );
  CLKINVX1 U1335 ( .A(n407), .Y(n1011) );
  CLKINVX1 U1336 ( .A(n389), .Y(n1010) );
  NAND2X1 U1337 ( .A(n417), .B(n1018), .Y(n393) );
  NOR3X1 U1338 ( .A(n984), .B(n1021), .C(n401), .Y(n402) );
  NAND4X1 U1339 ( .A(n901), .B(n407), .C(n392), .D(n408), .Y(n780) );
  NOR2X1 U1340 ( .A(n402), .B(n1007), .Y(n408) );
  OAI21XL U1341 ( .A0(n1017), .A1(n1021), .B0(n392), .Y(n777) );
  NAND3X1 U1342 ( .A(n859), .B(n389), .C(n293), .Y(n383) );
  CLKINVX1 U1343 ( .A(cross_output_valid), .Y(n984) );
  NAND2X1 U1344 ( .A(n415), .B(n1008), .Y(n392) );
  AOI222XL U1345 ( .A0(n847), .A1(vector_B[3]), .B0(n849), .B1(vector_C[3]), 
        .C0(n532), .C1(vector_D[3]), .Y(n545) );
  AOI222XL U1346 ( .A0(n847), .A1(vector_B[5]), .B0(n849), .B1(vector_C[5]), 
        .C0(n532), .C1(vector_D[5]), .Y(n541) );
  OAI211X1 U1347 ( .A0(n844), .A1(n1148), .B0(n548), .C0(n549), .Y(
        cross_vector_a_y[1]) );
  OAI211X1 U1348 ( .A0(n844), .A1(n1123), .B0(n570), .C0(n571), .Y(
        cross_vector_a_x[1]) );
  AOI222XL U1349 ( .A0(n847), .A1(vector_B[1]), .B0(n849), .B1(vector_C[1]), 
        .C0(n851), .C1(vector_D[1]), .Y(n549) );
  OAI211X1 U1350 ( .A0(n844), .A1(n1149), .B0(n546), .C0(n547), .Y(
        cross_vector_a_y[2]) );
  OAI211X1 U1351 ( .A0(n844), .A1(n1124), .B0(n568), .C0(n569), .Y(
        cross_vector_a_x[2]) );
  AOI222XL U1352 ( .A0(n848), .A1(vector_B[2]), .B0(n849), .B1(vector_C[2]), 
        .C0(n851), .C1(vector_D[2]), .Y(n547) );
  OAI211X1 U1353 ( .A0(n844), .A1(n1151), .B0(n542), .C0(n543), .Y(
        cross_vector_a_y[4]) );
  OAI211X1 U1354 ( .A0(n844), .A1(n1126), .B0(n564), .C0(n565), .Y(
        cross_vector_a_x[4]) );
  AOI222XL U1355 ( .A0(n848), .A1(vector_B[4]), .B0(n849), .B1(vector_C[4]), 
        .C0(n851), .C1(vector_D[4]), .Y(n543) );
  AOI222XL U1356 ( .A0(n847), .A1(vector_B[9]), .B0(n849), .B1(vector_C[9]), 
        .C0(n851), .C1(vector_D[9]), .Y(n529) );
  AOI222XL U1357 ( .A0(n847), .A1(vector_B[7]), .B0(n849), .B1(vector_C[7]), 
        .C0(n851), .C1(vector_D[7]), .Y(n537) );
  OAI211X1 U1358 ( .A0(n844), .A1(n1147), .B0(n552), .C0(n553), .Y(
        cross_vector_a_y[0]) );
  OAI211X1 U1359 ( .A0(n844), .A1(n1122), .B0(n574), .C0(n575), .Y(
        cross_vector_a_x[0]) );
  AOI222XL U1360 ( .A0(n847), .A1(vector_B[0]), .B0(n849), .B1(vector_C[0]), 
        .C0(n532), .C1(vector_D[0]), .Y(n553) );
  NAND2X1 U1361 ( .A(vector_E[11]), .B(n846), .Y(n574) );
  NAND2X1 U1362 ( .A(vector_E[0]), .B(n846), .Y(n552) );
  OAI211X1 U1363 ( .A0(n844), .A1(n1153), .B0(n538), .C0(n539), .Y(
        cross_vector_a_y[6]) );
  OAI211X1 U1364 ( .A0(n844), .A1(n1128), .B0(n560), .C0(n561), .Y(
        cross_vector_a_x[6]) );
  AOI222XL U1365 ( .A0(n848), .A1(vector_B[6]), .B0(n849), .B1(vector_C[6]), 
        .C0(n851), .C1(vector_D[6]), .Y(n539) );
  AOI222XL U1366 ( .A0(n848), .A1(vector_B[8]), .B0(n849), .B1(vector_C[8]), 
        .C0(n851), .C1(vector_D[8]), .Y(n535) );
  OAI211X1 U1367 ( .A0(n901), .A1(n1121), .B0(n222), .C0(n223), .Y(
        point_cal_vec1[0]) );
  AOI2BB2X1 U1368 ( .B0(n864), .B1(point_2[0]), .A0N(n866), .A1N(n1061), .Y(
        n222) );
  AOI221XL U1369 ( .A0(n867), .A1(point_3[0]), .B0(n868), .B1(point_4[0]), 
        .C0(n224), .Y(n223) );
  OAI211X1 U1370 ( .A0(n901), .A1(n1111), .B0(n282), .C0(n283), .Y(
        point_cal_vec1[10]) );
  AOI2BB2X1 U1371 ( .B0(n864), .B1(point_2[10]), .A0N(n866), .A1N(n1051), .Y(
        n282) );
  AOI221XL U1372 ( .A0(n867), .A1(point_3[10]), .B0(n868), .B1(point_4[10]), 
        .C0(n284), .Y(n283) );
  OAI211X1 U1373 ( .A0(n872), .A1(n1099), .B0(n58), .C0(n59), .Y(
        point_cal_vec2[2]) );
  AOI222XL U1374 ( .A0(point_5[2]), .A1(n880), .B0(point_3[2]), .B1(n883), 
        .C0(point_4[2]), .C1(n29), .Y(n59) );
  OAI211X1 U1375 ( .A0(n872), .A1(n1098), .B0(n54), .C0(n55), .Y(
        point_cal_vec2[3]) );
  AOI222XL U1376 ( .A0(point_5[3]), .A1(n880), .B0(point_3[3]), .B1(n882), 
        .C0(point_4[3]), .C1(n886), .Y(n55) );
  OAI211X1 U1377 ( .A0(n872), .A1(n1089), .B0(n98), .C0(n99), .Y(
        point_cal_vec2[12]) );
  AOI222XL U1378 ( .A0(point_5[12]), .A1(n880), .B0(point_3[12]), .B1(n882), 
        .C0(point_4[12]), .C1(n886), .Y(n99) );
  OAI211X1 U1379 ( .A0(n872), .A1(n1097), .B0(n50), .C0(n51), .Y(
        point_cal_vec2[4]) );
  AOI222XL U1380 ( .A0(point_5[4]), .A1(n880), .B0(point_3[4]), .B1(n881), 
        .C0(point_4[4]), .C1(n885), .Y(n51) );
  OAI211X1 U1381 ( .A0(n872), .A1(n1088), .B0(n94), .C0(n95), .Y(
        point_cal_vec2[13]) );
  AOI222XL U1382 ( .A0(point_5[13]), .A1(n880), .B0(point_3[13]), .B1(n883), 
        .C0(point_4[13]), .C1(n29), .Y(n95) );
  OAI211X1 U1383 ( .A0(n23), .A1(n1096), .B0(n46), .C0(n47), .Y(
        point_cal_vec2[5]) );
  AOI222XL U1384 ( .A0(point_5[5]), .A1(n880), .B0(point_3[5]), .B1(n881), 
        .C0(point_4[5]), .C1(n885), .Y(n47) );
  OAI211X1 U1385 ( .A0(n872), .A1(n1087), .B0(n90), .C0(n91), .Y(
        point_cal_vec2[14]) );
  AOI222XL U1386 ( .A0(point_5[14]), .A1(n880), .B0(point_3[14]), .B1(n882), 
        .C0(point_4[14]), .C1(n886), .Y(n91) );
  OAI211X1 U1387 ( .A0(n872), .A1(n1095), .B0(n42), .C0(n43), .Y(
        point_cal_vec2[6]) );
  AOI222XL U1388 ( .A0(point_5[6]), .A1(n880), .B0(point_3[6]), .B1(n883), 
        .C0(point_4[6]), .C1(n29), .Y(n43) );
  OAI211X1 U1389 ( .A0(n23), .A1(n1086), .B0(n86), .C0(n87), .Y(
        point_cal_vec2[15]) );
  AOI222XL U1390 ( .A0(point_5[15]), .A1(n880), .B0(point_3[15]), .B1(n881), 
        .C0(point_4[15]), .C1(n885), .Y(n87) );
  OAI211X1 U1391 ( .A0(n23), .A1(n1094), .B0(n38), .C0(n39), .Y(
        point_cal_vec2[7]) );
  AOI222XL U1392 ( .A0(point_5[7]), .A1(n27), .B0(point_3[7]), .B1(n883), .C0(
        point_4[7]), .C1(n29), .Y(n39) );
  OAI211X1 U1393 ( .A0(n872), .A1(n1085), .B0(n82), .C0(n83), .Y(
        point_cal_vec2[16]) );
  AOI222XL U1394 ( .A0(point_5[16]), .A1(n880), .B0(point_3[16]), .B1(n881), 
        .C0(point_4[16]), .C1(n885), .Y(n83) );
  OAI211X1 U1395 ( .A0(n872), .A1(n1093), .B0(n34), .C0(n35), .Y(
        point_cal_vec2[8]) );
  AOI222XL U1396 ( .A0(point_5[8]), .A1(n880), .B0(point_3[8]), .B1(n882), 
        .C0(point_4[8]), .C1(n886), .Y(n35) );
  OAI211X1 U1397 ( .A0(n23), .A1(n1084), .B0(n78), .C0(n79), .Y(
        point_cal_vec2[17]) );
  AOI222XL U1398 ( .A0(point_5[17]), .A1(n880), .B0(point_3[17]), .B1(n883), 
        .C0(point_4[17]), .C1(n29), .Y(n79) );
  OAI211X1 U1399 ( .A0(n872), .A1(n1083), .B0(n74), .C0(n75), .Y(
        point_cal_vec2[18]) );
  AOI222XL U1400 ( .A0(point_5[18]), .A1(n880), .B0(point_3[18]), .B1(n883), 
        .C0(point_4[18]), .C1(n29), .Y(n75) );
  OAI211X1 U1401 ( .A0(n872), .A1(n1092), .B0(n25), .C0(n26), .Y(
        point_cal_vec2[9]) );
  AOI222XL U1402 ( .A0(point_5[9]), .A1(n880), .B0(point_3[9]), .B1(n881), 
        .C0(point_4[9]), .C1(n885), .Y(n26) );
  OAI211X1 U1403 ( .A0(n872), .A1(n1082), .B0(n70), .C0(n71), .Y(
        point_cal_vec2[19]) );
  AOI222XL U1404 ( .A0(point_5[19]), .A1(n880), .B0(point_3[19]), .B1(n882), 
        .C0(point_4[19]), .C1(n886), .Y(n71) );
  OAI2BB2XL U1405 ( .B0(n891), .B1(n929), .A0N(n892), .A1N(vector_B[10]), .Y(
        n615) );
  OAI2BB2XL U1406 ( .B0(n891), .B1(n918), .A0N(n892), .A1N(vector_B[21]), .Y(
        n781) );
  OAI211X1 U1407 ( .A0(n901), .A1(n1120), .B0(n216), .C0(n217), .Y(
        point_cal_vec1[1]) );
  AOI2BB2X1 U1408 ( .B0(n864), .B1(point_2[1]), .A0N(n866), .A1N(n1060), .Y(
        n216) );
  AOI221XL U1409 ( .A0(n867), .A1(point_3[1]), .B0(n868), .B1(point_4[1]), 
        .C0(n218), .Y(n217) );
  OAI22XL U1410 ( .A0(n1080), .A1(n869), .B0(n1005), .B1(n870), .Y(n218) );
  OAI211X1 U1411 ( .A0(n901), .A1(n1110), .B0(n276), .C0(n277), .Y(
        point_cal_vec1[11]) );
  AOI2BB2X1 U1412 ( .B0(n864), .B1(point_2[11]), .A0N(n866), .A1N(n1050), .Y(
        n276) );
  AOI221XL U1413 ( .A0(n867), .A1(point_3[11]), .B0(n868), .B1(point_4[11]), 
        .C0(n278), .Y(n277) );
  OAI22XL U1414 ( .A0(n1070), .A1(n869), .B0(n995), .B1(n870), .Y(n278) );
  OAI2BB2XL U1415 ( .B0(n891), .B1(n930), .A0N(n891), .A1N(vector_B[9]), .Y(
        n617) );
  OAI2BB2XL U1416 ( .B0(n891), .B1(n919), .A0N(n891), .A1N(vector_B[20]), .Y(
        n661) );
  OAI211X1 U1417 ( .A0(n901), .A1(n1119), .B0(n210), .C0(n211), .Y(
        point_cal_vec1[2]) );
  AOI2BB2X1 U1418 ( .B0(n864), .B1(point_2[2]), .A0N(n866), .A1N(n1059), .Y(
        n210) );
  AOI221XL U1419 ( .A0(n867), .A1(point_3[2]), .B0(n868), .B1(point_4[2]), 
        .C0(n212), .Y(n211) );
  OAI22XL U1420 ( .A0(n1079), .A1(n869), .B0(n1004), .B1(n870), .Y(n212) );
  OAI211X1 U1421 ( .A0(n901), .A1(n1109), .B0(n270), .C0(n271), .Y(
        point_cal_vec1[12]) );
  AOI2BB2X1 U1422 ( .B0(n864), .B1(point_2[12]), .A0N(n866), .A1N(n1049), .Y(
        n270) );
  AOI221XL U1423 ( .A0(n867), .A1(point_3[12]), .B0(n868), .B1(point_4[12]), 
        .C0(n272), .Y(n271) );
  OAI22XL U1424 ( .A0(n1069), .A1(n869), .B0(n994), .B1(n870), .Y(n272) );
  OAI2BB2XL U1425 ( .B0(n891), .B1(n931), .A0N(n892), .A1N(vector_B[8]), .Y(
        n619) );
  OAI2BB2XL U1426 ( .B0(n299), .B1(n920), .A0N(n891), .A1N(vector_B[19]), .Y(
        n660) );
  OAI211X1 U1427 ( .A0(n872), .A1(n1101), .B0(n66), .C0(n67), .Y(
        point_cal_vec2[0]) );
  AOI222XL U1428 ( .A0(point_5[0]), .A1(n880), .B0(point_3[0]), .B1(n881), 
        .C0(point_4[0]), .C1(n885), .Y(n67) );
  OAI211X1 U1429 ( .A0(n872), .A1(n1091), .B0(n106), .C0(n107), .Y(
        point_cal_vec2[10]) );
  AOI222XL U1430 ( .A0(point_5[10]), .A1(n880), .B0(point_3[10]), .B1(n882), 
        .C0(point_4[10]), .C1(n886), .Y(n107) );
  OAI211X1 U1431 ( .A0(n902), .A1(n1118), .B0(n204), .C0(n205), .Y(
        point_cal_vec1[3]) );
  AOI2BB2X1 U1432 ( .B0(n864), .B1(point_2[3]), .A0N(n172), .A1N(n1058), .Y(
        n204) );
  AOI221XL U1433 ( .A0(n867), .A1(point_3[3]), .B0(n868), .B1(point_4[3]), 
        .C0(n206), .Y(n205) );
  OAI22XL U1434 ( .A0(n1078), .A1(n869), .B0(n1003), .B1(n870), .Y(n206) );
  OAI211X1 U1435 ( .A0(n901), .A1(n1108), .B0(n264), .C0(n265), .Y(
        point_cal_vec1[13]) );
  AOI2BB2X1 U1436 ( .B0(n864), .B1(point_2[13]), .A0N(n866), .A1N(n1048), .Y(
        n264) );
  AOI221XL U1437 ( .A0(n867), .A1(point_3[13]), .B0(n868), .B1(point_4[13]), 
        .C0(n266), .Y(n265) );
  OAI22XL U1438 ( .A0(n1068), .A1(n869), .B0(n993), .B1(n870), .Y(n266) );
  OAI2BB2XL U1439 ( .B0(n299), .B1(n932), .A0N(n892), .A1N(vector_B[7]), .Y(
        n621) );
  OAI2BB2XL U1440 ( .B0(n299), .B1(n921), .A0N(n892), .A1N(vector_B[18]), .Y(
        n659) );
  OAI211X1 U1441 ( .A0(n902), .A1(n1117), .B0(n198), .C0(n199), .Y(
        point_cal_vec1[4]) );
  AOI2BB2X1 U1442 ( .B0(n864), .B1(point_2[4]), .A0N(n866), .A1N(n1057), .Y(
        n198) );
  AOI221XL U1443 ( .A0(n867), .A1(point_3[4]), .B0(n868), .B1(point_4[4]), 
        .C0(n200), .Y(n199) );
  OAI22XL U1444 ( .A0(n1077), .A1(n869), .B0(n1002), .B1(n870), .Y(n200) );
  OAI211X1 U1445 ( .A0(n901), .A1(n1107), .B0(n258), .C0(n259), .Y(
        point_cal_vec1[14]) );
  AOI2BB2X1 U1446 ( .B0(n864), .B1(point_2[14]), .A0N(n866), .A1N(n1047), .Y(
        n258) );
  AOI221XL U1447 ( .A0(n867), .A1(point_3[14]), .B0(n868), .B1(point_4[14]), 
        .C0(n260), .Y(n259) );
  OAI22XL U1448 ( .A0(n1067), .A1(n869), .B0(n992), .B1(n870), .Y(n260) );
  OAI2BB2XL U1449 ( .B0(n891), .B1(n922), .A0N(n891), .A1N(vector_B[17]), .Y(
        n658) );
  OAI2BB2XL U1450 ( .B0(n299), .B1(n933), .A0N(n892), .A1N(vector_B[6]), .Y(
        n623) );
  OAI211X1 U1451 ( .A0(n902), .A1(n1116), .B0(n192), .C0(n193), .Y(
        point_cal_vec1[5]) );
  AOI2BB2X1 U1452 ( .B0(n864), .B1(point_2[5]), .A0N(n172), .A1N(n1056), .Y(
        n192) );
  AOI221XL U1453 ( .A0(n867), .A1(point_3[5]), .B0(n868), .B1(point_4[5]), 
        .C0(n194), .Y(n193) );
  OAI22XL U1454 ( .A0(n1076), .A1(n869), .B0(n1001), .B1(n870), .Y(n194) );
  OAI211X1 U1455 ( .A0(n901), .A1(n1106), .B0(n252), .C0(n253), .Y(
        point_cal_vec1[15]) );
  AOI2BB2X1 U1456 ( .B0(n864), .B1(point_2[15]), .A0N(n172), .A1N(n1046), .Y(
        n252) );
  AOI221XL U1457 ( .A0(n867), .A1(point_3[15]), .B0(n868), .B1(point_4[15]), 
        .C0(n254), .Y(n253) );
  OAI22XL U1458 ( .A0(n1066), .A1(n869), .B0(n991), .B1(n870), .Y(n254) );
  OAI2BB2XL U1459 ( .B0(n891), .B1(n923), .A0N(n892), .A1N(vector_B[16]), .Y(
        n657) );
  OAI2BB2XL U1460 ( .B0(n299), .B1(n934), .A0N(n892), .A1N(vector_B[5]), .Y(
        n625) );
  OAI211X1 U1461 ( .A0(n902), .A1(n1115), .B0(n186), .C0(n187), .Y(
        point_cal_vec1[6]) );
  AOI2BB2X1 U1462 ( .B0(n864), .B1(point_2[6]), .A0N(n866), .A1N(n1055), .Y(
        n186) );
  AOI221XL U1463 ( .A0(n867), .A1(point_3[6]), .B0(n868), .B1(point_4[6]), 
        .C0(n188), .Y(n187) );
  OAI22XL U1464 ( .A0(n1075), .A1(n869), .B0(n1000), .B1(n870), .Y(n188) );
  OAI211X1 U1465 ( .A0(n901), .A1(n1105), .B0(n246), .C0(n247), .Y(
        point_cal_vec1[16]) );
  AOI2BB2X1 U1466 ( .B0(n864), .B1(point_2[16]), .A0N(n866), .A1N(n1045), .Y(
        n246) );
  AOI221XL U1467 ( .A0(n867), .A1(point_3[16]), .B0(n868), .B1(point_4[16]), 
        .C0(n248), .Y(n247) );
  OAI22XL U1468 ( .A0(n1065), .A1(n869), .B0(n990), .B1(n870), .Y(n248) );
  OAI2BB2XL U1469 ( .B0(n891), .B1(n924), .A0N(n892), .A1N(vector_B[15]), .Y(
        n656) );
  OAI2BB2XL U1470 ( .B0(n299), .B1(n935), .A0N(n892), .A1N(vector_B[4]), .Y(
        n627) );
  OAI211X1 U1471 ( .A0(n902), .A1(n1114), .B0(n180), .C0(n181), .Y(
        point_cal_vec1[7]) );
  AOI2BB2X1 U1472 ( .B0(n864), .B1(point_2[7]), .A0N(n172), .A1N(n1054), .Y(
        n180) );
  AOI221XL U1473 ( .A0(n867), .A1(point_3[7]), .B0(n868), .B1(point_4[7]), 
        .C0(n182), .Y(n181) );
  OAI22XL U1474 ( .A0(n1074), .A1(n869), .B0(n999), .B1(n870), .Y(n182) );
  OAI211X1 U1475 ( .A0(n901), .A1(n1104), .B0(n240), .C0(n241), .Y(
        point_cal_vec1[17]) );
  AOI2BB2X1 U1476 ( .B0(n864), .B1(point_2[17]), .A0N(n172), .A1N(n1044), .Y(
        n240) );
  AOI221XL U1477 ( .A0(n867), .A1(point_3[17]), .B0(n868), .B1(point_4[17]), 
        .C0(n242), .Y(n241) );
  OAI22XL U1478 ( .A0(n1064), .A1(n869), .B0(n989), .B1(n870), .Y(n242) );
  OAI2BB2XL U1479 ( .B0(n891), .B1(n936), .A0N(n892), .A1N(vector_B[3]), .Y(
        n629) );
  OAI2BB2XL U1480 ( .B0(n891), .B1(n925), .A0N(n892), .A1N(vector_B[14]), .Y(
        n655) );
  OAI211X1 U1481 ( .A0(n902), .A1(n1113), .B0(n1740), .C0(n1750), .Y(
        point_cal_vec1[8]) );
  AOI2BB2X1 U1482 ( .B0(n864), .B1(point_2[8]), .A0N(n866), .A1N(n1053), .Y(
        n1740) );
  AOI221XL U1483 ( .A0(n867), .A1(point_3[8]), .B0(n868), .B1(point_4[8]), 
        .C0(n176), .Y(n1750) );
  OAI22XL U1484 ( .A0(n1073), .A1(n869), .B0(n998), .B1(n870), .Y(n176) );
  OAI211X1 U1485 ( .A0(n901), .A1(n1103), .B0(n234), .C0(n235), .Y(
        point_cal_vec1[18]) );
  AOI2BB2X1 U1486 ( .B0(n864), .B1(point_2[18]), .A0N(n866), .A1N(n1043), .Y(
        n234) );
  AOI221XL U1487 ( .A0(n867), .A1(point_3[18]), .B0(n868), .B1(point_4[18]), 
        .C0(n236), .Y(n235) );
  OAI22XL U1488 ( .A0(n1063), .A1(n869), .B0(n988), .B1(n870), .Y(n236) );
  OAI2BB2XL U1489 ( .B0(n891), .B1(n937), .A0N(n892), .A1N(vector_B[2]), .Y(
        n631) );
  OAI2BB2XL U1490 ( .B0(n891), .B1(n926), .A0N(n892), .A1N(vector_B[13]), .Y(
        n654) );
  OAI211X1 U1491 ( .A0(n902), .A1(n1112), .B0(n162), .C0(n163), .Y(
        point_cal_vec1[9]) );
  AOI2BB2X1 U1492 ( .B0(n864), .B1(point_2[9]), .A0N(n866), .A1N(n1052), .Y(
        n162) );
  AOI221XL U1493 ( .A0(n867), .A1(point_3[9]), .B0(n868), .B1(point_4[9]), 
        .C0(n166), .Y(n163) );
  OAI22XL U1494 ( .A0(n1072), .A1(n869), .B0(n997), .B1(n870), .Y(n166) );
  OAI211X1 U1495 ( .A0(n901), .A1(n1102), .B0(n228), .C0(n229), .Y(
        point_cal_vec1[19]) );
  AOI2BB2X1 U1496 ( .B0(n864), .B1(point_2[19]), .A0N(n866), .A1N(n1042), .Y(
        n228) );
  AOI221XL U1497 ( .A0(n867), .A1(point_3[19]), .B0(n868), .B1(point_4[19]), 
        .C0(n230), .Y(n229) );
  OAI22XL U1498 ( .A0(n1062), .A1(n869), .B0(n987), .B1(n870), .Y(n230) );
  OAI2BB2XL U1499 ( .B0(n891), .B1(n927), .A0N(n892), .A1N(vector_B[12]), .Y(
        n653) );
  OAI2BB2XL U1500 ( .B0(n299), .B1(n938), .A0N(n892), .A1N(vector_B[1]), .Y(
        n633) );
  AOI2BB2X1 U1501 ( .B0(n874), .B1(Y[7]), .A0N(n878), .A1N(n1054), .Y(n38) );
  AOI2BB2X1 U1502 ( .B0(n874), .B1(X[7]), .A0N(n878), .A1N(n1044), .Y(n78) );
  OAI2BB2XL U1503 ( .B0(n891), .B1(n939), .A0N(n892), .A1N(vector_B[0]), .Y(
        n635) );
  OAI2BB2XL U1504 ( .B0(n891), .B1(n928), .A0N(n892), .A1N(vector_B[11]), .Y(
        n652) );
  AOI2BB2X1 U1505 ( .B0(n874), .B1(Y[8]), .A0N(n877), .A1N(n1053), .Y(n34) );
  AOI2BB2X1 U1506 ( .B0(n874), .B1(X[8]), .A0N(n878), .A1N(n1043), .Y(n74) );
  AOI2BB2X1 U1507 ( .B0(n874), .B1(Y[9]), .A0N(n876), .A1N(n1052), .Y(n25) );
  AOI2BB2X1 U1508 ( .B0(n874), .B1(X[9]), .A0N(n877), .A1N(n1042), .Y(n70) );
  OAI2BB2XL U1509 ( .B0(n1006), .B1(n894), .A0N(n894), .A1N(point_3[0]), .Y(
        n801) );
  OAI2BB2XL U1510 ( .B0(n996), .B1(n894), .A0N(n893), .A1N(point_3[10]), .Y(
        n791) );
  OAI2BB2XL U1511 ( .B0(n1006), .B1(n903), .A0N(n904), .A1N(point_4[0]), .Y(
        n712) );
  OAI2BB2XL U1512 ( .B0(n996), .B1(n904), .A0N(n904), .A1N(point_4[10]), .Y(
        n702) );
  OAI2BB2XL U1513 ( .B0(n1005), .B1(n894), .A0N(n894), .A1N(point_3[1]), .Y(
        n800) );
  OAI2BB2XL U1514 ( .B0(n1004), .B1(n894), .A0N(n894), .A1N(point_3[2]), .Y(
        n799) );
  OAI2BB2XL U1515 ( .B0(n1003), .B1(n893), .A0N(n894), .A1N(point_3[3]), .Y(
        n798) );
  OAI2BB2XL U1516 ( .B0(n1002), .B1(n893), .A0N(n894), .A1N(point_3[4]), .Y(
        n797) );
  OAI2BB2XL U1517 ( .B0(n1001), .B1(n138), .A0N(n894), .A1N(point_3[5]), .Y(
        n796) );
  OAI2BB2XL U1518 ( .B0(n1000), .B1(n138), .A0N(n894), .A1N(point_3[6]), .Y(
        n795) );
  OAI2BB2XL U1519 ( .B0(n999), .B1(n894), .A0N(n894), .A1N(point_3[7]), .Y(
        n794) );
  OAI2BB2XL U1520 ( .B0(n998), .B1(n893), .A0N(n894), .A1N(point_3[8]), .Y(
        n793) );
  OAI2BB2XL U1521 ( .B0(n997), .B1(n894), .A0N(n893), .A1N(point_3[9]), .Y(
        n792) );
  OAI2BB2XL U1522 ( .B0(n995), .B1(n138), .A0N(n893), .A1N(point_3[11]), .Y(
        n790) );
  OAI2BB2XL U1523 ( .B0(n994), .B1(n138), .A0N(n894), .A1N(point_3[12]), .Y(
        n789) );
  OAI2BB2XL U1524 ( .B0(n993), .B1(n893), .A0N(n893), .A1N(point_3[13]), .Y(
        n788) );
  OAI2BB2XL U1525 ( .B0(n992), .B1(n893), .A0N(n894), .A1N(point_3[14]), .Y(
        n787) );
  OAI2BB2XL U1526 ( .B0(n991), .B1(n893), .A0N(n894), .A1N(point_3[15]), .Y(
        n786) );
  OAI2BB2XL U1527 ( .B0(n990), .B1(n893), .A0N(n894), .A1N(point_3[16]), .Y(
        n785) );
  OAI2BB2XL U1528 ( .B0(n989), .B1(n893), .A0N(n894), .A1N(point_3[17]), .Y(
        n784) );
  OAI2BB2XL U1529 ( .B0(n988), .B1(n893), .A0N(n894), .A1N(point_3[18]), .Y(
        n783) );
  OAI2BB2XL U1530 ( .B0(n987), .B1(n893), .A0N(n894), .A1N(point_3[19]), .Y(
        n782) );
  OAI2BB2XL U1531 ( .B0(n1005), .B1(n903), .A0N(n904), .A1N(point_4[1]), .Y(
        n711) );
  OAI2BB2XL U1532 ( .B0(n1004), .B1(n903), .A0N(n904), .A1N(point_4[2]), .Y(
        n710) );
  OAI2BB2XL U1533 ( .B0(n1003), .B1(n903), .A0N(n904), .A1N(point_4[3]), .Y(
        n709) );
  OAI2BB2XL U1534 ( .B0(n1002), .B1(n903), .A0N(n904), .A1N(point_4[4]), .Y(
        n708) );
  OAI2BB2XL U1535 ( .B0(n1001), .B1(n903), .A0N(n904), .A1N(point_4[5]), .Y(
        n707) );
  OAI2BB2XL U1536 ( .B0(n1000), .B1(n903), .A0N(n904), .A1N(point_4[6]), .Y(
        n706) );
  OAI2BB2XL U1537 ( .B0(n999), .B1(n904), .A0N(n904), .A1N(point_4[7]), .Y(
        n705) );
  OAI2BB2XL U1538 ( .B0(n998), .B1(n904), .A0N(n904), .A1N(point_4[8]), .Y(
        n704) );
  OAI2BB2XL U1539 ( .B0(n997), .B1(n904), .A0N(n904), .A1N(point_4[9]), .Y(
        n703) );
  OAI2BB2XL U1540 ( .B0(n995), .B1(n904), .A0N(n904), .A1N(point_4[11]), .Y(
        n701) );
  OAI2BB2XL U1541 ( .B0(n994), .B1(n904), .A0N(n904), .A1N(point_4[12]), .Y(
        n700) );
  OAI2BB2XL U1542 ( .B0(n993), .B1(n904), .A0N(n904), .A1N(point_4[13]), .Y(
        n699) );
  OAI2BB2XL U1543 ( .B0(n992), .B1(n903), .A0N(n903), .A1N(point_4[14]), .Y(
        n698) );
  OAI2BB2XL U1544 ( .B0(n991), .B1(n903), .A0N(n903), .A1N(point_4[15]), .Y(
        n697) );
  OAI2BB2XL U1545 ( .B0(n990), .B1(n903), .A0N(n903), .A1N(point_4[16]), .Y(
        n696) );
  OAI2BB2XL U1546 ( .B0(n989), .B1(n903), .A0N(n118), .A1N(point_4[17]), .Y(
        n695) );
  OAI2BB2XL U1547 ( .B0(n988), .B1(n903), .A0N(n118), .A1N(point_4[18]), .Y(
        n694) );
  OAI2BB2XL U1548 ( .B0(n987), .B1(n903), .A0N(n118), .A1N(point_4[19]), .Y(
        n693) );
  AOI211X1 U1549 ( .A0(cclockwise[3]), .A1(n497), .B0(n1033), .C0(n499), .Y(
        n490) );
  XOR2X1 U1550 ( .A(cclockwise[5]), .B(cclockwise[4]), .Y(n497) );
  AOI2BB2X1 U1551 ( .B0(vector_B[1]), .B1(n855), .A0N(n858), .A1N(n1148), .Y(
        n449) );
  AOI2BB2X1 U1552 ( .B0(vector_B[3]), .B1(n855), .A0N(n858), .A1N(n1150), .Y(
        n443) );
  NAND4X1 U1553 ( .A(n349), .B(cclockwise[3]), .C(cclockwise[4]), .D(n1134), 
        .Y(n515) );
  AOI222XL U1554 ( .A0(n500), .A1(n341), .B0(n502), .B1(n337), .C0(n493), .C1(
        n347), .Y(n516) );
  CLKBUFX3 U1555 ( .A(n845), .Y(n846) );
  NOR2BX1 U1556 ( .AN(n580), .B(list_done), .Y(n845) );
  NOR3X1 U1557 ( .A(input_list_cnt_2_), .B(n606), .C(n1041), .Y(n576) );
  AOI2BB2X1 U1558 ( .B0(vector_B[12]), .B1(n856), .A0N(n858), .A1N(n1123), .Y(
        n4820) );
  AOI2BB2X1 U1559 ( .B0(vector_B[14]), .B1(n856), .A0N(n858), .A1N(n1125), .Y(
        n476) );
  NOR2X2 U1560 ( .A(n1040), .B(n607), .Y(n143) );
  AOI222XL U1561 ( .A0(n848), .A1(vector_B[12]), .B0(n849), .B1(vector_C[12]), 
        .C0(n851), .C1(vector_D[12]), .Y(n571) );
  INVX3 U1562 ( .A(n850), .Y(n851) );
  CLKINVX1 U1563 ( .A(n532), .Y(n850) );
  AOI31X1 U1564 ( .A0(n508), .A1(n513), .A2(n413), .B0(list_done), .Y(n532) );
  NOR4X1 U1565 ( .A(cclockwise[4]), .B(n1143), .C(n1134), .D(n1033), .Y(n525)
         );
  NAND3X1 U1566 ( .A(n143), .B(n1041), .C(n605), .Y(n507) );
  AOI2BB2X1 U1567 ( .B0(vector_B[2]), .B1(n856), .A0N(n858), .A1N(n1149), .Y(
        n446) );
  AOI2BB2X1 U1568 ( .B0(vector_B[0]), .B1(n855), .A0N(n858), .A1N(n1147), .Y(
        n455) );
  BUFX4 U1569 ( .A(n531), .Y(n849) );
  AOI2BB1X1 U1570 ( .A0N(n1029), .A1N(n1031), .B0(list_done), .Y(n531) );
  NAND2X1 U1571 ( .A(n576), .B(n607), .Y(n518) );
  AOI2BB2X1 U1572 ( .B0(vector_B[13]), .B1(n855), .A0N(n858), .A1N(n1124), .Y(
        n479) );
  AOI2BB2X1 U1573 ( .B0(vector_B[11]), .B1(n856), .A0N(n858), .A1N(n1122), .Y(
        n488) );
  NAND3X1 U1574 ( .A(n605), .B(n143), .C(n604), .Y(n519) );
  AOI222XL U1575 ( .A0(n848), .A1(vector_B[14]), .B0(n849), .B1(vector_C[14]), 
        .C0(n851), .C1(vector_D[14]), .Y(n567) );
  AOI2BB2X1 U1576 ( .B0(vector_B[4]), .B1(n856), .A0N(n858), .A1N(n1151), .Y(
        n440) );
  NAND3X1 U1577 ( .A(n605), .B(n144), .C(n604), .Y(n290) );
  NAND2X1 U1578 ( .A(n607), .B(n1040), .Y(n146) );
  AOI2BB2X1 U1579 ( .B0(vector_B[15]), .B1(n855), .A0N(n858), .A1N(n1126), .Y(
        n473) );
  AOI222XL U1580 ( .A0(n847), .A1(vector_B[13]), .B0(n849), .B1(vector_C[13]), 
        .C0(n851), .C1(vector_D[13]), .Y(n569) );
  NOR2BX1 U1581 ( .AN(n514), .B(list_done), .Y(n527) );
  AOI222XL U1582 ( .A0(n848), .A1(vector_B[11]), .B0(n849), .B1(vector_C[11]), 
        .C0(n851), .C1(vector_D[11]), .Y(n575) );
  AOI2BB2X1 U1583 ( .B0(vector_B[5]), .B1(n855), .A0N(n858), .A1N(n1152), .Y(
        n437) );
  AOI222XL U1584 ( .A0(n848), .A1(vector_B[16]), .B0(n849), .B1(vector_C[16]), 
        .C0(n851), .C1(vector_D[16]), .Y(n563) );
  AOI2BB2X1 U1585 ( .B0(vector_B[16]), .B1(n856), .A0N(n858), .A1N(n1127), .Y(
        n470) );
  NOR3X1 U1586 ( .A(n1145), .B(cclockwise[10]), .C(n1136), .Y(n511) );
  CLKINVX1 U1587 ( .A(cclockwise[11]), .Y(n1136) );
  NOR3X1 U1588 ( .A(n1146), .B(cclockwise[13]), .C(n1137), .Y(n506) );
  CLKINVX1 U1589 ( .A(cclockwise[14]), .Y(n1137) );
  CLKINVX1 U1590 ( .A(cclockwise[8]), .Y(n1135) );
  NOR3X1 U1591 ( .A(n1144), .B(cclockwise[7]), .C(n1135), .Y(n496) );
  AOI222XL U1592 ( .A0(n847), .A1(vector_B[15]), .B0(n849), .B1(vector_C[15]), 
        .C0(n532), .C1(vector_D[15]), .Y(n565) );
  CLKINVX1 U1593 ( .A(cclockwise[10]), .Y(n1140) );
  NAND3X1 U1594 ( .A(n1145), .B(n1140), .C(cclockwise[11]), .Y(n510) );
  CLKINVX1 U1595 ( .A(cclockwise[13]), .Y(n1141) );
  NAND3X1 U1596 ( .A(n1146), .B(n1141), .C(cclockwise[14]), .Y(n505) );
  NOR3X1 U1597 ( .A(cclockwise[6]), .B(cclockwise[7]), .C(n1135), .Y(n494) );
  NOR3X1 U1598 ( .A(n1139), .B(cclockwise[8]), .C(n1144), .Y(n493) );
  CLKINVX1 U1599 ( .A(cclockwise[7]), .Y(n1139) );
  INVX3 U1600 ( .A(cclockwise[5]), .Y(n1134) );
  NOR3X1 U1601 ( .A(cclockwise[3]), .B(cclockwise[4]), .C(n1134), .Y(n499) );
  NOR3X1 U1602 ( .A(n1140), .B(cclockwise[11]), .C(n1145), .Y(n500) );
  NOR3X1 U1603 ( .A(n1141), .B(cclockwise[14]), .C(n1146), .Y(n502) );
  AOI222XL U1604 ( .A0(n848), .A1(vector_B[20]), .B0(n849), .B1(vector_C[20]), 
        .C0(n851), .C1(vector_D[20]), .Y(n555) );
  AOI222XL U1605 ( .A0(n847), .A1(vector_B[21]), .B0(n849), .B1(vector_C[21]), 
        .C0(n851), .C1(vector_D[21]), .Y(n573) );
  AOI222XL U1606 ( .A0(n848), .A1(vector_B[10]), .B0(n849), .B1(vector_C[10]), 
        .C0(n851), .C1(vector_D[10]), .Y(n551) );
  AOI2BB2X1 U1607 ( .B0(vector_B[6]), .B1(n856), .A0N(n858), .A1N(n1153), .Y(
        n434) );
  AOI2BB2X1 U1608 ( .B0(vector_B[17]), .B1(n855), .A0N(n858), .A1N(n1128), .Y(
        n467) );
  AOI222XL U1609 ( .A0(n848), .A1(vector_B[18]), .B0(n849), .B1(vector_C[18]), 
        .C0(n851), .C1(vector_D[18]), .Y(n559) );
  AOI222XL U1610 ( .A0(n847), .A1(vector_B[17]), .B0(n849), .B1(vector_C[17]), 
        .C0(n851), .C1(vector_D[17]), .Y(n561) );
  AOI2BB2X1 U1611 ( .B0(vector_B[7]), .B1(n855), .A0N(n858), .A1N(n1154), .Y(
        n431) );
  AOI2BB2X1 U1612 ( .B0(vector_B[18]), .B1(n856), .A0N(n858), .A1N(n1129), .Y(
        n464) );
  CLKINVX1 U1613 ( .A(vector_A[12]), .Y(n1123) );
  CLKINVX1 U1614 ( .A(vector_A[1]), .Y(n1148) );
  AOI222XL U1615 ( .A0(n847), .A1(vector_B[19]), .B0(n849), .B1(vector_C[19]), 
        .C0(n851), .C1(vector_D[19]), .Y(n557) );
  CLKINVX1 U1616 ( .A(vector_A[14]), .Y(n1125) );
  CLKINVX1 U1617 ( .A(vector_A[3]), .Y(n1150) );
  OAI221XL U1618 ( .A0(n854), .A1(n964), .B0(n834), .B1(n942), .C0(n461), .Y(
        cross_vector_b_x[8]) );
  OAI221XL U1619 ( .A0(n854), .A1(n975), .B0(n834), .B1(n953), .C0(n428), .Y(
        cross_vector_b_y[8]) );
  AOI2BB2X1 U1620 ( .B0(vector_B[19]), .B1(n855), .A0N(n858), .A1N(n1130), .Y(
        n461) );
  CLKINVX1 U1621 ( .A(vector_A[13]), .Y(n1124) );
  CLKINVX1 U1622 ( .A(vector_A[2]), .Y(n1149) );
  AOI2BB2X1 U1623 ( .B0(vector_B[8]), .B1(n856), .A0N(n858), .A1N(n1155), .Y(
        n428) );
  CLKINVX1 U1624 ( .A(vector_A[0]), .Y(n1147) );
  CLKINVX1 U1625 ( .A(vector_A[11]), .Y(n1122) );
  CLKINVX1 U1626 ( .A(vector_A[4]), .Y(n1151) );
  CLKINVX1 U1627 ( .A(vector_A[15]), .Y(n1126) );
  CLKINVX1 U1628 ( .A(vector_A[16]), .Y(n1127) );
  OAI221XL U1629 ( .A0(n854), .A1(n962), .B0(n834), .B1(n940), .C0(n485), .Y(
        cross_vector_b_x[10]) );
  OAI221XL U1630 ( .A0(n854), .A1(n973), .B0(n834), .B1(n951), .C0(n452), .Y(
        cross_vector_b_y[10]) );
  AOI2BB2X1 U1631 ( .B0(vector_B[21]), .B1(n855), .A0N(n858), .A1N(n1132), .Y(
        n485) );
  CLKINVX1 U1632 ( .A(vector_A[5]), .Y(n1152) );
  OAI221XL U1633 ( .A0(n854), .A1(n963), .B0(n834), .B1(n941), .C0(n458), .Y(
        cross_vector_b_x[9]) );
  OAI221XL U1634 ( .A0(n854), .A1(n974), .B0(n834), .B1(n952), .C0(n423), .Y(
        cross_vector_b_y[9]) );
  AOI2BB2X1 U1635 ( .B0(vector_B[20]), .B1(n856), .A0N(n858), .A1N(n1131), .Y(
        n458) );
  AOI2BB2X1 U1636 ( .B0(vector_B[9]), .B1(n855), .A0N(n858), .A1N(n1156), .Y(
        n423) );
  AOI2BB2X1 U1637 ( .B0(vector_B[10]), .B1(n856), .A0N(n858), .A1N(n1157), .Y(
        n452) );
  CLKINVX1 U1638 ( .A(vector_A[6]), .Y(n1153) );
  CLKINVX1 U1639 ( .A(vector_A[17]), .Y(n1128) );
  AOI222XL U1640 ( .A0(point_5[1]), .A1(n880), .B0(point_3[1]), .B1(n882), 
        .C0(point_4[1]), .C1(n886), .Y(n63) );
  AOI222XL U1641 ( .A0(point_5[11]), .A1(n880), .B0(point_3[11]), .B1(n881), 
        .C0(point_4[11]), .C1(n885), .Y(n103) );
  CLKINVX1 U1642 ( .A(vector_A[18]), .Y(n1129) );
  CLKINVX1 U1643 ( .A(vector_A[7]), .Y(n1154) );
  CLKINVX1 U1644 ( .A(vector_A[20]), .Y(n1131) );
  CLKINVX1 U1645 ( .A(vector_A[21]), .Y(n1132) );
  CLKINVX1 U1646 ( .A(vector_A[9]), .Y(n1156) );
  CLKINVX1 U1647 ( .A(vector_A[10]), .Y(n1157) );
  CLKINVX1 U1648 ( .A(vector_A[8]), .Y(n1155) );
  CLKINVX1 U1649 ( .A(vector_A[19]), .Y(n1130) );
  NAND2X1 U1650 ( .A(n843), .B(n917), .Y(n905) );
  NAND2X1 U1651 ( .A(cclockwise[9]), .B(n910), .Y(n917) );
  NAND2BX1 U1652 ( .AN(n1040), .B(n607), .Y(n843) );
  OAI222XL U1653 ( .A0(n1139), .A1(n338), .B0(n608), .B1(n342), .C0(n1138), 
        .C1(n344), .Y(n647) );
  OAI221XL U1654 ( .A0(n1138), .A1(n348), .B0(n608), .B1(n346), .C0(n859), .Y(
        n650) );
  NAND2X1 U1655 ( .A(n859), .B(n292), .Y(n613) );
  OAI31XL U1656 ( .A0(n293), .A1(n1023), .A2(n295), .B0(is_inside), .Y(n292)
         );
  XOR2X1 U1657 ( .A(n985), .B(cross_product_r), .Y(n295) );
  AOI221XL U1658 ( .A0(cclockwise[9]), .A1(n143), .B0(cclockwise[12]), .B1(
        n144), .C0(n145), .Y(n139) );
  OAI22XL U1659 ( .A0(n146), .A1(n1144), .B0(n148), .B1(n1143), .Y(n145) );
  AOI221XL U1660 ( .A0(cclockwise[11]), .A1(n143), .B0(cclockwise[14]), .B1(
        n144), .C0(n152), .Y(n150) );
  OAI22XL U1661 ( .A0(n146), .A1(n1135), .B0(n148), .B1(n1134), .Y(n152) );
  AOI221XL U1662 ( .A0(cclockwise[10]), .A1(n143), .B0(cclockwise[13]), .B1(
        n144), .C0(n156), .Y(n155) );
  OAI22XL U1663 ( .A0(n146), .A1(n1139), .B0(n148), .B1(n1138), .Y(n156) );
  NOR3X1 U1664 ( .A(n611), .B(n609), .C(n1020), .Y(n411) );
  NAND4X1 U1665 ( .A(N174), .B(N173), .C(n159), .D(n1028), .Y(n131) );
  NOR2X1 U1666 ( .A(N343), .B(N175), .Y(n159) );
  NOR3X1 U1667 ( .A(n1020), .B(n612), .C(n1019), .Y(n417) );
  NAND2X1 U1668 ( .A(n417), .B(n611), .Y(n291) );
  OAI2BB2XL U1669 ( .B0(n288), .B1(n985), .A0N(n288), .A1N(cross_product_r), 
        .Y(n602) );
  NAND2X1 U1670 ( .A(n1012), .B(n290), .Y(n288) );
  CLKINVX1 U1671 ( .A(n393), .Y(n1012) );
  CLKINVX1 U1672 ( .A(cclockwise[4]), .Y(n1138) );
  CLKINVX1 U1673 ( .A(cclockwise[0]), .Y(n1142) );
  CLKINVX1 U1674 ( .A(cclockwise[2]), .Y(n1133) );
  CLKINVX1 U1675 ( .A(point_5[0]), .Y(n1081) );
  CLKINVX1 U1676 ( .A(point_5[10]), .Y(n1071) );
  CLKINVX1 U1677 ( .A(point_5[1]), .Y(n1080) );
  CLKINVX1 U1678 ( .A(point_5[11]), .Y(n1070) );
  CLKINVX1 U1679 ( .A(point_5[2]), .Y(n1079) );
  CLKINVX1 U1680 ( .A(point_5[12]), .Y(n1069) );
  CLKINVX1 U1681 ( .A(point_2[0]), .Y(n1101) );
  CLKINVX1 U1682 ( .A(point_2[10]), .Y(n1091) );
  CLKINVX1 U1683 ( .A(point_2[1]), .Y(n1100) );
  CLKINVX1 U1684 ( .A(point_2[11]), .Y(n1090) );
  CLKINVX1 U1685 ( .A(point_5[3]), .Y(n1078) );
  CLKINVX1 U1686 ( .A(point_5[13]), .Y(n1068) );
  CLKINVX1 U1687 ( .A(point_2[2]), .Y(n1099) );
  CLKINVX1 U1688 ( .A(point_2[12]), .Y(n1089) );
  CLKINVX1 U1689 ( .A(point_5[4]), .Y(n1077) );
  CLKINVX1 U1690 ( .A(point_5[14]), .Y(n1067) );
  CLKINVX1 U1691 ( .A(point_2[3]), .Y(n1098) );
  CLKINVX1 U1692 ( .A(point_2[13]), .Y(n1088) );
  CLKINVX1 U1693 ( .A(point_5[5]), .Y(n1076) );
  CLKINVX1 U1694 ( .A(point_5[15]), .Y(n1066) );
  NAND4X1 U1695 ( .A(n609), .B(n611), .C(n1008), .D(n1020), .Y(n350) );
  CLKINVX1 U1696 ( .A(point_2[4]), .Y(n1097) );
  CLKINVX1 U1697 ( .A(point_2[14]), .Y(n1087) );
  OAI31XL U1698 ( .A0(n296), .A1(n609), .A2(n610), .B0(n297), .Y(n614) );
  OAI2BB1XL U1699 ( .A0N(n610), .A1N(n298), .B0(valid), .Y(n297) );
  CLKINVX1 U1700 ( .A(point_5[6]), .Y(n1075) );
  CLKINVX1 U1701 ( .A(point_5[16]), .Y(n1065) );
  NAND4BX1 U1702 ( .AN(n402), .B(n403), .C(n350), .D(n404), .Y(n779) );
  OAI21XL U1703 ( .A0(n612), .A1(n1011), .B0(n1018), .Y(n403) );
  NOR2X1 U1704 ( .A(n842), .B(n890), .Y(n404) );
  CLKINVX1 U1705 ( .A(point_2[5]), .Y(n1096) );
  CLKINVX1 U1706 ( .A(point_2[15]), .Y(n1086) );
  OAI22XL U1707 ( .A0(n607), .A1(n383), .B0(n384), .B1(n1028), .Y(n776) );
  OAI22XL U1708 ( .A0(n604), .A1(n383), .B0(n384), .B1(n1034), .Y(n773) );
  CLKINVX1 U1709 ( .A(N175), .Y(n1034) );
  OAI22XL U1710 ( .A0(n605), .A1(n383), .B0(n384), .B1(n1035), .Y(n774) );
  CLKINVX1 U1711 ( .A(N174), .Y(n1035) );
  OAI22XL U1712 ( .A0(n606), .A1(n383), .B0(n384), .B1(n1036), .Y(n775) );
  CLKINVX1 U1713 ( .A(N173), .Y(n1036) );
  CLKINVX1 U1714 ( .A(point_5[7]), .Y(n1074) );
  CLKINVX1 U1715 ( .A(point_5[17]), .Y(n1064) );
  OAI221XL U1716 ( .A0(n1011), .A1(n414), .B0(n612), .B1(n407), .C0(n392), .Y(
        n802) );
  AOI211X1 U1717 ( .A0(n1030), .A1(n1010), .B0(n416), .C0(n390), .Y(n414) );
  OAI22XL U1718 ( .A0(n1020), .A1(n1008), .B0(n984), .B1(n401), .Y(n416) );
  CLKINVX1 U1719 ( .A(point_2[6]), .Y(n1095) );
  CLKINVX1 U1720 ( .A(point_2[16]), .Y(n1085) );
  CLKINVX1 U1721 ( .A(point_5[8]), .Y(n1073) );
  CLKINVX1 U1722 ( .A(point_5[18]), .Y(n1063) );
  NAND4X1 U1723 ( .A(n350), .B(n393), .C(n394), .D(n395), .Y(n778) );
  AO21X1 U1724 ( .A0(list_done), .A1(cross_output_valid), .B0(n401), .Y(n394)
         );
  AOI222XL U1725 ( .A0(n1011), .A1(n1020), .B0(n1032), .B1(n1007), .C0(n1030), 
        .C1(n1010), .Y(n395) );
  CLKINVX1 U1726 ( .A(point_2[7]), .Y(n1094) );
  CLKINVX1 U1727 ( .A(point_2[17]), .Y(n1084) );
  NAND2X1 U1728 ( .A(n611), .B(n612), .Y(n296) );
  NAND2X1 U1729 ( .A(n415), .B(n612), .Y(n389) );
  NOR3X1 U1730 ( .A(n611), .B(n610), .C(n1019), .Y(n415) );
  CLKINVX1 U1731 ( .A(point_5[9]), .Y(n1072) );
  CLKINVX1 U1732 ( .A(point_5[19]), .Y(n1062) );
  NAND2X1 U1733 ( .A(n418), .B(n1019), .Y(n407) );
  XOR2X1 U1734 ( .A(n296), .B(n610), .Y(n418) );
  CLKINVX1 U1735 ( .A(point_2[8]), .Y(n1093) );
  CLKINVX1 U1736 ( .A(point_2[18]), .Y(n1083) );
  CLKINVX1 U1737 ( .A(point_2[9]), .Y(n1092) );
  CLKINVX1 U1738 ( .A(point_2[19]), .Y(n1082) );
  INVX3 U1739 ( .A(reset), .Y(n986) );
  NOR2X1 U1740 ( .A(n607), .B(n1040), .Y(n912) );
  NOR2X1 U1741 ( .A(n607), .B(n606), .Y(n911) );
  NOR2X1 U1742 ( .A(n606), .B(n1028), .Y(n910) );
  AOI221XL U1743 ( .A0(cclockwise[12]), .A1(n912), .B0(cclockwise[6]), .B1(
        n911), .C0(n905), .Y(n907) );
  AND2X1 U1744 ( .A(input_list_cnt_2_), .B(n607), .Y(n914) );
  AOI22X1 U1745 ( .A0(cclockwise[3]), .A1(n914), .B0(cclockwise[0]), .B1(n913), 
        .Y(n906) );
  AOI221XL U1746 ( .A0(cclockwise[13]), .A1(n912), .B0(cclockwise[7]), .B1(
        n911), .C0(n835), .Y(n909) );
  AOI22X1 U1747 ( .A0(cclockwise[4]), .A1(n914), .B0(cclockwise[1]), .B1(n913), 
        .Y(n908) );
  AOI221XL U1748 ( .A0(cclockwise[14]), .A1(n912), .B0(cclockwise[8]), .B1(
        n911), .C0(n836), .Y(n916) );
  AOI22X1 U1749 ( .A0(cclockwise[5]), .A1(n914), .B0(cclockwise[2]), .B1(n913), 
        .Y(n915) );
endmodule


module geofence_DW01_sub_7 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:1] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[1]), .Y(n10) );
  NAND2X1 U2 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U5 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:1] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  CLKINVX1 U1 ( .A(B[1]), .Y(n10) );
  NAND2X1 U2 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U4 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U5 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U13 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:1] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n2) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:1] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n2) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:1] carry;

  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[6]), .Y(n5) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [10:1] carry;

  ADDFXL U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFXL U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  CLKINVX1 U1 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U3 ( .A(B[1]), .Y(n10) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U7 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U9 ( .A(B[9]), .Y(n2) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U12 ( .A(B[8]), .Y(n3) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [10:1] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n5), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n6), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n13), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n7), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n12), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_3 ( .A(A[3]), .B(n11), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFHX4 U2_4 ( .A(A[4]), .B(n10), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  INVX1 U1 ( .A(A[0]), .Y(n4) );
  CLKINVX1 U2 ( .A(B[6]), .Y(n8) );
  NAND2X1 U3 ( .A(A[6]), .B(carry[6]), .Y(n1) );
  NAND2X1 U4 ( .A(n8), .B(carry[6]), .Y(n2) );
  NAND2X1 U5 ( .A(n8), .B(A[6]), .Y(n3) );
  NAND3X1 U6 ( .A(n1), .B(n2), .C(n3), .Y(carry[7]) );
  XOR3XL U7 ( .A(carry[6]), .B(n8), .C(A[6]), .Y(DIFF[6]) );
  XNOR2XL U8 ( .A(n14), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U9 ( .A(B[3]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[1]), .Y(n13) );
  NAND2X1 U11 ( .A(B[0]), .B(n4), .Y(carry[1]) );
  CLKINVX1 U12 ( .A(B[2]), .Y(n12) );
  CLKINVX1 U13 ( .A(B[5]), .Y(n9) );
  CLKINVX1 U14 ( .A(B[4]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[7]), .Y(n7) );
  CLKINVX1 U16 ( .A(B[8]), .Y(n6) );
  CLKINVX1 U17 ( .A(B[9]), .Y(n5) );
  CLKINVX1 U18 ( .A(B[0]), .Y(n14) );
  CLKINVX1 U19 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [10:0] A;
  input [10:0] B;
  output [10:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;
  wire   [10:1] carry;

  ADDFXL U2_9 ( .A(A[9]), .B(n6), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n7), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n12), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n8), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  ADDFHX1 U2_1 ( .A(A[1]), .B(n14), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFHX2 U2_2 ( .A(A[2]), .B(n13), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFHX2 U2_4 ( .A(A[4]), .B(n11), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFHX4 U2_5 ( .A(A[5]), .B(n10), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  CLKINVX1 U1 ( .A(A[0]), .Y(n5) );
  NAND3X1 U2 ( .A(n2), .B(n3), .C(n4), .Y(carry[7]) );
  NAND2X1 U3 ( .A(A[6]), .B(carry[6]), .Y(n2) );
  XOR2XL U4 ( .A(carry[6]), .B(n1), .Y(DIFF[6]) );
  CLKINVX1 U5 ( .A(B[6]), .Y(n9) );
  XOR2X1 U6 ( .A(A[6]), .B(n9), .Y(n1) );
  NAND2X1 U7 ( .A(n9), .B(carry[6]), .Y(n3) );
  NAND2XL U8 ( .A(n9), .B(A[6]), .Y(n4) );
  XNOR2XL U9 ( .A(n15), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U10 ( .A(B[3]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[1]), .Y(n14) );
  NAND2X1 U12 ( .A(B[0]), .B(n5), .Y(carry[1]) );
  CLKINVX1 U13 ( .A(B[2]), .Y(n13) );
  CLKINVX1 U14 ( .A(B[5]), .Y(n10) );
  CLKINVX1 U15 ( .A(B[4]), .Y(n11) );
  CLKINVX1 U16 ( .A(B[7]), .Y(n8) );
  CLKINVX1 U17 ( .A(B[8]), .Y(n7) );
  CLKINVX1 U18 ( .A(B[9]), .Y(n6) );
  CLKINVX1 U19 ( .A(B[0]), .Y(n15) );
  CLKINVX1 U20 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module cross_product_module ( clk, reset, vector_a_x, vector_a_y, vector_b_x, 
        vector_b_y, input_ready, cross_product, output_valid );
  input [10:0] vector_a_x;
  input [10:0] vector_a_y;
  input [10:0] vector_b_x;
  input [10:0] vector_b_y;
  input clk, reset, input_ready;
  output cross_product, output_valid;
  wire   N84, n29, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n30, n83, n840, n85, n86,
         n87;
  wire   [1:0] cs;
  wire   [2:0] ns;
  wire   [10:0] mul_in1;
  wire   [10:0] mul_in2;
  wire   [21:0] mul_res_tmp;
  wire   [21:0] mul_res1;
  wire   [21:0] mul_res2;

  cross_product_module_DW_cmp_0 gt_821 ( .A(mul_res1), .B(mul_res2), .TC(1'b1), 
        .GE_LT(1'b0), .GE_GT_EQ(1'b1), .GE_LT_GT_LE(N84) );
  cross_product_module_DW_mult_tc_0 mult_753_C802 ( .a(mul_in1), .b(mul_in2), 
        .product(mul_res_tmp) );
  DFFQX1 mul_res1_reg_21_ ( .D(n82), .CK(clk), .Q(mul_res1[21]) );
  DFFQX1 mul_res1_reg_15_ ( .D(n76), .CK(clk), .Q(mul_res1[15]) );
  DFFQX1 mul_res2_reg_15_ ( .D(n54), .CK(clk), .Q(mul_res2[15]) );
  DFFQX1 mul_res1_reg_20_ ( .D(n81), .CK(clk), .Q(mul_res1[20]) );
  DFFQX1 mul_res2_reg_20_ ( .D(n59), .CK(clk), .Q(mul_res2[20]) );
  DFFQX1 mul_res1_reg_10_ ( .D(n71), .CK(clk), .Q(mul_res1[10]) );
  DFFQX1 mul_res2_reg_10_ ( .D(n49), .CK(clk), .Q(mul_res2[10]) );
  DFFQX1 mul_res1_reg_6_ ( .D(n67), .CK(clk), .Q(mul_res1[6]) );
  DFFQX1 mul_res2_reg_6_ ( .D(n45), .CK(clk), .Q(mul_res2[6]) );
  DFFQX1 mul_res2_reg_14_ ( .D(n53), .CK(clk), .Q(mul_res2[14]) );
  DFFQX1 mul_res2_reg_19_ ( .D(n58), .CK(clk), .Q(mul_res2[19]) );
  DFFQX1 mul_res1_reg_14_ ( .D(n75), .CK(clk), .Q(mul_res1[14]) );
  DFFQX1 mul_res1_reg_19_ ( .D(n80), .CK(clk), .Q(mul_res1[19]) );
  DFFQX1 mul_res1_reg_0_ ( .D(n61), .CK(clk), .Q(mul_res1[0]) );
  DFFQX1 mul_res1_reg_9_ ( .D(n70), .CK(clk), .Q(mul_res1[9]) );
  DFFQX1 mul_res2_reg_0_ ( .D(n39), .CK(clk), .Q(mul_res2[0]) );
  DFFQX1 mul_res2_reg_9_ ( .D(n48), .CK(clk), .Q(mul_res2[9]) );
  DFFQX1 mul_res1_reg_3_ ( .D(n64), .CK(clk), .Q(mul_res1[3]) );
  DFFQX1 mul_res2_reg_3_ ( .D(n42), .CK(clk), .Q(mul_res2[3]) );
  DFFQX1 mul_res1_reg_1_ ( .D(n62), .CK(clk), .Q(mul_res1[1]) );
  DFFQX1 mul_res1_reg_13_ ( .D(n74), .CK(clk), .Q(mul_res1[13]) );
  DFFQX1 mul_res2_reg_1_ ( .D(n40), .CK(clk), .Q(mul_res2[1]) );
  DFFQX1 mul_res1_reg_18_ ( .D(n79), .CK(clk), .Q(mul_res1[18]) );
  DFFQX1 mul_res2_reg_13_ ( .D(n52), .CK(clk), .Q(mul_res2[13]) );
  DFFQX1 mul_res2_reg_18_ ( .D(n57), .CK(clk), .Q(mul_res2[18]) );
  DFFQX1 mul_res1_reg_2_ ( .D(n63), .CK(clk), .Q(mul_res1[2]) );
  DFFQX1 mul_res2_reg_2_ ( .D(n41), .CK(clk), .Q(mul_res2[2]) );
  DFFQX1 mul_res2_reg_5_ ( .D(n44), .CK(clk), .Q(mul_res2[5]) );
  DFFQX1 mul_res1_reg_5_ ( .D(n66), .CK(clk), .Q(mul_res1[5]) );
  DFFQX1 mul_res1_reg_4_ ( .D(n65), .CK(clk), .Q(mul_res1[4]) );
  DFFQX1 mul_res2_reg_4_ ( .D(n43), .CK(clk), .Q(mul_res2[4]) );
  DFFQX1 mul_res2_reg_8_ ( .D(n47), .CK(clk), .Q(mul_res2[8]) );
  DFFQX1 mul_res1_reg_8_ ( .D(n69), .CK(clk), .Q(mul_res1[8]) );
  DFFQX1 mul_res1_reg_7_ ( .D(n68), .CK(clk), .Q(mul_res1[7]) );
  DFFQX1 mul_res2_reg_12_ ( .D(n51), .CK(clk), .Q(mul_res2[12]) );
  DFFQX1 mul_res2_reg_17_ ( .D(n56), .CK(clk), .Q(mul_res2[17]) );
  DFFQX1 mul_res1_reg_12_ ( .D(n73), .CK(clk), .Q(mul_res1[12]) );
  DFFQX1 mul_res1_reg_17_ ( .D(n78), .CK(clk), .Q(mul_res1[17]) );
  DFFQX1 mul_res2_reg_7_ ( .D(n46), .CK(clk), .Q(mul_res2[7]) );
  DFFQX1 mul_res1_reg_11_ ( .D(n72), .CK(clk), .Q(mul_res1[11]) );
  DFFQX1 mul_res1_reg_16_ ( .D(n77), .CK(clk), .Q(mul_res1[16]) );
  DFFQX1 mul_res2_reg_11_ ( .D(n50), .CK(clk), .Q(mul_res2[11]) );
  DFFQX1 mul_res2_reg_16_ ( .D(n55), .CK(clk), .Q(mul_res2[16]) );
  DFFRX1 cs_reg_1_ ( .D(ns[1]), .CK(clk), .RN(n87), .Q(cs[1]), .QN(n29) );
  DFFRX1 cs_reg_0_ ( .D(ns[0]), .CK(clk), .RN(n87), .Q(cs[0]) );
  DFFQXL mul_res2_reg_21_ ( .D(n60), .CK(clk), .Q(mul_res2[21]) );
  DFFRX1 cs_reg_2_ ( .D(ns[2]), .CK(clk), .RN(n87), .QN(n86) );
  AO22X2 U3 ( .A0(vector_a_y[7]), .A1(n85), .B0(vector_a_x[7]), .B1(n5), .Y(
        mul_in1[7]) );
  AO22X4 U6 ( .A0(vector_a_y[3]), .A1(n85), .B0(vector_a_x[3]), .B1(n5), .Y(
        mul_in1[3]) );
  AO22X1 U7 ( .A0(vector_a_y[1]), .A1(n85), .B0(vector_a_x[1]), .B1(n5), .Y(
        mul_in1[1]) );
  INVX1 U8 ( .A(mul_res_tmp[21]), .Y(n10) );
  AO22X1 U9 ( .A0(vector_a_y[9]), .A1(n85), .B0(vector_a_x[9]), .B1(n5), .Y(
        mul_in1[9]) );
  AND3XL U10 ( .A(cs[1]), .B(n86), .C(cs[0]), .Y(ns[2]) );
  NAND3BXL U11 ( .AN(cs[0]), .B(n86), .C(input_ready), .Y(n32) );
  AND2X1 U12 ( .A(n86), .B(n37), .Y(ns[1]) );
  AND2X4 U13 ( .A(vector_a_x[5]), .B(n5), .Y(n4) );
  AND2X1 U14 ( .A(vector_a_y[5]), .B(n85), .Y(n3) );
  OR2X8 U15 ( .A(n3), .B(n4), .Y(mul_in1[5]) );
  INVX1 U16 ( .A(mul_res_tmp[19]), .Y(n12) );
  INVX1 U17 ( .A(mul_res_tmp[16]), .Y(n15) );
  NAND2X1 U18 ( .A(n36), .B(ns[1]), .Y(n35) );
  NAND2X1 U19 ( .A(ns[1]), .B(n34), .Y(n33) );
  CLKINVX1 U20 ( .A(mul_res_tmp[20]), .Y(n11) );
  CLKINVX1 U21 ( .A(mul_res_tmp[18]), .Y(n13) );
  CLKINVX1 U22 ( .A(mul_res_tmp[17]), .Y(n14) );
  CLKINVX1 U23 ( .A(mul_res_tmp[15]), .Y(n16) );
  CLKINVX1 U24 ( .A(mul_res_tmp[14]), .Y(n17) );
  CLKINVX1 U25 ( .A(mul_res_tmp[13]), .Y(n18) );
  CLKINVX1 U26 ( .A(mul_res_tmp[12]), .Y(n19) );
  CLKINVX1 U27 ( .A(mul_res_tmp[11]), .Y(n20) );
  CLKINVX1 U28 ( .A(mul_res_tmp[10]), .Y(n21) );
  CLKINVX1 U29 ( .A(mul_res_tmp[9]), .Y(n22) );
  CLKINVX1 U30 ( .A(mul_res_tmp[8]), .Y(n23) );
  CLKINVX1 U31 ( .A(mul_res_tmp[7]), .Y(n24) );
  CLKINVX1 U32 ( .A(mul_res_tmp[6]), .Y(n25) );
  CLKINVX1 U33 ( .A(mul_res_tmp[5]), .Y(n26) );
  CLKINVX1 U34 ( .A(mul_res_tmp[4]), .Y(n27) );
  CLKINVX1 U35 ( .A(mul_res_tmp[3]), .Y(n28) );
  CLKINVX1 U36 ( .A(mul_res_tmp[2]), .Y(n30) );
  CLKINVX1 U37 ( .A(mul_res_tmp[1]), .Y(n83) );
  CLKINVX1 U38 ( .A(mul_res_tmp[0]), .Y(n840) );
  INVX3 U39 ( .A(n31), .Y(n85) );
  CLKBUFX3 U40 ( .A(n35), .Y(n6) );
  CLKBUFX3 U41 ( .A(n33), .Y(n8) );
  CLKBUFX3 U42 ( .A(n35), .Y(n7) );
  CLKBUFX3 U43 ( .A(n33), .Y(n9) );
  AO22X1 U44 ( .A0(vector_a_y[10]), .A1(n85), .B0(vector_a_x[10]), .B1(n38), 
        .Y(mul_in1[10]) );
  AO22X1 U45 ( .A0(vector_b_x[1]), .A1(n85), .B0(vector_b_y[1]), .B1(n38), .Y(
        mul_in2[1]) );
  AO22X1 U46 ( .A0(vector_b_x[3]), .A1(n85), .B0(vector_b_y[3]), .B1(n38), .Y(
        mul_in2[3]) );
  AO22X1 U47 ( .A0(vector_b_x[2]), .A1(n85), .B0(vector_b_y[2]), .B1(n5), .Y(
        mul_in2[2]) );
  AO22X1 U48 ( .A0(vector_b_x[0]), .A1(n85), .B0(vector_b_y[0]), .B1(n38), .Y(
        mul_in2[0]) );
  AO22X1 U49 ( .A0(vector_b_x[4]), .A1(n85), .B0(vector_b_y[4]), .B1(n5), .Y(
        mul_in2[4]) );
  AO22X1 U50 ( .A0(vector_b_x[5]), .A1(n85), .B0(vector_b_y[5]), .B1(n38), .Y(
        mul_in2[5]) );
  AO22X1 U51 ( .A0(vector_b_x[6]), .A1(n85), .B0(vector_b_y[6]), .B1(n5), .Y(
        mul_in2[6]) );
  AND2X2 U52 ( .A(n36), .B(n86), .Y(n5) );
  NAND2X1 U53 ( .A(n34), .B(n86), .Y(n31) );
  AND2X2 U54 ( .A(n36), .B(n86), .Y(n38) );
  AO22X1 U55 ( .A0(vector_b_x[7]), .A1(n85), .B0(vector_b_y[7]), .B1(n38), .Y(
        mul_in2[7]) );
  OAI2BB2XL U56 ( .B0(n33), .B1(n10), .A0N(mul_res2[21]), .A1N(n9), .Y(n60) );
  OAI2BB2XL U57 ( .B0(n10), .B1(n6), .A0N(mul_res1[21]), .A1N(n7), .Y(n82) );
  AO22X1 U58 ( .A0(vector_a_y[2]), .A1(n85), .B0(vector_a_x[2]), .B1(n38), .Y(
        mul_in1[2]) );
  AO22X1 U59 ( .A0(vector_a_y[4]), .A1(n85), .B0(vector_a_x[4]), .B1(n38), .Y(
        mul_in1[4]) );
  OAI2BB2XL U60 ( .B0(n8), .B1(n11), .A0N(mul_res2[20]), .A1N(n8), .Y(n59) );
  OAI2BB2XL U61 ( .B0(n11), .B1(n6), .A0N(mul_res1[20]), .A1N(n6), .Y(n81) );
  AO22X1 U62 ( .A0(vector_a_y[0]), .A1(n85), .B0(vector_a_x[0]), .B1(n5), .Y(
        mul_in1[0]) );
  OAI2BB2XL U63 ( .B0(n8), .B1(n12), .A0N(mul_res2[19]), .A1N(n9), .Y(n58) );
  OAI2BB2XL U64 ( .B0(n12), .B1(n6), .A0N(mul_res1[19]), .A1N(n7), .Y(n80) );
  AO22X1 U65 ( .A0(vector_a_y[6]), .A1(n85), .B0(vector_a_x[6]), .B1(n38), .Y(
        mul_in1[6]) );
  AO22X1 U66 ( .A0(vector_a_y[8]), .A1(n85), .B0(vector_a_x[8]), .B1(n38), .Y(
        mul_in1[8]) );
  OAI2BB2XL U67 ( .B0(n8), .B1(n13), .A0N(mul_res2[18]), .A1N(n9), .Y(n57) );
  OAI2BB2XL U68 ( .B0(n13), .B1(n6), .A0N(mul_res1[18]), .A1N(n7), .Y(n79) );
  OAI2BB2XL U69 ( .B0(n8), .B1(n14), .A0N(mul_res2[17]), .A1N(n9), .Y(n56) );
  OAI2BB2XL U70 ( .B0(n14), .B1(n7), .A0N(mul_res1[17]), .A1N(n7), .Y(n78) );
  OAI2BB2XL U71 ( .B0(n8), .B1(n15), .A0N(mul_res2[16]), .A1N(n9), .Y(n55) );
  OAI2BB2XL U72 ( .B0(n15), .B1(n6), .A0N(mul_res1[16]), .A1N(n7), .Y(n77) );
  OAI2BB2XL U73 ( .B0(n9), .B1(n16), .A0N(mul_res2[15]), .A1N(n9), .Y(n54) );
  OAI2BB2XL U74 ( .B0(n16), .B1(n7), .A0N(mul_res1[15]), .A1N(n7), .Y(n76) );
  OAI2BB2XL U75 ( .B0(n8), .B1(n17), .A0N(mul_res2[14]), .A1N(n9), .Y(n53) );
  OAI2BB2XL U76 ( .B0(n17), .B1(n6), .A0N(mul_res1[14]), .A1N(n7), .Y(n75) );
  OAI2BB2XL U77 ( .B0(n8), .B1(n18), .A0N(mul_res2[13]), .A1N(n9), .Y(n52) );
  OAI2BB2XL U78 ( .B0(n18), .B1(n6), .A0N(mul_res1[13]), .A1N(n7), .Y(n74) );
  OAI2BB2XL U79 ( .B0(n8), .B1(n19), .A0N(mul_res2[12]), .A1N(n9), .Y(n51) );
  OAI2BB2XL U80 ( .B0(n19), .B1(n35), .A0N(mul_res1[12]), .A1N(n7), .Y(n73) );
  OAI2BB2XL U81 ( .B0(n8), .B1(n20), .A0N(mul_res2[11]), .A1N(n9), .Y(n50) );
  OAI2BB2XL U82 ( .B0(n20), .B1(n6), .A0N(mul_res1[11]), .A1N(n7), .Y(n72) );
  OAI2BB2XL U83 ( .B0(n8), .B1(n21), .A0N(mul_res2[10]), .A1N(n9), .Y(n49) );
  OAI2BB2XL U84 ( .B0(n21), .B1(n6), .A0N(mul_res1[10]), .A1N(n7), .Y(n71) );
  OAI2BB2XL U85 ( .B0(n8), .B1(n22), .A0N(mul_res2[9]), .A1N(n9), .Y(n48) );
  OAI2BB2XL U86 ( .B0(n22), .B1(n6), .A0N(mul_res1[9]), .A1N(n7), .Y(n70) );
  OAI2BB2XL U87 ( .B0(n8), .B1(n23), .A0N(mul_res2[8]), .A1N(n9), .Y(n47) );
  OAI2BB2XL U88 ( .B0(n23), .B1(n6), .A0N(mul_res1[8]), .A1N(n7), .Y(n69) );
  OAI2BB2XL U89 ( .B0(n8), .B1(n24), .A0N(mul_res2[7]), .A1N(n9), .Y(n46) );
  OAI2BB2XL U90 ( .B0(n24), .B1(n6), .A0N(mul_res1[7]), .A1N(n7), .Y(n68) );
  OAI2BB2XL U91 ( .B0(n8), .B1(n25), .A0N(mul_res2[6]), .A1N(n9), .Y(n45) );
  OAI2BB2XL U92 ( .B0(n25), .B1(n6), .A0N(mul_res1[6]), .A1N(n7), .Y(n67) );
  OAI2BB2XL U93 ( .B0(n8), .B1(n26), .A0N(mul_res2[5]), .A1N(n9), .Y(n44) );
  OAI2BB2XL U94 ( .B0(n26), .B1(n6), .A0N(mul_res1[5]), .A1N(n7), .Y(n66) );
  OAI2BB2XL U95 ( .B0(n8), .B1(n27), .A0N(mul_res2[4]), .A1N(n8), .Y(n43) );
  OAI2BB2XL U96 ( .B0(n27), .B1(n6), .A0N(mul_res1[4]), .A1N(n6), .Y(n65) );
  OAI2BB2XL U97 ( .B0(n9), .B1(n28), .A0N(mul_res2[3]), .A1N(n9), .Y(n42) );
  OAI2BB2XL U98 ( .B0(n28), .B1(n35), .A0N(mul_res1[3]), .A1N(n7), .Y(n64) );
  OAI2BB2XL U99 ( .B0(n33), .B1(n30), .A0N(mul_res2[2]), .A1N(n8), .Y(n41) );
  OAI2BB2XL U100 ( .B0(n30), .B1(n35), .A0N(mul_res1[2]), .A1N(n6), .Y(n63) );
  OAI2BB2XL U101 ( .B0(n83), .B1(n35), .A0N(mul_res1[1]), .A1N(n6), .Y(n62) );
  OAI2BB2XL U102 ( .B0(n33), .B1(n83), .A0N(mul_res2[1]), .A1N(n8), .Y(n40) );
  OAI2BB2XL U103 ( .B0(n33), .B1(n840), .A0N(mul_res2[0]), .A1N(n9), .Y(n39)
         );
  OAI2BB2XL U104 ( .B0(n840), .B1(n6), .A0N(mul_res1[0]), .A1N(n7), .Y(n61) );
  NOR2BX1 U105 ( .AN(cs[0]), .B(cs[1]), .Y(n36) );
  NOR2X1 U106 ( .A(n29), .B(cs[0]), .Y(n34) );
  AO22X1 U107 ( .A0(vector_b_x[8]), .A1(n85), .B0(vector_b_y[8]), .B1(n5), .Y(
        mul_in2[8]) );
  AO22X1 U108 ( .A0(vector_b_x[10]), .A1(n85), .B0(vector_b_y[10]), .B1(n5), 
        .Y(mul_in2[10]) );
  AO22X1 U109 ( .A0(vector_b_x[9]), .A1(n85), .B0(vector_b_y[9]), .B1(n38), 
        .Y(mul_in2[9]) );
  CLKINVX1 U110 ( .A(N84), .Y(cross_product) );
  XOR2X1 U111 ( .A(cs[1]), .B(cs[0]), .Y(n37) );
  NAND2X1 U112 ( .A(n31), .B(n32), .Y(ns[0]) );
  NOR3X1 U113 ( .A(n86), .B(cs[1]), .C(cs[0]), .Y(output_valid) );
  CLKINVX1 U114 ( .A(reset), .Y(n87) );
endmodule


module cross_product_module_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n109, n110, n111, n112, n113, n115, n116, n117, n118, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n449, n450, n451, n452,
         n453, n454, n455, n456, n457, n458, n459, n460;

  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  CMPR42X1 U29 ( .A(n370), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n369), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n368), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  CLKAND2X3 U259 ( .A(n385), .B(n366), .Y(n120) );
  NAND2XL U260 ( .A(n386), .B(n385), .Y(n384) );
  NAND3XL U261 ( .A(n385), .B(n378), .C(n367), .Y(n383) );
  NAND2XL U262 ( .A(n387), .B(n385), .Y(n65) );
  NAND2X4 U263 ( .A(n359), .B(n360), .Y(n385) );
  ADDHXL U264 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  OAI22X1 U265 ( .A0(n402), .A1(n361), .B0(n351), .B1(n404), .Y(n167) );
  INVX3 U266 ( .A(a[1]), .Y(n377) );
  NAND2X2 U267 ( .A(n365), .B(n460), .Y(n442) );
  BUFX4 U268 ( .A(n440), .Y(n365) );
  BUFX8 U269 ( .A(n442), .Y(n347) );
  CLKBUFX4 U270 ( .A(n442), .Y(n348) );
  CLKINVX8 U271 ( .A(n373), .Y(n349) );
  INVX16 U272 ( .A(n349), .Y(n350) );
  XNOR2X4 U273 ( .A(a[6]), .B(a[5]), .Y(n427) );
  ADDHX1 U274 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CLKBUFX6 U275 ( .A(n414), .Y(n363) );
  INVX4 U276 ( .A(a[7]), .Y(n374) );
  OAI32XL U277 ( .A0(n376), .A1(n366), .A2(n351), .B0(n376), .B1(n361), .Y(
        n112) );
  BUFX6 U278 ( .A(n403), .Y(n361) );
  ADDHX1 U279 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  BUFX12 U280 ( .A(n429), .Y(n364) );
  INVX3 U281 ( .A(a[3]), .Y(n376) );
  BUFX12 U282 ( .A(n416), .Y(n362) );
  OR2X1 U283 ( .A(n365), .B(n443), .Y(n354) );
  OR2X2 U284 ( .A(n441), .B(n347), .Y(n353) );
  ADDFXL U285 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U286 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U287 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFHX2 U288 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U289 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  XNOR2X4 U290 ( .A(a[2]), .B(a[1]), .Y(n351) );
  AND2X2 U291 ( .A(n131), .B(n109), .Y(n352) );
  CLKINVX1 U292 ( .A(n366), .Y(n378) );
  OAI32XL U293 ( .A0(n375), .A1(n366), .A2(n363), .B0(n375), .B1(n362), .Y(
        n111) );
  NAND2X4 U294 ( .A(n353), .B(n354), .Y(n131) );
  OAI32X4 U295 ( .A0(n350), .A1(n366), .A2(n365), .B0(n350), .B1(n347), .Y(
        n109) );
  XOR2X1 U296 ( .A(a[5]), .B(a[4]), .Y(n458) );
  CLKINVX3 U297 ( .A(a[5]), .Y(n375) );
  XOR2X1 U298 ( .A(n131), .B(n109), .Y(n86) );
  XOR2X1 U299 ( .A(n374), .B(n366), .Y(n428) );
  CMPR42X1 U300 ( .A(n150), .B(n352), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  XOR2X1 U301 ( .A(b[2]), .B(n374), .Y(n431) );
  XOR2X1 U302 ( .A(b[3]), .B(n374), .Y(n432) );
  XOR2X1 U303 ( .A(b[1]), .B(n374), .Y(n430) );
  XOR2X1 U304 ( .A(b[4]), .B(n374), .Y(n433) );
  BUFX12 U305 ( .A(a[10]), .Y(n367) );
  OAI32XL U306 ( .A0(n374), .A1(n366), .A2(n427), .B0(n374), .B1(n364), .Y(
        n110) );
  NAND2XL U307 ( .A(n28), .B(n6), .Y(n355) );
  NAND2XL U308 ( .A(n27), .B(n6), .Y(n356) );
  ADDFXL U309 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U310 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U311 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  ADDFXL U312 ( .A(n115), .B(n371), .CI(n121), .CO(n26), .S(n27) );
  NAND2X1 U313 ( .A(n427), .B(n459), .Y(n429) );
  INVX1 U314 ( .A(n385), .Y(n372) );
  NAND2X1 U315 ( .A(n27), .B(n28), .Y(n357) );
  NAND3X1 U316 ( .A(n355), .B(n356), .C(n357), .Y(n5) );
  XOR3XL U317 ( .A(n6), .B(n27), .C(n28), .Y(product[19]) );
  ADDFXL U318 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U319 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U320 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U321 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U322 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U323 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U324 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U325 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U326 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  XNOR2X1 U327 ( .A(a[4]), .B(a[3]), .Y(n414) );
  CLKINVX1 U328 ( .A(n367), .Y(n358) );
  XNOR2X1 U329 ( .A(a[8]), .B(a[7]), .Y(n440) );
  XOR2XL U330 ( .A(n350), .B(n366), .Y(n441) );
  XOR2XL U331 ( .A(b[2]), .B(n350), .Y(n444) );
  XOR2XL U332 ( .A(b[3]), .B(n350), .Y(n445) );
  XOR2XL U333 ( .A(b[4]), .B(n350), .Y(n446) );
  XOR2XL U334 ( .A(b[5]), .B(n350), .Y(n447) );
  XOR2XL U335 ( .A(b[6]), .B(n350), .Y(n448) );
  XOR2XL U336 ( .A(b[7]), .B(n350), .Y(n449) );
  CMPR42X1 U337 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  XOR2XL U338 ( .A(b[8]), .B(n376), .Y(n411) );
  XOR2XL U339 ( .A(b[8]), .B(n350), .Y(n450) );
  XOR2XL U340 ( .A(b[9]), .B(n376), .Y(n412) );
  XOR2XL U341 ( .A(b[8]), .B(n375), .Y(n424) );
  XOR2XL U342 ( .A(b[8]), .B(n374), .Y(n437) );
  XOR2XL U343 ( .A(b[10]), .B(n375), .Y(n426) );
  XOR2XL U344 ( .A(b[10]), .B(n376), .Y(n413) );
  XOR2XL U345 ( .A(b[9]), .B(n375), .Y(n425) );
  XOR2XL U346 ( .A(b[9]), .B(n374), .Y(n438) );
  XOR2XL U347 ( .A(b[9]), .B(n350), .Y(n451) );
  XOR2XL U348 ( .A(b[10]), .B(n350), .Y(n452) );
  XOR2XL U349 ( .A(b[10]), .B(n374), .Y(n439) );
  XOR2XL U350 ( .A(b[10]), .B(a[1]), .Y(n401) );
  NAND2X1 U351 ( .A(n367), .B(n350), .Y(n359) );
  NAND2XL U352 ( .A(n358), .B(a[9]), .Y(n360) );
  NAND2XL U353 ( .A(n389), .B(n385), .Y(n39) );
  NAND2XL U354 ( .A(n382), .B(n385), .Y(n25) );
  NAND2XL U355 ( .A(n388), .B(n385), .Y(n51) );
  NAND2XL U356 ( .A(n390), .B(n385), .Y(n31) );
  CLKINVX1 U357 ( .A(n65), .Y(n368) );
  CLKINVX1 U358 ( .A(n51), .Y(n369) );
  CLKINVX1 U359 ( .A(n39), .Y(n370) );
  CLKINVX1 U360 ( .A(n31), .Y(n371) );
  NAND2X1 U361 ( .A(n351), .B(n457), .Y(n403) );
  NAND2X1 U362 ( .A(n363), .B(n458), .Y(n416) );
  NAND2X2 U363 ( .A(a[1]), .B(n379), .Y(n391) );
  INVX3 U364 ( .A(a[0]), .Y(n379) );
  INVX3 U365 ( .A(a[9]), .Y(n373) );
  CLKBUFX3 U366 ( .A(b[0]), .Y(n366) );
  XOR2X1 U367 ( .A(n380), .B(n381), .Y(product[21]) );
  NOR2BX1 U368 ( .AN(n382), .B(n372), .Y(n381) );
  XOR2X1 U369 ( .A(n25), .B(n4), .Y(n380) );
  NOR2X1 U370 ( .A(n379), .B(n378), .Y(product[0]) );
  XNOR2X1 U371 ( .A(n383), .B(n384), .Y(n73) );
  NAND2X1 U372 ( .A(n384), .B(n383), .Y(n72) );
  XOR2X1 U373 ( .A(b[1]), .B(n367), .Y(n386) );
  XOR2X1 U374 ( .A(b[2]), .B(n367), .Y(n387) );
  XOR2X1 U375 ( .A(b[4]), .B(n367), .Y(n388) );
  XOR2X1 U376 ( .A(b[6]), .B(n367), .Y(n389) );
  XOR2X1 U377 ( .A(b[8]), .B(n367), .Y(n390) );
  XOR2X1 U378 ( .A(b[10]), .B(n367), .Y(n382) );
  OAI22XL U379 ( .A0(n366), .A1(n391), .B0(n392), .B1(n379), .Y(n179) );
  OAI22XL U380 ( .A0(n392), .A1(n391), .B0(n393), .B1(n379), .Y(n178) );
  XOR2X1 U381 ( .A(b[1]), .B(n377), .Y(n392) );
  OAI22XL U382 ( .A0(n393), .A1(n391), .B0(n394), .B1(n379), .Y(n177) );
  XOR2X1 U383 ( .A(b[2]), .B(n377), .Y(n393) );
  OAI22XL U384 ( .A0(n394), .A1(n391), .B0(n395), .B1(n379), .Y(n176) );
  XOR2X1 U385 ( .A(b[3]), .B(n377), .Y(n394) );
  OAI22XL U386 ( .A0(n395), .A1(n391), .B0(n396), .B1(n379), .Y(n175) );
  XOR2X1 U387 ( .A(b[4]), .B(n377), .Y(n395) );
  OAI22XL U388 ( .A0(n396), .A1(n391), .B0(n397), .B1(n379), .Y(n174) );
  XOR2X1 U389 ( .A(b[5]), .B(n377), .Y(n396) );
  OAI22XL U390 ( .A0(n397), .A1(n391), .B0(n398), .B1(n379), .Y(n173) );
  XOR2X1 U391 ( .A(b[6]), .B(n377), .Y(n397) );
  OAI22XL U392 ( .A0(n398), .A1(n391), .B0(n399), .B1(n379), .Y(n172) );
  XOR2X1 U393 ( .A(b[7]), .B(n377), .Y(n398) );
  OAI22XL U394 ( .A0(n399), .A1(n391), .B0(n400), .B1(n379), .Y(n171) );
  XOR2X1 U395 ( .A(b[8]), .B(n377), .Y(n399) );
  OAI2BB2XL U396 ( .B0(n400), .B1(n391), .A0N(n401), .A1N(a[0]), .Y(n170) );
  XOR2X1 U397 ( .A(b[9]), .B(n377), .Y(n400) );
  OAI2BB1X1 U398 ( .A0N(n379), .A1N(n391), .B0(n401), .Y(n169) );
  NOR2X1 U399 ( .A(n351), .B(n378), .Y(n168) );
  XOR2X1 U400 ( .A(n376), .B(n366), .Y(n402) );
  OAI22XL U401 ( .A0(n404), .A1(n361), .B0(n351), .B1(n405), .Y(n166) );
  XOR2X1 U402 ( .A(b[1]), .B(n376), .Y(n404) );
  OAI22XL U403 ( .A0(n405), .A1(n361), .B0(n351), .B1(n406), .Y(n165) );
  XOR2X1 U404 ( .A(b[2]), .B(n376), .Y(n405) );
  OAI22XL U405 ( .A0(n406), .A1(n361), .B0(n351), .B1(n407), .Y(n164) );
  XOR2X1 U406 ( .A(b[3]), .B(n376), .Y(n406) );
  OAI22XL U407 ( .A0(n407), .A1(n361), .B0(n351), .B1(n408), .Y(n163) );
  XOR2X1 U408 ( .A(b[4]), .B(n376), .Y(n407) );
  OAI22XL U409 ( .A0(n408), .A1(n361), .B0(n351), .B1(n409), .Y(n162) );
  XOR2X1 U410 ( .A(b[5]), .B(n376), .Y(n408) );
  OAI22XL U411 ( .A0(n409), .A1(n361), .B0(n351), .B1(n410), .Y(n161) );
  XOR2X1 U412 ( .A(b[6]), .B(n376), .Y(n409) );
  OAI22XL U413 ( .A0(n410), .A1(n361), .B0(n351), .B1(n411), .Y(n160) );
  XOR2X1 U414 ( .A(b[7]), .B(n376), .Y(n410) );
  OAI22XL U415 ( .A0(n411), .A1(n361), .B0(n351), .B1(n412), .Y(n159) );
  OAI22XL U416 ( .A0(n412), .A1(n361), .B0(n351), .B1(n413), .Y(n158) );
  AO21X1 U417 ( .A0(n361), .A1(n351), .B0(n413), .Y(n157) );
  NOR2X1 U418 ( .A(n363), .B(n378), .Y(n156) );
  OAI22XL U419 ( .A0(n415), .A1(n362), .B0(n363), .B1(n417), .Y(n155) );
  XOR2X1 U420 ( .A(n375), .B(n366), .Y(n415) );
  OAI22XL U421 ( .A0(n417), .A1(n362), .B0(n363), .B1(n418), .Y(n154) );
  XOR2X1 U422 ( .A(b[1]), .B(n375), .Y(n417) );
  OAI22XL U423 ( .A0(n418), .A1(n362), .B0(n363), .B1(n419), .Y(n153) );
  XOR2X1 U424 ( .A(b[2]), .B(n375), .Y(n418) );
  OAI22XL U425 ( .A0(n419), .A1(n362), .B0(n363), .B1(n420), .Y(n152) );
  XOR2X1 U426 ( .A(b[3]), .B(n375), .Y(n419) );
  OAI22XL U427 ( .A0(n420), .A1(n362), .B0(n363), .B1(n421), .Y(n151) );
  XOR2X1 U428 ( .A(b[4]), .B(n375), .Y(n420) );
  OAI22XL U429 ( .A0(n421), .A1(n362), .B0(n363), .B1(n422), .Y(n150) );
  XOR2X1 U430 ( .A(b[5]), .B(n375), .Y(n421) );
  OAI22XL U431 ( .A0(n422), .A1(n362), .B0(n363), .B1(n423), .Y(n149) );
  XOR2X1 U432 ( .A(b[6]), .B(n375), .Y(n422) );
  OAI22XL U433 ( .A0(n423), .A1(n362), .B0(n363), .B1(n424), .Y(n148) );
  XOR2X1 U434 ( .A(b[7]), .B(n375), .Y(n423) );
  OAI22XL U435 ( .A0(n424), .A1(n362), .B0(n363), .B1(n425), .Y(n147) );
  OAI22XL U436 ( .A0(n425), .A1(n362), .B0(n363), .B1(n426), .Y(n146) );
  AO21X1 U437 ( .A0(n362), .A1(n363), .B0(n426), .Y(n145) );
  NOR2X1 U438 ( .A(n427), .B(n378), .Y(n144) );
  OAI22XL U439 ( .A0(n428), .A1(n364), .B0(n427), .B1(n430), .Y(n143) );
  OAI22XL U440 ( .A0(n430), .A1(n364), .B0(n427), .B1(n431), .Y(n142) );
  OAI22XL U441 ( .A0(n431), .A1(n364), .B0(n427), .B1(n432), .Y(n141) );
  OAI22XL U442 ( .A0(n432), .A1(n364), .B0(n427), .B1(n433), .Y(n140) );
  OAI22XL U443 ( .A0(n433), .A1(n364), .B0(n427), .B1(n434), .Y(n139) );
  OAI22XL U444 ( .A0(n434), .A1(n364), .B0(n427), .B1(n435), .Y(n138) );
  XOR2X1 U445 ( .A(b[5]), .B(n374), .Y(n434) );
  OAI22XL U446 ( .A0(n435), .A1(n364), .B0(n427), .B1(n436), .Y(n137) );
  XOR2X1 U447 ( .A(b[6]), .B(n374), .Y(n435) );
  OAI22XL U448 ( .A0(n436), .A1(n364), .B0(n427), .B1(n437), .Y(n136) );
  XOR2X1 U449 ( .A(b[7]), .B(n374), .Y(n436) );
  OAI22XL U450 ( .A0(n437), .A1(n364), .B0(n427), .B1(n438), .Y(n135) );
  OAI22XL U451 ( .A0(n438), .A1(n364), .B0(n427), .B1(n439), .Y(n134) );
  AO21X1 U452 ( .A0(n364), .A1(n427), .B0(n439), .Y(n133) );
  NOR2X1 U453 ( .A(n365), .B(n378), .Y(n132) );
  OAI22XL U454 ( .A0(n443), .A1(n348), .B0(n365), .B1(n444), .Y(n130) );
  XOR2X1 U455 ( .A(b[1]), .B(n350), .Y(n443) );
  OAI22XL U456 ( .A0(n444), .A1(n348), .B0(n365), .B1(n445), .Y(n129) );
  OAI22XL U457 ( .A0(n445), .A1(n348), .B0(n365), .B1(n446), .Y(n128) );
  OAI22XL U458 ( .A0(n446), .A1(n348), .B0(n365), .B1(n447), .Y(n127) );
  OAI22XL U459 ( .A0(n447), .A1(n348), .B0(n365), .B1(n448), .Y(n126) );
  OAI22XL U460 ( .A0(n448), .A1(n348), .B0(n365), .B1(n449), .Y(n125) );
  OAI22XL U461 ( .A0(n449), .A1(n348), .B0(n365), .B1(n450), .Y(n124) );
  OAI22XL U462 ( .A0(n450), .A1(n348), .B0(n365), .B1(n451), .Y(n123) );
  OAI22XL U463 ( .A0(n451), .A1(n348), .B0(n365), .B1(n452), .Y(n122) );
  AO21X1 U464 ( .A0(n348), .A1(n365), .B0(n452), .Y(n121) );
  NOR2X1 U465 ( .A(n372), .B(n453), .Y(n118) );
  XNOR2X1 U466 ( .A(b[3]), .B(n367), .Y(n453) );
  NOR2X1 U467 ( .A(n372), .B(n454), .Y(n117) );
  XNOR2X1 U468 ( .A(b[5]), .B(n367), .Y(n454) );
  NOR2X1 U469 ( .A(n372), .B(n455), .Y(n116) );
  XNOR2X1 U470 ( .A(b[7]), .B(n367), .Y(n455) );
  NOR2X1 U471 ( .A(n372), .B(n456), .Y(n115) );
  XNOR2X1 U472 ( .A(b[9]), .B(n367), .Y(n456) );
  OAI21XL U473 ( .A0(n366), .A1(n377), .B0(n391), .Y(n113) );
  XOR2X1 U474 ( .A(a[3]), .B(a[2]), .Y(n457) );
  XOR2X1 U475 ( .A(a[7]), .B(a[6]), .Y(n459) );
  XOR2X1 U476 ( .A(a[9]), .B(a[8]), .Y(n460) );
endmodule


module cross_product_module_DW_cmp_0 ( A, B, TC, GE_LT, GE_GT_EQ, GE_LT_GT_LE, 
        EQ_NE );
  input [21:0] A;
  input [21:0] B;
  input TC, GE_LT, GE_GT_EQ;
  output GE_LT_GT_LE, EQ_NE;
  wire   n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195;

  CLKINVX1 U59 ( .A(n173), .Y(n135) );
  CLKINVX1 U60 ( .A(n187), .Y(n139) );
  CLKINVX1 U61 ( .A(B[11]), .Y(n145) );
  CLKINVX1 U62 ( .A(A[17]), .Y(n131) );
  CLKINVX1 U63 ( .A(A[12]), .Y(n133) );
  CLKINVX1 U64 ( .A(A[8]), .Y(n136) );
  CLKINVX1 U65 ( .A(B[4]), .Y(n148) );
  CLKINVX1 U66 ( .A(A[5]), .Y(n137) );
  CLKINVX1 U67 ( .A(B[18]), .Y(n142) );
  CLKINVX1 U68 ( .A(B[13]), .Y(n144) );
  CLKINVX1 U69 ( .A(B[1]), .Y(n149) );
  CLKINVX1 U70 ( .A(A[3]), .Y(n138) );
  CLKINVX1 U71 ( .A(B[9]), .Y(n146) );
  CLKINVX1 U72 ( .A(A[19]), .Y(n130) );
  CLKINVX1 U73 ( .A(A[14]), .Y(n132) );
  CLKINVX1 U74 ( .A(B[6]), .Y(n147) );
  CLKINVX1 U75 ( .A(A[10]), .Y(n134) );
  CLKINVX1 U76 ( .A(B[20]), .Y(n141) );
  CLKINVX1 U77 ( .A(B[15]), .Y(n143) );
  CLKINVX1 U78 ( .A(B[21]), .Y(n140) );
  OAI221XL U79 ( .A0(A[21]), .A1(n150), .B0(A[21]), .B1(n140), .C0(n151), .Y(
        GE_LT_GT_LE) );
  AOI2BB2X1 U80 ( .B0(n152), .B1(n153), .A0N(n150), .A1N(n140), .Y(n151) );
  OAI22XL U81 ( .A0(n140), .A1(n154), .B0(A[21]), .B1(n154), .Y(n153) );
  OAI21XL U82 ( .A0(A[20]), .A1(n141), .B0(n155), .Y(n154) );
  OAI22XL U83 ( .A0(n130), .A1(n156), .B0(B[19]), .B1(n156), .Y(n155) );
  OAI21XL U84 ( .A0(A[18]), .A1(n142), .B0(n157), .Y(n156) );
  OAI22XL U85 ( .A0(n158), .A1(n131), .B0(B[17]), .B1(n158), .Y(n157) );
  NOR2BX1 U86 ( .AN(B[16]), .B(A[16]), .Y(n158) );
  OAI21XL U87 ( .A0(n159), .A1(n160), .B0(n161), .Y(n152) );
  OAI222XL U88 ( .A0(A[15]), .A1(n162), .B0(n143), .B1(n162), .C0(A[15]), .C1(
        n143), .Y(n161) );
  OAI222XL U89 ( .A0(B[14]), .A1(n132), .B0(B[14]), .B1(n163), .C0(n132), .C1(
        n163), .Y(n162) );
  OAI222XL U90 ( .A0(A[13]), .A1(n164), .B0(n144), .B1(n164), .C0(A[13]), .C1(
        n144), .Y(n163) );
  OAI222XL U91 ( .A0(B[12]), .A1(n133), .B0(B[12]), .B1(n165), .C0(n133), .C1(
        n165), .Y(n164) );
  NAND2X1 U92 ( .A(A[11]), .B(n145), .Y(n165) );
  OAI21XL U93 ( .A0(A[15]), .A1(n143), .B0(n166), .Y(n160) );
  OAI22XL U94 ( .A0(n167), .A1(n132), .B0(B[14]), .B1(n167), .Y(n166) );
  OAI21XL U95 ( .A0(A[13]), .A1(n144), .B0(n168), .Y(n167) );
  OAI22XL U96 ( .A0(n169), .A1(n133), .B0(B[12]), .B1(n169), .Y(n168) );
  NOR2X1 U97 ( .A(n145), .B(A[11]), .Y(n169) );
  AOI221XL U98 ( .A0(A[10]), .A1(n135), .B0(n170), .B1(n171), .C0(n172), .Y(
        n159) );
  OAI22XL U99 ( .A0(B[10]), .A1(n134), .B0(B[10]), .B1(n173), .Y(n172) );
  OAI22XL U100 ( .A0(n134), .A1(n174), .B0(B[10]), .B1(n174), .Y(n171) );
  OAI21XL U101 ( .A0(A[9]), .A1(n146), .B0(n175), .Y(n174) );
  OAI22XL U102 ( .A0(n176), .A1(n136), .B0(B[8]), .B1(n176), .Y(n175) );
  NOR2BX1 U103 ( .AN(B[7]), .B(A[7]), .Y(n176) );
  OAI21XL U104 ( .A0(n177), .A1(n178), .B0(n179), .Y(n170) );
  OAI222XL U105 ( .A0(A[6]), .A1(n180), .B0(n147), .B1(n180), .C0(A[6]), .C1(
        n147), .Y(n179) );
  OAI222XL U106 ( .A0(B[5]), .A1(n137), .B0(B[5]), .B1(n181), .C0(n137), .C1(
        n181), .Y(n180) );
  NAND2X1 U107 ( .A(A[4]), .B(n148), .Y(n181) );
  OAI21XL U108 ( .A0(A[6]), .A1(n147), .B0(n182), .Y(n178) );
  OAI22XL U109 ( .A0(n183), .A1(n137), .B0(B[5]), .B1(n183), .Y(n182) );
  NOR2X1 U110 ( .A(n148), .B(A[4]), .Y(n183) );
  AOI221XL U111 ( .A0(A[3]), .A1(n139), .B0(n184), .B1(n185), .C0(n186), .Y(
        n177) );
  OAI22XL U112 ( .A0(B[3]), .A1(n138), .B0(B[3]), .B1(n187), .Y(n186) );
  OAI22XL U113 ( .A0(n188), .A1(n138), .B0(B[3]), .B1(n188), .Y(n185) );
  NOR2BX1 U114 ( .AN(B[2]), .B(A[2]), .Y(n188) );
  AO22X1 U115 ( .A0(n189), .A1(A[0]), .B0(A[1]), .B1(n149), .Y(n184) );
  AOI2BB1X1 U116 ( .A0N(n149), .A1N(A[1]), .B0(B[0]), .Y(n189) );
  NAND2BX1 U117 ( .AN(B[2]), .B(A[2]), .Y(n187) );
  OAI222XL U118 ( .A0(A[9]), .A1(n190), .B0(n190), .B1(n146), .C0(A[9]), .C1(
        n146), .Y(n173) );
  OAI222XL U119 ( .A0(B[8]), .A1(n136), .B0(B[8]), .B1(n191), .C0(n191), .C1(
        n136), .Y(n190) );
  NAND2BX1 U120 ( .AN(B[7]), .B(A[7]), .Y(n191) );
  OAI222XL U121 ( .A0(A[20]), .A1(n192), .B0(n192), .B1(n141), .C0(A[20]), 
        .C1(n141), .Y(n150) );
  OAI222XL U122 ( .A0(B[19]), .A1(n130), .B0(B[19]), .B1(n193), .C0(n193), 
        .C1(n130), .Y(n192) );
  OAI222XL U123 ( .A0(A[18]), .A1(n194), .B0(n194), .B1(n142), .C0(A[18]), 
        .C1(n142), .Y(n193) );
  OAI222XL U124 ( .A0(B[17]), .A1(n131), .B0(B[17]), .B1(n195), .C0(n195), 
        .C1(n131), .Y(n194) );
  NAND2BX1 U125 ( .AN(B[16]), .B(A[16]), .Y(n195) );
endmodule

