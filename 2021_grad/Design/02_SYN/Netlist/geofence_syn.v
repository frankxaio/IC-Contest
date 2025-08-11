/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Thu Aug  7 17:58:42 2025
/////////////////////////////////////////////////////////////


module geofence ( clk, reset, X, Y, R, valid, is_inside );
  input [9:0] X;
  input [9:0] Y;
  input [10:0] R;
  input clk, reset;
  output valid, is_inside;
  wire   n666, point_1_x__9_, point_1_x__8_, point_1_x__7_, point_1_x__6_,
         point_1_x__5_, point_1_x__4_, point_1_x__3_, point_1_x__2_,
         point_1_x__1_, point_1_x__0_, point_1_y__9_, point_1_y__8_,
         point_1_y__7_, point_1_y__6_, point_1_y__5_, point_1_y__4_,
         point_1_y__3_, point_1_y__2_, point_1_y__1_, point_1_y__0_,
         point_4_x__9_, point_4_x__8_, point_4_x__7_, point_4_x__6_,
         point_4_x__5_, point_4_x__4_, point_4_x__3_, point_4_x__2_,
         point_4_x__1_, point_4_x__0_, point_4_y__9_, point_4_y__8_,
         point_4_y__7_, point_4_y__6_, point_4_y__5_, point_4_y__4_,
         point_4_y__3_, point_4_y__2_, point_4_y__1_, point_4_y__0_,
         point_5_x__9_, point_5_x__8_, point_5_x__7_, point_5_x__6_,
         point_5_x__5_, point_5_x__4_, point_5_x__3_, point_5_x__2_,
         point_5_x__1_, point_5_x__0_, point_5_y__9_, point_5_y__8_,
         point_5_y__7_, point_5_y__6_, point_5_y__5_, point_5_y__4_,
         point_5_y__3_, point_5_y__2_, point_5_y__1_, point_5_y__0_,
         point_6_x__9_, point_6_x__8_, point_6_x__7_, point_6_x__6_,
         point_6_x__5_, point_6_x__4_, point_6_x__3_, point_6_x__2_,
         point_6_x__1_, point_6_x__0_, point_6_y__9_, point_6_y__8_,
         point_6_y__7_, point_6_y__6_, point_6_y__5_, point_6_y__4_,
         point_6_y__3_, point_6_y__2_, point_6_y__1_, point_6_y__0_,
         point_cal_vec2_x__9_, point_cal_vec2_x__8_, point_cal_vec2_x__7_,
         point_cal_vec2_x__6_, point_cal_vec2_x__5_, point_cal_vec2_x__4_,
         point_cal_vec2_x__3_, point_cal_vec2_x__2_, point_cal_vec2_x__1_,
         point_cal_vec2_x__0_, point_cal_vec2_y__9_, point_cal_vec2_y__8_,
         point_cal_vec2_y__7_, point_cal_vec2_y__6_, point_cal_vec2_y__5_,
         point_cal_vec2_y__4_, point_cal_vec2_y__3_, point_cal_vec2_y__2_,
         point_cal_vec2_y__1_, point_cal_vec2_y__0_, N83, N84, N85, N86, N87,
         N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100,
         N101, N102, N103, N556, N557, N558, N559, N560, N561, N562, N563,
         N564, N565, N566, N567, N568, N569, N570, N571, N572, N573, N574,
         N575, N576, N577, N578, N579, N580, N581, N582, N591, n31, n33, n35,
         n36, n58, n59, n80, n105, n125, n126, n128, n129, n130, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n196, n197, n198,
         n199, n200, n201, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n408,
         n409, n410, n411, n412, n413, n414, n415, n416, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428, n429, n430,
         n431, n432, n433, n434, n435, n436, N555, N554, N553, N552, N551,
         N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540,
         N539, N538, N537, N536, N535, N534, N533, N532, N531, N530, N529,
         N528, N527, N526, N525, N524, N523, N522, N521, N520, N519, N518,
         N517, N516, N515, N514, N513, N512, N511, N510, N509, N508, N507,
         N506, N505, N504, N503, N502, N501, N500, N499, N498, N497, N496,
         N495, N494, N493, N492, N491, N490, N489, N488, N487, N486, N485,
         N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474,
         N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463,
         N462, N461, N460, N459, N458, N457, N456, N455, N454, N453, N452,
         N451, N450, N449, N448, N447, N446, N445, N444, N443, N442, N441,
         N440, N439, N438, N437, N4360, N4350, N4340, N4330, N4320, N4310,
         N4300, N4290, N4280, N4270, N4260, N4250, N4240, N4230, N4220, N4210,
         N4200, N4190, N4180, N4170, N4160, N4150, N4140, N4130, N4120, N4110,
         N4100, N4090, N4080, N4070, N4060, N4050, N4040, N4030, N4020, N4010,
         N4000, N3990, N3980, N3970, N3960, N3950, N3940, N3930, N3920, N3910,
         N3900, N3890, N3880, N3870, N3860, N3850, N3840, N3830, N3820, N3810,
         N3800, N3790, N3780, N3770, N3760, N3750, N3740, N3730, N3720, N3710,
         N3700, N3690, N3680, N3670, N3660, N3650, N3640, N3630, N3620, N3610,
         N3600, N3590, N3580, N3570, N3560, N3550, N3540, N3530, N3520, N3510,
         N3500, N3490, N3480, N3470, N3460, N3450, N3440, N3430, N3420, N3410,
         N3400, N3390, N3380, N3370, N3360, N3350, N3340, N3330, N3320, N3310,
         N3300, N3290, N3280, N3270, N3260, N3250, N3240, N3230, N3220, N3210,
         N3200, N3190, N3180, N3170, N3160, N3150, N3140, N3130, N3120, N3110,
         N3100, N3090, N3080, N3070, N3060, N3050, N3040, N3030, N3020, N3010,
         N3000, N2990, N2980, N2970, N2960, N2950, N2940, N2930, N2920, N2910,
         N2900, N2890, N2880, N2870, N2860, N2850, N2840, N2830, N2820, N2810,
         N2800, N2790, N2780, N2770, N2760, N2750, N2740, N2730, N2720, N2710,
         N2700, N2690, N2680, N2670, N2660, N2650, N2640, N2630, N2620, N2610,
         N2600, N2590, N2580, N2570, N2560, N2550, N2540, N2530, N2520, N2510,
         N2500, N2490, N2480, N2470, N2460, N2450, N2440, N2430, N2420, N2410,
         N2400, N2390, N2380, N2370, N2360, N2350, N2340, N2330, N2320, N2310,
         N2300, N2290, N2280, N2270, N2260, N2250, N2240, N2230, N2220, N2210,
         N2200, N2190, N2180, N2170, N2160, N2150, N2140, N2130, N2120, N2110,
         N2100, N2090, N2080, N2070, N2060, N2050, N2040, N2030, N202, N2010,
         N2000, N1990, N1980, N1970, N1960, N195, N194, N193, N192, N191, N190,
         N189, N188, N187, N186, N185, N184, N183, N182, N181, N180, N179,
         N178, N177, N176, N175, N174, N173, N172, N171, N170, N169, N168,
         N167, N166, N165, N164, N163, N162, N161, N160, N159, N158, N157,
         N156, N155, N154, N1530, N1520, N1510, N1500, N1490, N1480, N1470,
         N1460, n4370, n4380, n4390, n4400, n4410, n4420, n4430, n4440, n4450,
         n4460, n4470, n4480, n4490, n4500, n4510, n4520, n4530, n4540, n4550,
         n4560, n4570, n4580, n4590, n4600, n4610, n4620, n4630, n4640, n4650,
         n4660, n4670, n4680, n4690, n4700, n4710, n4720, n4730, n4740, n4750,
         n4760, n4770, n4780, n4790, n4800, n4810, n4820, n4830, n4840, n4850,
         n4860, n4870, n4880, n4890, n4900, n4910, n4920, n4930, n4940, n4950,
         n4960, n4970, n4980, n4990, n5000, n5010, n5020, n5030, n5040, n5050,
         n5060, n5070, n5080, n5090, n5100, n5110, n5120, n5130, n5140, n5150,
         n5160, n5170, n5180, n5190, n5200, n5210, n5240, n5250, n5260, n5270,
         n5280, n5290, n5300, n5310, n5320, n5330, n5340, n5350, n5360, n5370,
         n5380, n5390, n5400, n5410, n5420, n5430, n5440, n5450, n5460, n5470,
         n5480, n5490, n5500, n5510, n5520, n5530, n5540, n5550, n5560, n5570,
         n5580, n5590, n5600, n5610, n5620, n5630, n5640, n5650, n5660, n5670,
         n5680, n5690, n5700, n5710, n5720, n5730, n5740, n5750, n5760, n5770,
         n5780, n5790, n5800, n5810, n5820, n583, n584, n585, n586, n587, n588,
         n589, n590, n5910, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656;
  wire   [21:0] vector_tmp;
  wire   [21:0] vector_A;
  wire   [21:0] vector_B;
  wire   [21:0] vector_C;
  wire   [21:0] vector_D;
  wire   [21:0] vector_E;

  geofence_DW01_sub_0 sub_55_C105 ( .A({1'b0, point_cal_vec2_y__9_, 
        point_cal_vec2_y__8_, point_cal_vec2_y__7_, point_cal_vec2_y__6_, 
        point_cal_vec2_y__5_, point_cal_vec2_y__4_, point_cal_vec2_y__3_, 
        point_cal_vec2_y__2_, point_cal_vec2_y__1_, point_cal_vec2_y__0_}), 
        .B({1'b0, point_1_y__9_, point_1_y__8_, point_1_y__7_, point_1_y__6_, 
        point_1_y__5_, point_1_y__4_, point_1_y__3_, point_1_y__2_, 
        point_1_y__1_, point_1_y__0_}), .CI(1'b0), .DIFF(vector_tmp[10:0]) );
  geofence_DW01_sub_1 sub_54_C105 ( .A({1'b0, point_cal_vec2_x__9_, 
        point_cal_vec2_x__8_, point_cal_vec2_x__7_, point_cal_vec2_x__6_, 
        point_cal_vec2_x__5_, point_cal_vec2_x__4_, point_cal_vec2_x__3_, 
        point_cal_vec2_x__2_, point_cal_vec2_x__1_, point_cal_vec2_x__0_}), 
        .B({1'b0, point_1_x__9_, point_1_x__8_, point_1_x__7_, point_1_x__6_, 
        point_1_x__5_, point_1_x__4_, point_1_x__3_, point_1_x__2_, 
        point_1_x__1_, point_1_x__0_}), .CI(1'b0), .DIFF(vector_tmp[21:11]) );
  geofence_DW_mult_tc_9 mult_149_4 ( .a(vector_B[10:0]), .b({vector_C[21:20], 
        n4680, vector_C[18], n4780, vector_C[16], n5020, vector_C[14], n4420, 
        vector_C[12], n5180}), .product({N2560, N2550, N2540, N2530, N2520, 
        N2510, N2500, N2490, N2480, N2470, N2460, N2450, N2440, N2430, N2420, 
        N2410, N2400, N2390, N2380, N2370, N2360, N2350}) );
  geofence_DW_mult_tc_8 mult_149 ( .a(vector_A[21:11]), .b({vector_B[10:9], 
        n4660, vector_B[7], n4900, vector_B[5], n5100, vector_B[3], n4520, 
        vector_B[1:0]}), .product({N167, N166, N165, N164, N163, N162, N161, 
        N160, N159, N158, N157, N156, N155, N154, N1530, N1520, N1510, N1500, 
        N1490, N1480, N1470, N1460}) );
  geofence_DW_mult_tc_7 mult_149_3 ( .a(vector_B[21:11]), .b({vector_C[10:9], 
        n4700, vector_C[7], n4920, vector_C[5], n5120, vector_C[3], n4480, 
        vector_C[1], n5200}), .product({N2340, N2330, N2320, N2310, N2300, 
        N2290, N2280, N2270, N2260, N2250, N2240, N2230, N2220, N2210, N2200, 
        N2190, N2180, N2170, N2160, N2150, N2140, N2130}) );
  geofence_DW_mult_tc_6 mult_149_2 ( .a(vector_A[10:0]), .b({vector_B[21:20], 
        n4640, vector_B[18], n4880, vector_B[16], n5080, vector_B[14], n4460, 
        vector_B[12:11]}), .product({N189, N188, N187, N186, N185, N184, N183, 
        N182, N181, N180, N179, N178, N177, N176, N175, N174, N173, N172, N171, 
        N170, N169, N168}) );
  geofence_DW_mult_tc_5 mult_149_9 ( .a(vector_E[21:11]), .b({vector_A[10:9], 
        n4600, vector_A[7], n4860, vector_A[5], n4980, vector_A[3], n4380, 
        vector_A[1:0]}), .product({N510, N509, N508, N507, N506, N505, N504, 
        N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, N492, 
        N491, N490, N489}) );
  geofence_DW_mult_tc_4 mult_149_10 ( .a(vector_E[10:0]), .b({vector_A[21:20], 
        n4620, vector_A[18], n4840, vector_A[16], n5000, vector_A[14], n4400, 
        vector_A[12:11]}), .product({N532, N531, N530, N529, N528, N527, N526, 
        N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, N514, 
        N513, N512, N511}) );
  geofence_DW_mult_tc_3 mult_149_7 ( .a(vector_D[21:11]), .b({vector_E[10:9], 
        n4580, vector_E[7], n4820, vector_E[5], n5060, vector_E[3], n4560, 
        vector_E[1:0]}), .product({N4170, N4160, N4150, N4140, N4130, N4120, 
        N4110, N4100, N4090, N4080, N4070, N4060, N4050, N4040, N4030, N4020, 
        N4010, N4000, N3990, N3980, N3970, N3960}) );
  geofence_DW_mult_tc_2 mult_149_8 ( .a(vector_D[10:0]), .b({vector_E[21:20], 
        n4760, vector_E[18], n4960, vector_E[16], n5160, vector_E[14], n4540, 
        vector_E[12:11]}), .product({N439, N438, N437, N4360, N4350, N4340, 
        N4330, N4320, N4310, N4300, N4290, N4280, N4270, N4260, N4250, N4240, 
        N4230, N4220, N4210, N4200, N4190, N4180}) );
  geofence_DW_mult_tc_1 mult_149_5 ( .a({vector_C[21:12], n5180}), .b({
        vector_D[10:9], n4740, vector_D[7], n4940, vector_D[5], n5140, 
        vector_D[3], n4500, vector_D[1:0]}), .product({N3250, N3240, N3230, 
        N3220, N3210, N3200, N3190, N3180, N3170, N3160, N3150, N3140, N3130, 
        N3120, N3110, N3100, N3090, N3080, N3070, N3060, N3050, N3040}) );
  geofence_DW_mult_tc_0 mult_149_6 ( .a({vector_C[10:1], n5200}), .b({
        vector_D[21:20], n4720, vector_D[18], n4800, vector_D[16], n5040, 
        vector_D[14], n4440, vector_D[12:11]}), .product({N3470, N3460, N3450, 
        N3440, N3430, N3420, N3410, N3400, N3390, N3380, N3370, N3360, N3350, 
        N3340, N3330, N3320, N3310, N3300, N3290, N3280, N3270, N3260}) );
  geofence_DW01_sub_6 sub_149_2 ( .A({N2340, N2340, N2330, N2320, N2310, N2300, 
        N2290, N2280, N2270, N2260, N2250, N2240, N2230, N2220, N2210, N2200, 
        N2190, N2180, N2170, N2160, N2150, N2140, N2130}), .B({N2560, N2560, 
        N2550, N2540, N2530, N2520, N2510, N2500, N2490, N2480, N2470, N2460, 
        N2450, N2440, N2430, N2420, N2410, N2400, N2390, N2380, N2370, N2360, 
        N2350}), .CI(1'b0), .DIFF({N2790, N2780, N2770, N2760, N2750, N2740, 
        N2730, N2720, N2710, N2700, N2690, N2680, N2670, N2660, N2650, N2640, 
        N2630, N2620, N2610, N2600, N2590, N2580, N2570}) );
  geofence_DW01_sub_5 sub_149 ( .A({N167, N167, N166, N165, N164, N163, N162, 
        N161, N160, N159, N158, N157, N156, N155, N154, N1530, N1520, N1510, 
        N1500, N1490, N1480, N1470, N1460}), .B({N189, N189, N188, N187, N186, 
        N185, N184, N183, N182, N181, N180, N179, N178, N177, N176, N175, N174, 
        N173, N172, N171, N170, N169, N168}), .CI(1'b0), .DIFF({N2120, N2110, 
        N2100, N2090, N2080, N2070, N2060, N2050, N2040, N2030, N202, N2010, 
        N2000, N1990, N1980, N1970, N1960, N195, N194, N193, N192, N191, N190}) );
  geofence_DW01_sub_4 sub_149_5 ( .A({N510, N510, N509, N508, N507, N506, N505, 
        N504, N503, N502, N501, N500, N499, N498, N497, N496, N495, N494, N493, 
        N492, N491, N490, N489}), .B({N532, N532, N531, N530, N529, N528, N527, 
        N526, N525, N524, N523, N522, N521, N520, N519, N518, N517, N516, N515, 
        N514, N513, N512, N511}), .CI(1'b0), .DIFF({N555, N554, N553, N552, 
        N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, N541, N540, 
        N539, N538, N537, N536, N535, N534, N533}) );
  geofence_DW01_sub_3 sub_149_4 ( .A({N4170, N4170, N4160, N4150, N4140, N4130, 
        N4120, N4110, N4100, N4090, N4080, N4070, N4060, N4050, N4040, N4030, 
        N4020, N4010, N4000, N3990, N3980, N3970, N3960}), .B({N439, N439, 
        N438, N437, N4360, N4350, N4340, N4330, N4320, N4310, N4300, N4290, 
        N4280, N4270, N4260, N4250, N4240, N4230, N4220, N4210, N4200, N4190, 
        N4180}), .CI(1'b0), .DIFF({N462, N461, N460, N459, N458, N457, N456, 
        N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, 
        N443, N442, N441, N440}) );
  geofence_DW01_sub_2 sub_149_3 ( .A({N3250, N3250, N3240, N3230, N3220, N3210, 
        N3200, N3190, N3180, N3170, N3160, N3150, N3140, N3130, N3120, N3110, 
        N3100, N3090, N3080, N3070, N3060, N3050, N3040}), .B({N3470, N3470, 
        N3460, N3450, N3440, N3430, N3420, N3410, N3400, N3390, N3380, N3370, 
        N3360, N3350, N3340, N3330, N3320, N3310, N3300, N3290, N3280, N3270, 
        N3260}), .CI(1'b0), .DIFF({N3700, N3690, N3680, N3670, N3660, N3650, 
        N3640, N3630, N3620, N3610, N3600, N3590, N3580, N3570, N3560, N3550, 
        N3540, N3530, N3520, N3510, N3500, N3490, N3480}) );
  geofence_DW01_add_3 add_3_root_add_149_4 ( .A({N2120, N2120, N2110, N2100, 
        N2090, N2080, N2070, N2060, N2050, N2040, N2030, N202, N2010, N2000, 
        N1990, N1980, N1970, N1960, N195, N194, N193, N192, N191, N190}), .B({
        N2790, N2790, N2780, N2770, N2760, N2750, N2740, N2730, N2720, N2710, 
        N2700, N2690, N2680, N2670, N2660, N2650, N2640, N2630, N2620, N2610, 
        N2600, N2590, N2580, N2570}), .CI(1'b0), .SUM({N3030, N3020, N3010, 
        N3000, N2990, N2980, N2970, N2960, N2950, N2940, N2930, N2920, N2910, 
        N2900, N2890, N2880, N2870, N2860, N2850, N2840, N2830, N2820, N2810, 
        N2800}) );
  geofence_DW01_add_2 add_2_root_add_149_4 ( .A({N3700, N3700, N3700, N3690, 
        N3680, N3670, N3660, N3650, N3640, N3630, N3620, N3610, N3600, N3590, 
        N3580, N3570, N3560, N3550, N3540, N3530, N3520, N3510, N3500, N3490, 
        N3480}), .B({N462, N462, N462, N461, N460, N459, N458, N457, N456, 
        N455, N454, N453, N452, N451, N450, N449, N448, N447, N446, N445, N444, 
        N443, N442, N441, N440}), .CI(1'b0), .SUM({N3950, N3940, N3930, N3920, 
        N3910, N3900, N3890, N3880, N3870, N3860, N3850, N3840, N3830, N3820, 
        N3810, N3800, N3790, N3780, N3770, N3760, N3750, N3740, N3730, N3720, 
        N3710}) );
  geofence_DW01_add_1 add_1_root_add_149_4 ( .A({N555, N555, N555, N555, N554, 
        N553, N552, N551, N550, N549, N548, N547, N546, N545, N544, N543, N542, 
        N541, N540, N539, N538, N537, N536, N535, N534, N533}), .B({N3030, 
        N3030, N3030, N3020, N3010, N3000, N2990, N2980, N2970, N2960, N2950, 
        N2940, N2930, N2920, N2910, N2900, N2890, N2880, N2870, N2860, N2850, 
        N2840, N2830, N2820, N2810, N2800}), .CI(1'b0), .SUM({N488, N487, N486, 
        N485, N484, N483, N482, N481, N480, N479, N478, N477, N476, N475, N474, 
        N473, N472, N471, N470, N469, N468, N467, N466, N465, N464, N463}) );
  geofence_DW01_add_0 add_0_root_add_149_4 ( .A({N3950, N3950, N3950, N3940, 
        N3930, N3920, N3910, N3900, N3890, N3880, N3870, N3860, N3850, N3840, 
        N3830, N3820, N3810, N3800, N3790, N3780, N3770, N3760, N3750, N3740, 
        N3730, N3720, N3710}), .B({N488, N488, N487, N486, N485, N484, N483, 
        N482, N481, N480, N479, N478, N477, N476, N475, N474, N473, N472, N471, 
        N470, N469, N468, N467, N466, N465, N464, N463}), .CI(1'b0), .SUM({
        N582, N581, N580, N579, N578, N577, N576, N575, N574, N573, N572, N571, 
        N570, N569, N568, N567, N566, N565, N564, N563, N562, N561, N560, N559, 
        N558, N557, N556}) );
  TLATXL point_cal_vec2_reg_x__9_ ( .G(n5210), .D(N103), .Q(
        point_cal_vec2_x__9_) );
  TLATXL point_cal_vec2_reg_x__8_ ( .G(n5210), .D(N102), .Q(
        point_cal_vec2_x__8_) );
  TLATXL point_cal_vec2_reg_x__7_ ( .G(n5210), .D(N101), .Q(
        point_cal_vec2_x__7_) );
  TLATXL point_cal_vec2_reg_x__6_ ( .G(n5210), .D(N100), .Q(
        point_cal_vec2_x__6_) );
  TLATXL point_cal_vec2_reg_x__5_ ( .G(n5210), .D(N99), .Q(
        point_cal_vec2_x__5_) );
  TLATXL point_cal_vec2_reg_x__4_ ( .G(n5210), .D(N98), .Q(
        point_cal_vec2_x__4_) );
  TLATXL point_cal_vec2_reg_x__3_ ( .G(n5210), .D(N97), .Q(
        point_cal_vec2_x__3_) );
  TLATXL point_cal_vec2_reg_x__2_ ( .G(n5210), .D(N96), .Q(
        point_cal_vec2_x__2_) );
  TLATXL point_cal_vec2_reg_x__1_ ( .G(n5210), .D(N95), .Q(
        point_cal_vec2_x__1_) );
  TLATXL point_cal_vec2_reg_y__9_ ( .G(n5210), .D(N93), .Q(
        point_cal_vec2_y__9_) );
  TLATXL point_cal_vec2_reg_y__8_ ( .G(n5210), .D(N92), .Q(
        point_cal_vec2_y__8_) );
  TLATXL point_cal_vec2_reg_y__7_ ( .G(n5210), .D(N91), .Q(
        point_cal_vec2_y__7_) );
  TLATXL point_cal_vec2_reg_y__6_ ( .G(n5210), .D(N90), .Q(
        point_cal_vec2_y__6_) );
  TLATXL point_cal_vec2_reg_y__5_ ( .G(n5210), .D(N89), .Q(
        point_cal_vec2_y__5_) );
  TLATXL point_cal_vec2_reg_y__4_ ( .G(n5210), .D(N88), .Q(
        point_cal_vec2_y__4_) );
  TLATXL point_cal_vec2_reg_y__3_ ( .G(n5210), .D(N87), .Q(
        point_cal_vec2_y__3_) );
  TLATXL point_cal_vec2_reg_y__2_ ( .G(n5210), .D(N86), .Q(
        point_cal_vec2_y__2_) );
  TLATXL point_cal_vec2_reg_y__1_ ( .G(n5210), .D(N85), .Q(
        point_cal_vec2_y__1_) );
  TLATXL point_cal_vec2_reg_x__0_ ( .G(n5210), .D(N94), .Q(
        point_cal_vec2_x__0_) );
  TLATXL point_cal_vec2_reg_y__0_ ( .G(n5210), .D(N84), .Q(
        point_cal_vec2_y__0_) );
  DFFQX1 point_6_reg_x__9_ ( .D(n397), .CK(clk), .Q(point_6_x__9_) );
  DFFQX1 point_6_reg_x__8_ ( .D(n398), .CK(clk), .Q(point_6_x__8_) );
  DFFQX1 point_6_reg_x__7_ ( .D(n399), .CK(clk), .Q(point_6_x__7_) );
  DFFQX1 point_6_reg_x__6_ ( .D(n400), .CK(clk), .Q(point_6_x__6_) );
  DFFQX1 point_6_reg_x__5_ ( .D(n401), .CK(clk), .Q(point_6_x__5_) );
  DFFQX1 point_6_reg_x__4_ ( .D(n402), .CK(clk), .Q(point_6_x__4_) );
  DFFQX1 point_6_reg_x__3_ ( .D(n403), .CK(clk), .Q(point_6_x__3_) );
  DFFQX1 point_6_reg_x__2_ ( .D(n404), .CK(clk), .Q(point_6_x__2_) );
  DFFQX1 point_6_reg_x__1_ ( .D(n405), .CK(clk), .Q(point_6_x__1_) );
  DFFQX1 point_6_reg_x__0_ ( .D(n406), .CK(clk), .Q(point_6_x__0_) );
  DFFQX1 point_6_reg_y__9_ ( .D(n407), .CK(clk), .Q(point_6_y__9_) );
  DFFQX1 point_6_reg_y__8_ ( .D(n408), .CK(clk), .Q(point_6_y__8_) );
  DFFQX1 point_6_reg_y__7_ ( .D(n409), .CK(clk), .Q(point_6_y__7_) );
  DFFQX1 point_6_reg_y__6_ ( .D(n410), .CK(clk), .Q(point_6_y__6_) );
  DFFQX1 point_6_reg_y__5_ ( .D(n411), .CK(clk), .Q(point_6_y__5_) );
  DFFQX1 point_6_reg_y__4_ ( .D(n412), .CK(clk), .Q(point_6_y__4_) );
  DFFQX1 point_6_reg_y__3_ ( .D(n413), .CK(clk), .Q(point_6_y__3_) );
  DFFQX1 point_6_reg_y__2_ ( .D(n414), .CK(clk), .Q(point_6_y__2_) );
  DFFQX1 point_6_reg_y__1_ ( .D(n415), .CK(clk), .Q(point_6_y__1_) );
  DFFQX1 point_6_reg_y__0_ ( .D(n416), .CK(clk), .Q(point_6_y__0_) );
  DFFQX1 point_5_reg_x__9_ ( .D(n417), .CK(clk), .Q(point_5_x__9_) );
  DFFQX1 point_5_reg_x__8_ ( .D(n418), .CK(clk), .Q(point_5_x__8_) );
  DFFQX1 point_5_reg_x__7_ ( .D(n419), .CK(clk), .Q(point_5_x__7_) );
  DFFQX1 point_5_reg_x__6_ ( .D(n420), .CK(clk), .Q(point_5_x__6_) );
  DFFQX1 point_5_reg_x__5_ ( .D(n421), .CK(clk), .Q(point_5_x__5_) );
  DFFQX1 point_5_reg_x__4_ ( .D(n422), .CK(clk), .Q(point_5_x__4_) );
  DFFQX1 point_5_reg_x__3_ ( .D(n423), .CK(clk), .Q(point_5_x__3_) );
  DFFQX1 point_5_reg_x__2_ ( .D(n424), .CK(clk), .Q(point_5_x__2_) );
  DFFQX1 point_5_reg_x__1_ ( .D(n425), .CK(clk), .Q(point_5_x__1_) );
  DFFQX1 point_5_reg_x__0_ ( .D(n426), .CK(clk), .Q(point_5_x__0_) );
  DFFQX1 point_5_reg_y__9_ ( .D(n427), .CK(clk), .Q(point_5_y__9_) );
  DFFQX1 point_5_reg_y__8_ ( .D(n428), .CK(clk), .Q(point_5_y__8_) );
  DFFQX1 point_5_reg_y__7_ ( .D(n429), .CK(clk), .Q(point_5_y__7_) );
  DFFQX1 point_5_reg_y__6_ ( .D(n430), .CK(clk), .Q(point_5_y__6_) );
  DFFQX1 point_5_reg_y__5_ ( .D(n431), .CK(clk), .Q(point_5_y__5_) );
  DFFQX1 point_5_reg_y__4_ ( .D(n432), .CK(clk), .Q(point_5_y__4_) );
  DFFQX1 point_5_reg_y__3_ ( .D(n433), .CK(clk), .Q(point_5_y__3_) );
  DFFQX1 point_5_reg_y__2_ ( .D(n434), .CK(clk), .Q(point_5_y__2_) );
  DFFQX1 point_5_reg_y__1_ ( .D(n435), .CK(clk), .Q(point_5_y__1_) );
  DFFQX1 point_5_reg_y__0_ ( .D(n436), .CK(clk), .Q(point_5_y__0_) );
  DFFQX1 point_4_reg_x__9_ ( .D(n317), .CK(clk), .Q(point_4_x__9_) );
  DFFQX1 point_4_reg_x__8_ ( .D(n318), .CK(clk), .Q(point_4_x__8_) );
  DFFQX1 point_4_reg_x__7_ ( .D(n319), .CK(clk), .Q(point_4_x__7_) );
  DFFQX1 point_4_reg_x__6_ ( .D(n320), .CK(clk), .Q(point_4_x__6_) );
  DFFQX1 point_4_reg_x__5_ ( .D(n321), .CK(clk), .Q(point_4_x__5_) );
  DFFQX1 point_4_reg_x__4_ ( .D(n322), .CK(clk), .Q(point_4_x__4_) );
  DFFQX1 point_4_reg_x__3_ ( .D(n323), .CK(clk), .Q(point_4_x__3_) );
  DFFQX1 point_4_reg_x__2_ ( .D(n324), .CK(clk), .Q(point_4_x__2_) );
  DFFQX1 point_4_reg_x__1_ ( .D(n325), .CK(clk), .Q(point_4_x__1_) );
  DFFQX1 point_4_reg_x__0_ ( .D(n326), .CK(clk), .Q(point_4_x__0_) );
  DFFQX1 point_4_reg_y__9_ ( .D(n327), .CK(clk), .Q(point_4_y__9_) );
  DFFQX1 point_4_reg_y__8_ ( .D(n328), .CK(clk), .Q(point_4_y__8_) );
  DFFQX1 point_4_reg_y__7_ ( .D(n329), .CK(clk), .Q(point_4_y__7_) );
  DFFQX1 point_4_reg_y__6_ ( .D(n330), .CK(clk), .Q(point_4_y__6_) );
  DFFQX1 point_4_reg_y__5_ ( .D(n331), .CK(clk), .Q(point_4_y__5_) );
  DFFQX1 point_4_reg_y__4_ ( .D(n332), .CK(clk), .Q(point_4_y__4_) );
  DFFQX1 point_4_reg_y__3_ ( .D(n333), .CK(clk), .Q(point_4_y__3_) );
  DFFQX1 point_4_reg_y__2_ ( .D(n334), .CK(clk), .Q(point_4_y__2_) );
  DFFQX1 point_4_reg_y__1_ ( .D(n335), .CK(clk), .Q(point_4_y__1_) );
  DFFQX1 point_4_reg_y__0_ ( .D(n336), .CK(clk), .Q(point_4_y__0_) );
  DFFX1 point_2_reg_x__9_ ( .D(n357), .CK(clk), .QN(n637) );
  DFFX1 point_2_reg_x__8_ ( .D(n358), .CK(clk), .QN(n638) );
  DFFX1 point_2_reg_x__7_ ( .D(n359), .CK(clk), .QN(n639) );
  DFFX1 point_2_reg_x__6_ ( .D(n360), .CK(clk), .QN(n640) );
  DFFX1 point_2_reg_x__5_ ( .D(n361), .CK(clk), .QN(n641) );
  DFFX1 point_2_reg_x__4_ ( .D(n362), .CK(clk), .QN(n642) );
  DFFX1 point_2_reg_x__3_ ( .D(n363), .CK(clk), .QN(n643) );
  DFFX1 point_2_reg_x__2_ ( .D(n364), .CK(clk), .QN(n644) );
  DFFX1 point_2_reg_x__1_ ( .D(n365), .CK(clk), .QN(n645) );
  DFFX1 point_2_reg_x__0_ ( .D(n366), .CK(clk), .QN(n646) );
  DFFX1 point_2_reg_y__9_ ( .D(n367), .CK(clk), .QN(n647) );
  DFFX1 point_2_reg_y__8_ ( .D(n368), .CK(clk), .QN(n648) );
  DFFX1 point_2_reg_y__7_ ( .D(n369), .CK(clk), .QN(n649) );
  DFFX1 point_2_reg_y__6_ ( .D(n370), .CK(clk), .QN(n650) );
  DFFX1 point_2_reg_y__5_ ( .D(n371), .CK(clk), .QN(n651) );
  DFFX1 point_2_reg_y__4_ ( .D(n372), .CK(clk), .QN(n652) );
  DFFX1 point_2_reg_y__3_ ( .D(n373), .CK(clk), .QN(n653) );
  DFFX1 point_2_reg_y__2_ ( .D(n374), .CK(clk), .QN(n654) );
  DFFX1 point_2_reg_y__1_ ( .D(n375), .CK(clk), .QN(n655) );
  DFFX1 point_2_reg_y__0_ ( .D(n376), .CK(clk), .QN(n656) );
  DFFX1 point_3_reg_x__9_ ( .D(n337), .CK(clk), .QN(n617) );
  DFFX1 point_3_reg_x__8_ ( .D(n338), .CK(clk), .QN(n618) );
  DFFX1 point_3_reg_x__7_ ( .D(n339), .CK(clk), .QN(n619) );
  DFFX1 point_3_reg_x__6_ ( .D(n340), .CK(clk), .QN(n620) );
  DFFX1 point_3_reg_x__5_ ( .D(n341), .CK(clk), .QN(n621) );
  DFFX1 point_3_reg_x__4_ ( .D(n342), .CK(clk), .QN(n622) );
  DFFX1 point_3_reg_x__3_ ( .D(n343), .CK(clk), .QN(n623) );
  DFFX1 point_3_reg_x__2_ ( .D(n344), .CK(clk), .QN(n624) );
  DFFX1 point_3_reg_x__1_ ( .D(n345), .CK(clk), .QN(n625) );
  DFFX1 point_3_reg_x__0_ ( .D(n346), .CK(clk), .QN(n626) );
  DFFX1 point_3_reg_y__9_ ( .D(n347), .CK(clk), .QN(n627) );
  DFFX1 point_3_reg_y__8_ ( .D(n348), .CK(clk), .QN(n628) );
  DFFX1 point_3_reg_y__7_ ( .D(n349), .CK(clk), .QN(n629) );
  DFFX1 point_3_reg_y__6_ ( .D(n350), .CK(clk), .QN(n630) );
  DFFX1 point_3_reg_y__5_ ( .D(n351), .CK(clk), .QN(n631) );
  DFFX1 point_3_reg_y__4_ ( .D(n352), .CK(clk), .QN(n632) );
  DFFX1 point_3_reg_y__3_ ( .D(n353), .CK(clk), .QN(n633) );
  DFFX1 point_3_reg_y__2_ ( .D(n354), .CK(clk), .QN(n634) );
  DFFX1 point_3_reg_y__1_ ( .D(n355), .CK(clk), .QN(n635) );
  DFFX1 point_3_reg_y__0_ ( .D(n356), .CK(clk), .QN(n636) );
  DFFQX1 point_1_reg_y__9_ ( .D(n387), .CK(clk), .Q(point_1_y__9_) );
  DFFQX1 point_1_reg_x__9_ ( .D(n377), .CK(clk), .Q(point_1_x__9_) );
  DFFQX1 point_1_reg_y__8_ ( .D(n388), .CK(clk), .Q(point_1_y__8_) );
  DFFQX1 point_1_reg_x__8_ ( .D(n378), .CK(clk), .Q(point_1_x__8_) );
  DFFQX1 point_1_reg_y__7_ ( .D(n389), .CK(clk), .Q(point_1_y__7_) );
  DFFQX1 point_1_reg_x__7_ ( .D(n379), .CK(clk), .Q(point_1_x__7_) );
  DFFQX1 point_1_reg_y__6_ ( .D(n390), .CK(clk), .Q(point_1_y__6_) );
  DFFQX1 point_1_reg_x__6_ ( .D(n380), .CK(clk), .Q(point_1_x__6_) );
  DFFQX1 point_1_reg_y__5_ ( .D(n391), .CK(clk), .Q(point_1_y__5_) );
  DFFQX1 point_1_reg_x__5_ ( .D(n381), .CK(clk), .Q(point_1_x__5_) );
  DFFQX1 point_1_reg_y__4_ ( .D(n392), .CK(clk), .Q(point_1_y__4_) );
  DFFQX1 point_1_reg_x__4_ ( .D(n382), .CK(clk), .Q(point_1_x__4_) );
  DFFQX1 point_1_reg_y__3_ ( .D(n393), .CK(clk), .Q(point_1_y__3_) );
  DFFQX1 point_1_reg_x__3_ ( .D(n383), .CK(clk), .Q(point_1_x__3_) );
  DFFQX1 point_1_reg_y__2_ ( .D(n394), .CK(clk), .Q(point_1_y__2_) );
  DFFQX1 point_1_reg_x__2_ ( .D(n384), .CK(clk), .Q(point_1_x__2_) );
  DFFQX1 point_1_reg_y__1_ ( .D(n395), .CK(clk), .Q(point_1_y__1_) );
  DFFQX1 point_1_reg_x__1_ ( .D(n385), .CK(clk), .Q(point_1_x__1_) );
  DFFQX1 point_1_reg_y__0_ ( .D(n396), .CK(clk), .Q(point_1_y__0_) );
  DFFQX1 point_1_reg_x__0_ ( .D(n386), .CK(clk), .Q(point_1_x__0_) );
  DFFRX1 cs_reg_1_ ( .D(n201), .CK(clk), .RN(n590), .QN(n196) );
  DFFSX1 cs_reg_0_ ( .D(n203), .CK(clk), .SN(n590), .QN(n197) );
  DFFQX1 vector_A_reg_x__0_ ( .D(n259), .CK(clk), .Q(vector_A[11]) );
  DFFQX1 vector_E_reg_x__0_ ( .D(n260), .CK(clk), .Q(vector_E[11]) );
  DFFQX1 vector_D_reg_x__0_ ( .D(n261), .CK(clk), .Q(vector_D[11]) );
  DFFQX1 vector_D_reg_y__0_ ( .D(n316), .CK(clk), .Q(vector_D[0]) );
  DFFQX1 vector_E_reg_y__0_ ( .D(n315), .CK(clk), .Q(vector_E[0]) );
  DFFQX1 vector_B_reg_y__0_ ( .D(n313), .CK(clk), .Q(vector_B[0]) );
  DFFQX1 vector_A_reg_y__0_ ( .D(n314), .CK(clk), .Q(vector_A[0]) );
  DFFQX1 vector_B_reg_x__0_ ( .D(n258), .CK(clk), .Q(vector_B[11]) );
  DFFRX1 input_cnt_reg_0_ ( .D(n200), .CK(clk), .RN(n590), .Q(n5250), .QN(n206) );
  DFFRX1 input_cnt_reg_2_ ( .D(n198), .CK(clk), .RN(n590), .Q(n616), .QN(n204)
         );
  DFFQX1 vector_E_reg_y__2_ ( .D(n305), .CK(clk), .Q(vector_E[2]) );
  DFFQX1 vector_E_reg_x__2_ ( .D(n250), .CK(clk), .Q(vector_E[13]) );
  DFFQX1 vector_B_reg_y__2_ ( .D(n303), .CK(clk), .Q(vector_B[2]) );
  DFFQX1 vector_D_reg_y__2_ ( .D(n306), .CK(clk), .Q(vector_D[2]) );
  DFFQX1 vector_C_reg_y__0_ ( .D(n312), .CK(clk), .Q(vector_C[0]) );
  DFFQX1 vector_C_reg_y__2_ ( .D(n302), .CK(clk), .Q(vector_C[2]) );
  DFFQX1 vector_B_reg_x__2_ ( .D(n248), .CK(clk), .Q(vector_B[13]) );
  DFFQX1 vector_C_reg_x__0_ ( .D(n257), .CK(clk), .Q(vector_C[11]) );
  DFFQX1 vector_D_reg_x__2_ ( .D(n251), .CK(clk), .Q(vector_D[13]) );
  DFFQX1 vector_C_reg_x__2_ ( .D(n247), .CK(clk), .Q(vector_C[13]) );
  DFFQX1 vector_E_reg_x__4_ ( .D(n240), .CK(clk), .Q(vector_E[15]) );
  DFFQX1 vector_D_reg_y__4_ ( .D(n296), .CK(clk), .Q(vector_D[4]) );
  DFFQX1 vector_C_reg_y__4_ ( .D(n292), .CK(clk), .Q(vector_C[4]) );
  DFFQX1 vector_B_reg_y__4_ ( .D(n293), .CK(clk), .Q(vector_B[4]) );
  DFFQX1 vector_B_reg_x__4_ ( .D(n238), .CK(clk), .Q(vector_B[15]) );
  DFFQX1 vector_E_reg_y__4_ ( .D(n295), .CK(clk), .Q(vector_E[4]) );
  DFFQX1 vector_D_reg_x__4_ ( .D(n241), .CK(clk), .Q(vector_D[15]) );
  DFFQX1 vector_C_reg_x__4_ ( .D(n237), .CK(clk), .Q(vector_C[15]) );
  DFFQX1 vector_A_reg_x__4_ ( .D(n239), .CK(clk), .Q(vector_A[15]) );
  DFFQX1 vector_A_reg_x__2_ ( .D(n249), .CK(clk), .Q(vector_A[13]) );
  DFFQX1 vector_A_reg_y__4_ ( .D(n294), .CK(clk), .Q(vector_A[4]) );
  DFFQX1 vector_A_reg_y__2_ ( .D(n304), .CK(clk), .Q(vector_A[2]) );
  DFFQX1 vector_E_reg_x__6_ ( .D(n230), .CK(clk), .Q(vector_E[17]) );
  DFFQX1 vector_D_reg_y__6_ ( .D(n286), .CK(clk), .Q(vector_D[6]) );
  DFFQX1 vector_C_reg_y__6_ ( .D(n282), .CK(clk), .Q(vector_C[6]) );
  DFFQX1 vector_B_reg_y__6_ ( .D(n283), .CK(clk), .Q(vector_B[6]) );
  DFFQX1 vector_B_reg_x__6_ ( .D(n228), .CK(clk), .Q(vector_B[17]) );
  DFFQX1 vector_A_reg_y__6_ ( .D(n284), .CK(clk), .Q(vector_A[6]) );
  DFFQX1 vector_A_reg_x__6_ ( .D(n229), .CK(clk), .Q(vector_A[17]) );
  DFFQX1 vector_E_reg_y__6_ ( .D(n285), .CK(clk), .Q(vector_E[6]) );
  DFFQX1 vector_D_reg_x__6_ ( .D(n231), .CK(clk), .Q(vector_D[17]) );
  DFFQX1 vector_C_reg_x__6_ ( .D(n227), .CK(clk), .Q(vector_C[17]) );
  DFFQX1 vector_E_reg_x__8_ ( .D(n220), .CK(clk), .Q(vector_E[19]) );
  DFFQX1 vector_D_reg_y__8_ ( .D(n276), .CK(clk), .Q(vector_D[8]) );
  DFFQX1 vector_D_reg_x__8_ ( .D(n221), .CK(clk), .Q(vector_D[19]) );
  DFFQX1 vector_C_reg_y__8_ ( .D(n272), .CK(clk), .Q(vector_C[8]) );
  DFFQX1 vector_C_reg_x__8_ ( .D(n217), .CK(clk), .Q(vector_C[19]) );
  DFFQX1 vector_B_reg_y__8_ ( .D(n273), .CK(clk), .Q(vector_B[8]) );
  DFFQX1 vector_B_reg_x__8_ ( .D(n218), .CK(clk), .Q(vector_B[19]) );
  DFFQX1 vector_A_reg_x__8_ ( .D(n219), .CK(clk), .Q(vector_A[19]) );
  DFFQX1 vector_A_reg_y__8_ ( .D(n274), .CK(clk), .Q(vector_A[8]) );
  DFFQX1 vector_E_reg_y__8_ ( .D(n275), .CK(clk), .Q(vector_E[8]) );
  DFFQX4 vector_D_reg_y__10_ ( .D(n266), .CK(clk), .Q(vector_D[10]) );
  DFFQX4 vector_C_reg_y__10_ ( .D(n262), .CK(clk), .Q(vector_C[10]) );
  DFFQX4 vector_B_reg_y__10_ ( .D(n263), .CK(clk), .Q(vector_B[10]) );
  DFFQX4 vector_A_reg_y__10_ ( .D(n264), .CK(clk), .Q(vector_A[10]) );
  DFFQX4 vector_E_reg_y__10_ ( .D(n265), .CK(clk), .Q(vector_E[10]) );
  DFFQX4 vector_C_reg_x__10_ ( .D(n207), .CK(clk), .Q(vector_C[21]) );
  DFFQX4 vector_A_reg_x__10_ ( .D(n209), .CK(clk), .Q(vector_A[21]) );
  DFFQX4 vector_E_reg_x__10_ ( .D(n210), .CK(clk), .Q(vector_E[21]) );
  DFFQX4 vector_D_reg_x__10_ ( .D(n211), .CK(clk), .Q(vector_D[21]) );
  DFFQX4 vector_B_reg_x__10_ ( .D(n208), .CK(clk), .Q(vector_B[21]) );
  DFFQX2 vector_E_reg_y__1_ ( .D(n310), .CK(clk), .Q(vector_E[1]) );
  DFFQX2 vector_E_reg_x__1_ ( .D(n255), .CK(clk), .Q(vector_E[12]) );
  DFFQX2 vector_B_reg_y__1_ ( .D(n308), .CK(clk), .Q(vector_B[1]) );
  DFFQX2 vector_D_reg_y__1_ ( .D(n311), .CK(clk), .Q(vector_D[1]) );
  DFFQX2 vector_C_reg_y__1_ ( .D(n307), .CK(clk), .Q(vector_C[1]) );
  DFFQX2 vector_B_reg_x__1_ ( .D(n253), .CK(clk), .Q(vector_B[12]) );
  DFFQX2 vector_D_reg_x__1_ ( .D(n256), .CK(clk), .Q(vector_D[12]) );
  DFFQX2 vector_C_reg_x__1_ ( .D(n252), .CK(clk), .Q(vector_C[12]) );
  DFFQX2 vector_A_reg_y__1_ ( .D(n309), .CK(clk), .Q(vector_A[1]) );
  DFFQX2 vector_A_reg_x__1_ ( .D(n254), .CK(clk), .Q(vector_A[12]) );
  DFFQX2 vector_E_reg_x__9_ ( .D(n215), .CK(clk), .Q(vector_E[20]) );
  DFFQX2 vector_D_reg_y__9_ ( .D(n271), .CK(clk), .Q(vector_D[9]) );
  DFFQX2 vector_C_reg_y__9_ ( .D(n267), .CK(clk), .Q(vector_C[9]) );
  DFFQX2 vector_B_reg_y__9_ ( .D(n268), .CK(clk), .Q(vector_B[9]) );
  DFFQX2 vector_B_reg_x__9_ ( .D(n213), .CK(clk), .Q(vector_B[20]) );
  DFFQX2 vector_A_reg_y__9_ ( .D(n269), .CK(clk), .Q(vector_A[9]) );
  DFFQX2 vector_A_reg_x__9_ ( .D(n214), .CK(clk), .Q(vector_A[20]) );
  DFFQX2 vector_E_reg_y__9_ ( .D(n270), .CK(clk), .Q(vector_E[9]) );
  DFFQX2 vector_D_reg_x__9_ ( .D(n216), .CK(clk), .Q(vector_D[20]) );
  DFFQX2 vector_C_reg_x__9_ ( .D(n212), .CK(clk), .Q(vector_C[20]) );
  DFFQX2 vector_E_reg_y__3_ ( .D(n300), .CK(clk), .Q(vector_E[3]) );
  DFFQX2 vector_E_reg_x__3_ ( .D(n245), .CK(clk), .Q(vector_E[14]) );
  DFFQX2 vector_B_reg_y__3_ ( .D(n298), .CK(clk), .Q(vector_B[3]) );
  DFFQX2 vector_D_reg_y__3_ ( .D(n301), .CK(clk), .Q(vector_D[3]) );
  DFFQX2 vector_C_reg_y__3_ ( .D(n297), .CK(clk), .Q(vector_C[3]) );
  DFFQX2 vector_D_reg_x__3_ ( .D(n246), .CK(clk), .Q(vector_D[14]) );
  DFFQX2 vector_C_reg_x__3_ ( .D(n242), .CK(clk), .Q(vector_C[14]) );
  DFFQX2 vector_A_reg_x__3_ ( .D(n244), .CK(clk), .Q(vector_A[14]) );
  DFFQX2 vector_E_reg_x__5_ ( .D(n235), .CK(clk), .Q(vector_E[16]) );
  DFFQX2 vector_D_reg_y__5_ ( .D(n291), .CK(clk), .Q(vector_D[5]) );
  DFFQX2 vector_D_reg_x__5_ ( .D(n236), .CK(clk), .Q(vector_D[16]) );
  DFFQX2 vector_C_reg_y__5_ ( .D(n287), .CK(clk), .Q(vector_C[5]) );
  DFFQX2 vector_C_reg_x__5_ ( .D(n232), .CK(clk), .Q(vector_C[16]) );
  DFFQX2 vector_B_reg_y__5_ ( .D(n288), .CK(clk), .Q(vector_B[5]) );
  DFFQX2 vector_B_reg_x__5_ ( .D(n233), .CK(clk), .Q(vector_B[16]) );
  DFFQX2 vector_A_reg_x__5_ ( .D(n234), .CK(clk), .Q(vector_A[16]) );
  DFFQX2 vector_E_reg_y__5_ ( .D(n290), .CK(clk), .Q(vector_E[5]) );
  DFFQX2 vector_A_reg_y__5_ ( .D(n289), .CK(clk), .Q(vector_A[5]) );
  DFFQX2 vector_A_reg_y__3_ ( .D(n299), .CK(clk), .Q(vector_A[3]) );
  DFFQX2 vector_E_reg_x__7_ ( .D(n225), .CK(clk), .Q(vector_E[18]) );
  DFFQX2 vector_D_reg_y__7_ ( .D(n281), .CK(clk), .Q(vector_D[7]) );
  DFFQX2 vector_C_reg_y__7_ ( .D(n277), .CK(clk), .Q(vector_C[7]) );
  DFFQX2 vector_B_reg_y__7_ ( .D(n278), .CK(clk), .Q(vector_B[7]) );
  DFFQX2 vector_B_reg_x__7_ ( .D(n223), .CK(clk), .Q(vector_B[18]) );
  DFFQX2 vector_A_reg_x__7_ ( .D(n224), .CK(clk), .Q(vector_A[18]) );
  DFFQX2 vector_A_reg_y__7_ ( .D(n279), .CK(clk), .Q(vector_A[7]) );
  DFFQX2 vector_E_reg_y__7_ ( .D(n280), .CK(clk), .Q(vector_E[7]) );
  DFFQX2 vector_D_reg_x__7_ ( .D(n226), .CK(clk), .Q(vector_D[18]) );
  DFFQX2 vector_C_reg_x__7_ ( .D(n222), .CK(clk), .Q(vector_C[18]) );
  DFFQX2 vector_B_reg_x__3_ ( .D(n243), .CK(clk), .Q(vector_B[14]) );
  DFFRX2 input_cnt_reg_1_ ( .D(n199), .CK(clk), .RN(n590), .QN(n205) );
  INVXL U390 ( .A(vector_A[2]), .Y(n4370) );
  INVX3 U391 ( .A(n4370), .Y(n4380) );
  INVXL U392 ( .A(vector_A[13]), .Y(n4390) );
  INVX3 U393 ( .A(n4390), .Y(n4400) );
  INVXL U394 ( .A(vector_C[13]), .Y(n4410) );
  INVX3 U395 ( .A(n4410), .Y(n4420) );
  INVXL U396 ( .A(vector_D[13]), .Y(n4430) );
  INVX3 U397 ( .A(n4430), .Y(n4440) );
  INVXL U398 ( .A(vector_B[13]), .Y(n4450) );
  INVX3 U399 ( .A(n4450), .Y(n4460) );
  INVXL U400 ( .A(vector_C[2]), .Y(n4470) );
  INVX3 U401 ( .A(n4470), .Y(n4480) );
  INVXL U402 ( .A(vector_D[2]), .Y(n4490) );
  INVX3 U403 ( .A(n4490), .Y(n4500) );
  INVXL U404 ( .A(vector_B[2]), .Y(n4510) );
  INVX3 U405 ( .A(n4510), .Y(n4520) );
  INVXL U406 ( .A(vector_E[13]), .Y(n4530) );
  INVX3 U407 ( .A(n4530), .Y(n4540) );
  INVXL U408 ( .A(vector_E[2]), .Y(n4550) );
  INVX3 U409 ( .A(n4550), .Y(n4560) );
  INVXL U410 ( .A(vector_E[8]), .Y(n4570) );
  INVX3 U411 ( .A(n4570), .Y(n4580) );
  INVXL U412 ( .A(vector_A[8]), .Y(n4590) );
  INVX3 U413 ( .A(n4590), .Y(n4600) );
  INVXL U414 ( .A(vector_A[19]), .Y(n4610) );
  INVX3 U415 ( .A(n4610), .Y(n4620) );
  INVXL U416 ( .A(vector_B[19]), .Y(n4630) );
  INVX3 U417 ( .A(n4630), .Y(n4640) );
  INVXL U418 ( .A(vector_B[8]), .Y(n4650) );
  INVX3 U419 ( .A(n4650), .Y(n4660) );
  INVXL U420 ( .A(vector_C[19]), .Y(n4670) );
  INVX3 U421 ( .A(n4670), .Y(n4680) );
  INVXL U422 ( .A(vector_C[8]), .Y(n4690) );
  INVX3 U423 ( .A(n4690), .Y(n4700) );
  INVXL U424 ( .A(vector_D[19]), .Y(n4710) );
  INVX3 U425 ( .A(n4710), .Y(n4720) );
  INVXL U426 ( .A(vector_D[8]), .Y(n4730) );
  INVX3 U427 ( .A(n4730), .Y(n4740) );
  INVXL U428 ( .A(vector_E[19]), .Y(n4750) );
  INVX3 U429 ( .A(n4750), .Y(n4760) );
  INVXL U430 ( .A(vector_C[17]), .Y(n4770) );
  CLKINVX1 U431 ( .A(n4770), .Y(n4780) );
  INVXL U432 ( .A(vector_D[17]), .Y(n4790) );
  INVX3 U433 ( .A(n4790), .Y(n4800) );
  INVXL U434 ( .A(vector_E[6]), .Y(n4810) );
  INVX3 U435 ( .A(n4810), .Y(n4820) );
  INVXL U436 ( .A(vector_A[17]), .Y(n4830) );
  INVX3 U437 ( .A(n4830), .Y(n4840) );
  INVXL U438 ( .A(vector_A[6]), .Y(n4850) );
  INVX3 U439 ( .A(n4850), .Y(n4860) );
  INVXL U440 ( .A(vector_B[17]), .Y(n4870) );
  INVX3 U441 ( .A(n4870), .Y(n4880) );
  INVXL U442 ( .A(vector_B[6]), .Y(n4890) );
  INVX3 U443 ( .A(n4890), .Y(n4900) );
  INVXL U444 ( .A(vector_C[6]), .Y(n4910) );
  INVX3 U445 ( .A(n4910), .Y(n4920) );
  INVXL U446 ( .A(vector_D[6]), .Y(n4930) );
  INVX3 U447 ( .A(n4930), .Y(n4940) );
  INVXL U448 ( .A(vector_E[17]), .Y(n4950) );
  INVX3 U449 ( .A(n4950), .Y(n4960) );
  INVXL U450 ( .A(vector_A[4]), .Y(n4970) );
  INVX3 U451 ( .A(n4970), .Y(n4980) );
  INVXL U452 ( .A(vector_A[15]), .Y(n4990) );
  INVX3 U453 ( .A(n4990), .Y(n5000) );
  INVXL U454 ( .A(vector_C[15]), .Y(n5010) );
  INVX3 U455 ( .A(n5010), .Y(n5020) );
  INVXL U456 ( .A(vector_D[15]), .Y(n5030) );
  INVX3 U457 ( .A(n5030), .Y(n5040) );
  INVXL U458 ( .A(vector_E[4]), .Y(n5050) );
  INVX3 U459 ( .A(n5050), .Y(n5060) );
  INVXL U460 ( .A(vector_B[15]), .Y(n5070) );
  INVX3 U461 ( .A(n5070), .Y(n5080) );
  INVXL U462 ( .A(vector_B[4]), .Y(n5090) );
  INVX3 U463 ( .A(n5090), .Y(n5100) );
  INVXL U464 ( .A(vector_C[4]), .Y(n5110) );
  INVX3 U465 ( .A(n5110), .Y(n5120) );
  INVXL U466 ( .A(vector_D[4]), .Y(n5130) );
  INVX3 U467 ( .A(n5130), .Y(n5140) );
  INVXL U468 ( .A(vector_E[15]), .Y(n5150) );
  INVX3 U469 ( .A(n5150), .Y(n5160) );
  INVXL U470 ( .A(vector_C[11]), .Y(n5170) );
  INVX3 U471 ( .A(n5170), .Y(n5180) );
  INVXL U472 ( .A(vector_C[0]), .Y(n5190) );
  INVX3 U473 ( .A(n5190), .Y(n5200) );
  BUFX4 U474 ( .A(N83), .Y(n5210) );
  NAND4BX1 U475 ( .AN(n5320), .B(n5290), .C(n149), .D(n614), .Y(N83) );
  OA22X1 U476 ( .A0(N582), .A1(n5670), .B0(N582), .B1(n5660), .Y(n666) );
  INVX12 U477 ( .A(n666), .Y(is_inside) );
  OR2X1 U478 ( .A(n197), .B(n196), .Y(N591) );
  INVX12 U479 ( .A(N591), .Y(valid) );
  CLKBUFX3 U480 ( .A(n80), .Y(n5350) );
  CLKINVX1 U481 ( .A(Y[0]), .Y(n610) );
  CLKINVX1 U482 ( .A(Y[1]), .Y(n609) );
  CLKINVX1 U483 ( .A(Y[2]), .Y(n608) );
  CLKINVX1 U484 ( .A(Y[3]), .Y(n607) );
  CLKINVX1 U485 ( .A(Y[4]), .Y(n606) );
  CLKINVX1 U486 ( .A(Y[5]), .Y(n605) );
  CLKINVX1 U487 ( .A(Y[6]), .Y(n604) );
  CLKINVX1 U488 ( .A(Y[7]), .Y(n603) );
  CLKINVX1 U489 ( .A(Y[8]), .Y(n602) );
  CLKINVX1 U490 ( .A(Y[9]), .Y(n601) );
  CLKINVX1 U491 ( .A(X[0]), .Y(n600) );
  CLKINVX1 U492 ( .A(X[1]), .Y(n599) );
  CLKINVX1 U493 ( .A(X[2]), .Y(n598) );
  CLKINVX1 U494 ( .A(X[3]), .Y(n597) );
  CLKINVX1 U495 ( .A(X[4]), .Y(n596) );
  CLKINVX1 U496 ( .A(X[5]), .Y(n595) );
  CLKINVX1 U497 ( .A(X[6]), .Y(n594) );
  CLKINVX1 U498 ( .A(X[7]), .Y(n593) );
  CLKINVX1 U499 ( .A(X[8]), .Y(n592) );
  CLKINVX1 U500 ( .A(X[9]), .Y(n5910) );
  NAND2BX1 U501 ( .AN(n129), .B(n5250), .Y(n5240) );
  NOR3X1 U502 ( .A(n206), .B(n205), .C(n616), .Y(n130) );
  NAND4X1 U503 ( .A(n204), .B(n59), .C(n206), .D(n205), .Y(n126) );
  CLKINVX1 U504 ( .A(vector_tmp[0]), .Y(n589) );
  CLKINVX1 U505 ( .A(vector_tmp[11]), .Y(n5780) );
  CLKBUFX3 U506 ( .A(n5370), .Y(n5390) );
  CLKBUFX3 U507 ( .A(n5380), .Y(n5370) );
  CLKBUFX3 U508 ( .A(n5520), .Y(n5540) );
  CLKBUFX3 U509 ( .A(n5530), .Y(n5550) );
  CLKBUFX3 U510 ( .A(n5420), .Y(n5440) );
  CLKBUFX3 U511 ( .A(n5430), .Y(n5450) );
  CLKBUFX3 U512 ( .A(n5460), .Y(n5470) );
  CLKBUFX3 U513 ( .A(n5490), .Y(n5510) );
  CLKBUFX3 U514 ( .A(n5480), .Y(n5500) );
  CLKBUFX3 U515 ( .A(n611), .Y(n5380) );
  CLKINVX1 U516 ( .A(n5350), .Y(n611) );
  CLKBUFX3 U517 ( .A(n612), .Y(n5360) );
  CLKINVX1 U518 ( .A(n5340), .Y(n612) );
  CLKBUFX3 U519 ( .A(n31), .Y(n5530) );
  CLKBUFX3 U520 ( .A(n36), .Y(n5430) );
  CLKBUFX3 U521 ( .A(n31), .Y(n5520) );
  CLKBUFX3 U522 ( .A(n36), .Y(n5420) );
  CLKBUFX3 U523 ( .A(n35), .Y(n5460) );
  CLKBUFX3 U524 ( .A(n33), .Y(n5490) );
  CLKBUFX3 U525 ( .A(n33), .Y(n5480) );
  OAI22XL U526 ( .A0(n5350), .A1(n636), .B0(n5380), .B1(n610), .Y(n356) );
  OAI22XL U527 ( .A0(n5350), .A1(n635), .B0(n5390), .B1(n609), .Y(n355) );
  OAI22XL U528 ( .A0(n5350), .A1(n634), .B0(n5390), .B1(n608), .Y(n354) );
  OAI22XL U529 ( .A0(n5350), .A1(n633), .B0(n5390), .B1(n607), .Y(n353) );
  OAI22XL U530 ( .A0(n5350), .A1(n632), .B0(n5390), .B1(n606), .Y(n352) );
  OAI22XL U531 ( .A0(n5350), .A1(n631), .B0(n5380), .B1(n605), .Y(n351) );
  OAI22XL U532 ( .A0(n5350), .A1(n630), .B0(n5380), .B1(n604), .Y(n350) );
  OAI22XL U533 ( .A0(n5350), .A1(n629), .B0(n5390), .B1(n603), .Y(n349) );
  OAI22XL U534 ( .A0(n5350), .A1(n628), .B0(n5370), .B1(n602), .Y(n348) );
  OAI22XL U535 ( .A0(n5350), .A1(n627), .B0(n5380), .B1(n601), .Y(n347) );
  OAI22XL U536 ( .A0(n5350), .A1(n626), .B0(n5380), .B1(n600), .Y(n346) );
  OAI22XL U537 ( .A0(n5350), .A1(n625), .B0(n5380), .B1(n599), .Y(n345) );
  OAI22XL U538 ( .A0(n5350), .A1(n624), .B0(n5370), .B1(n598), .Y(n344) );
  OAI22XL U539 ( .A0(n5350), .A1(n623), .B0(n5380), .B1(n597), .Y(n343) );
  OAI22XL U540 ( .A0(n5350), .A1(n622), .B0(n611), .B1(n596), .Y(n342) );
  OAI22XL U541 ( .A0(n5350), .A1(n621), .B0(n611), .B1(n595), .Y(n341) );
  OAI22XL U542 ( .A0(n5350), .A1(n620), .B0(n611), .B1(n594), .Y(n340) );
  OAI22XL U543 ( .A0(n5350), .A1(n619), .B0(n611), .B1(n593), .Y(n339) );
  OAI22XL U544 ( .A0(n5350), .A1(n618), .B0(n5370), .B1(n592), .Y(n338) );
  OAI22XL U545 ( .A0(n5350), .A1(n617), .B0(n5370), .B1(n5910), .Y(n337) );
  OAI22XL U546 ( .A0(n5360), .A1(n656), .B0(n610), .B1(n5340), .Y(n376) );
  OAI22XL U547 ( .A0(n5360), .A1(n655), .B0(n609), .B1(n5340), .Y(n375) );
  OAI22XL U548 ( .A0(n5360), .A1(n654), .B0(n608), .B1(n5340), .Y(n374) );
  OAI22XL U549 ( .A0(n5360), .A1(n653), .B0(n607), .B1(n105), .Y(n373) );
  OAI22XL U550 ( .A0(n5360), .A1(n652), .B0(n606), .B1(n105), .Y(n372) );
  OAI22XL U551 ( .A0(n5360), .A1(n651), .B0(n605), .B1(n105), .Y(n371) );
  OAI22XL U552 ( .A0(n5360), .A1(n650), .B0(n604), .B1(n105), .Y(n370) );
  OAI22XL U553 ( .A0(n5360), .A1(n649), .B0(n603), .B1(n105), .Y(n369) );
  OAI22XL U554 ( .A0(n5360), .A1(n648), .B0(n602), .B1(n105), .Y(n368) );
  OAI22XL U555 ( .A0(n5360), .A1(n647), .B0(n601), .B1(n5340), .Y(n367) );
  OAI22XL U556 ( .A0(n5360), .A1(n646), .B0(n600), .B1(n5340), .Y(n366) );
  OAI22XL U557 ( .A0(n5360), .A1(n645), .B0(n599), .B1(n5340), .Y(n365) );
  OAI22XL U558 ( .A0(n5360), .A1(n644), .B0(n598), .B1(n5340), .Y(n364) );
  OAI22XL U559 ( .A0(n5360), .A1(n643), .B0(n597), .B1(n5340), .Y(n363) );
  OAI22XL U560 ( .A0(n5360), .A1(n642), .B0(n596), .B1(n5340), .Y(n362) );
  OAI22XL U561 ( .A0(n5360), .A1(n641), .B0(n595), .B1(n5340), .Y(n361) );
  OAI22XL U562 ( .A0(n5360), .A1(n640), .B0(n594), .B1(n5340), .Y(n360) );
  OAI22XL U563 ( .A0(n5360), .A1(n639), .B0(n593), .B1(n5340), .Y(n359) );
  OAI22XL U564 ( .A0(n5360), .A1(n638), .B0(n592), .B1(n5340), .Y(n358) );
  OAI22XL U565 ( .A0(n5360), .A1(n637), .B0(n5910), .B1(n5340), .Y(n357) );
  CLKINVX1 U566 ( .A(vector_tmp[21]), .Y(n5680) );
  CLKINVX1 U567 ( .A(vector_tmp[10]), .Y(n5790) );
  NAND2BXL U568 ( .AN(valid), .B(n201), .Y(n203) );
  CLKINVX1 U569 ( .A(vector_tmp[9]), .Y(n5800) );
  CLKINVX1 U570 ( .A(vector_tmp[20]), .Y(n5690) );
  CLKINVX1 U571 ( .A(vector_tmp[8]), .Y(n5810) );
  CLKINVX1 U572 ( .A(vector_tmp[19]), .Y(n5700) );
  CLKINVX1 U573 ( .A(vector_tmp[7]), .Y(n5820) );
  CLKINVX1 U574 ( .A(vector_tmp[18]), .Y(n5710) );
  CLKINVX1 U575 ( .A(n59), .Y(n613) );
  NOR2X1 U576 ( .A(n5290), .B(n613), .Y(n80) );
  CLKBUFX3 U577 ( .A(n105), .Y(n5340) );
  CLKINVX1 U578 ( .A(vector_tmp[6]), .Y(n583) );
  CLKINVX1 U579 ( .A(vector_tmp[17]), .Y(n5720) );
  BUFX4 U580 ( .A(n128), .Y(n5300) );
  NOR2X1 U581 ( .A(n5250), .B(n129), .Y(n128) );
  AND2X2 U582 ( .A(n5300), .B(n59), .Y(n5260) );
  CLKINVX1 U583 ( .A(n5260), .Y(n31) );
  INVX3 U584 ( .A(n5240), .Y(n5310) );
  AND2X2 U585 ( .A(n5310), .B(n59), .Y(n5270) );
  CLKINVX1 U586 ( .A(n5270), .Y(n36) );
  NAND2X1 U587 ( .A(n5330), .B(n59), .Y(n35) );
  CLKINVX1 U588 ( .A(vector_tmp[5]), .Y(n584) );
  CLKINVX1 U589 ( .A(vector_tmp[16]), .Y(n5730) );
  NAND2X1 U590 ( .A(n130), .B(n59), .Y(n33) );
  CLKINVX1 U591 ( .A(vector_tmp[4]), .Y(n585) );
  CLKINVX1 U592 ( .A(vector_tmp[15]), .Y(n5740) );
  CLKBUFX3 U593 ( .A(n126), .Y(n5400) );
  CLKINVX1 U594 ( .A(n5330), .Y(n614) );
  CLKBUFX3 U595 ( .A(n126), .Y(n5410) );
  CLKINVX1 U596 ( .A(vector_tmp[3]), .Y(n586) );
  CLKINVX1 U597 ( .A(vector_tmp[14]), .Y(n5750) );
  CLKINVX1 U598 ( .A(vector_tmp[2]), .Y(n587) );
  CLKINVX1 U599 ( .A(vector_tmp[13]), .Y(n5760) );
  CLKINVX1 U600 ( .A(vector_tmp[1]), .Y(n588) );
  CLKINVX1 U601 ( .A(vector_tmp[12]), .Y(n5770) );
  NOR2X1 U602 ( .A(n130), .B(n5300), .Y(n149) );
  INVX3 U603 ( .A(n130), .Y(n615) );
  INVX3 U604 ( .A(n5240), .Y(n5320) );
  OAI2BB2XL U605 ( .B0(n610), .B1(n5410), .A0N(point_1_y__0_), .A1N(n5400), 
        .Y(n396) );
  OAI2BB2XL U606 ( .B0(n609), .B1(n5410), .A0N(point_1_y__1_), .A1N(n5400), 
        .Y(n395) );
  OAI2BB2XL U607 ( .B0(n608), .B1(n5410), .A0N(point_1_y__2_), .A1N(n5400), 
        .Y(n394) );
  OAI2BB2XL U608 ( .B0(n607), .B1(n5410), .A0N(point_1_y__3_), .A1N(n5400), 
        .Y(n393) );
  OAI2BB2XL U609 ( .B0(n606), .B1(n5400), .A0N(point_1_y__4_), .A1N(n5400), 
        .Y(n392) );
  OAI2BB2XL U610 ( .B0(n605), .B1(n5400), .A0N(point_1_y__5_), .A1N(n5400), 
        .Y(n391) );
  OAI2BB2XL U611 ( .B0(n604), .B1(n5400), .A0N(point_1_y__6_), .A1N(n5410), 
        .Y(n390) );
  OAI2BB2XL U612 ( .B0(n603), .B1(n5400), .A0N(point_1_y__7_), .A1N(n5410), 
        .Y(n389) );
  OAI2BB2XL U613 ( .B0(n602), .B1(n5400), .A0N(point_1_y__8_), .A1N(n5410), 
        .Y(n388) );
  OAI2BB2XL U614 ( .B0(n601), .B1(n5400), .A0N(point_1_y__9_), .A1N(n5410), 
        .Y(n387) );
  OAI2BB2XL U615 ( .B0(n600), .B1(n5400), .A0N(point_1_x__0_), .A1N(n5410), 
        .Y(n386) );
  OAI2BB2XL U616 ( .B0(n599), .B1(n5400), .A0N(point_1_x__1_), .A1N(n5410), 
        .Y(n385) );
  OAI2BB2XL U617 ( .B0(n598), .B1(n5410), .A0N(point_1_x__2_), .A1N(n5410), 
        .Y(n384) );
  OAI2BB2XL U618 ( .B0(n597), .B1(n5400), .A0N(point_1_x__3_), .A1N(n5410), 
        .Y(n383) );
  OAI2BB2XL U619 ( .B0(n596), .B1(n5400), .A0N(point_1_x__4_), .A1N(n5410), 
        .Y(n382) );
  OAI2BB2XL U620 ( .B0(n595), .B1(n5410), .A0N(point_1_x__5_), .A1N(n5410), 
        .Y(n381) );
  OAI2BB2XL U621 ( .B0(n594), .B1(n5400), .A0N(point_1_x__6_), .A1N(n5410), 
        .Y(n380) );
  OAI2BB2XL U622 ( .B0(n593), .B1(n126), .A0N(point_1_x__7_), .A1N(n5410), .Y(
        n379) );
  OAI2BB2XL U623 ( .B0(n592), .B1(n126), .A0N(point_1_x__8_), .A1N(n5400), .Y(
        n378) );
  OAI2BB2XL U624 ( .B0(n5910), .B1(n126), .A0N(point_1_x__9_), .A1N(n5410), 
        .Y(n377) );
  OAI2BB2XL U625 ( .B0(n5540), .B1(n610), .A0N(n5530), .A1N(point_5_y__0_), 
        .Y(n436) );
  OAI2BB2XL U626 ( .B0(n5540), .B1(n609), .A0N(n5520), .A1N(point_5_y__1_), 
        .Y(n435) );
  OAI2BB2XL U627 ( .B0(n5520), .B1(n608), .A0N(n5530), .A1N(point_5_y__2_), 
        .Y(n434) );
  OAI2BB2XL U628 ( .B0(n5520), .B1(n607), .A0N(n5520), .A1N(point_5_y__3_), 
        .Y(n433) );
  OAI2BB2XL U629 ( .B0(n31), .B1(n606), .A0N(n5530), .A1N(point_5_y__4_), .Y(
        n432) );
  OAI2BB2XL U630 ( .B0(n5550), .B1(n605), .A0N(n5550), .A1N(point_5_y__5_), 
        .Y(n431) );
  OAI2BB2XL U631 ( .B0(n5520), .B1(n604), .A0N(n5530), .A1N(point_5_y__6_), 
        .Y(n430) );
  OAI2BB2XL U632 ( .B0(n31), .B1(n603), .A0N(n5520), .A1N(point_5_y__7_), .Y(
        n429) );
  OAI2BB2XL U633 ( .B0(n5550), .B1(n602), .A0N(n5530), .A1N(point_5_y__8_), 
        .Y(n428) );
  OAI2BB2XL U634 ( .B0(n5520), .B1(n601), .A0N(n5520), .A1N(point_5_y__9_), 
        .Y(n427) );
  OAI2BB2XL U635 ( .B0(n31), .B1(n600), .A0N(n5530), .A1N(point_5_x__0_), .Y(
        n426) );
  OAI2BB2XL U636 ( .B0(n5550), .B1(n599), .A0N(n5520), .A1N(point_5_x__1_), 
        .Y(n425) );
  OAI2BB2XL U637 ( .B0(n5520), .B1(n598), .A0N(n5520), .A1N(point_5_x__2_), 
        .Y(n424) );
  OAI2BB2XL U638 ( .B0(n5540), .B1(n597), .A0N(n31), .A1N(point_5_x__3_), .Y(
        n423) );
  OAI2BB2XL U639 ( .B0(n5540), .B1(n596), .A0N(n31), .A1N(point_5_x__4_), .Y(
        n422) );
  OAI2BB2XL U640 ( .B0(n5540), .B1(n595), .A0N(n5520), .A1N(point_5_x__5_), 
        .Y(n421) );
  OAI2BB2XL U641 ( .B0(n5540), .B1(n594), .A0N(n5530), .A1N(point_5_x__6_), 
        .Y(n420) );
  OAI2BB2XL U642 ( .B0(n5540), .B1(n593), .A0N(n5520), .A1N(point_5_x__7_), 
        .Y(n419) );
  OAI2BB2XL U643 ( .B0(n5540), .B1(n592), .A0N(n5530), .A1N(point_5_x__8_), 
        .Y(n418) );
  OAI2BB2XL U644 ( .B0(n5540), .B1(n5910), .A0N(n5520), .A1N(point_5_x__9_), 
        .Y(n417) );
  OAI2BB2XL U645 ( .B0(n5440), .B1(n610), .A0N(n5430), .A1N(point_6_y__0_), 
        .Y(n416) );
  OAI2BB2XL U646 ( .B0(n5440), .B1(n609), .A0N(n5420), .A1N(point_6_y__1_), 
        .Y(n415) );
  OAI2BB2XL U647 ( .B0(n5420), .B1(n608), .A0N(n5430), .A1N(point_6_y__2_), 
        .Y(n414) );
  OAI2BB2XL U648 ( .B0(n5420), .B1(n607), .A0N(n5420), .A1N(point_6_y__3_), 
        .Y(n413) );
  OAI2BB2XL U649 ( .B0(n36), .B1(n606), .A0N(n5430), .A1N(point_6_y__4_), .Y(
        n412) );
  OAI2BB2XL U650 ( .B0(n5450), .B1(n605), .A0N(n5450), .A1N(point_6_y__5_), 
        .Y(n411) );
  OAI2BB2XL U651 ( .B0(n5420), .B1(n604), .A0N(n5430), .A1N(point_6_y__6_), 
        .Y(n410) );
  OAI2BB2XL U652 ( .B0(n36), .B1(n603), .A0N(n5420), .A1N(point_6_y__7_), .Y(
        n409) );
  OAI2BB2XL U653 ( .B0(n5450), .B1(n602), .A0N(n5430), .A1N(point_6_y__8_), 
        .Y(n408) );
  OAI2BB2XL U654 ( .B0(n5420), .B1(n601), .A0N(n5420), .A1N(point_6_y__9_), 
        .Y(n407) );
  OAI2BB2XL U655 ( .B0(n36), .B1(n600), .A0N(n5430), .A1N(point_6_x__0_), .Y(
        n406) );
  OAI2BB2XL U656 ( .B0(n5450), .B1(n599), .A0N(n5420), .A1N(point_6_x__1_), 
        .Y(n405) );
  OAI2BB2XL U657 ( .B0(n5420), .B1(n598), .A0N(n5420), .A1N(point_6_x__2_), 
        .Y(n404) );
  OAI2BB2XL U658 ( .B0(n5440), .B1(n597), .A0N(n36), .A1N(point_6_x__3_), .Y(
        n403) );
  OAI2BB2XL U659 ( .B0(n5440), .B1(n596), .A0N(n36), .A1N(point_6_x__4_), .Y(
        n402) );
  OAI2BB2XL U660 ( .B0(n5440), .B1(n595), .A0N(n5420), .A1N(point_6_x__5_), 
        .Y(n401) );
  OAI2BB2XL U661 ( .B0(n5440), .B1(n594), .A0N(n5430), .A1N(point_6_x__6_), 
        .Y(n400) );
  OAI2BB2XL U662 ( .B0(n5440), .B1(n593), .A0N(n5420), .A1N(point_6_x__7_), 
        .Y(n399) );
  OAI2BB2XL U663 ( .B0(n5440), .B1(n592), .A0N(n5430), .A1N(point_6_x__8_), 
        .Y(n398) );
  OAI2BB2XL U664 ( .B0(n5440), .B1(n5910), .A0N(n5420), .A1N(point_6_x__9_), 
        .Y(n397) );
  OAI2BB2XL U665 ( .B0(n5480), .B1(n610), .A0N(n5480), .A1N(point_4_y__0_), 
        .Y(n336) );
  OAI2BB2XL U666 ( .B0(n5510), .B1(n609), .A0N(n5480), .A1N(point_4_y__1_), 
        .Y(n335) );
  OAI2BB2XL U667 ( .B0(n5490), .B1(n608), .A0N(n5510), .A1N(point_4_y__2_), 
        .Y(n334) );
  OAI2BB2XL U668 ( .B0(n33), .B1(n607), .A0N(n5490), .A1N(point_4_y__3_), .Y(
        n333) );
  OAI2BB2XL U669 ( .B0(n5480), .B1(n606), .A0N(n5480), .A1N(point_4_y__4_), 
        .Y(n332) );
  OAI2BB2XL U670 ( .B0(n5500), .B1(n605), .A0N(n5480), .A1N(point_4_y__5_), 
        .Y(n331) );
  OAI2BB2XL U671 ( .B0(n5490), .B1(n604), .A0N(n5490), .A1N(point_4_y__6_), 
        .Y(n330) );
  OAI2BB2XL U672 ( .B0(n5500), .B1(n603), .A0N(n33), .A1N(point_4_y__7_), .Y(
        n329) );
  OAI2BB2XL U673 ( .B0(n5500), .B1(n602), .A0N(n33), .A1N(point_4_y__8_), .Y(
        n328) );
  OAI2BB2XL U674 ( .B0(n5500), .B1(n601), .A0N(n5510), .A1N(point_4_y__9_), 
        .Y(n327) );
  OAI2BB2XL U675 ( .B0(n5500), .B1(n600), .A0N(n5510), .A1N(point_4_x__0_), 
        .Y(n326) );
  OAI2BB2XL U676 ( .B0(n5480), .B1(n599), .A0N(n33), .A1N(point_4_x__1_), .Y(
        n325) );
  OAI2BB2XL U677 ( .B0(n5500), .B1(n598), .A0N(n5510), .A1N(point_4_x__2_), 
        .Y(n324) );
  OAI2BB2XL U678 ( .B0(n5480), .B1(n597), .A0N(n5510), .A1N(point_4_x__3_), 
        .Y(n323) );
  OAI2BB2XL U679 ( .B0(n5480), .B1(n596), .A0N(n33), .A1N(point_4_x__4_), .Y(
        n322) );
  OAI2BB2XL U680 ( .B0(n5480), .B1(n595), .A0N(n5510), .A1N(point_4_x__5_), 
        .Y(n321) );
  OAI2BB2XL U681 ( .B0(n5480), .B1(n594), .A0N(n5510), .A1N(point_4_x__6_), 
        .Y(n320) );
  OAI2BB2XL U682 ( .B0(n5490), .B1(n593), .A0N(n5500), .A1N(point_4_x__7_), 
        .Y(n319) );
  OAI2BB2XL U683 ( .B0(n5490), .B1(n592), .A0N(n5510), .A1N(point_4_x__8_), 
        .Y(n318) );
  OAI2BB2XL U684 ( .B0(n5500), .B1(n5910), .A0N(n5480), .A1N(point_4_x__9_), 
        .Y(n317) );
  OAI2BB2XL U685 ( .B0(n5680), .B1(n5390), .A0N(vector_A[21]), .A1N(n5370), 
        .Y(n209) );
  OAI2BB2XL U686 ( .B0(n5680), .B1(n5450), .A0N(vector_D[21]), .A1N(n5420), 
        .Y(n211) );
  OAI2BB2XL U687 ( .B0(n5680), .B1(n5470), .A0N(vector_E[21]), .A1N(n5470), 
        .Y(n210) );
  OAI2BB2XL U688 ( .B0(n5680), .B1(n5490), .A0N(vector_B[21]), .A1N(n5490), 
        .Y(n208) );
  OAI2BB2XL U689 ( .B0(n5530), .B1(n5680), .A0N(vector_C[21]), .A1N(n5520), 
        .Y(n207) );
  OAI2BB2XL U690 ( .B0(n5390), .B1(n5790), .A0N(vector_A[10]), .A1N(n5370), 
        .Y(n264) );
  OAI2BB2XL U691 ( .B0(n5450), .B1(n5790), .A0N(vector_D[10]), .A1N(n5440), 
        .Y(n266) );
  OAI2BB2XL U692 ( .B0(n5470), .B1(n5790), .A0N(vector_E[10]), .A1N(n5470), 
        .Y(n265) );
  OAI2BB2XL U693 ( .B0(n5500), .B1(n5790), .A0N(vector_B[10]), .A1N(n5510), 
        .Y(n263) );
  OAI2BB2XL U694 ( .B0(n5550), .B1(n5790), .A0N(vector_C[10]), .A1N(n5540), 
        .Y(n262) );
  OAI2BB2XL U695 ( .B0(n5380), .B1(n5800), .A0N(vector_A[9]), .A1N(n5370), .Y(
        n269) );
  OAI2BB2XL U696 ( .B0(n5450), .B1(n5800), .A0N(vector_D[9]), .A1N(n5430), .Y(
        n271) );
  OAI2BB2XL U697 ( .B0(n5470), .B1(n5800), .A0N(vector_E[9]), .A1N(n5460), .Y(
        n270) );
  OAI2BB2XL U698 ( .B0(n5500), .B1(n5800), .A0N(vector_B[9]), .A1N(n5510), .Y(
        n268) );
  OAI2BB2XL U699 ( .B0(n5550), .B1(n5800), .A0N(vector_C[9]), .A1N(n5530), .Y(
        n267) );
  OAI2BB2XL U700 ( .B0(n5380), .B1(n5690), .A0N(vector_A[20]), .A1N(n5380), 
        .Y(n214) );
  OAI2BB2XL U701 ( .B0(n5430), .B1(n5690), .A0N(vector_D[20]), .A1N(n5430), 
        .Y(n216) );
  OAI2BB2XL U702 ( .B0(n5470), .B1(n5690), .A0N(vector_E[20]), .A1N(n5470), 
        .Y(n215) );
  OAI2BB2XL U703 ( .B0(n5480), .B1(n5690), .A0N(vector_B[20]), .A1N(n5490), 
        .Y(n213) );
  OAI2BB2XL U704 ( .B0(n5540), .B1(n5690), .A0N(vector_C[20]), .A1N(n5530), 
        .Y(n212) );
  OAI2BB2XL U705 ( .B0(n5390), .B1(n5810), .A0N(n4600), .A1N(n5370), .Y(n274)
         );
  OAI2BB2XL U706 ( .B0(n5450), .B1(n5810), .A0N(n4740), .A1N(n5430), .Y(n276)
         );
  OAI2BB2XL U707 ( .B0(n5470), .B1(n5810), .A0N(n4580), .A1N(n5460), .Y(n275)
         );
  OAI2BB2XL U708 ( .B0(n5500), .B1(n5810), .A0N(n4660), .A1N(n5490), .Y(n273)
         );
  OAI2BB2XL U709 ( .B0(n5550), .B1(n5810), .A0N(n4700), .A1N(n5530), .Y(n272)
         );
  OAI2BB2XL U710 ( .B0(n5380), .B1(n5700), .A0N(n4620), .A1N(n5390), .Y(n219)
         );
  OAI2BB2XL U711 ( .B0(n5450), .B1(n5700), .A0N(n4720), .A1N(n5430), .Y(n221)
         );
  OAI2BB2XL U712 ( .B0(n5460), .B1(n5700), .A0N(n4760), .A1N(n5460), .Y(n220)
         );
  OAI2BB2XL U713 ( .B0(n5490), .B1(n5700), .A0N(n4640), .A1N(n5490), .Y(n218)
         );
  OAI2BB2XL U714 ( .B0(n5550), .B1(n5700), .A0N(n4680), .A1N(n5530), .Y(n217)
         );
  OAI2BB2XL U715 ( .B0(n5390), .B1(n5820), .A0N(vector_A[7]), .A1N(n5370), .Y(
        n279) );
  OAI2BB2XL U716 ( .B0(n5450), .B1(n5820), .A0N(vector_D[7]), .A1N(n5430), .Y(
        n281) );
  OAI2BB2XL U717 ( .B0(n5470), .B1(n5820), .A0N(vector_E[7]), .A1N(n35), .Y(
        n280) );
  OAI2BB2XL U718 ( .B0(n5480), .B1(n5820), .A0N(vector_B[7]), .A1N(n5510), .Y(
        n278) );
  OAI2BB2XL U719 ( .B0(n5550), .B1(n5820), .A0N(vector_C[7]), .A1N(n5530), .Y(
        n277) );
  OAI2BB2XL U720 ( .B0(n5380), .B1(n5710), .A0N(vector_A[18]), .A1N(n5380), 
        .Y(n224) );
  OAI2BB2XL U721 ( .B0(n5440), .B1(n5710), .A0N(vector_D[18]), .A1N(n5420), 
        .Y(n226) );
  OAI2BB2XL U722 ( .B0(n5460), .B1(n5710), .A0N(vector_E[18]), .A1N(n35), .Y(
        n225) );
  OAI2BB2XL U723 ( .B0(n5480), .B1(n5710), .A0N(vector_B[18]), .A1N(n5510), 
        .Y(n223) );
  OAI2BB2XL U724 ( .B0(n5540), .B1(n5710), .A0N(vector_C[18]), .A1N(n5520), 
        .Y(n222) );
  NOR2BX2 U725 ( .AN(n196), .B(n197), .Y(n59) );
  OAI2BB2XL U726 ( .B0(n5390), .B1(n589), .A0N(vector_A[0]), .A1N(n5370), .Y(
        n314) );
  OAI2BB2XL U727 ( .B0(n5390), .B1(n5780), .A0N(vector_A[11]), .A1N(n5370), 
        .Y(n259) );
  OAI2BB2XL U728 ( .B0(n5380), .B1(n583), .A0N(n4860), .A1N(n5370), .Y(n284)
         );
  OAI2BB2XL U729 ( .B0(n5390), .B1(n584), .A0N(vector_A[5]), .A1N(n5370), .Y(
        n289) );
  OAI2BB2XL U730 ( .B0(n5390), .B1(n585), .A0N(n4980), .A1N(n5370), .Y(n294)
         );
  OAI2BB2XL U731 ( .B0(n5390), .B1(n586), .A0N(vector_A[3]), .A1N(n5370), .Y(
        n299) );
  OAI2BB2XL U732 ( .B0(n5390), .B1(n587), .A0N(n4380), .A1N(n5370), .Y(n304)
         );
  OAI2BB2XL U733 ( .B0(n5380), .B1(n588), .A0N(vector_A[1]), .A1N(n5370), .Y(
        n309) );
  OAI2BB2XL U734 ( .B0(n5380), .B1(n5760), .A0N(n4400), .A1N(n5370), .Y(n249)
         );
  OAI2BB2XL U735 ( .B0(n5380), .B1(n5770), .A0N(vector_A[12]), .A1N(n5370), 
        .Y(n254) );
  NOR2X1 U736 ( .A(n613), .B(n206), .Y(n125) );
  NAND3X1 U737 ( .A(n204), .B(n205), .C(n125), .Y(n105) );
  OAI2BB2XL U738 ( .B0(n5380), .B1(n5720), .A0N(n4840), .A1N(n5370), .Y(n229)
         );
  OAI2BB2XL U739 ( .B0(n611), .B1(n5730), .A0N(vector_A[16]), .A1N(n5370), .Y(
        n234) );
  OAI2BB2XL U740 ( .B0(n5380), .B1(n5740), .A0N(n5000), .A1N(n611), .Y(n239)
         );
  OAI2BB2XL U741 ( .B0(n5380), .B1(n5750), .A0N(vector_A[14]), .A1N(n5390), 
        .Y(n244) );
  OAI2BB2XL U742 ( .B0(n5450), .B1(n583), .A0N(n4940), .A1N(n5430), .Y(n286)
         );
  OAI2BB2XL U743 ( .B0(n5470), .B1(n583), .A0N(n4820), .A1N(n5460), .Y(n285)
         );
  OAI2BB2XL U744 ( .B0(n5480), .B1(n583), .A0N(n4900), .A1N(n5510), .Y(n283)
         );
  OAI2BB2XL U745 ( .B0(n5550), .B1(n583), .A0N(n4920), .A1N(n5540), .Y(n282)
         );
  OAI2BB2XL U746 ( .B0(n5440), .B1(n5720), .A0N(n4800), .A1N(n5430), .Y(n231)
         );
  OAI2BB2XL U747 ( .B0(n5460), .B1(n5720), .A0N(n4960), .A1N(n5460), .Y(n230)
         );
  OAI2BB2XL U748 ( .B0(n5480), .B1(n5720), .A0N(n4880), .A1N(n5510), .Y(n228)
         );
  OAI2BB2XL U749 ( .B0(n5550), .B1(n5720), .A0N(vector_C[17]), .A1N(n5530), 
        .Y(n227) );
  NAND2X1 U750 ( .A(n205), .B(n616), .Y(n129) );
  OAI2BB2XL U751 ( .B0(n5550), .B1(n5780), .A0N(n5180), .A1N(n5520), .Y(n257)
         );
  OAI2BB2XL U752 ( .B0(n5550), .B1(n5730), .A0N(vector_C[16]), .A1N(n5520), 
        .Y(n232) );
  OAI2BB2XL U753 ( .B0(n5540), .B1(n5740), .A0N(n5020), .A1N(n5520), .Y(n237)
         );
  OAI2BB2XL U754 ( .B0(n5550), .B1(n5750), .A0N(vector_C[14]), .A1N(n5530), 
        .Y(n242) );
  OAI2BB2XL U755 ( .B0(n5550), .B1(n5760), .A0N(n4420), .A1N(n5530), .Y(n247)
         );
  OAI2BB2XL U756 ( .B0(n5550), .B1(n5770), .A0N(vector_C[12]), .A1N(n5520), 
        .Y(n252) );
  OAI2BB2XL U757 ( .B0(n5540), .B1(n589), .A0N(n5200), .A1N(n5530), .Y(n312)
         );
  OAI2BB2XL U758 ( .B0(n5550), .B1(n584), .A0N(vector_C[5]), .A1N(n5530), .Y(
        n287) );
  OAI2BB2XL U759 ( .B0(n5540), .B1(n585), .A0N(n5120), .A1N(n5540), .Y(n292)
         );
  OAI2BB2XL U760 ( .B0(n5540), .B1(n586), .A0N(vector_C[3]), .A1N(n5530), .Y(
        n297) );
  OAI2BB2XL U761 ( .B0(n5540), .B1(n587), .A0N(n4480), .A1N(n5530), .Y(n302)
         );
  OAI2BB2XL U762 ( .B0(n5550), .B1(n588), .A0N(vector_C[1]), .A1N(n5520), .Y(
        n307) );
  CLKBUFX3 U763 ( .A(n5280), .Y(n5290) );
  NAND3BX1 U764 ( .AN(n205), .B(n206), .C(n204), .Y(n5280) );
  OAI2BB2XL U765 ( .B0(n5450), .B1(n5780), .A0N(vector_D[11]), .A1N(n5420), 
        .Y(n261) );
  OAI2BB2XL U766 ( .B0(n5450), .B1(n5730), .A0N(vector_D[16]), .A1N(n5420), 
        .Y(n236) );
  OAI2BB2XL U767 ( .B0(n5450), .B1(n5740), .A0N(n5040), .A1N(n5420), .Y(n241)
         );
  OAI2BB2XL U768 ( .B0(n5450), .B1(n5750), .A0N(vector_D[14]), .A1N(n5430), 
        .Y(n246) );
  OAI2BB2XL U769 ( .B0(n5440), .B1(n5760), .A0N(n4440), .A1N(n5430), .Y(n251)
         );
  OAI2BB2XL U770 ( .B0(n5450), .B1(n5770), .A0N(vector_D[12]), .A1N(n5420), 
        .Y(n256) );
  OAI2BB2XL U771 ( .B0(n5440), .B1(n589), .A0N(vector_D[0]), .A1N(n5440), .Y(
        n316) );
  OAI2BB2XL U772 ( .B0(n5450), .B1(n584), .A0N(vector_D[5]), .A1N(n5430), .Y(
        n291) );
  OAI2BB2XL U773 ( .B0(n5440), .B1(n585), .A0N(n5140), .A1N(n5430), .Y(n296)
         );
  OAI2BB2XL U774 ( .B0(n5440), .B1(n586), .A0N(vector_D[3]), .A1N(n5430), .Y(
        n301) );
  OAI2BB2XL U775 ( .B0(n5440), .B1(n587), .A0N(n4500), .A1N(n5440), .Y(n306)
         );
  OAI2BB2XL U776 ( .B0(n5450), .B1(n588), .A0N(vector_D[1]), .A1N(n5420), .Y(
        n311) );
  BUFX4 U777 ( .A(n58), .Y(n5330) );
  NOR3X1 U778 ( .A(n205), .B(n204), .C(n5250), .Y(n58) );
  OAI2BB2XL U779 ( .B0(n5470), .B1(n585), .A0N(n5060), .A1N(n5470), .Y(n295)
         );
  OAI2BB2XL U780 ( .B0(n35), .B1(n587), .A0N(n4560), .A1N(n5470), .Y(n305) );
  OAI2BB2XL U781 ( .B0(n5460), .B1(n588), .A0N(vector_E[1]), .A1N(n5470), .Y(
        n310) );
  OAI2BB2XL U782 ( .B0(n5470), .B1(n584), .A0N(vector_E[5]), .A1N(n35), .Y(
        n290) );
  OAI2BB2XL U783 ( .B0(n5500), .B1(n584), .A0N(vector_B[5]), .A1N(n5490), .Y(
        n288) );
  OAI2BB2XL U784 ( .B0(n5460), .B1(n5730), .A0N(vector_E[16]), .A1N(n5460), 
        .Y(n235) );
  OAI2BB2XL U785 ( .B0(n5490), .B1(n5730), .A0N(vector_B[16]), .A1N(n5510), 
        .Y(n233) );
  OAI2BB2XL U786 ( .B0(n35), .B1(n589), .A0N(vector_E[0]), .A1N(n5460), .Y(
        n315) );
  OAI2BB2XL U787 ( .B0(n5470), .B1(n5780), .A0N(vector_E[11]), .A1N(n5460), 
        .Y(n260) );
  OAI2BB2XL U788 ( .B0(n5460), .B1(n586), .A0N(vector_E[3]), .A1N(n5460), .Y(
        n300) );
  OAI2BB2XL U789 ( .B0(n35), .B1(n5740), .A0N(n5160), .A1N(n5460), .Y(n240) );
  OAI2BB2XL U790 ( .B0(n5460), .B1(n5750), .A0N(vector_E[14]), .A1N(n5460), 
        .Y(n245) );
  OAI2BB2XL U791 ( .B0(n5470), .B1(n5760), .A0N(n4540), .A1N(n5460), .Y(n250)
         );
  OAI2BB2XL U792 ( .B0(n5460), .B1(n5770), .A0N(vector_E[12]), .A1N(n5460), 
        .Y(n255) );
  OAI211X1 U793 ( .A0(n204), .A1(n125), .B0(n5500), .C0(n129), .Y(n198) );
  OAI2BB2XL U794 ( .B0(n5500), .B1(n5780), .A0N(vector_B[11]), .A1N(n5510), 
        .Y(n258) );
  OAI2BB2XL U795 ( .B0(n5480), .B1(n585), .A0N(n5100), .A1N(n5510), .Y(n293)
         );
  OAI2BB2XL U796 ( .B0(n5490), .B1(n5740), .A0N(n5080), .A1N(n5510), .Y(n238)
         );
  OAI2BB2XL U797 ( .B0(n5500), .B1(n5750), .A0N(vector_B[14]), .A1N(n5510), 
        .Y(n243) );
  OAI2BB2XL U798 ( .B0(n5500), .B1(n5760), .A0N(n4460), .A1N(n5510), .Y(n248)
         );
  OAI2BB2XL U799 ( .B0(n5500), .B1(n5770), .A0N(vector_B[12]), .A1N(n5510), 
        .Y(n253) );
  OAI2BB2XL U800 ( .B0(n5490), .B1(n589), .A0N(vector_B[0]), .A1N(n5490), .Y(
        n313) );
  OAI2BB2XL U801 ( .B0(n5480), .B1(n586), .A0N(vector_B[3]), .A1N(n5490), .Y(
        n298) );
  OAI2BB2XL U802 ( .B0(n5500), .B1(n587), .A0N(n4520), .A1N(n5500), .Y(n303)
         );
  OAI2BB2XL U803 ( .B0(n5480), .B1(n588), .A0N(vector_B[1]), .A1N(n5490), .Y(
        n308) );
  OAI21XL U804 ( .A0(n197), .A1(n614), .B0(n196), .Y(n201) );
  XNOR2X1 U805 ( .A(n205), .B(n125), .Y(n199) );
  XOR2X1 U806 ( .A(n613), .B(n206), .Y(n200) );
  OAI221XL U807 ( .A0(n5290), .A1(n656), .B0(n615), .B1(n636), .C0(n148), .Y(
        N84) );
  AOI222XL U808 ( .A0(point_4_y__0_), .A1(n5300), .B0(point_5_y__0_), .B1(
        n5320), .C0(point_6_y__0_), .C1(n5330), .Y(n148) );
  OAI221XL U809 ( .A0(n5290), .A1(n655), .B0(n615), .B1(n635), .C0(n147), .Y(
        N85) );
  AOI222XL U810 ( .A0(point_4_y__1_), .A1(n5300), .B0(point_5_y__1_), .B1(
        n5320), .C0(point_6_y__1_), .C1(n5330), .Y(n147) );
  OAI221XL U811 ( .A0(n5290), .A1(n654), .B0(n615), .B1(n634), .C0(n146), .Y(
        N86) );
  AOI222XL U812 ( .A0(point_4_y__2_), .A1(n5300), .B0(point_5_y__2_), .B1(
        n5310), .C0(point_6_y__2_), .C1(n5330), .Y(n146) );
  OAI221XL U813 ( .A0(n5290), .A1(n653), .B0(n615), .B1(n633), .C0(n145), .Y(
        N87) );
  AOI222XL U814 ( .A0(point_4_y__3_), .A1(n5300), .B0(point_5_y__3_), .B1(
        n5310), .C0(point_6_y__3_), .C1(n5330), .Y(n145) );
  OAI221XL U815 ( .A0(n5280), .A1(n652), .B0(n615), .B1(n632), .C0(n144), .Y(
        N88) );
  AOI222XL U816 ( .A0(point_4_y__4_), .A1(n5300), .B0(point_5_y__4_), .B1(
        n5320), .C0(point_6_y__4_), .C1(n5330), .Y(n144) );
  OAI221XL U817 ( .A0(n5290), .A1(n651), .B0(n615), .B1(n631), .C0(n143), .Y(
        N89) );
  AOI222XL U818 ( .A0(point_4_y__5_), .A1(n5300), .B0(point_5_y__5_), .B1(
        n5320), .C0(point_6_y__5_), .C1(n5330), .Y(n143) );
  OAI221XL U819 ( .A0(n5290), .A1(n650), .B0(n615), .B1(n630), .C0(n142), .Y(
        N90) );
  AOI222XL U820 ( .A0(point_4_y__6_), .A1(n5300), .B0(point_5_y__6_), .B1(
        n5310), .C0(point_6_y__6_), .C1(n5330), .Y(n142) );
  OAI221XL U821 ( .A0(n5280), .A1(n649), .B0(n615), .B1(n629), .C0(n141), .Y(
        N91) );
  AOI222XL U822 ( .A0(point_4_y__7_), .A1(n5300), .B0(point_5_y__7_), .B1(
        n5310), .C0(point_6_y__7_), .C1(n5330), .Y(n141) );
  OAI221XL U823 ( .A0(n5280), .A1(n648), .B0(n615), .B1(n628), .C0(n140), .Y(
        N92) );
  AOI222XL U824 ( .A0(point_4_y__8_), .A1(n5300), .B0(point_5_y__8_), .B1(
        n5320), .C0(point_6_y__8_), .C1(n5330), .Y(n140) );
  OAI221XL U825 ( .A0(n5290), .A1(n647), .B0(n615), .B1(n627), .C0(n139), .Y(
        N93) );
  AOI222XL U826 ( .A0(point_4_y__9_), .A1(n5300), .B0(point_5_y__9_), .B1(
        n5320), .C0(point_6_y__9_), .C1(n5330), .Y(n139) );
  OAI221XL U827 ( .A0(n5290), .A1(n646), .B0(n615), .B1(n626), .C0(n138), .Y(
        N94) );
  AOI222XL U828 ( .A0(point_4_x__0_), .A1(n5300), .B0(point_5_x__0_), .B1(
        n5310), .C0(point_6_x__0_), .C1(n5330), .Y(n138) );
  OAI221XL U829 ( .A0(n5280), .A1(n645), .B0(n615), .B1(n625), .C0(n137), .Y(
        N95) );
  AOI222XL U830 ( .A0(point_4_x__1_), .A1(n5300), .B0(point_5_x__1_), .B1(
        n5310), .C0(point_6_x__1_), .C1(n5330), .Y(n137) );
  OAI221XL U831 ( .A0(n5280), .A1(n644), .B0(n615), .B1(n624), .C0(n136), .Y(
        N96) );
  AOI222XL U832 ( .A0(point_4_x__2_), .A1(n5300), .B0(point_5_x__2_), .B1(
        n5320), .C0(point_6_x__2_), .C1(n5330), .Y(n136) );
  OAI221XL U833 ( .A0(n5290), .A1(n643), .B0(n615), .B1(n623), .C0(n135), .Y(
        N97) );
  AOI222XL U834 ( .A0(point_4_x__3_), .A1(n5300), .B0(point_5_x__3_), .B1(
        n5320), .C0(point_6_x__3_), .C1(n5330), .Y(n135) );
  OAI221XL U835 ( .A0(n5290), .A1(n642), .B0(n615), .B1(n622), .C0(n134), .Y(
        N98) );
  AOI222XL U836 ( .A0(point_4_x__4_), .A1(n5300), .B0(point_5_x__4_), .B1(
        n5310), .C0(point_6_x__4_), .C1(n5330), .Y(n134) );
  OAI221XL U837 ( .A0(n5280), .A1(n641), .B0(n615), .B1(n621), .C0(n133), .Y(
        N99) );
  AOI222XL U838 ( .A0(point_4_x__5_), .A1(n5300), .B0(point_5_x__5_), .B1(
        n5310), .C0(point_6_x__5_), .C1(n5330), .Y(n133) );
  OAI221XL U839 ( .A0(n5290), .A1(n640), .B0(n615), .B1(n620), .C0(n153), .Y(
        N100) );
  AOI222XL U840 ( .A0(point_4_x__6_), .A1(n5300), .B0(point_5_x__6_), .B1(
        n5320), .C0(point_6_x__6_), .C1(n5330), .Y(n153) );
  OAI221XL U841 ( .A0(n5290), .A1(n639), .B0(n615), .B1(n619), .C0(n152), .Y(
        N101) );
  AOI222XL U842 ( .A0(point_4_x__7_), .A1(n5300), .B0(point_5_x__7_), .B1(
        n5320), .C0(point_6_x__7_), .C1(n5330), .Y(n152) );
  OAI221XL U843 ( .A0(n5290), .A1(n638), .B0(n615), .B1(n618), .C0(n151), .Y(
        N102) );
  AOI222XL U844 ( .A0(point_4_x__8_), .A1(n5300), .B0(point_5_x__8_), .B1(
        n5310), .C0(point_6_x__8_), .C1(n5330), .Y(n151) );
  OAI221XL U845 ( .A0(n5290), .A1(n637), .B0(n615), .B1(n617), .C0(n150), .Y(
        N103) );
  AOI222XL U846 ( .A0(point_4_x__9_), .A1(n5300), .B0(point_5_x__9_), .B1(
        n5310), .C0(point_6_x__9_), .C1(n5330), .Y(n150) );
  CLKINVX1 U847 ( .A(reset), .Y(n590) );
  NOR2X1 U848 ( .A(N576), .B(N557), .Y(n5590) );
  NOR3X1 U849 ( .A(N577), .B(N559), .C(N558), .Y(n5580) );
  NOR3X1 U850 ( .A(N560), .B(N562), .C(N561), .Y(n5570) );
  NOR3X1 U851 ( .A(N563), .B(N565), .C(N564), .Y(n5560) );
  NAND4X1 U852 ( .A(n5590), .B(n5580), .C(n5570), .D(n5560), .Y(n5650) );
  NOR2X1 U853 ( .A(N566), .B(N556), .Y(n5630) );
  NOR3X1 U854 ( .A(N567), .B(N569), .C(N568), .Y(n5620) );
  NOR3X1 U855 ( .A(N570), .B(N572), .C(N571), .Y(n5610) );
  NOR3X1 U856 ( .A(N573), .B(N575), .C(N574), .Y(n5600) );
  NAND4X1 U857 ( .A(n5630), .B(n5620), .C(n5610), .D(n5600), .Y(n5640) );
  NOR2X1 U858 ( .A(n5650), .B(n5640), .Y(n5670) );
  NOR4X1 U859 ( .A(N581), .B(N580), .C(N579), .D(N578), .Y(n5660) );
endmodule


module geofence_DW01_add_0 ( A, B, CI, SUM, CO );
  input [26:0] A;
  input [26:0] B;
  output [26:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [26:2] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(
        SUM[25]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  XOR3X1 U1_26 ( .A(A[26]), .B(B[26]), .C(carry[26]), .Y(SUM[26]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_add_1 ( A, B, CI, SUM, CO );
  input [25:0] A;
  input [25:0] B;
  output [25:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [25:2] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(
        SUM[24]) );
  XOR3X1 U1_25 ( .A(A[25]), .B(B[25]), .C(carry[25]), .Y(SUM[25]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_add_2 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:2] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(
        SUM[23]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_24 ( .A(A[24]), .B(B[24]), .C(carry[24]), .Y(SUM[24]) );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_add_3 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:2] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  ADDFXL U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3X1 U1_23 ( .A(A[23]), .B(B[23]), .C(carry[23]), .Y(SUM[23]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  ADDFXL U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  ADDFXL U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  ADDFXL U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  ADDFXL U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  ADDFXL U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  ADDFXL U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFXL U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  ADDFXL U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  ADDFXL U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  ADDFXL U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  ADDFXL U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  ADDFXL U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module geofence_DW01_sub_2 ( A, B, CI, DIFF, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [22:1] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  XOR3X1 U2_22 ( .A(A[22]), .B(n2), .C(carry[22]), .Y(DIFF[22]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[3]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n21) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U22 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U23 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U24 ( .A(B[22]), .Y(n2) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module geofence_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [22:1] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  XOR3X1 U2_22 ( .A(A[22]), .B(n2), .C(carry[22]), .Y(DIFF[22]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[3]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n21) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U22 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U23 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U24 ( .A(B[22]), .Y(n2) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module geofence_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [22:1] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  XOR3X1 U2_22 ( .A(A[22]), .B(n2), .C(carry[22]), .Y(DIFF[22]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[3]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n21) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U22 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U23 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U24 ( .A(B[22]), .Y(n2) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module geofence_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [22:1] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  XOR3X1 U2_22 ( .A(A[22]), .B(n2), .C(carry[22]), .Y(DIFF[22]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[3]), .Y(n20) );
  CLKINVX1 U19 ( .A(B[2]), .Y(n21) );
  NAND2X1 U20 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U21 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U22 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U23 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U24 ( .A(B[22]), .Y(n2) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module geofence_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [22:0] A;
  input [22:0] B;
  output [22:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23;
  wire   [22:1] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n22), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFXL U2_3 ( .A(A[3]), .B(n20), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFXL U2_2 ( .A(A[2]), .B(n21), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFXL U2_4 ( .A(A[4]), .B(n19), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFXL U2_21 ( .A(A[21]), .B(n2), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  XOR3X1 U2_22 ( .A(A[22]), .B(n2), .C(carry[22]), .Y(DIFF[22]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n18), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFXL U2_6 ( .A(A[6]), .B(n17), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  ADDFXL U2_7 ( .A(A[7]), .B(n16), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFXL U2_8 ( .A(A[8]), .B(n15), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  ADDFXL U2_9 ( .A(A[9]), .B(n14), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFXL U2_10 ( .A(A[10]), .B(n13), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFXL U2_11 ( .A(A[11]), .B(n12), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  ADDFXL U2_12 ( .A(A[12]), .B(n11), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  ADDFXL U2_13 ( .A(A[13]), .B(n10), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  ADDFXL U2_14 ( .A(A[14]), .B(n9), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  ADDFXL U2_15 ( .A(A[15]), .B(n8), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  ADDFXL U2_16 ( .A(A[16]), .B(n7), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  ADDFXL U2_17 ( .A(A[17]), .B(n6), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  ADDFXL U2_18 ( .A(A[18]), .B(n5), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  ADDFXL U2_19 ( .A(A[19]), .B(n4), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  ADDFXL U2_20 ( .A(A[20]), .B(n3), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  CLKINVX1 U1 ( .A(B[20]), .Y(n3) );
  CLKINVX1 U2 ( .A(B[19]), .Y(n4) );
  CLKINVX1 U3 ( .A(B[18]), .Y(n5) );
  CLKINVX1 U4 ( .A(B[17]), .Y(n6) );
  CLKINVX1 U5 ( .A(B[16]), .Y(n7) );
  CLKINVX1 U6 ( .A(B[15]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[14]), .Y(n9) );
  CLKINVX1 U8 ( .A(B[13]), .Y(n10) );
  CLKINVX1 U9 ( .A(B[12]), .Y(n11) );
  CLKINVX1 U10 ( .A(B[11]), .Y(n12) );
  CLKINVX1 U11 ( .A(B[10]), .Y(n13) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n14) );
  CLKINVX1 U13 ( .A(B[8]), .Y(n15) );
  CLKINVX1 U14 ( .A(B[7]), .Y(n16) );
  CLKINVX1 U15 ( .A(B[6]), .Y(n17) );
  CLKINVX1 U16 ( .A(B[5]), .Y(n18) );
  CLKINVX1 U17 ( .A(B[4]), .Y(n19) );
  CLKINVX1 U18 ( .A(B[2]), .Y(n21) );
  CLKINVX1 U19 ( .A(A[0]), .Y(n1) );
  XNOR2X1 U20 ( .A(n23), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U21 ( .A(B[22]), .Y(n2) );
  CLKINVX1 U22 ( .A(B[3]), .Y(n20) );
  NAND2X1 U23 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U24 ( .A(B[1]), .Y(n22) );
  CLKINVX1 U25 ( .A(B[0]), .Y(n23) );
endmodule


module geofence_DW_mult_tc_0 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n360), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n359), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n358), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n357), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[10]), .B(a[1]), .Y(n389) );
  XOR2XL U268 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U269 ( .A(b[2]), .B(a[10]), .Y(n375) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n356), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U278 ( .A(n355), .Y(n356) );
  INVX1 U279 ( .A(n373), .Y(n366) );
  CLKINVX1 U280 ( .A(n65), .Y(n357) );
  CLKINVX1 U281 ( .A(n51), .Y(n358) );
  CLKINVX1 U282 ( .A(n39), .Y(n359) );
  CLKINVX1 U283 ( .A(n31), .Y(n360) );
  CLKBUFX3 U284 ( .A(n390), .Y(n348) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  INVX3 U287 ( .A(a[1]), .Y(n362) );
  INVX3 U288 ( .A(a[3]), .Y(n363) );
  NAND2X2 U289 ( .A(a[1]), .B(n361), .Y(n379) );
  INVX3 U290 ( .A(a[0]), .Y(n361) );
  CLKBUFX3 U291 ( .A(n403), .Y(n350) );
  CLKBUFX3 U292 ( .A(n405), .Y(n349) );
  NAND2X1 U293 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U294 ( .A(b[0]), .Y(n355) );
  INVX3 U295 ( .A(a[5]), .Y(n364) );
  CLKBUFX3 U296 ( .A(n416), .Y(n352) );
  CLKBUFX3 U297 ( .A(n418), .Y(n351) );
  NAND2X1 U298 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U299 ( .A(a[7]), .Y(n365) );
  CLKBUFX3 U300 ( .A(n429), .Y(n354) );
  CLKBUFX3 U301 ( .A(n431), .Y(n353) );
  NAND2X1 U302 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U303 ( .A(a[9]), .Y(n367) );
  XOR2X1 U304 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U305 ( .AN(n370), .B(n366), .Y(n369) );
  XOR2X1 U306 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U307 ( .A(n361), .B(n356), .Y(product[0]) );
  XNOR2X1 U308 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U309 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U310 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U313 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U314 ( .A0(n355), .A1(n379), .B0(n380), .B1(n361), .Y(n179) );
  OAI22XL U315 ( .A0(n380), .A1(n379), .B0(n381), .B1(n361), .Y(n178) );
  XOR2X1 U316 ( .A(b[1]), .B(n362), .Y(n380) );
  OAI22XL U317 ( .A0(n381), .A1(n379), .B0(n382), .B1(n361), .Y(n177) );
  XOR2X1 U318 ( .A(b[2]), .B(n362), .Y(n381) );
  OAI22XL U319 ( .A0(n382), .A1(n379), .B0(n383), .B1(n361), .Y(n176) );
  XOR2X1 U320 ( .A(b[3]), .B(n362), .Y(n382) );
  OAI22XL U321 ( .A0(n383), .A1(n379), .B0(n384), .B1(n361), .Y(n175) );
  XOR2X1 U322 ( .A(b[4]), .B(n362), .Y(n383) );
  OAI22XL U323 ( .A0(n384), .A1(n379), .B0(n385), .B1(n361), .Y(n174) );
  XOR2X1 U324 ( .A(b[5]), .B(n362), .Y(n384) );
  OAI22XL U325 ( .A0(n385), .A1(n379), .B0(n386), .B1(n361), .Y(n173) );
  XOR2X1 U326 ( .A(b[6]), .B(n362), .Y(n385) );
  OAI22XL U327 ( .A0(n386), .A1(n379), .B0(n387), .B1(n361), .Y(n172) );
  XOR2X1 U328 ( .A(b[7]), .B(n362), .Y(n386) );
  OAI22XL U329 ( .A0(n387), .A1(n379), .B0(n388), .B1(n361), .Y(n171) );
  XOR2X1 U330 ( .A(b[8]), .B(n362), .Y(n387) );
  OAI2BB2XL U331 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U332 ( .A(b[9]), .B(n362), .Y(n388) );
  OAI2BB1X1 U333 ( .A0N(n361), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U334 ( .A(n348), .B(n356), .Y(n168) );
  OAI22XL U335 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U336 ( .A(n363), .B(n355), .Y(n391) );
  OAI22XL U337 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U338 ( .A(b[1]), .B(n363), .Y(n393) );
  OAI22XL U339 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U340 ( .A(b[2]), .B(n363), .Y(n394) );
  OAI22XL U341 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U342 ( .A(b[3]), .B(n363), .Y(n395) );
  OAI22XL U343 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U344 ( .A(b[4]), .B(n363), .Y(n396) );
  OAI22XL U345 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U346 ( .A(b[5]), .B(n363), .Y(n397) );
  OAI22XL U347 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U348 ( .A(b[6]), .B(n363), .Y(n398) );
  OAI22XL U349 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U350 ( .A(b[7]), .B(n363), .Y(n399) );
  OAI22XL U351 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U352 ( .A(b[8]), .B(n363), .Y(n400) );
  OAI22XL U353 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U354 ( .A(b[9]), .B(n363), .Y(n401) );
  AO21X1 U355 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U356 ( .A(b[10]), .B(n363), .Y(n402) );
  NOR2X1 U357 ( .A(n350), .B(n356), .Y(n156) );
  OAI22XL U358 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U359 ( .A(n364), .B(n355), .Y(n404) );
  OAI22XL U360 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U361 ( .A(b[1]), .B(n364), .Y(n406) );
  OAI22XL U362 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U363 ( .A(b[2]), .B(n364), .Y(n407) );
  OAI22XL U364 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U365 ( .A(b[3]), .B(n364), .Y(n408) );
  OAI22XL U366 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U367 ( .A(b[4]), .B(n364), .Y(n409) );
  OAI22XL U368 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U369 ( .A(b[5]), .B(n364), .Y(n410) );
  OAI22XL U370 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U371 ( .A(b[6]), .B(n364), .Y(n411) );
  OAI22XL U372 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U373 ( .A(b[7]), .B(n364), .Y(n412) );
  OAI22XL U374 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U375 ( .A(b[8]), .B(n364), .Y(n413) );
  OAI22XL U376 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U377 ( .A(b[9]), .B(n364), .Y(n414) );
  AO21X1 U378 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U379 ( .A(b[10]), .B(n364), .Y(n415) );
  NOR2X1 U380 ( .A(n352), .B(n356), .Y(n144) );
  OAI22XL U381 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U382 ( .A(n365), .B(n355), .Y(n417) );
  OAI22XL U383 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U384 ( .A(b[1]), .B(n365), .Y(n419) );
  OAI22XL U385 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U386 ( .A(b[2]), .B(n365), .Y(n420) );
  OAI22XL U387 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U388 ( .A(b[3]), .B(n365), .Y(n421) );
  OAI22XL U389 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U390 ( .A(b[4]), .B(n365), .Y(n422) );
  OAI22XL U391 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U392 ( .A(b[5]), .B(n365), .Y(n423) );
  OAI22XL U393 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U394 ( .A(b[6]), .B(n365), .Y(n424) );
  OAI22XL U395 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U396 ( .A(b[7]), .B(n365), .Y(n425) );
  OAI22XL U397 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U398 ( .A(b[8]), .B(n365), .Y(n426) );
  OAI22XL U399 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U400 ( .A(b[9]), .B(n365), .Y(n427) );
  AO21X1 U401 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U402 ( .A(b[10]), .B(n365), .Y(n428) );
  NOR2X1 U403 ( .A(n354), .B(n356), .Y(n132) );
  OAI22XL U404 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U405 ( .A(n367), .B(n355), .Y(n430) );
  OAI22XL U406 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U407 ( .A(b[1]), .B(n367), .Y(n432) );
  OAI22XL U408 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U409 ( .A(b[2]), .B(n367), .Y(n433) );
  OAI22XL U410 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U411 ( .A(b[3]), .B(n367), .Y(n434) );
  OAI22XL U412 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U413 ( .A(b[4]), .B(n367), .Y(n435) );
  OAI22XL U414 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U415 ( .A(b[5]), .B(n367), .Y(n436) );
  OAI22XL U416 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U417 ( .A(b[6]), .B(n367), .Y(n437) );
  OAI22XL U418 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U419 ( .A(b[7]), .B(n367), .Y(n438) );
  OAI22XL U420 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U421 ( .A(b[8]), .B(n367), .Y(n439) );
  OAI22XL U422 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U423 ( .A(b[9]), .B(n367), .Y(n440) );
  AO21X1 U424 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U425 ( .A(b[10]), .B(n367), .Y(n441) );
  NOR2X1 U426 ( .A(n366), .B(n356), .Y(n120) );
  NOR2X1 U427 ( .A(n366), .B(n442), .Y(n118) );
  XNOR2X1 U428 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U429 ( .A(n366), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n366), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n366), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n362), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n363), .A1(n355), .A2(n348), .B0(n363), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n364), .A1(n355), .A2(n350), .B0(n364), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n365), .A1(n355), .A2(n352), .B0(n365), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n367), .A1(n355), .A2(n354), .B0(n367), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_1 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n362), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n363), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n364), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n365), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U268 ( .A(b[2]), .B(a[10]), .Y(n375) );
  XOR2XL U269 ( .A(b[10]), .B(a[1]), .Y(n389) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n367), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U278 ( .A(n355), .Y(n367) );
  INVX1 U279 ( .A(n373), .Y(n361) );
  CLKINVX1 U280 ( .A(n65), .Y(n365) );
  CLKINVX1 U281 ( .A(n51), .Y(n364) );
  CLKINVX1 U282 ( .A(n39), .Y(n363) );
  CLKINVX1 U283 ( .A(n31), .Y(n362) );
  CLKBUFX3 U284 ( .A(n390), .Y(n348) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  INVX3 U287 ( .A(a[1]), .Y(n357) );
  INVX3 U288 ( .A(a[3]), .Y(n358) );
  NAND2X2 U289 ( .A(a[1]), .B(n356), .Y(n379) );
  INVX3 U290 ( .A(a[0]), .Y(n356) );
  CLKBUFX3 U291 ( .A(n403), .Y(n350) );
  CLKBUFX3 U292 ( .A(n405), .Y(n349) );
  NAND2X1 U293 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U294 ( .A(b[0]), .Y(n355) );
  INVX3 U295 ( .A(a[5]), .Y(n359) );
  CLKBUFX3 U296 ( .A(n416), .Y(n352) );
  CLKBUFX3 U297 ( .A(n418), .Y(n351) );
  NAND2X1 U298 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U299 ( .A(a[7]), .Y(n360) );
  CLKBUFX3 U300 ( .A(n429), .Y(n354) );
  CLKBUFX3 U301 ( .A(n431), .Y(n353) );
  NAND2X1 U302 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U303 ( .A(a[9]), .Y(n366) );
  XOR2X1 U304 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U305 ( .AN(n370), .B(n361), .Y(n369) );
  XOR2X1 U306 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U307 ( .A(n356), .B(n367), .Y(product[0]) );
  XNOR2X1 U308 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U309 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U310 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U313 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U314 ( .A0(n355), .A1(n379), .B0(n380), .B1(n356), .Y(n179) );
  OAI22XL U315 ( .A0(n380), .A1(n379), .B0(n381), .B1(n356), .Y(n178) );
  XOR2X1 U316 ( .A(b[1]), .B(n357), .Y(n380) );
  OAI22XL U317 ( .A0(n381), .A1(n379), .B0(n382), .B1(n356), .Y(n177) );
  XOR2X1 U318 ( .A(b[2]), .B(n357), .Y(n381) );
  OAI22XL U319 ( .A0(n382), .A1(n379), .B0(n383), .B1(n356), .Y(n176) );
  XOR2X1 U320 ( .A(b[3]), .B(n357), .Y(n382) );
  OAI22XL U321 ( .A0(n383), .A1(n379), .B0(n384), .B1(n356), .Y(n175) );
  XOR2X1 U322 ( .A(b[4]), .B(n357), .Y(n383) );
  OAI22XL U323 ( .A0(n384), .A1(n379), .B0(n385), .B1(n356), .Y(n174) );
  XOR2X1 U324 ( .A(b[5]), .B(n357), .Y(n384) );
  OAI22XL U325 ( .A0(n385), .A1(n379), .B0(n386), .B1(n356), .Y(n173) );
  XOR2X1 U326 ( .A(b[6]), .B(n357), .Y(n385) );
  OAI22XL U327 ( .A0(n386), .A1(n379), .B0(n387), .B1(n356), .Y(n172) );
  XOR2X1 U328 ( .A(b[7]), .B(n357), .Y(n386) );
  OAI22XL U329 ( .A0(n387), .A1(n379), .B0(n388), .B1(n356), .Y(n171) );
  XOR2X1 U330 ( .A(b[8]), .B(n357), .Y(n387) );
  OAI2BB2XL U331 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U332 ( .A(b[9]), .B(n357), .Y(n388) );
  OAI2BB1X1 U333 ( .A0N(n356), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U334 ( .A(n348), .B(n367), .Y(n168) );
  OAI22XL U335 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U336 ( .A(n358), .B(n355), .Y(n391) );
  OAI22XL U337 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U338 ( .A(b[1]), .B(n358), .Y(n393) );
  OAI22XL U339 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U340 ( .A(b[2]), .B(n358), .Y(n394) );
  OAI22XL U341 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U342 ( .A(b[3]), .B(n358), .Y(n395) );
  OAI22XL U343 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U344 ( .A(b[4]), .B(n358), .Y(n396) );
  OAI22XL U345 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U346 ( .A(b[5]), .B(n358), .Y(n397) );
  OAI22XL U347 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U348 ( .A(b[6]), .B(n358), .Y(n398) );
  OAI22XL U349 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U350 ( .A(b[7]), .B(n358), .Y(n399) );
  OAI22XL U351 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U352 ( .A(b[8]), .B(n358), .Y(n400) );
  OAI22XL U353 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U354 ( .A(b[9]), .B(n358), .Y(n401) );
  AO21X1 U355 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U356 ( .A(b[10]), .B(n358), .Y(n402) );
  NOR2X1 U357 ( .A(n350), .B(n367), .Y(n156) );
  OAI22XL U358 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U359 ( .A(n359), .B(n355), .Y(n404) );
  OAI22XL U360 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U361 ( .A(b[1]), .B(n359), .Y(n406) );
  OAI22XL U362 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U363 ( .A(b[2]), .B(n359), .Y(n407) );
  OAI22XL U364 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U365 ( .A(b[3]), .B(n359), .Y(n408) );
  OAI22XL U366 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U367 ( .A(b[4]), .B(n359), .Y(n409) );
  OAI22XL U368 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U369 ( .A(b[5]), .B(n359), .Y(n410) );
  OAI22XL U370 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U371 ( .A(b[6]), .B(n359), .Y(n411) );
  OAI22XL U372 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U373 ( .A(b[7]), .B(n359), .Y(n412) );
  OAI22XL U374 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U375 ( .A(b[8]), .B(n359), .Y(n413) );
  OAI22XL U376 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U377 ( .A(b[9]), .B(n359), .Y(n414) );
  AO21X1 U378 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U379 ( .A(b[10]), .B(n359), .Y(n415) );
  NOR2X1 U380 ( .A(n352), .B(n367), .Y(n144) );
  OAI22XL U381 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U382 ( .A(n360), .B(n355), .Y(n417) );
  OAI22XL U383 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U384 ( .A(b[1]), .B(n360), .Y(n419) );
  OAI22XL U385 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U386 ( .A(b[2]), .B(n360), .Y(n420) );
  OAI22XL U387 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U388 ( .A(b[3]), .B(n360), .Y(n421) );
  OAI22XL U389 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U390 ( .A(b[4]), .B(n360), .Y(n422) );
  OAI22XL U391 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U392 ( .A(b[5]), .B(n360), .Y(n423) );
  OAI22XL U393 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U394 ( .A(b[6]), .B(n360), .Y(n424) );
  OAI22XL U395 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U396 ( .A(b[7]), .B(n360), .Y(n425) );
  OAI22XL U397 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U398 ( .A(b[8]), .B(n360), .Y(n426) );
  OAI22XL U399 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U400 ( .A(b[9]), .B(n360), .Y(n427) );
  AO21X1 U401 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U402 ( .A(b[10]), .B(n360), .Y(n428) );
  NOR2X1 U403 ( .A(n354), .B(n367), .Y(n132) );
  OAI22XL U404 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U405 ( .A(n366), .B(n355), .Y(n430) );
  OAI22XL U406 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U407 ( .A(b[1]), .B(n366), .Y(n432) );
  OAI22XL U408 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U409 ( .A(b[2]), .B(n366), .Y(n433) );
  OAI22XL U410 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U411 ( .A(b[3]), .B(n366), .Y(n434) );
  OAI22XL U412 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U413 ( .A(b[4]), .B(n366), .Y(n435) );
  OAI22XL U414 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U415 ( .A(b[5]), .B(n366), .Y(n436) );
  OAI22XL U416 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U417 ( .A(b[6]), .B(n366), .Y(n437) );
  OAI22XL U418 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U419 ( .A(b[7]), .B(n366), .Y(n438) );
  OAI22XL U420 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U421 ( .A(b[8]), .B(n366), .Y(n439) );
  OAI22XL U422 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U423 ( .A(b[9]), .B(n366), .Y(n440) );
  AO21X1 U424 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U425 ( .A(b[10]), .B(n366), .Y(n441) );
  NOR2X1 U426 ( .A(n361), .B(n367), .Y(n120) );
  NOR2X1 U427 ( .A(n361), .B(n442), .Y(n118) );
  XNOR2X1 U428 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U429 ( .A(n361), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n361), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n361), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n357), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n358), .A1(n355), .A2(n348), .B0(n358), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n359), .A1(n355), .A2(n350), .B0(n359), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n360), .A1(n355), .A2(n352), .B0(n360), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n366), .A1(n355), .A2(n354), .B0(n366), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_2 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n360), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n359), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n358), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n357), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[10]), .B(a[1]), .Y(n389) );
  XOR2XL U268 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U269 ( .A(b[2]), .B(a[10]), .Y(n375) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n356), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U278 ( .A(n355), .Y(n356) );
  INVX1 U279 ( .A(n373), .Y(n366) );
  CLKINVX1 U280 ( .A(n65), .Y(n357) );
  CLKINVX1 U281 ( .A(n51), .Y(n358) );
  CLKINVX1 U282 ( .A(n39), .Y(n359) );
  CLKINVX1 U283 ( .A(n31), .Y(n360) );
  CLKBUFX3 U284 ( .A(n390), .Y(n348) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  INVX3 U287 ( .A(a[1]), .Y(n362) );
  INVX3 U288 ( .A(a[3]), .Y(n363) );
  NAND2X2 U289 ( .A(a[1]), .B(n361), .Y(n379) );
  CLKBUFX3 U290 ( .A(n403), .Y(n350) );
  CLKBUFX3 U291 ( .A(n405), .Y(n349) );
  NAND2X1 U292 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U293 ( .A(b[0]), .Y(n355) );
  INVX3 U294 ( .A(a[0]), .Y(n361) );
  INVX3 U295 ( .A(a[5]), .Y(n364) );
  CLKBUFX3 U296 ( .A(n416), .Y(n352) );
  CLKBUFX3 U297 ( .A(n418), .Y(n351) );
  NAND2X1 U298 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U299 ( .A(a[7]), .Y(n365) );
  CLKBUFX3 U300 ( .A(n429), .Y(n354) );
  CLKBUFX3 U301 ( .A(n431), .Y(n353) );
  NAND2X1 U302 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U303 ( .A(a[9]), .Y(n367) );
  XOR2X1 U304 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U305 ( .AN(n370), .B(n366), .Y(n369) );
  XOR2X1 U306 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U307 ( .A(n361), .B(n356), .Y(product[0]) );
  XNOR2X1 U308 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U309 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U310 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U313 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U314 ( .A0(n355), .A1(n379), .B0(n380), .B1(n361), .Y(n179) );
  OAI22XL U315 ( .A0(n380), .A1(n379), .B0(n381), .B1(n361), .Y(n178) );
  XOR2X1 U316 ( .A(b[1]), .B(n362), .Y(n380) );
  OAI22XL U317 ( .A0(n381), .A1(n379), .B0(n382), .B1(n361), .Y(n177) );
  XOR2X1 U318 ( .A(b[2]), .B(n362), .Y(n381) );
  OAI22XL U319 ( .A0(n382), .A1(n379), .B0(n383), .B1(n361), .Y(n176) );
  XOR2X1 U320 ( .A(b[3]), .B(n362), .Y(n382) );
  OAI22XL U321 ( .A0(n383), .A1(n379), .B0(n384), .B1(n361), .Y(n175) );
  XOR2X1 U322 ( .A(b[4]), .B(n362), .Y(n383) );
  OAI22XL U323 ( .A0(n384), .A1(n379), .B0(n385), .B1(n361), .Y(n174) );
  XOR2X1 U324 ( .A(b[5]), .B(n362), .Y(n384) );
  OAI22XL U325 ( .A0(n385), .A1(n379), .B0(n386), .B1(n361), .Y(n173) );
  XOR2X1 U326 ( .A(b[6]), .B(n362), .Y(n385) );
  OAI22XL U327 ( .A0(n386), .A1(n379), .B0(n387), .B1(n361), .Y(n172) );
  XOR2X1 U328 ( .A(b[7]), .B(n362), .Y(n386) );
  OAI22XL U329 ( .A0(n387), .A1(n379), .B0(n388), .B1(n361), .Y(n171) );
  XOR2X1 U330 ( .A(b[8]), .B(n362), .Y(n387) );
  OAI2BB2XL U331 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U332 ( .A(b[9]), .B(n362), .Y(n388) );
  OAI2BB1X1 U333 ( .A0N(n361), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U334 ( .A(n348), .B(n356), .Y(n168) );
  OAI22XL U335 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U336 ( .A(n363), .B(n355), .Y(n391) );
  OAI22XL U337 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U338 ( .A(b[1]), .B(n363), .Y(n393) );
  OAI22XL U339 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U340 ( .A(b[2]), .B(n363), .Y(n394) );
  OAI22XL U341 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U342 ( .A(b[3]), .B(n363), .Y(n395) );
  OAI22XL U343 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U344 ( .A(b[4]), .B(n363), .Y(n396) );
  OAI22XL U345 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U346 ( .A(b[5]), .B(n363), .Y(n397) );
  OAI22XL U347 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U348 ( .A(b[6]), .B(n363), .Y(n398) );
  OAI22XL U349 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U350 ( .A(b[7]), .B(n363), .Y(n399) );
  OAI22XL U351 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U352 ( .A(b[8]), .B(n363), .Y(n400) );
  OAI22XL U353 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U354 ( .A(b[9]), .B(n363), .Y(n401) );
  AO21X1 U355 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U356 ( .A(b[10]), .B(n363), .Y(n402) );
  NOR2X1 U357 ( .A(n350), .B(n356), .Y(n156) );
  OAI22XL U358 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U359 ( .A(n364), .B(n355), .Y(n404) );
  OAI22XL U360 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U361 ( .A(b[1]), .B(n364), .Y(n406) );
  OAI22XL U362 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U363 ( .A(b[2]), .B(n364), .Y(n407) );
  OAI22XL U364 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U365 ( .A(b[3]), .B(n364), .Y(n408) );
  OAI22XL U366 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U367 ( .A(b[4]), .B(n364), .Y(n409) );
  OAI22XL U368 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U369 ( .A(b[5]), .B(n364), .Y(n410) );
  OAI22XL U370 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U371 ( .A(b[6]), .B(n364), .Y(n411) );
  OAI22XL U372 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U373 ( .A(b[7]), .B(n364), .Y(n412) );
  OAI22XL U374 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U375 ( .A(b[8]), .B(n364), .Y(n413) );
  OAI22XL U376 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U377 ( .A(b[9]), .B(n364), .Y(n414) );
  AO21X1 U378 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U379 ( .A(b[10]), .B(n364), .Y(n415) );
  NOR2X1 U380 ( .A(n352), .B(n356), .Y(n144) );
  OAI22XL U381 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U382 ( .A(n365), .B(n355), .Y(n417) );
  OAI22XL U383 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U384 ( .A(b[1]), .B(n365), .Y(n419) );
  OAI22XL U385 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U386 ( .A(b[2]), .B(n365), .Y(n420) );
  OAI22XL U387 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U388 ( .A(b[3]), .B(n365), .Y(n421) );
  OAI22XL U389 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U390 ( .A(b[4]), .B(n365), .Y(n422) );
  OAI22XL U391 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U392 ( .A(b[5]), .B(n365), .Y(n423) );
  OAI22XL U393 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U394 ( .A(b[6]), .B(n365), .Y(n424) );
  OAI22XL U395 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U396 ( .A(b[7]), .B(n365), .Y(n425) );
  OAI22XL U397 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U398 ( .A(b[8]), .B(n365), .Y(n426) );
  OAI22XL U399 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U400 ( .A(b[9]), .B(n365), .Y(n427) );
  AO21X1 U401 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U402 ( .A(b[10]), .B(n365), .Y(n428) );
  NOR2X1 U403 ( .A(n354), .B(n356), .Y(n132) );
  OAI22XL U404 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U405 ( .A(n367), .B(n355), .Y(n430) );
  OAI22XL U406 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U407 ( .A(b[1]), .B(n367), .Y(n432) );
  OAI22XL U408 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U409 ( .A(b[2]), .B(n367), .Y(n433) );
  OAI22XL U410 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U411 ( .A(b[3]), .B(n367), .Y(n434) );
  OAI22XL U412 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U413 ( .A(b[4]), .B(n367), .Y(n435) );
  OAI22XL U414 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U415 ( .A(b[5]), .B(n367), .Y(n436) );
  OAI22XL U416 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U417 ( .A(b[6]), .B(n367), .Y(n437) );
  OAI22XL U418 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U419 ( .A(b[7]), .B(n367), .Y(n438) );
  OAI22XL U420 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U421 ( .A(b[8]), .B(n367), .Y(n439) );
  OAI22XL U422 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U423 ( .A(b[9]), .B(n367), .Y(n440) );
  AO21X1 U424 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U425 ( .A(b[10]), .B(n367), .Y(n441) );
  NOR2X1 U426 ( .A(n366), .B(n356), .Y(n120) );
  NOR2X1 U427 ( .A(n366), .B(n442), .Y(n118) );
  XNOR2X1 U428 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U429 ( .A(n366), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n366), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n366), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n362), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n363), .A1(n355), .A2(n348), .B0(n363), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n364), .A1(n355), .A2(n350), .B0(n364), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n365), .A1(n355), .A2(n352), .B0(n365), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n367), .A1(n355), .A2(n354), .B0(n367), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_3 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n362), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n363), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n364), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n365), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U268 ( .A(b[2]), .B(a[10]), .Y(n375) );
  XOR2XL U269 ( .A(b[10]), .B(a[1]), .Y(n389) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n367), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U278 ( .A(n355), .Y(n367) );
  INVX1 U279 ( .A(n373), .Y(n361) );
  CLKINVX1 U280 ( .A(n65), .Y(n365) );
  CLKINVX1 U281 ( .A(n51), .Y(n364) );
  CLKINVX1 U282 ( .A(n39), .Y(n363) );
  CLKINVX1 U283 ( .A(n31), .Y(n362) );
  CLKBUFX3 U284 ( .A(n390), .Y(n348) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  INVX3 U287 ( .A(a[1]), .Y(n357) );
  INVX3 U288 ( .A(a[3]), .Y(n358) );
  NAND2X2 U289 ( .A(a[1]), .B(n356), .Y(n379) );
  CLKBUFX3 U290 ( .A(n403), .Y(n350) );
  CLKBUFX3 U291 ( .A(n405), .Y(n349) );
  NAND2X1 U292 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U293 ( .A(b[0]), .Y(n355) );
  INVX3 U294 ( .A(a[0]), .Y(n356) );
  INVX3 U295 ( .A(a[5]), .Y(n359) );
  CLKBUFX3 U296 ( .A(n416), .Y(n352) );
  CLKBUFX3 U297 ( .A(n418), .Y(n351) );
  NAND2X1 U298 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U299 ( .A(a[7]), .Y(n360) );
  CLKBUFX3 U300 ( .A(n429), .Y(n354) );
  CLKBUFX3 U301 ( .A(n431), .Y(n353) );
  NAND2X1 U302 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U303 ( .A(a[9]), .Y(n366) );
  XOR2X1 U304 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U305 ( .AN(n370), .B(n361), .Y(n369) );
  XOR2X1 U306 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U307 ( .A(n356), .B(n367), .Y(product[0]) );
  XNOR2X1 U308 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U309 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U310 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U313 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U314 ( .A0(n355), .A1(n379), .B0(n380), .B1(n356), .Y(n179) );
  OAI22XL U315 ( .A0(n380), .A1(n379), .B0(n381), .B1(n356), .Y(n178) );
  XOR2X1 U316 ( .A(b[1]), .B(n357), .Y(n380) );
  OAI22XL U317 ( .A0(n381), .A1(n379), .B0(n382), .B1(n356), .Y(n177) );
  XOR2X1 U318 ( .A(b[2]), .B(n357), .Y(n381) );
  OAI22XL U319 ( .A0(n382), .A1(n379), .B0(n383), .B1(n356), .Y(n176) );
  XOR2X1 U320 ( .A(b[3]), .B(n357), .Y(n382) );
  OAI22XL U321 ( .A0(n383), .A1(n379), .B0(n384), .B1(n356), .Y(n175) );
  XOR2X1 U322 ( .A(b[4]), .B(n357), .Y(n383) );
  OAI22XL U323 ( .A0(n384), .A1(n379), .B0(n385), .B1(n356), .Y(n174) );
  XOR2X1 U324 ( .A(b[5]), .B(n357), .Y(n384) );
  OAI22XL U325 ( .A0(n385), .A1(n379), .B0(n386), .B1(n356), .Y(n173) );
  XOR2X1 U326 ( .A(b[6]), .B(n357), .Y(n385) );
  OAI22XL U327 ( .A0(n386), .A1(n379), .B0(n387), .B1(n356), .Y(n172) );
  XOR2X1 U328 ( .A(b[7]), .B(n357), .Y(n386) );
  OAI22XL U329 ( .A0(n387), .A1(n379), .B0(n388), .B1(n356), .Y(n171) );
  XOR2X1 U330 ( .A(b[8]), .B(n357), .Y(n387) );
  OAI2BB2XL U331 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U332 ( .A(b[9]), .B(n357), .Y(n388) );
  OAI2BB1X1 U333 ( .A0N(n356), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U334 ( .A(n348), .B(n367), .Y(n168) );
  OAI22XL U335 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U336 ( .A(n358), .B(n355), .Y(n391) );
  OAI22XL U337 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U338 ( .A(b[1]), .B(n358), .Y(n393) );
  OAI22XL U339 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U340 ( .A(b[2]), .B(n358), .Y(n394) );
  OAI22XL U341 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U342 ( .A(b[3]), .B(n358), .Y(n395) );
  OAI22XL U343 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U344 ( .A(b[4]), .B(n358), .Y(n396) );
  OAI22XL U345 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U346 ( .A(b[5]), .B(n358), .Y(n397) );
  OAI22XL U347 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U348 ( .A(b[6]), .B(n358), .Y(n398) );
  OAI22XL U349 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U350 ( .A(b[7]), .B(n358), .Y(n399) );
  OAI22XL U351 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U352 ( .A(b[8]), .B(n358), .Y(n400) );
  OAI22XL U353 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U354 ( .A(b[9]), .B(n358), .Y(n401) );
  AO21X1 U355 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U356 ( .A(b[10]), .B(n358), .Y(n402) );
  NOR2X1 U357 ( .A(n350), .B(n367), .Y(n156) );
  OAI22XL U358 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U359 ( .A(n359), .B(n355), .Y(n404) );
  OAI22XL U360 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U361 ( .A(b[1]), .B(n359), .Y(n406) );
  OAI22XL U362 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U363 ( .A(b[2]), .B(n359), .Y(n407) );
  OAI22XL U364 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U365 ( .A(b[3]), .B(n359), .Y(n408) );
  OAI22XL U366 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U367 ( .A(b[4]), .B(n359), .Y(n409) );
  OAI22XL U368 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U369 ( .A(b[5]), .B(n359), .Y(n410) );
  OAI22XL U370 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U371 ( .A(b[6]), .B(n359), .Y(n411) );
  OAI22XL U372 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U373 ( .A(b[7]), .B(n359), .Y(n412) );
  OAI22XL U374 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U375 ( .A(b[8]), .B(n359), .Y(n413) );
  OAI22XL U376 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U377 ( .A(b[9]), .B(n359), .Y(n414) );
  AO21X1 U378 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U379 ( .A(b[10]), .B(n359), .Y(n415) );
  NOR2X1 U380 ( .A(n352), .B(n367), .Y(n144) );
  OAI22XL U381 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U382 ( .A(n360), .B(n355), .Y(n417) );
  OAI22XL U383 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U384 ( .A(b[1]), .B(n360), .Y(n419) );
  OAI22XL U385 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U386 ( .A(b[2]), .B(n360), .Y(n420) );
  OAI22XL U387 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U388 ( .A(b[3]), .B(n360), .Y(n421) );
  OAI22XL U389 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U390 ( .A(b[4]), .B(n360), .Y(n422) );
  OAI22XL U391 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U392 ( .A(b[5]), .B(n360), .Y(n423) );
  OAI22XL U393 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U394 ( .A(b[6]), .B(n360), .Y(n424) );
  OAI22XL U395 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U396 ( .A(b[7]), .B(n360), .Y(n425) );
  OAI22XL U397 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U398 ( .A(b[8]), .B(n360), .Y(n426) );
  OAI22XL U399 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U400 ( .A(b[9]), .B(n360), .Y(n427) );
  AO21X1 U401 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U402 ( .A(b[10]), .B(n360), .Y(n428) );
  NOR2X1 U403 ( .A(n354), .B(n367), .Y(n132) );
  OAI22XL U404 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U405 ( .A(n366), .B(n355), .Y(n430) );
  OAI22XL U406 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U407 ( .A(b[1]), .B(n366), .Y(n432) );
  OAI22XL U408 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U409 ( .A(b[2]), .B(n366), .Y(n433) );
  OAI22XL U410 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U411 ( .A(b[3]), .B(n366), .Y(n434) );
  OAI22XL U412 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U413 ( .A(b[4]), .B(n366), .Y(n435) );
  OAI22XL U414 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U415 ( .A(b[5]), .B(n366), .Y(n436) );
  OAI22XL U416 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U417 ( .A(b[6]), .B(n366), .Y(n437) );
  OAI22XL U418 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U419 ( .A(b[7]), .B(n366), .Y(n438) );
  OAI22XL U420 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U421 ( .A(b[8]), .B(n366), .Y(n439) );
  OAI22XL U422 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U423 ( .A(b[9]), .B(n366), .Y(n440) );
  AO21X1 U424 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U425 ( .A(b[10]), .B(n366), .Y(n441) );
  NOR2X1 U426 ( .A(n361), .B(n367), .Y(n120) );
  NOR2X1 U427 ( .A(n361), .B(n442), .Y(n118) );
  XNOR2X1 U428 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U429 ( .A(n361), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n361), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n361), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n357), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n358), .A1(n355), .A2(n348), .B0(n358), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n359), .A1(n355), .A2(n350), .B0(n359), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n360), .A1(n355), .A2(n352), .B0(n360), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n366), .A1(n355), .A2(n354), .B0(n366), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_4 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n360), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n359), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n358), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n357), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[10]), .B(a[1]), .Y(n389) );
  XOR2XL U268 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U269 ( .A(b[2]), .B(a[10]), .Y(n375) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n356), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U278 ( .A(n355), .Y(n356) );
  INVX1 U279 ( .A(n373), .Y(n366) );
  CLKINVX1 U280 ( .A(n65), .Y(n357) );
  CLKINVX1 U281 ( .A(n51), .Y(n358) );
  CLKINVX1 U282 ( .A(n39), .Y(n359) );
  CLKINVX1 U283 ( .A(n31), .Y(n360) );
  CLKBUFX3 U284 ( .A(n390), .Y(n348) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  INVX3 U287 ( .A(a[1]), .Y(n362) );
  INVX3 U288 ( .A(a[3]), .Y(n363) );
  NAND2X2 U289 ( .A(a[1]), .B(n361), .Y(n379) );
  CLKBUFX3 U290 ( .A(n403), .Y(n350) );
  CLKBUFX3 U291 ( .A(n405), .Y(n349) );
  NAND2X1 U292 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U293 ( .A(b[0]), .Y(n355) );
  INVX3 U294 ( .A(a[0]), .Y(n361) );
  INVX3 U295 ( .A(a[5]), .Y(n364) );
  CLKBUFX3 U296 ( .A(n416), .Y(n352) );
  CLKBUFX3 U297 ( .A(n418), .Y(n351) );
  NAND2X1 U298 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U299 ( .A(a[7]), .Y(n365) );
  CLKBUFX3 U300 ( .A(n429), .Y(n354) );
  CLKBUFX3 U301 ( .A(n431), .Y(n353) );
  NAND2X1 U302 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U303 ( .A(a[9]), .Y(n367) );
  XOR2X1 U304 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U305 ( .AN(n370), .B(n366), .Y(n369) );
  XOR2X1 U306 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U307 ( .A(n361), .B(n356), .Y(product[0]) );
  XNOR2X1 U308 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U309 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U310 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U313 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U314 ( .A0(n355), .A1(n379), .B0(n380), .B1(n361), .Y(n179) );
  OAI22XL U315 ( .A0(n380), .A1(n379), .B0(n381), .B1(n361), .Y(n178) );
  XOR2X1 U316 ( .A(b[1]), .B(n362), .Y(n380) );
  OAI22XL U317 ( .A0(n381), .A1(n379), .B0(n382), .B1(n361), .Y(n177) );
  XOR2X1 U318 ( .A(b[2]), .B(n362), .Y(n381) );
  OAI22XL U319 ( .A0(n382), .A1(n379), .B0(n383), .B1(n361), .Y(n176) );
  XOR2X1 U320 ( .A(b[3]), .B(n362), .Y(n382) );
  OAI22XL U321 ( .A0(n383), .A1(n379), .B0(n384), .B1(n361), .Y(n175) );
  XOR2X1 U322 ( .A(b[4]), .B(n362), .Y(n383) );
  OAI22XL U323 ( .A0(n384), .A1(n379), .B0(n385), .B1(n361), .Y(n174) );
  XOR2X1 U324 ( .A(b[5]), .B(n362), .Y(n384) );
  OAI22XL U325 ( .A0(n385), .A1(n379), .B0(n386), .B1(n361), .Y(n173) );
  XOR2X1 U326 ( .A(b[6]), .B(n362), .Y(n385) );
  OAI22XL U327 ( .A0(n386), .A1(n379), .B0(n387), .B1(n361), .Y(n172) );
  XOR2X1 U328 ( .A(b[7]), .B(n362), .Y(n386) );
  OAI22XL U329 ( .A0(n387), .A1(n379), .B0(n388), .B1(n361), .Y(n171) );
  XOR2X1 U330 ( .A(b[8]), .B(n362), .Y(n387) );
  OAI2BB2XL U331 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U332 ( .A(b[9]), .B(n362), .Y(n388) );
  OAI2BB1X1 U333 ( .A0N(n361), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U334 ( .A(n348), .B(n356), .Y(n168) );
  OAI22XL U335 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U336 ( .A(n363), .B(n355), .Y(n391) );
  OAI22XL U337 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U338 ( .A(b[1]), .B(n363), .Y(n393) );
  OAI22XL U339 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U340 ( .A(b[2]), .B(n363), .Y(n394) );
  OAI22XL U341 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U342 ( .A(b[3]), .B(n363), .Y(n395) );
  OAI22XL U343 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U344 ( .A(b[4]), .B(n363), .Y(n396) );
  OAI22XL U345 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U346 ( .A(b[5]), .B(n363), .Y(n397) );
  OAI22XL U347 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U348 ( .A(b[6]), .B(n363), .Y(n398) );
  OAI22XL U349 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U350 ( .A(b[7]), .B(n363), .Y(n399) );
  OAI22XL U351 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U352 ( .A(b[8]), .B(n363), .Y(n400) );
  OAI22XL U353 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U354 ( .A(b[9]), .B(n363), .Y(n401) );
  AO21X1 U355 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U356 ( .A(b[10]), .B(n363), .Y(n402) );
  NOR2X1 U357 ( .A(n350), .B(n356), .Y(n156) );
  OAI22XL U358 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U359 ( .A(n364), .B(n355), .Y(n404) );
  OAI22XL U360 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U361 ( .A(b[1]), .B(n364), .Y(n406) );
  OAI22XL U362 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U363 ( .A(b[2]), .B(n364), .Y(n407) );
  OAI22XL U364 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U365 ( .A(b[3]), .B(n364), .Y(n408) );
  OAI22XL U366 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U367 ( .A(b[4]), .B(n364), .Y(n409) );
  OAI22XL U368 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U369 ( .A(b[5]), .B(n364), .Y(n410) );
  OAI22XL U370 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U371 ( .A(b[6]), .B(n364), .Y(n411) );
  OAI22XL U372 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U373 ( .A(b[7]), .B(n364), .Y(n412) );
  OAI22XL U374 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U375 ( .A(b[8]), .B(n364), .Y(n413) );
  OAI22XL U376 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U377 ( .A(b[9]), .B(n364), .Y(n414) );
  AO21X1 U378 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U379 ( .A(b[10]), .B(n364), .Y(n415) );
  NOR2X1 U380 ( .A(n352), .B(n356), .Y(n144) );
  OAI22XL U381 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U382 ( .A(n365), .B(n355), .Y(n417) );
  OAI22XL U383 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U384 ( .A(b[1]), .B(n365), .Y(n419) );
  OAI22XL U385 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U386 ( .A(b[2]), .B(n365), .Y(n420) );
  OAI22XL U387 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U388 ( .A(b[3]), .B(n365), .Y(n421) );
  OAI22XL U389 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U390 ( .A(b[4]), .B(n365), .Y(n422) );
  OAI22XL U391 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U392 ( .A(b[5]), .B(n365), .Y(n423) );
  OAI22XL U393 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U394 ( .A(b[6]), .B(n365), .Y(n424) );
  OAI22XL U395 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U396 ( .A(b[7]), .B(n365), .Y(n425) );
  OAI22XL U397 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U398 ( .A(b[8]), .B(n365), .Y(n426) );
  OAI22XL U399 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U400 ( .A(b[9]), .B(n365), .Y(n427) );
  AO21X1 U401 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U402 ( .A(b[10]), .B(n365), .Y(n428) );
  NOR2X1 U403 ( .A(n354), .B(n356), .Y(n132) );
  OAI22XL U404 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U405 ( .A(n367), .B(n355), .Y(n430) );
  OAI22XL U406 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U407 ( .A(b[1]), .B(n367), .Y(n432) );
  OAI22XL U408 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U409 ( .A(b[2]), .B(n367), .Y(n433) );
  OAI22XL U410 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U411 ( .A(b[3]), .B(n367), .Y(n434) );
  OAI22XL U412 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U413 ( .A(b[4]), .B(n367), .Y(n435) );
  OAI22XL U414 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U415 ( .A(b[5]), .B(n367), .Y(n436) );
  OAI22XL U416 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U417 ( .A(b[6]), .B(n367), .Y(n437) );
  OAI22XL U418 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U419 ( .A(b[7]), .B(n367), .Y(n438) );
  OAI22XL U420 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U421 ( .A(b[8]), .B(n367), .Y(n439) );
  OAI22XL U422 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U423 ( .A(b[9]), .B(n367), .Y(n440) );
  AO21X1 U424 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U425 ( .A(b[10]), .B(n367), .Y(n441) );
  NOR2X1 U426 ( .A(n366), .B(n356), .Y(n120) );
  NOR2X1 U427 ( .A(n366), .B(n442), .Y(n118) );
  XNOR2X1 U428 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U429 ( .A(n366), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n366), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n366), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n362), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n363), .A1(n355), .A2(n348), .B0(n363), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n364), .A1(n355), .A2(n350), .B0(n364), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n365), .A1(n355), .A2(n352), .B0(n365), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n367), .A1(n355), .A2(n354), .B0(n367), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_5 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n362), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n363), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n364), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n365), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U268 ( .A(b[2]), .B(a[10]), .Y(n375) );
  XOR2XL U269 ( .A(b[10]), .B(a[1]), .Y(n389) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n367), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U278 ( .A(n355), .Y(n367) );
  INVX1 U279 ( .A(n373), .Y(n361) );
  CLKINVX1 U280 ( .A(n65), .Y(n365) );
  CLKINVX1 U281 ( .A(n51), .Y(n364) );
  CLKINVX1 U282 ( .A(n39), .Y(n363) );
  CLKINVX1 U283 ( .A(n31), .Y(n362) );
  CLKBUFX3 U284 ( .A(n390), .Y(n348) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  INVX3 U287 ( .A(a[1]), .Y(n357) );
  INVX3 U288 ( .A(a[3]), .Y(n358) );
  NAND2X2 U289 ( .A(a[1]), .B(n356), .Y(n379) );
  CLKBUFX3 U290 ( .A(n403), .Y(n350) );
  CLKBUFX3 U291 ( .A(n405), .Y(n349) );
  NAND2X1 U292 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U293 ( .A(b[0]), .Y(n355) );
  INVX3 U294 ( .A(a[0]), .Y(n356) );
  INVX3 U295 ( .A(a[5]), .Y(n359) );
  CLKBUFX3 U296 ( .A(n416), .Y(n352) );
  CLKBUFX3 U297 ( .A(n418), .Y(n351) );
  NAND2X1 U298 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U299 ( .A(a[7]), .Y(n360) );
  CLKBUFX3 U300 ( .A(n429), .Y(n354) );
  CLKBUFX3 U301 ( .A(n431), .Y(n353) );
  NAND2X1 U302 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U303 ( .A(a[9]), .Y(n366) );
  XOR2X1 U304 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U305 ( .AN(n370), .B(n361), .Y(n369) );
  XOR2X1 U306 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U307 ( .A(n356), .B(n367), .Y(product[0]) );
  XNOR2X1 U308 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U309 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U310 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U313 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U314 ( .A0(n355), .A1(n379), .B0(n380), .B1(n356), .Y(n179) );
  OAI22XL U315 ( .A0(n380), .A1(n379), .B0(n381), .B1(n356), .Y(n178) );
  XOR2X1 U316 ( .A(b[1]), .B(n357), .Y(n380) );
  OAI22XL U317 ( .A0(n381), .A1(n379), .B0(n382), .B1(n356), .Y(n177) );
  XOR2X1 U318 ( .A(b[2]), .B(n357), .Y(n381) );
  OAI22XL U319 ( .A0(n382), .A1(n379), .B0(n383), .B1(n356), .Y(n176) );
  XOR2X1 U320 ( .A(b[3]), .B(n357), .Y(n382) );
  OAI22XL U321 ( .A0(n383), .A1(n379), .B0(n384), .B1(n356), .Y(n175) );
  XOR2X1 U322 ( .A(b[4]), .B(n357), .Y(n383) );
  OAI22XL U323 ( .A0(n384), .A1(n379), .B0(n385), .B1(n356), .Y(n174) );
  XOR2X1 U324 ( .A(b[5]), .B(n357), .Y(n384) );
  OAI22XL U325 ( .A0(n385), .A1(n379), .B0(n386), .B1(n356), .Y(n173) );
  XOR2X1 U326 ( .A(b[6]), .B(n357), .Y(n385) );
  OAI22XL U327 ( .A0(n386), .A1(n379), .B0(n387), .B1(n356), .Y(n172) );
  XOR2X1 U328 ( .A(b[7]), .B(n357), .Y(n386) );
  OAI22XL U329 ( .A0(n387), .A1(n379), .B0(n388), .B1(n356), .Y(n171) );
  XOR2X1 U330 ( .A(b[8]), .B(n357), .Y(n387) );
  OAI2BB2XL U331 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U332 ( .A(b[9]), .B(n357), .Y(n388) );
  OAI2BB1X1 U333 ( .A0N(n356), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U334 ( .A(n348), .B(n367), .Y(n168) );
  OAI22XL U335 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U336 ( .A(n358), .B(n355), .Y(n391) );
  OAI22XL U337 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U338 ( .A(b[1]), .B(n358), .Y(n393) );
  OAI22XL U339 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U340 ( .A(b[2]), .B(n358), .Y(n394) );
  OAI22XL U341 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U342 ( .A(b[3]), .B(n358), .Y(n395) );
  OAI22XL U343 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U344 ( .A(b[4]), .B(n358), .Y(n396) );
  OAI22XL U345 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U346 ( .A(b[5]), .B(n358), .Y(n397) );
  OAI22XL U347 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U348 ( .A(b[6]), .B(n358), .Y(n398) );
  OAI22XL U349 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U350 ( .A(b[7]), .B(n358), .Y(n399) );
  OAI22XL U351 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U352 ( .A(b[8]), .B(n358), .Y(n400) );
  OAI22XL U353 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U354 ( .A(b[9]), .B(n358), .Y(n401) );
  AO21X1 U355 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U356 ( .A(b[10]), .B(n358), .Y(n402) );
  NOR2X1 U357 ( .A(n350), .B(n367), .Y(n156) );
  OAI22XL U358 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U359 ( .A(n359), .B(n355), .Y(n404) );
  OAI22XL U360 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U361 ( .A(b[1]), .B(n359), .Y(n406) );
  OAI22XL U362 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U363 ( .A(b[2]), .B(n359), .Y(n407) );
  OAI22XL U364 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U365 ( .A(b[3]), .B(n359), .Y(n408) );
  OAI22XL U366 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U367 ( .A(b[4]), .B(n359), .Y(n409) );
  OAI22XL U368 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U369 ( .A(b[5]), .B(n359), .Y(n410) );
  OAI22XL U370 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U371 ( .A(b[6]), .B(n359), .Y(n411) );
  OAI22XL U372 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U373 ( .A(b[7]), .B(n359), .Y(n412) );
  OAI22XL U374 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U375 ( .A(b[8]), .B(n359), .Y(n413) );
  OAI22XL U376 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U377 ( .A(b[9]), .B(n359), .Y(n414) );
  AO21X1 U378 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U379 ( .A(b[10]), .B(n359), .Y(n415) );
  NOR2X1 U380 ( .A(n352), .B(n367), .Y(n144) );
  OAI22XL U381 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U382 ( .A(n360), .B(n355), .Y(n417) );
  OAI22XL U383 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U384 ( .A(b[1]), .B(n360), .Y(n419) );
  OAI22XL U385 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U386 ( .A(b[2]), .B(n360), .Y(n420) );
  OAI22XL U387 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U388 ( .A(b[3]), .B(n360), .Y(n421) );
  OAI22XL U389 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U390 ( .A(b[4]), .B(n360), .Y(n422) );
  OAI22XL U391 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U392 ( .A(b[5]), .B(n360), .Y(n423) );
  OAI22XL U393 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U394 ( .A(b[6]), .B(n360), .Y(n424) );
  OAI22XL U395 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U396 ( .A(b[7]), .B(n360), .Y(n425) );
  OAI22XL U397 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U398 ( .A(b[8]), .B(n360), .Y(n426) );
  OAI22XL U399 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U400 ( .A(b[9]), .B(n360), .Y(n427) );
  AO21X1 U401 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U402 ( .A(b[10]), .B(n360), .Y(n428) );
  NOR2X1 U403 ( .A(n354), .B(n367), .Y(n132) );
  OAI22XL U404 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U405 ( .A(n366), .B(n355), .Y(n430) );
  OAI22XL U406 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U407 ( .A(b[1]), .B(n366), .Y(n432) );
  OAI22XL U408 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U409 ( .A(b[2]), .B(n366), .Y(n433) );
  OAI22XL U410 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U411 ( .A(b[3]), .B(n366), .Y(n434) );
  OAI22XL U412 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U413 ( .A(b[4]), .B(n366), .Y(n435) );
  OAI22XL U414 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U415 ( .A(b[5]), .B(n366), .Y(n436) );
  OAI22XL U416 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U417 ( .A(b[6]), .B(n366), .Y(n437) );
  OAI22XL U418 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U419 ( .A(b[7]), .B(n366), .Y(n438) );
  OAI22XL U420 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U421 ( .A(b[8]), .B(n366), .Y(n439) );
  OAI22XL U422 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U423 ( .A(b[9]), .B(n366), .Y(n440) );
  AO21X1 U424 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U425 ( .A(b[10]), .B(n366), .Y(n441) );
  NOR2X1 U426 ( .A(n361), .B(n367), .Y(n120) );
  NOR2X1 U427 ( .A(n361), .B(n442), .Y(n118) );
  XNOR2X1 U428 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U429 ( .A(n361), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n361), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n361), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n357), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n358), .A1(n355), .A2(n348), .B0(n358), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n359), .A1(n355), .A2(n350), .B0(n359), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n360), .A1(n355), .A2(n352), .B0(n360), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n366), .A1(n355), .A2(n354), .B0(n366), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_6 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n360), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n359), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n358), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n357), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XNOR2XL U261 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U262 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U263 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U264 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[10]), .B(a[1]), .Y(n389) );
  XOR2XL U268 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U269 ( .A(b[2]), .B(a[10]), .Y(n375) );
  XNOR2XL U270 ( .A(b[3]), .B(a[10]), .Y(n442) );
  CLKXOR2X2 U271 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U272 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U273 ( .A(n373), .B(n356), .C(a[10]), .Y(n371) );
  NAND2XL U274 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U275 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U276 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U277 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U278 ( .A(n378), .B(n373), .Y(n31) );
  INVX3 U279 ( .A(n355), .Y(n356) );
  INVX1 U280 ( .A(n373), .Y(n366) );
  CLKINVX1 U281 ( .A(n65), .Y(n357) );
  CLKINVX1 U282 ( .A(n51), .Y(n358) );
  CLKINVX1 U283 ( .A(n39), .Y(n359) );
  CLKINVX1 U284 ( .A(n31), .Y(n360) );
  CLKBUFX3 U285 ( .A(n392), .Y(n347) );
  NAND2X1 U286 ( .A(n348), .B(n446), .Y(n392) );
  CLKBUFX3 U287 ( .A(n390), .Y(n348) );
  INVX3 U288 ( .A(a[1]), .Y(n362) );
  INVX3 U289 ( .A(a[3]), .Y(n363) );
  NAND2X2 U290 ( .A(a[1]), .B(n361), .Y(n379) );
  CLKBUFX3 U291 ( .A(n403), .Y(n350) );
  CLKBUFX3 U292 ( .A(n405), .Y(n349) );
  NAND2X1 U293 ( .A(n350), .B(n447), .Y(n405) );
  CLKBUFX3 U294 ( .A(b[0]), .Y(n355) );
  INVX3 U295 ( .A(a[0]), .Y(n361) );
  INVX3 U296 ( .A(a[5]), .Y(n364) );
  CLKBUFX3 U297 ( .A(n416), .Y(n352) );
  CLKBUFX3 U298 ( .A(n418), .Y(n351) );
  NAND2X1 U299 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U300 ( .A(a[7]), .Y(n365) );
  CLKBUFX3 U301 ( .A(n429), .Y(n354) );
  CLKBUFX3 U302 ( .A(n431), .Y(n353) );
  NAND2X1 U303 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U304 ( .A(a[9]), .Y(n367) );
  XOR2X1 U305 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U306 ( .AN(n370), .B(n366), .Y(n369) );
  XOR2X1 U307 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U308 ( .A(n361), .B(n356), .Y(product[0]) );
  XNOR2X1 U309 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U310 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U311 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U312 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U313 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U314 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U315 ( .A0(n355), .A1(n379), .B0(n380), .B1(n361), .Y(n179) );
  OAI22XL U316 ( .A0(n380), .A1(n379), .B0(n381), .B1(n361), .Y(n178) );
  XOR2X1 U317 ( .A(b[1]), .B(n362), .Y(n380) );
  OAI22XL U318 ( .A0(n381), .A1(n379), .B0(n382), .B1(n361), .Y(n177) );
  XOR2X1 U319 ( .A(b[2]), .B(n362), .Y(n381) );
  OAI22XL U320 ( .A0(n382), .A1(n379), .B0(n383), .B1(n361), .Y(n176) );
  XOR2X1 U321 ( .A(b[3]), .B(n362), .Y(n382) );
  OAI22XL U322 ( .A0(n383), .A1(n379), .B0(n384), .B1(n361), .Y(n175) );
  XOR2X1 U323 ( .A(b[4]), .B(n362), .Y(n383) );
  OAI22XL U324 ( .A0(n384), .A1(n379), .B0(n385), .B1(n361), .Y(n174) );
  XOR2X1 U325 ( .A(b[5]), .B(n362), .Y(n384) );
  OAI22XL U326 ( .A0(n385), .A1(n379), .B0(n386), .B1(n361), .Y(n173) );
  XOR2X1 U327 ( .A(b[6]), .B(n362), .Y(n385) );
  OAI22XL U328 ( .A0(n386), .A1(n379), .B0(n387), .B1(n361), .Y(n172) );
  XOR2X1 U329 ( .A(b[7]), .B(n362), .Y(n386) );
  OAI22XL U330 ( .A0(n387), .A1(n379), .B0(n388), .B1(n361), .Y(n171) );
  XOR2X1 U331 ( .A(b[8]), .B(n362), .Y(n387) );
  OAI2BB2XL U332 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U333 ( .A(b[9]), .B(n362), .Y(n388) );
  OAI2BB1X1 U334 ( .A0N(n361), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U335 ( .A(n348), .B(n356), .Y(n168) );
  OAI22XL U336 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U337 ( .A(n363), .B(n355), .Y(n391) );
  OAI22XL U338 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U339 ( .A(b[1]), .B(n363), .Y(n393) );
  OAI22XL U340 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U341 ( .A(b[2]), .B(n363), .Y(n394) );
  OAI22XL U342 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U343 ( .A(b[3]), .B(n363), .Y(n395) );
  OAI22XL U344 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U345 ( .A(b[4]), .B(n363), .Y(n396) );
  OAI22XL U346 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U347 ( .A(b[5]), .B(n363), .Y(n397) );
  OAI22XL U348 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U349 ( .A(b[6]), .B(n363), .Y(n398) );
  OAI22XL U350 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U351 ( .A(b[7]), .B(n363), .Y(n399) );
  OAI22XL U352 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U353 ( .A(b[8]), .B(n363), .Y(n400) );
  OAI22XL U354 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U355 ( .A(b[9]), .B(n363), .Y(n401) );
  AO21X1 U356 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U357 ( .A(b[10]), .B(n363), .Y(n402) );
  NOR2X1 U358 ( .A(n350), .B(n356), .Y(n156) );
  OAI22XL U359 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U360 ( .A(n364), .B(n355), .Y(n404) );
  OAI22XL U361 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U362 ( .A(b[1]), .B(n364), .Y(n406) );
  OAI22XL U363 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U364 ( .A(b[2]), .B(n364), .Y(n407) );
  OAI22XL U365 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U366 ( .A(b[3]), .B(n364), .Y(n408) );
  OAI22XL U367 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U368 ( .A(b[4]), .B(n364), .Y(n409) );
  OAI22XL U369 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U370 ( .A(b[5]), .B(n364), .Y(n410) );
  OAI22XL U371 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U372 ( .A(b[6]), .B(n364), .Y(n411) );
  OAI22XL U373 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U374 ( .A(b[7]), .B(n364), .Y(n412) );
  OAI22XL U375 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U376 ( .A(b[8]), .B(n364), .Y(n413) );
  OAI22XL U377 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U378 ( .A(b[9]), .B(n364), .Y(n414) );
  AO21X1 U379 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U380 ( .A(b[10]), .B(n364), .Y(n415) );
  NOR2X1 U381 ( .A(n352), .B(n356), .Y(n144) );
  OAI22XL U382 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U383 ( .A(n365), .B(n355), .Y(n417) );
  OAI22XL U384 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U385 ( .A(b[1]), .B(n365), .Y(n419) );
  OAI22XL U386 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U387 ( .A(b[2]), .B(n365), .Y(n420) );
  OAI22XL U388 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U389 ( .A(b[3]), .B(n365), .Y(n421) );
  OAI22XL U390 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U391 ( .A(b[4]), .B(n365), .Y(n422) );
  OAI22XL U392 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U393 ( .A(b[5]), .B(n365), .Y(n423) );
  OAI22XL U394 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U395 ( .A(b[6]), .B(n365), .Y(n424) );
  OAI22XL U396 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U397 ( .A(b[7]), .B(n365), .Y(n425) );
  OAI22XL U398 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U399 ( .A(b[8]), .B(n365), .Y(n426) );
  OAI22XL U400 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U401 ( .A(b[9]), .B(n365), .Y(n427) );
  AO21X1 U402 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U403 ( .A(b[10]), .B(n365), .Y(n428) );
  NOR2X1 U404 ( .A(n354), .B(n356), .Y(n132) );
  OAI22XL U405 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U406 ( .A(n367), .B(n355), .Y(n430) );
  OAI22XL U407 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U408 ( .A(b[1]), .B(n367), .Y(n432) );
  OAI22XL U409 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U410 ( .A(b[2]), .B(n367), .Y(n433) );
  OAI22XL U411 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U412 ( .A(b[3]), .B(n367), .Y(n434) );
  OAI22XL U413 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U414 ( .A(b[4]), .B(n367), .Y(n435) );
  OAI22XL U415 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U416 ( .A(b[5]), .B(n367), .Y(n436) );
  OAI22XL U417 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U418 ( .A(b[6]), .B(n367), .Y(n437) );
  OAI22XL U419 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U420 ( .A(b[7]), .B(n367), .Y(n438) );
  OAI22XL U421 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U422 ( .A(b[8]), .B(n367), .Y(n439) );
  OAI22XL U423 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U424 ( .A(b[9]), .B(n367), .Y(n440) );
  AO21X1 U425 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U426 ( .A(b[10]), .B(n367), .Y(n441) );
  NOR2X1 U427 ( .A(n366), .B(n356), .Y(n120) );
  NOR2X1 U428 ( .A(n366), .B(n442), .Y(n118) );
  NOR2X1 U429 ( .A(n366), .B(n443), .Y(n117) );
  XNOR2X1 U430 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U431 ( .A(n366), .B(n444), .Y(n116) );
  XNOR2X1 U432 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U433 ( .A(n366), .B(n445), .Y(n115) );
  XNOR2X1 U434 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U435 ( .A0(n355), .A1(n362), .B0(n379), .Y(n113) );
  OAI32X1 U436 ( .A0(n363), .A1(n355), .A2(n348), .B0(n363), .B1(n347), .Y(
        n112) );
  OAI32X1 U437 ( .A0(n364), .A1(n355), .A2(n350), .B0(n364), .B1(n349), .Y(
        n111) );
  OAI32X1 U438 ( .A0(n365), .A1(n355), .A2(n352), .B0(n365), .B1(n351), .Y(
        n110) );
  OAI32X1 U439 ( .A0(n367), .A1(n355), .A2(n354), .B0(n367), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_7 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n361), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n362), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n363), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n364), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[4]), .B(a[3]), .Y(n402) );
  XOR2XL U260 ( .A(a[3]), .B(a[2]), .Y(n445) );
  XNOR2XL U261 ( .A(a[8]), .B(a[7]), .Y(n428) );
  XOR2XL U262 ( .A(a[7]), .B(a[6]), .Y(n447) );
  XOR2XL U263 ( .A(a[5]), .B(a[4]), .Y(n446) );
  XNOR2XL U264 ( .A(a[6]), .B(a[5]), .Y(n415) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n448) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n389) );
  XOR2XL U267 ( .A(b[1]), .B(a[10]), .Y(n373) );
  XOR2XL U268 ( .A(b[2]), .B(a[10]), .Y(n374) );
  XOR2XL U269 ( .A(b[10]), .B(a[1]), .Y(n388) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n372) );
  NAND2XL U271 ( .A(n369), .B(n372), .Y(n25) );
  NAND3XL U272 ( .A(n372), .B(n366), .C(a[10]), .Y(n370) );
  NAND2XL U273 ( .A(n373), .B(n372), .Y(n371) );
  NAND2XL U274 ( .A(n374), .B(n372), .Y(n65) );
  NAND2XL U275 ( .A(n375), .B(n372), .Y(n51) );
  NAND2XL U276 ( .A(n376), .B(n372), .Y(n39) );
  NAND2XL U277 ( .A(n377), .B(n372), .Y(n31) );
  INVX1 U278 ( .A(n372), .Y(n360) );
  CLKINVX1 U279 ( .A(n65), .Y(n364) );
  CLKINVX1 U280 ( .A(n51), .Y(n363) );
  CLKINVX1 U281 ( .A(n39), .Y(n362) );
  CLKINVX1 U282 ( .A(n31), .Y(n361) );
  CLKBUFX3 U283 ( .A(n391), .Y(n347) );
  NAND2X1 U284 ( .A(n348), .B(n445), .Y(n391) );
  CLKBUFX3 U285 ( .A(n389), .Y(n348) );
  INVX3 U286 ( .A(a[1]), .Y(n356) );
  INVX3 U287 ( .A(a[3]), .Y(n357) );
  NAND2X2 U288 ( .A(a[1]), .B(n355), .Y(n378) );
  CLKBUFX3 U289 ( .A(n402), .Y(n350) );
  CLKBUFX3 U290 ( .A(n404), .Y(n349) );
  NAND2X1 U291 ( .A(n350), .B(n446), .Y(n404) );
  INVX3 U292 ( .A(a[0]), .Y(n355) );
  INVX3 U293 ( .A(a[5]), .Y(n358) );
  INVX3 U294 ( .A(b[0]), .Y(n366) );
  CLKBUFX3 U295 ( .A(n415), .Y(n352) );
  CLKBUFX3 U296 ( .A(n417), .Y(n351) );
  NAND2X1 U297 ( .A(n352), .B(n447), .Y(n417) );
  INVX3 U298 ( .A(a[7]), .Y(n359) );
  CLKBUFX3 U299 ( .A(n428), .Y(n354) );
  CLKBUFX3 U300 ( .A(n430), .Y(n353) );
  NAND2X1 U301 ( .A(n354), .B(n448), .Y(n430) );
  INVX3 U302 ( .A(a[9]), .Y(n365) );
  XOR2X1 U303 ( .A(n367), .B(n368), .Y(product[21]) );
  NOR2BX1 U304 ( .AN(n369), .B(n360), .Y(n368) );
  XOR2X1 U305 ( .A(n25), .B(n4), .Y(n367) );
  NOR2X1 U306 ( .A(n355), .B(n366), .Y(product[0]) );
  XNOR2X1 U307 ( .A(n370), .B(n371), .Y(n73) );
  NAND2X1 U308 ( .A(n371), .B(n370), .Y(n72) );
  XOR2X1 U309 ( .A(b[4]), .B(a[10]), .Y(n375) );
  XOR2X1 U310 ( .A(b[6]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[8]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[10]), .B(a[10]), .Y(n369) );
  OAI22XL U313 ( .A0(b[0]), .A1(n378), .B0(n379), .B1(n355), .Y(n179) );
  OAI22XL U314 ( .A0(n379), .A1(n378), .B0(n380), .B1(n355), .Y(n178) );
  XOR2X1 U315 ( .A(b[1]), .B(n356), .Y(n379) );
  OAI22XL U316 ( .A0(n380), .A1(n378), .B0(n381), .B1(n355), .Y(n177) );
  XOR2X1 U317 ( .A(b[2]), .B(n356), .Y(n380) );
  OAI22XL U318 ( .A0(n381), .A1(n378), .B0(n382), .B1(n355), .Y(n176) );
  XOR2X1 U319 ( .A(b[3]), .B(n356), .Y(n381) );
  OAI22XL U320 ( .A0(n382), .A1(n378), .B0(n383), .B1(n355), .Y(n175) );
  XOR2X1 U321 ( .A(b[4]), .B(n356), .Y(n382) );
  OAI22XL U322 ( .A0(n383), .A1(n378), .B0(n384), .B1(n355), .Y(n174) );
  XOR2X1 U323 ( .A(b[5]), .B(n356), .Y(n383) );
  OAI22XL U324 ( .A0(n384), .A1(n378), .B0(n385), .B1(n355), .Y(n173) );
  XOR2X1 U325 ( .A(b[6]), .B(n356), .Y(n384) );
  OAI22XL U326 ( .A0(n385), .A1(n378), .B0(n386), .B1(n355), .Y(n172) );
  XOR2X1 U327 ( .A(b[7]), .B(n356), .Y(n385) );
  OAI22XL U328 ( .A0(n386), .A1(n378), .B0(n387), .B1(n355), .Y(n171) );
  XOR2X1 U329 ( .A(b[8]), .B(n356), .Y(n386) );
  OAI2BB2XL U330 ( .B0(n387), .B1(n378), .A0N(n388), .A1N(a[0]), .Y(n170) );
  XOR2X1 U331 ( .A(b[9]), .B(n356), .Y(n387) );
  OAI2BB1X1 U332 ( .A0N(n355), .A1N(n378), .B0(n388), .Y(n169) );
  NOR2X1 U333 ( .A(n348), .B(n366), .Y(n168) );
  OAI22XL U334 ( .A0(n390), .A1(n347), .B0(n348), .B1(n392), .Y(n167) );
  XOR2X1 U335 ( .A(n357), .B(b[0]), .Y(n390) );
  OAI22XL U336 ( .A0(n392), .A1(n347), .B0(n348), .B1(n393), .Y(n166) );
  XOR2X1 U337 ( .A(b[1]), .B(n357), .Y(n392) );
  OAI22XL U338 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n165) );
  XOR2X1 U339 ( .A(b[2]), .B(n357), .Y(n393) );
  OAI22XL U340 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n164) );
  XOR2X1 U341 ( .A(b[3]), .B(n357), .Y(n394) );
  OAI22XL U342 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n163) );
  XOR2X1 U343 ( .A(b[4]), .B(n357), .Y(n395) );
  OAI22XL U344 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n162) );
  XOR2X1 U345 ( .A(b[5]), .B(n357), .Y(n396) );
  OAI22XL U346 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n161) );
  XOR2X1 U347 ( .A(b[6]), .B(n357), .Y(n397) );
  OAI22XL U348 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n160) );
  XOR2X1 U349 ( .A(b[7]), .B(n357), .Y(n398) );
  OAI22XL U350 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n159) );
  XOR2X1 U351 ( .A(b[8]), .B(n357), .Y(n399) );
  OAI22XL U352 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n158) );
  XOR2X1 U353 ( .A(b[9]), .B(n357), .Y(n400) );
  AO21X1 U354 ( .A0(n347), .A1(n348), .B0(n401), .Y(n157) );
  XOR2X1 U355 ( .A(b[10]), .B(n357), .Y(n401) );
  NOR2X1 U356 ( .A(n350), .B(n366), .Y(n156) );
  OAI22XL U357 ( .A0(n403), .A1(n349), .B0(n350), .B1(n405), .Y(n155) );
  XOR2X1 U358 ( .A(n358), .B(b[0]), .Y(n403) );
  OAI22XL U359 ( .A0(n405), .A1(n349), .B0(n350), .B1(n406), .Y(n154) );
  XOR2X1 U360 ( .A(b[1]), .B(n358), .Y(n405) );
  OAI22XL U361 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n153) );
  XOR2X1 U362 ( .A(b[2]), .B(n358), .Y(n406) );
  OAI22XL U363 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n152) );
  XOR2X1 U364 ( .A(b[3]), .B(n358), .Y(n407) );
  OAI22XL U365 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n151) );
  XOR2X1 U366 ( .A(b[4]), .B(n358), .Y(n408) );
  OAI22XL U367 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n150) );
  XOR2X1 U368 ( .A(b[5]), .B(n358), .Y(n409) );
  OAI22XL U369 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n149) );
  XOR2X1 U370 ( .A(b[6]), .B(n358), .Y(n410) );
  OAI22XL U371 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n148) );
  XOR2X1 U372 ( .A(b[7]), .B(n358), .Y(n411) );
  OAI22XL U373 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n147) );
  XOR2X1 U374 ( .A(b[8]), .B(n358), .Y(n412) );
  OAI22XL U375 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n146) );
  XOR2X1 U376 ( .A(b[9]), .B(n358), .Y(n413) );
  AO21X1 U377 ( .A0(n349), .A1(n350), .B0(n414), .Y(n145) );
  XOR2X1 U378 ( .A(b[10]), .B(n358), .Y(n414) );
  NOR2X1 U379 ( .A(n352), .B(n366), .Y(n144) );
  OAI22XL U380 ( .A0(n416), .A1(n351), .B0(n352), .B1(n418), .Y(n143) );
  XOR2X1 U381 ( .A(n359), .B(b[0]), .Y(n416) );
  OAI22XL U382 ( .A0(n418), .A1(n351), .B0(n352), .B1(n419), .Y(n142) );
  XOR2X1 U383 ( .A(b[1]), .B(n359), .Y(n418) );
  OAI22XL U384 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n141) );
  XOR2X1 U385 ( .A(b[2]), .B(n359), .Y(n419) );
  OAI22XL U386 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n140) );
  XOR2X1 U387 ( .A(b[3]), .B(n359), .Y(n420) );
  OAI22XL U388 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n139) );
  XOR2X1 U389 ( .A(b[4]), .B(n359), .Y(n421) );
  OAI22XL U390 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n138) );
  XOR2X1 U391 ( .A(b[5]), .B(n359), .Y(n422) );
  OAI22XL U392 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n137) );
  XOR2X1 U393 ( .A(b[6]), .B(n359), .Y(n423) );
  OAI22XL U394 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n136) );
  XOR2X1 U395 ( .A(b[7]), .B(n359), .Y(n424) );
  OAI22XL U396 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n135) );
  XOR2X1 U397 ( .A(b[8]), .B(n359), .Y(n425) );
  OAI22XL U398 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n134) );
  XOR2X1 U399 ( .A(b[9]), .B(n359), .Y(n426) );
  AO21X1 U400 ( .A0(n351), .A1(n352), .B0(n427), .Y(n133) );
  XOR2X1 U401 ( .A(b[10]), .B(n359), .Y(n427) );
  NOR2X1 U402 ( .A(n354), .B(n366), .Y(n132) );
  OAI22XL U403 ( .A0(n429), .A1(n353), .B0(n354), .B1(n431), .Y(n131) );
  XOR2X1 U404 ( .A(n365), .B(b[0]), .Y(n429) );
  OAI22XL U405 ( .A0(n431), .A1(n353), .B0(n354), .B1(n432), .Y(n130) );
  XOR2X1 U406 ( .A(b[1]), .B(n365), .Y(n431) );
  OAI22XL U407 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n129) );
  XOR2X1 U408 ( .A(b[2]), .B(n365), .Y(n432) );
  OAI22XL U409 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n128) );
  XOR2X1 U410 ( .A(b[3]), .B(n365), .Y(n433) );
  OAI22XL U411 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n127) );
  XOR2X1 U412 ( .A(b[4]), .B(n365), .Y(n434) );
  OAI22XL U413 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n126) );
  XOR2X1 U414 ( .A(b[5]), .B(n365), .Y(n435) );
  OAI22XL U415 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n125) );
  XOR2X1 U416 ( .A(b[6]), .B(n365), .Y(n436) );
  OAI22XL U417 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n124) );
  XOR2X1 U418 ( .A(b[7]), .B(n365), .Y(n437) );
  OAI22XL U419 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n123) );
  XOR2X1 U420 ( .A(b[8]), .B(n365), .Y(n438) );
  OAI22XL U421 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n122) );
  XOR2X1 U422 ( .A(b[9]), .B(n365), .Y(n439) );
  AO21X1 U423 ( .A0(n353), .A1(n354), .B0(n440), .Y(n121) );
  XOR2X1 U424 ( .A(b[10]), .B(n365), .Y(n440) );
  NOR2X1 U425 ( .A(n360), .B(n366), .Y(n120) );
  NOR2X1 U426 ( .A(n360), .B(n441), .Y(n118) );
  XNOR2X1 U427 ( .A(b[3]), .B(a[10]), .Y(n441) );
  NOR2X1 U428 ( .A(n360), .B(n442), .Y(n117) );
  XNOR2X1 U429 ( .A(b[5]), .B(a[10]), .Y(n442) );
  NOR2X1 U430 ( .A(n360), .B(n443), .Y(n116) );
  XNOR2X1 U431 ( .A(b[7]), .B(a[10]), .Y(n443) );
  NOR2X1 U432 ( .A(n360), .B(n444), .Y(n115) );
  XNOR2X1 U433 ( .A(b[9]), .B(a[10]), .Y(n444) );
  OAI21XL U434 ( .A0(b[0]), .A1(n356), .B0(n378), .Y(n113) );
  OAI32X1 U435 ( .A0(n357), .A1(b[0]), .A2(n348), .B0(n357), .B1(n347), .Y(
        n112) );
  OAI32X1 U436 ( .A0(n358), .A1(b[0]), .A2(n350), .B0(n358), .B1(n349), .Y(
        n111) );
  OAI32X1 U437 ( .A0(n359), .A1(b[0]), .A2(n352), .B0(n359), .B1(n351), .Y(
        n110) );
  OAI32X1 U438 ( .A0(n365), .A1(b[0]), .A2(n354), .B0(n365), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_8 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448, n449;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n362), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n363), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n364), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n365), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n429) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n448) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n447) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n416) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n403) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n446) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n449) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n390) );
  XOR2XL U267 ( .A(b[1]), .B(a[10]), .Y(n374) );
  XOR2XL U268 ( .A(b[2]), .B(a[10]), .Y(n375) );
  XOR2XL U269 ( .A(b[10]), .B(a[1]), .Y(n389) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n373) );
  NAND2XL U271 ( .A(n370), .B(n373), .Y(n25) );
  NAND3XL U272 ( .A(n373), .B(n367), .C(a[10]), .Y(n371) );
  NAND2XL U273 ( .A(n374), .B(n373), .Y(n372) );
  NAND2XL U274 ( .A(n375), .B(n373), .Y(n65) );
  NAND2XL U275 ( .A(n376), .B(n373), .Y(n51) );
  NAND2XL U276 ( .A(n377), .B(n373), .Y(n39) );
  NAND2XL U277 ( .A(n378), .B(n373), .Y(n31) );
  ADDFXL U278 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U279 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U280 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U281 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDHXL U282 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  INVX3 U283 ( .A(n355), .Y(n367) );
  INVX1 U284 ( .A(n373), .Y(n361) );
  CLKINVX1 U285 ( .A(n65), .Y(n365) );
  CLKINVX1 U286 ( .A(n51), .Y(n364) );
  CLKINVX1 U287 ( .A(n39), .Y(n363) );
  CLKINVX1 U288 ( .A(n31), .Y(n362) );
  CLKBUFX3 U289 ( .A(n392), .Y(n347) );
  NAND2X1 U290 ( .A(n348), .B(n446), .Y(n392) );
  CLKBUFX3 U291 ( .A(n390), .Y(n348) );
  INVX3 U292 ( .A(a[1]), .Y(n357) );
  INVX3 U293 ( .A(a[3]), .Y(n358) );
  CLKBUFX3 U294 ( .A(n403), .Y(n350) );
  CLKBUFX3 U295 ( .A(n405), .Y(n349) );
  NAND2X1 U296 ( .A(n350), .B(n447), .Y(n405) );
  NAND2X2 U297 ( .A(a[1]), .B(n356), .Y(n379) );
  CLKBUFX3 U298 ( .A(b[0]), .Y(n355) );
  INVX3 U299 ( .A(a[0]), .Y(n356) );
  INVX3 U300 ( .A(a[5]), .Y(n359) );
  CLKBUFX3 U301 ( .A(n416), .Y(n352) );
  CLKBUFX3 U302 ( .A(n418), .Y(n351) );
  NAND2X1 U303 ( .A(n352), .B(n448), .Y(n418) );
  INVX3 U304 ( .A(a[7]), .Y(n360) );
  CLKBUFX3 U305 ( .A(n429), .Y(n354) );
  CLKBUFX3 U306 ( .A(n431), .Y(n353) );
  NAND2X1 U307 ( .A(n354), .B(n449), .Y(n431) );
  INVX3 U308 ( .A(a[9]), .Y(n366) );
  XOR2X1 U309 ( .A(n368), .B(n369), .Y(product[21]) );
  NOR2BX1 U310 ( .AN(n370), .B(n361), .Y(n369) );
  XOR2X1 U311 ( .A(n25), .B(n4), .Y(n368) );
  NOR2X1 U312 ( .A(n356), .B(n367), .Y(product[0]) );
  XNOR2X1 U313 ( .A(n371), .B(n372), .Y(n73) );
  NAND2X1 U314 ( .A(n372), .B(n371), .Y(n72) );
  XOR2X1 U315 ( .A(b[4]), .B(a[10]), .Y(n376) );
  XOR2X1 U316 ( .A(b[6]), .B(a[10]), .Y(n377) );
  XOR2X1 U317 ( .A(b[8]), .B(a[10]), .Y(n378) );
  XOR2X1 U318 ( .A(b[10]), .B(a[10]), .Y(n370) );
  OAI22XL U319 ( .A0(n355), .A1(n379), .B0(n380), .B1(n356), .Y(n179) );
  OAI22XL U320 ( .A0(n380), .A1(n379), .B0(n381), .B1(n356), .Y(n178) );
  XOR2X1 U321 ( .A(b[1]), .B(n357), .Y(n380) );
  OAI22XL U322 ( .A0(n381), .A1(n379), .B0(n382), .B1(n356), .Y(n177) );
  XOR2X1 U323 ( .A(b[2]), .B(n357), .Y(n381) );
  OAI22XL U324 ( .A0(n382), .A1(n379), .B0(n383), .B1(n356), .Y(n176) );
  XOR2X1 U325 ( .A(b[3]), .B(n357), .Y(n382) );
  OAI22XL U326 ( .A0(n383), .A1(n379), .B0(n384), .B1(n356), .Y(n175) );
  XOR2X1 U327 ( .A(b[4]), .B(n357), .Y(n383) );
  OAI22XL U328 ( .A0(n384), .A1(n379), .B0(n385), .B1(n356), .Y(n174) );
  XOR2X1 U329 ( .A(b[5]), .B(n357), .Y(n384) );
  OAI22XL U330 ( .A0(n385), .A1(n379), .B0(n386), .B1(n356), .Y(n173) );
  XOR2X1 U331 ( .A(b[6]), .B(n357), .Y(n385) );
  OAI22XL U332 ( .A0(n386), .A1(n379), .B0(n387), .B1(n356), .Y(n172) );
  XOR2X1 U333 ( .A(b[7]), .B(n357), .Y(n386) );
  OAI22XL U334 ( .A0(n387), .A1(n379), .B0(n388), .B1(n356), .Y(n171) );
  XOR2X1 U335 ( .A(b[8]), .B(n357), .Y(n387) );
  OAI2BB2XL U336 ( .B0(n388), .B1(n379), .A0N(n389), .A1N(a[0]), .Y(n170) );
  XOR2X1 U337 ( .A(b[9]), .B(n357), .Y(n388) );
  OAI2BB1X1 U338 ( .A0N(n356), .A1N(n379), .B0(n389), .Y(n169) );
  NOR2X1 U339 ( .A(n348), .B(n367), .Y(n168) );
  OAI22XL U340 ( .A0(n391), .A1(n347), .B0(n348), .B1(n393), .Y(n167) );
  XOR2X1 U341 ( .A(n358), .B(n355), .Y(n391) );
  OAI22XL U342 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n166) );
  XOR2X1 U343 ( .A(b[1]), .B(n358), .Y(n393) );
  OAI22XL U344 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n165) );
  XOR2X1 U345 ( .A(b[2]), .B(n358), .Y(n394) );
  OAI22XL U346 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n164) );
  XOR2X1 U347 ( .A(b[3]), .B(n358), .Y(n395) );
  OAI22XL U348 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n163) );
  XOR2X1 U349 ( .A(b[4]), .B(n358), .Y(n396) );
  OAI22XL U350 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n162) );
  XOR2X1 U351 ( .A(b[5]), .B(n358), .Y(n397) );
  OAI22XL U352 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n161) );
  XOR2X1 U353 ( .A(b[6]), .B(n358), .Y(n398) );
  OAI22XL U354 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n160) );
  XOR2X1 U355 ( .A(b[7]), .B(n358), .Y(n399) );
  OAI22XL U356 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n159) );
  XOR2X1 U357 ( .A(b[8]), .B(n358), .Y(n400) );
  OAI22XL U358 ( .A0(n401), .A1(n347), .B0(n348), .B1(n402), .Y(n158) );
  XOR2X1 U359 ( .A(b[9]), .B(n358), .Y(n401) );
  AO21X1 U360 ( .A0(n347), .A1(n348), .B0(n402), .Y(n157) );
  XOR2X1 U361 ( .A(b[10]), .B(n358), .Y(n402) );
  NOR2X1 U362 ( .A(n350), .B(n367), .Y(n156) );
  OAI22XL U363 ( .A0(n404), .A1(n349), .B0(n350), .B1(n406), .Y(n155) );
  XOR2X1 U364 ( .A(n359), .B(n355), .Y(n404) );
  OAI22XL U365 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n154) );
  XOR2X1 U366 ( .A(b[1]), .B(n359), .Y(n406) );
  OAI22XL U367 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n153) );
  XOR2X1 U368 ( .A(b[2]), .B(n359), .Y(n407) );
  OAI22XL U369 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n152) );
  XOR2X1 U370 ( .A(b[3]), .B(n359), .Y(n408) );
  OAI22XL U371 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n151) );
  XOR2X1 U372 ( .A(b[4]), .B(n359), .Y(n409) );
  OAI22XL U373 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n150) );
  XOR2X1 U374 ( .A(b[5]), .B(n359), .Y(n410) );
  OAI22XL U375 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n149) );
  XOR2X1 U376 ( .A(b[6]), .B(n359), .Y(n411) );
  OAI22XL U377 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n148) );
  XOR2X1 U378 ( .A(b[7]), .B(n359), .Y(n412) );
  OAI22XL U379 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n147) );
  XOR2X1 U380 ( .A(b[8]), .B(n359), .Y(n413) );
  OAI22XL U381 ( .A0(n414), .A1(n349), .B0(n350), .B1(n415), .Y(n146) );
  XOR2X1 U382 ( .A(b[9]), .B(n359), .Y(n414) );
  AO21X1 U383 ( .A0(n349), .A1(n350), .B0(n415), .Y(n145) );
  XOR2X1 U384 ( .A(b[10]), .B(n359), .Y(n415) );
  NOR2X1 U385 ( .A(n352), .B(n367), .Y(n144) );
  OAI22XL U386 ( .A0(n417), .A1(n351), .B0(n352), .B1(n419), .Y(n143) );
  XOR2X1 U387 ( .A(n360), .B(n355), .Y(n417) );
  OAI22XL U388 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n142) );
  XOR2X1 U389 ( .A(b[1]), .B(n360), .Y(n419) );
  OAI22XL U390 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n141) );
  XOR2X1 U391 ( .A(b[2]), .B(n360), .Y(n420) );
  OAI22XL U392 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n140) );
  XOR2X1 U393 ( .A(b[3]), .B(n360), .Y(n421) );
  OAI22XL U394 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n139) );
  XOR2X1 U395 ( .A(b[4]), .B(n360), .Y(n422) );
  OAI22XL U396 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n138) );
  XOR2X1 U397 ( .A(b[5]), .B(n360), .Y(n423) );
  OAI22XL U398 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n137) );
  XOR2X1 U399 ( .A(b[6]), .B(n360), .Y(n424) );
  OAI22XL U400 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n136) );
  XOR2X1 U401 ( .A(b[7]), .B(n360), .Y(n425) );
  OAI22XL U402 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n135) );
  XOR2X1 U403 ( .A(b[8]), .B(n360), .Y(n426) );
  OAI22XL U404 ( .A0(n427), .A1(n351), .B0(n352), .B1(n428), .Y(n134) );
  XOR2X1 U405 ( .A(b[9]), .B(n360), .Y(n427) );
  AO21X1 U406 ( .A0(n351), .A1(n352), .B0(n428), .Y(n133) );
  XOR2X1 U407 ( .A(b[10]), .B(n360), .Y(n428) );
  NOR2X1 U408 ( .A(n354), .B(n367), .Y(n132) );
  OAI22XL U409 ( .A0(n430), .A1(n353), .B0(n354), .B1(n432), .Y(n131) );
  XOR2X1 U410 ( .A(n366), .B(n355), .Y(n430) );
  OAI22XL U411 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n130) );
  XOR2X1 U412 ( .A(b[1]), .B(n366), .Y(n432) );
  OAI22XL U413 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n129) );
  XOR2X1 U414 ( .A(b[2]), .B(n366), .Y(n433) );
  OAI22XL U415 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n128) );
  XOR2X1 U416 ( .A(b[3]), .B(n366), .Y(n434) );
  OAI22XL U417 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n127) );
  XOR2X1 U418 ( .A(b[4]), .B(n366), .Y(n435) );
  OAI22XL U419 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n126) );
  XOR2X1 U420 ( .A(b[5]), .B(n366), .Y(n436) );
  OAI22XL U421 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n125) );
  XOR2X1 U422 ( .A(b[6]), .B(n366), .Y(n437) );
  OAI22XL U423 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n124) );
  XOR2X1 U424 ( .A(b[7]), .B(n366), .Y(n438) );
  OAI22XL U425 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n123) );
  XOR2X1 U426 ( .A(b[8]), .B(n366), .Y(n439) );
  OAI22XL U427 ( .A0(n440), .A1(n353), .B0(n354), .B1(n441), .Y(n122) );
  XOR2X1 U428 ( .A(b[9]), .B(n366), .Y(n440) );
  AO21X1 U429 ( .A0(n353), .A1(n354), .B0(n441), .Y(n121) );
  XOR2X1 U430 ( .A(b[10]), .B(n366), .Y(n441) );
  NOR2X1 U431 ( .A(n361), .B(n367), .Y(n120) );
  NOR2X1 U432 ( .A(n361), .B(n442), .Y(n118) );
  XNOR2X1 U433 ( .A(b[3]), .B(a[10]), .Y(n442) );
  NOR2X1 U434 ( .A(n361), .B(n443), .Y(n117) );
  XNOR2X1 U435 ( .A(b[5]), .B(a[10]), .Y(n443) );
  NOR2X1 U436 ( .A(n361), .B(n444), .Y(n116) );
  XNOR2X1 U437 ( .A(b[7]), .B(a[10]), .Y(n444) );
  NOR2X1 U438 ( .A(n361), .B(n445), .Y(n115) );
  XNOR2X1 U439 ( .A(b[9]), .B(a[10]), .Y(n445) );
  OAI21XL U440 ( .A0(n355), .A1(n357), .B0(n379), .Y(n113) );
  OAI32X1 U441 ( .A0(n358), .A1(n355), .A2(n348), .B0(n358), .B1(n347), .Y(
        n112) );
  OAI32X1 U442 ( .A0(n359), .A1(n355), .A2(n350), .B0(n359), .B1(n349), .Y(
        n111) );
  OAI32X1 U443 ( .A0(n360), .A1(n355), .A2(n352), .B0(n360), .B1(n351), .Y(
        n110) );
  OAI32X1 U444 ( .A0(n366), .A1(n355), .A2(n354), .B0(n366), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW_mult_tc_9 ( a, b, product );
  input [10:0] a;
  input [10:0] b;
  output [21:0] product;
  wire   n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n25, n26, n27, n28, n29, n31, n32, n33, n34,
         n35, n36, n37, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n109, n110, n111, n112, n113, n115, n116, n117, n118,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n347, n348, n349, n350, n351, n352,
         n353, n354, n355, n356, n357, n358, n359, n360, n361, n362, n363,
         n364, n365, n366, n367, n368, n369, n370, n371, n372, n373, n374,
         n375, n376, n377, n378, n379, n380, n381, n382, n383, n384, n385,
         n386, n387, n388, n389, n390, n391, n392, n393, n394, n395, n396,
         n397, n398, n399, n400, n401, n402, n403, n404, n405, n406, n407,
         n408, n409, n410, n411, n412, n413, n414, n415, n416, n417, n418,
         n419, n420, n421, n422, n423, n424, n425, n426, n427, n428, n429,
         n430, n431, n432, n433, n434, n435, n436, n437, n438, n439, n440,
         n441, n442, n443, n444, n445, n446, n447, n448;

  ADDFXL U5 ( .A(n26), .B(n25), .CI(n5), .CO(n4), .S(product[20]) );
  ADDFXL U6 ( .A(n28), .B(n27), .CI(n6), .CO(n5), .S(product[19]) );
  ADDFXL U7 ( .A(n29), .B(n33), .CI(n7), .CO(n6), .S(product[18]) );
  ADDFXL U8 ( .A(n36), .B(n34), .CI(n8), .CO(n7), .S(product[17]) );
  ADDFXL U9 ( .A(n41), .B(n37), .CI(n9), .CO(n8), .S(product[16]) );
  ADDFXL U10 ( .A(n42), .B(n46), .CI(n10), .CO(n9), .S(product[15]) );
  ADDFXL U11 ( .A(n47), .B(n53), .CI(n11), .CO(n10), .S(product[14]) );
  ADDFXL U12 ( .A(n54), .B(n59), .CI(n12), .CO(n11), .S(product[13]) );
  ADDFXL U13 ( .A(n60), .B(n67), .CI(n13), .CO(n12), .S(product[12]) );
  ADDFXL U14 ( .A(n68), .B(n75), .CI(n14), .CO(n13), .S(product[11]) );
  ADDFXL U15 ( .A(n76), .B(n81), .CI(n15), .CO(n14), .S(product[10]) );
  ADDFXL U16 ( .A(n82), .B(n88), .CI(n16), .CO(n15), .S(product[9]) );
  ADDFXL U17 ( .A(n89), .B(n93), .CI(n17), .CO(n16), .S(product[8]) );
  ADDFXL U18 ( .A(n94), .B(n98), .CI(n18), .CO(n17), .S(product[7]) );
  ADDFXL U19 ( .A(n100), .B(n99), .CI(n19), .CO(n18), .S(product[6]) );
  ADDFXL U20 ( .A(n101), .B(n104), .CI(n20), .CO(n19), .S(product[5]) );
  ADDFXL U21 ( .A(n105), .B(n106), .CI(n21), .CO(n20), .S(product[4]) );
  ADDFXL U22 ( .A(n107), .B(n112), .CI(n22), .CO(n21), .S(product[3]) );
  ADDFXL U23 ( .A(n178), .B(n168), .CI(n23), .CO(n22), .S(product[2]) );
  ADDHXL U24 ( .A(n113), .B(n179), .CO(n23), .S(product[1]) );
  ADDFXL U26 ( .A(n115), .B(n359), .CI(n121), .CO(n26), .S(n27) );
  ADDFXL U27 ( .A(n122), .B(n31), .CI(n32), .CO(n28), .S(n29) );
  CMPR42X1 U29 ( .A(n358), .B(n116), .C(n133), .D(n123), .ICI(n35), .S(n34), 
        .ICO(n32), .CO(n33) );
  CMPR42X1 U30 ( .A(n39), .B(n124), .C(n134), .D(n43), .ICI(n40), .S(n37), 
        .ICO(n35), .CO(n36) );
  CMPR42X1 U32 ( .A(n135), .B(n125), .C(n44), .D(n48), .ICI(n45), .S(n42), 
        .ICO(n40), .CO(n41) );
  ADDFXL U33 ( .A(n117), .B(n357), .CI(n145), .CO(n43), .S(n44) );
  CMPR42X1 U34 ( .A(n136), .B(n55), .C(n56), .D(n49), .ICI(n52), .S(n47), 
        .ICO(n45), .CO(n46) );
  ADDFXL U35 ( .A(n146), .B(n51), .CI(n126), .CO(n48), .S(n49) );
  CMPR42X1 U37 ( .A(n147), .B(n61), .C(n57), .D(n62), .ICI(n58), .S(n54), 
        .ICO(n52), .CO(n53) );
  CMPR42X1 U38 ( .A(n356), .B(n118), .C(n157), .D(n137), .ICI(n127), .S(n57), 
        .ICO(n55), .CO(n56) );
  CMPR42X1 U39 ( .A(n148), .B(n138), .C(n70), .D(n63), .ICI(n66), .S(n60), 
        .ICO(n58), .CO(n59) );
  CMPR42X1 U40 ( .A(n65), .B(n128), .C(n158), .D(n72), .ICI(n69), .S(n63), 
        .ICO(n61), .CO(n62) );
  CMPR42X1 U42 ( .A(n149), .B(n73), .C(n78), .D(n71), .ICI(n74), .S(n68), 
        .ICO(n66), .CO(n67) );
  CMPR42X1 U43 ( .A(n169), .B(n139), .C(n159), .D(n129), .ICI(n77), .S(n71), 
        .ICO(n69), .CO(n70) );
  CMPR42X1 U46 ( .A(n150), .B(n85), .C(n79), .D(n83), .ICI(n80), .S(n76), 
        .ICO(n74), .CO(n75) );
  CMPR42X1 U47 ( .A(n120), .B(n140), .C(n170), .D(n160), .ICI(n130), .S(n79), 
        .ICO(n77), .CO(n78) );
  CMPR42X1 U48 ( .A(n171), .B(n86), .C(n87), .D(n90), .ICI(n84), .S(n82), 
        .ICO(n80), .CO(n81) );
  ADDFXL U49 ( .A(n141), .B(n151), .CI(n161), .CO(n83), .S(n84) );
  ADDHXL U50 ( .A(n131), .B(n109), .CO(n85), .S(n86) );
  CMPR42X1 U51 ( .A(n162), .B(n142), .C(n95), .D(n92), .ICI(n91), .S(n89), 
        .ICO(n87), .CO(n88) );
  ADDFXL U52 ( .A(n152), .B(n132), .CI(n172), .CO(n90), .S(n91) );
  CMPR42X1 U53 ( .A(n173), .B(n153), .C(n163), .D(n97), .ICI(n96), .S(n94), 
        .ICO(n92), .CO(n93) );
  ADDHXL U54 ( .A(n143), .B(n110), .CO(n95), .S(n96) );
  CMPR42X1 U55 ( .A(n144), .B(n174), .C(n164), .D(n154), .ICI(n102), .S(n99), 
        .ICO(n97), .CO(n98) );
  ADDFXL U56 ( .A(n165), .B(n175), .CI(n103), .CO(n100), .S(n101) );
  ADDHXL U57 ( .A(n155), .B(n111), .CO(n102), .S(n103) );
  ADDFXL U58 ( .A(n176), .B(n156), .CI(n166), .CO(n104), .S(n105) );
  ADDHXL U59 ( .A(n177), .B(n167), .CO(n106), .S(n107) );
  XNOR2XL U259 ( .A(a[8]), .B(a[7]), .Y(n428) );
  XOR2XL U260 ( .A(a[7]), .B(a[6]), .Y(n447) );
  XOR2XL U261 ( .A(a[5]), .B(a[4]), .Y(n446) );
  XNOR2XL U262 ( .A(a[6]), .B(a[5]), .Y(n415) );
  XNOR2XL U263 ( .A(a[4]), .B(a[3]), .Y(n402) );
  XOR2XL U264 ( .A(a[3]), .B(a[2]), .Y(n445) );
  XOR2XL U265 ( .A(a[9]), .B(a[8]), .Y(n448) );
  XNOR2XL U266 ( .A(a[2]), .B(a[1]), .Y(n389) );
  XOR2XL U267 ( .A(b[10]), .B(a[1]), .Y(n388) );
  XOR2XL U268 ( .A(b[1]), .B(a[10]), .Y(n373) );
  XOR2XL U269 ( .A(b[2]), .B(a[10]), .Y(n374) );
  CLKXOR2X2 U270 ( .A(a[10]), .B(a[9]), .Y(n372) );
  NAND2XL U271 ( .A(n369), .B(n372), .Y(n25) );
  NAND3XL U272 ( .A(n372), .B(n355), .C(a[10]), .Y(n370) );
  NAND2XL U273 ( .A(n373), .B(n372), .Y(n371) );
  NAND2XL U274 ( .A(n374), .B(n372), .Y(n65) );
  NAND2XL U275 ( .A(n375), .B(n372), .Y(n51) );
  NAND2XL U276 ( .A(n376), .B(n372), .Y(n39) );
  NAND2XL U277 ( .A(n377), .B(n372), .Y(n31) );
  INVX1 U278 ( .A(n372), .Y(n365) );
  CLKINVX1 U279 ( .A(n65), .Y(n356) );
  CLKINVX1 U280 ( .A(n51), .Y(n357) );
  CLKINVX1 U281 ( .A(n39), .Y(n358) );
  CLKINVX1 U282 ( .A(n31), .Y(n359) );
  CLKBUFX3 U283 ( .A(n389), .Y(n348) );
  CLKBUFX3 U284 ( .A(n391), .Y(n347) );
  NAND2X1 U285 ( .A(n348), .B(n445), .Y(n391) );
  INVX3 U286 ( .A(a[1]), .Y(n361) );
  INVX3 U287 ( .A(a[3]), .Y(n362) );
  NAND2X2 U288 ( .A(a[1]), .B(n360), .Y(n378) );
  CLKBUFX3 U289 ( .A(n402), .Y(n350) );
  CLKBUFX3 U290 ( .A(n404), .Y(n349) );
  NAND2X1 U291 ( .A(n350), .B(n446), .Y(n404) );
  INVX3 U292 ( .A(a[0]), .Y(n360) );
  INVX3 U293 ( .A(a[5]), .Y(n363) );
  INVX3 U294 ( .A(b[0]), .Y(n355) );
  CLKBUFX3 U295 ( .A(n415), .Y(n352) );
  CLKBUFX3 U296 ( .A(n417), .Y(n351) );
  NAND2X1 U297 ( .A(n352), .B(n447), .Y(n417) );
  INVX3 U298 ( .A(a[7]), .Y(n364) );
  CLKBUFX3 U299 ( .A(n428), .Y(n354) );
  CLKBUFX3 U300 ( .A(n430), .Y(n353) );
  NAND2X1 U301 ( .A(n354), .B(n448), .Y(n430) );
  INVX3 U302 ( .A(a[9]), .Y(n366) );
  XOR2X1 U303 ( .A(n367), .B(n368), .Y(product[21]) );
  NOR2BX1 U304 ( .AN(n369), .B(n365), .Y(n368) );
  XOR2X1 U305 ( .A(n25), .B(n4), .Y(n367) );
  NOR2X1 U306 ( .A(n360), .B(n355), .Y(product[0]) );
  XNOR2X1 U307 ( .A(n370), .B(n371), .Y(n73) );
  NAND2X1 U308 ( .A(n371), .B(n370), .Y(n72) );
  XOR2X1 U309 ( .A(b[4]), .B(a[10]), .Y(n375) );
  XOR2X1 U310 ( .A(b[6]), .B(a[10]), .Y(n376) );
  XOR2X1 U311 ( .A(b[8]), .B(a[10]), .Y(n377) );
  XOR2X1 U312 ( .A(b[10]), .B(a[10]), .Y(n369) );
  OAI22XL U313 ( .A0(b[0]), .A1(n378), .B0(n379), .B1(n360), .Y(n179) );
  OAI22XL U314 ( .A0(n379), .A1(n378), .B0(n380), .B1(n360), .Y(n178) );
  XOR2X1 U315 ( .A(b[1]), .B(n361), .Y(n379) );
  OAI22XL U316 ( .A0(n380), .A1(n378), .B0(n381), .B1(n360), .Y(n177) );
  XOR2X1 U317 ( .A(b[2]), .B(n361), .Y(n380) );
  OAI22XL U318 ( .A0(n381), .A1(n378), .B0(n382), .B1(n360), .Y(n176) );
  XOR2X1 U319 ( .A(b[3]), .B(n361), .Y(n381) );
  OAI22XL U320 ( .A0(n382), .A1(n378), .B0(n383), .B1(n360), .Y(n175) );
  XOR2X1 U321 ( .A(b[4]), .B(n361), .Y(n382) );
  OAI22XL U322 ( .A0(n383), .A1(n378), .B0(n384), .B1(n360), .Y(n174) );
  XOR2X1 U323 ( .A(b[5]), .B(n361), .Y(n383) );
  OAI22XL U324 ( .A0(n384), .A1(n378), .B0(n385), .B1(n360), .Y(n173) );
  XOR2X1 U325 ( .A(b[6]), .B(n361), .Y(n384) );
  OAI22XL U326 ( .A0(n385), .A1(n378), .B0(n386), .B1(n360), .Y(n172) );
  XOR2X1 U327 ( .A(b[7]), .B(n361), .Y(n385) );
  OAI22XL U328 ( .A0(n386), .A1(n378), .B0(n387), .B1(n360), .Y(n171) );
  XOR2X1 U329 ( .A(b[8]), .B(n361), .Y(n386) );
  OAI2BB2XL U330 ( .B0(n387), .B1(n378), .A0N(n388), .A1N(a[0]), .Y(n170) );
  XOR2X1 U331 ( .A(b[9]), .B(n361), .Y(n387) );
  OAI2BB1X1 U332 ( .A0N(n360), .A1N(n378), .B0(n388), .Y(n169) );
  NOR2X1 U333 ( .A(n348), .B(n355), .Y(n168) );
  OAI22XL U334 ( .A0(n390), .A1(n347), .B0(n348), .B1(n392), .Y(n167) );
  XOR2X1 U335 ( .A(n362), .B(b[0]), .Y(n390) );
  OAI22XL U336 ( .A0(n392), .A1(n347), .B0(n348), .B1(n393), .Y(n166) );
  XOR2X1 U337 ( .A(b[1]), .B(n362), .Y(n392) );
  OAI22XL U338 ( .A0(n393), .A1(n347), .B0(n348), .B1(n394), .Y(n165) );
  XOR2X1 U339 ( .A(b[2]), .B(n362), .Y(n393) );
  OAI22XL U340 ( .A0(n394), .A1(n347), .B0(n348), .B1(n395), .Y(n164) );
  XOR2X1 U341 ( .A(b[3]), .B(n362), .Y(n394) );
  OAI22XL U342 ( .A0(n395), .A1(n347), .B0(n348), .B1(n396), .Y(n163) );
  XOR2X1 U343 ( .A(b[4]), .B(n362), .Y(n395) );
  OAI22XL U344 ( .A0(n396), .A1(n347), .B0(n348), .B1(n397), .Y(n162) );
  XOR2X1 U345 ( .A(b[5]), .B(n362), .Y(n396) );
  OAI22XL U346 ( .A0(n397), .A1(n347), .B0(n348), .B1(n398), .Y(n161) );
  XOR2X1 U347 ( .A(b[6]), .B(n362), .Y(n397) );
  OAI22XL U348 ( .A0(n398), .A1(n347), .B0(n348), .B1(n399), .Y(n160) );
  XOR2X1 U349 ( .A(b[7]), .B(n362), .Y(n398) );
  OAI22XL U350 ( .A0(n399), .A1(n347), .B0(n348), .B1(n400), .Y(n159) );
  XOR2X1 U351 ( .A(b[8]), .B(n362), .Y(n399) );
  OAI22XL U352 ( .A0(n400), .A1(n347), .B0(n348), .B1(n401), .Y(n158) );
  XOR2X1 U353 ( .A(b[9]), .B(n362), .Y(n400) );
  AO21X1 U354 ( .A0(n347), .A1(n348), .B0(n401), .Y(n157) );
  XOR2X1 U355 ( .A(b[10]), .B(n362), .Y(n401) );
  NOR2X1 U356 ( .A(n350), .B(n355), .Y(n156) );
  OAI22XL U357 ( .A0(n403), .A1(n349), .B0(n350), .B1(n405), .Y(n155) );
  XOR2X1 U358 ( .A(n363), .B(b[0]), .Y(n403) );
  OAI22XL U359 ( .A0(n405), .A1(n349), .B0(n350), .B1(n406), .Y(n154) );
  XOR2X1 U360 ( .A(b[1]), .B(n363), .Y(n405) );
  OAI22XL U361 ( .A0(n406), .A1(n349), .B0(n350), .B1(n407), .Y(n153) );
  XOR2X1 U362 ( .A(b[2]), .B(n363), .Y(n406) );
  OAI22XL U363 ( .A0(n407), .A1(n349), .B0(n350), .B1(n408), .Y(n152) );
  XOR2X1 U364 ( .A(b[3]), .B(n363), .Y(n407) );
  OAI22XL U365 ( .A0(n408), .A1(n349), .B0(n350), .B1(n409), .Y(n151) );
  XOR2X1 U366 ( .A(b[4]), .B(n363), .Y(n408) );
  OAI22XL U367 ( .A0(n409), .A1(n349), .B0(n350), .B1(n410), .Y(n150) );
  XOR2X1 U368 ( .A(b[5]), .B(n363), .Y(n409) );
  OAI22XL U369 ( .A0(n410), .A1(n349), .B0(n350), .B1(n411), .Y(n149) );
  XOR2X1 U370 ( .A(b[6]), .B(n363), .Y(n410) );
  OAI22XL U371 ( .A0(n411), .A1(n349), .B0(n350), .B1(n412), .Y(n148) );
  XOR2X1 U372 ( .A(b[7]), .B(n363), .Y(n411) );
  OAI22XL U373 ( .A0(n412), .A1(n349), .B0(n350), .B1(n413), .Y(n147) );
  XOR2X1 U374 ( .A(b[8]), .B(n363), .Y(n412) );
  OAI22XL U375 ( .A0(n413), .A1(n349), .B0(n350), .B1(n414), .Y(n146) );
  XOR2X1 U376 ( .A(b[9]), .B(n363), .Y(n413) );
  AO21X1 U377 ( .A0(n349), .A1(n350), .B0(n414), .Y(n145) );
  XOR2X1 U378 ( .A(b[10]), .B(n363), .Y(n414) );
  NOR2X1 U379 ( .A(n352), .B(n355), .Y(n144) );
  OAI22XL U380 ( .A0(n416), .A1(n351), .B0(n352), .B1(n418), .Y(n143) );
  XOR2X1 U381 ( .A(n364), .B(b[0]), .Y(n416) );
  OAI22XL U382 ( .A0(n418), .A1(n351), .B0(n352), .B1(n419), .Y(n142) );
  XOR2X1 U383 ( .A(b[1]), .B(n364), .Y(n418) );
  OAI22XL U384 ( .A0(n419), .A1(n351), .B0(n352), .B1(n420), .Y(n141) );
  XOR2X1 U385 ( .A(b[2]), .B(n364), .Y(n419) );
  OAI22XL U386 ( .A0(n420), .A1(n351), .B0(n352), .B1(n421), .Y(n140) );
  XOR2X1 U387 ( .A(b[3]), .B(n364), .Y(n420) );
  OAI22XL U388 ( .A0(n421), .A1(n351), .B0(n352), .B1(n422), .Y(n139) );
  XOR2X1 U389 ( .A(b[4]), .B(n364), .Y(n421) );
  OAI22XL U390 ( .A0(n422), .A1(n351), .B0(n352), .B1(n423), .Y(n138) );
  XOR2X1 U391 ( .A(b[5]), .B(n364), .Y(n422) );
  OAI22XL U392 ( .A0(n423), .A1(n351), .B0(n352), .B1(n424), .Y(n137) );
  XOR2X1 U393 ( .A(b[6]), .B(n364), .Y(n423) );
  OAI22XL U394 ( .A0(n424), .A1(n351), .B0(n352), .B1(n425), .Y(n136) );
  XOR2X1 U395 ( .A(b[7]), .B(n364), .Y(n424) );
  OAI22XL U396 ( .A0(n425), .A1(n351), .B0(n352), .B1(n426), .Y(n135) );
  XOR2X1 U397 ( .A(b[8]), .B(n364), .Y(n425) );
  OAI22XL U398 ( .A0(n426), .A1(n351), .B0(n352), .B1(n427), .Y(n134) );
  XOR2X1 U399 ( .A(b[9]), .B(n364), .Y(n426) );
  AO21X1 U400 ( .A0(n351), .A1(n352), .B0(n427), .Y(n133) );
  XOR2X1 U401 ( .A(b[10]), .B(n364), .Y(n427) );
  NOR2X1 U402 ( .A(n354), .B(n355), .Y(n132) );
  OAI22XL U403 ( .A0(n429), .A1(n353), .B0(n354), .B1(n431), .Y(n131) );
  XOR2X1 U404 ( .A(n366), .B(b[0]), .Y(n429) );
  OAI22XL U405 ( .A0(n431), .A1(n353), .B0(n354), .B1(n432), .Y(n130) );
  XOR2X1 U406 ( .A(b[1]), .B(n366), .Y(n431) );
  OAI22XL U407 ( .A0(n432), .A1(n353), .B0(n354), .B1(n433), .Y(n129) );
  XOR2X1 U408 ( .A(b[2]), .B(n366), .Y(n432) );
  OAI22XL U409 ( .A0(n433), .A1(n353), .B0(n354), .B1(n434), .Y(n128) );
  XOR2X1 U410 ( .A(b[3]), .B(n366), .Y(n433) );
  OAI22XL U411 ( .A0(n434), .A1(n353), .B0(n354), .B1(n435), .Y(n127) );
  XOR2X1 U412 ( .A(b[4]), .B(n366), .Y(n434) );
  OAI22XL U413 ( .A0(n435), .A1(n353), .B0(n354), .B1(n436), .Y(n126) );
  XOR2X1 U414 ( .A(b[5]), .B(n366), .Y(n435) );
  OAI22XL U415 ( .A0(n436), .A1(n353), .B0(n354), .B1(n437), .Y(n125) );
  XOR2X1 U416 ( .A(b[6]), .B(n366), .Y(n436) );
  OAI22XL U417 ( .A0(n437), .A1(n353), .B0(n354), .B1(n438), .Y(n124) );
  XOR2X1 U418 ( .A(b[7]), .B(n366), .Y(n437) );
  OAI22XL U419 ( .A0(n438), .A1(n353), .B0(n354), .B1(n439), .Y(n123) );
  XOR2X1 U420 ( .A(b[8]), .B(n366), .Y(n438) );
  OAI22XL U421 ( .A0(n439), .A1(n353), .B0(n354), .B1(n440), .Y(n122) );
  XOR2X1 U422 ( .A(b[9]), .B(n366), .Y(n439) );
  AO21X1 U423 ( .A0(n353), .A1(n354), .B0(n440), .Y(n121) );
  XOR2X1 U424 ( .A(b[10]), .B(n366), .Y(n440) );
  NOR2X1 U425 ( .A(n365), .B(n355), .Y(n120) );
  NOR2X1 U426 ( .A(n365), .B(n441), .Y(n118) );
  XNOR2X1 U427 ( .A(b[3]), .B(a[10]), .Y(n441) );
  NOR2X1 U428 ( .A(n365), .B(n442), .Y(n117) );
  XNOR2X1 U429 ( .A(b[5]), .B(a[10]), .Y(n442) );
  NOR2X1 U430 ( .A(n365), .B(n443), .Y(n116) );
  XNOR2X1 U431 ( .A(b[7]), .B(a[10]), .Y(n443) );
  NOR2X1 U432 ( .A(n365), .B(n444), .Y(n115) );
  XNOR2X1 U433 ( .A(b[9]), .B(a[10]), .Y(n444) );
  OAI21XL U434 ( .A0(b[0]), .A1(n361), .B0(n378), .Y(n113) );
  OAI32X1 U435 ( .A0(n362), .A1(b[0]), .A2(n348), .B0(n362), .B1(n347), .Y(
        n112) );
  OAI32X1 U436 ( .A0(n363), .A1(b[0]), .A2(n350), .B0(n363), .B1(n349), .Y(
        n111) );
  OAI32X1 U437 ( .A0(n364), .A1(b[0]), .A2(n352), .B0(n364), .B1(n351), .Y(
        n110) );
  OAI32X1 U438 ( .A0(n366), .A1(b[0]), .A2(n354), .B0(n366), .B1(n353), .Y(
        n109) );
endmodule


module geofence_DW01_sub_1 ( A, B, CI, DIFF, CO );
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
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n2) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule


module geofence_DW01_sub_0 ( A, B, CI, DIFF, CO );
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
  CLKINVX1 U1 ( .A(B[0]), .Y(n11) );
  CLKINVX1 U2 ( .A(B[1]), .Y(n10) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n9) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n8) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n7) );
  CLKINVX1 U8 ( .A(B[5]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[6]), .Y(n5) );
  CLKINVX1 U10 ( .A(B[7]), .Y(n4) );
  CLKINVX1 U11 ( .A(B[8]), .Y(n3) );
  CLKINVX1 U12 ( .A(B[9]), .Y(n2) );
  XNOR2X1 U13 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U14 ( .A(carry[10]), .Y(DIFF[10]) );
endmodule

