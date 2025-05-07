/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Wed Apr 23 01:36:15 2025
/////////////////////////////////////////////////////////////


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2XL U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2XL U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_2_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP_DW01_inc_3_DW01_inc_4 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module LBP ( gray_addr, gray_req, lbp_addr, lbp_valid, lbp_data, finish, clk, 
        reset, gray_ready, gray_data );
  output [13:0] gray_addr;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input [7:0] gray_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n256, n257, n258, n259, n260, n261, n262, n263, N23, N24, N25, N26,
         N32, N33, N34, N35, N36, N37, N38, N40, N41, N42, N43, N44, N45, N46,
         N90, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101, N102,
         N103, N118, N119, N120, N121, N122, N123, N124, N139, N140, N141,
         N142, N143, N144, N145, N179, N222, N264, N275, n10, n11, n12, n13,
         n14, n15, n16, n17, n18, n19, n21, n22, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n39, n44, n45, n46, n47, n50,
         n51, n52, n53, n62, n63, n64, n65, n66, n67, n68, n85, n86, n87, n88,
         n89, n90, n91, N292, N291, N290, N289, N288, N287, N286, N285, N284,
         N283, N282, N281, N280, N279, n101, n102, n104, n106, n108, n110,
         n112, n114, n116, n118, n120, n268, n269, n124, n126, n128, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n243, n264, n266;
  wire   [3:0] req_cnt;
  wire   [7:0] ctr_data;
  wire   [1:0] next_state;
  assign finish = N222;

  OAI31X2 U36 ( .A0(n213), .A1(req_cnt[3]), .A2(n21), .B0(n22), .Y(n13) );
  OAI211X2 U39 ( .A0(req_cnt[0]), .A1(n24), .B0(n26), .C0(n27), .Y(n11) );
  OAI211X2 U56 ( .A0(req_cnt[1]), .A1(n25), .B0(n26), .C0(n243), .Y(n29) );
  DFFQX2 \req_cnt_reg[2]  ( .D(N25), .CK(clk), .Q(req_cnt[2]) );
  DFFQX2 \req_cnt_reg[1]  ( .D(N24), .CK(clk), .Q(req_cnt[1]) );
  DFFQX2 \req_cnt_reg[0]  ( .D(N23), .CK(clk), .Q(req_cnt[0]) );
  DFFQX1 \lbp_cal_reg[3]  ( .D(n204), .CK(clk), .Q(n260) );
  DFFQX1 \lbp_cal_reg[6]  ( .D(n202), .CK(clk), .Q(n257) );
  DFFQX1 \lbp_cal_reg[2]  ( .D(n200), .CK(clk), .Q(n261) );
  DFFQX1 \lbp_cal_reg[7]  ( .D(n206), .CK(clk), .Q(n256) );
  DFFHQX4 \lbp_cal_reg[0]  ( .D(n199), .CK(clk), .Q(n263) );
  DFFHQX4 \lbp_cal_reg[4]  ( .D(n201), .CK(clk), .Q(n259) );
  DFFHQX4 \lbp_cal_reg[5]  ( .D(n205), .CK(clk), .Q(n258) );
  DFFHQX4 \lbp_cal_reg[1]  ( .D(n203), .CK(clk), .Q(n262) );
  DFFRX1 \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n212), .Q(
        n148), .QN(n53) );
  DFFRX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n212), .Q(
        n52), .QN(n153) );
  DFFX1 \req_cnt_reg[3]  ( .D(N26), .CK(clk), .Q(req_cnt[3]), .QN(n186) );
  NAND2X4 U107 ( .A(n143), .B(req_cnt[0]), .Y(n137) );
  AOI211X2 U108 ( .A0(gray_data[2]), .A1(n162), .B0(n144), .C0(n145), .Y(n158)
         );
  AND2X2 U109 ( .A(gray_data[3]), .B(n163), .Y(n145) );
  OAI32X2 U110 ( .A0(n165), .A1(n144), .A2(n145), .B0(n164), .B1(n144), .Y(
        n178) );
  OAI221X2 U111 ( .A0(n128), .A1(n172), .B0(gray_data[5]), .B1(n171), .C0(n170), .Y(n174) );
  AOI222X2 U112 ( .A0(ctr_data[5]), .A1(n167), .B0(ctr_data[4]), .B1(n168), 
        .C0(ctr_data[6]), .C1(n173), .Y(n164) );
  CLKINVX1 U113 ( .A(n128), .Y(n168) );
  BUFX16 U114 ( .A(gray_data[4]), .Y(n128) );
  AND3X4 U115 ( .A(n128), .B(n172), .C(n169), .Y(n171) );
  INVX3 U116 ( .A(n140), .Y(n189) );
  NOR2BX4 U117 ( .AN(n143), .B(req_cnt[0]), .Y(n140) );
  INVX3 U118 ( .A(gray_data[5]), .Y(n167) );
  INVX1 U119 ( .A(gray_data[1]), .Y(n157) );
  AOI2BB1X1 U120 ( .A0N(ctr_data[5]), .A1N(n167), .B0(n166), .Y(n176) );
  OAI211X1 U121 ( .A0(gray_data[5]), .A1(n172), .B0(n128), .C0(n169), .Y(n175)
         );
  NOR2X6 U122 ( .A(n141), .B(n195), .Y(n143) );
  AND2X6 U123 ( .A(ctr_data[7]), .B(n156), .Y(n141) );
  CLKINVX1 U124 ( .A(n256), .Y(n194) );
  CLKINVX1 U125 ( .A(n261), .Y(n182) );
  CLKINVX1 U126 ( .A(n257), .Y(n192) );
  NAND2X1 U127 ( .A(n140), .B(N179), .Y(n196) );
  CLKINVX1 U128 ( .A(n260), .Y(n183) );
  AO22X1 U129 ( .A0(gray_req), .A1(n150), .B0(n45), .B1(req_cnt[3]), .Y(N26)
         );
  CLKINVX1 U130 ( .A(n27), .Y(n150) );
  OAI21XL U131 ( .A0(req_cnt[2]), .A1(n44), .B0(n46), .Y(n45) );
  INVX3 U132 ( .A(reset), .Y(n212) );
  OR2X1 U133 ( .A(N179), .B(n184), .Y(n101) );
  INVX12 U134 ( .A(n19), .Y(gray_addr[6]) );
  INVX12 U135 ( .A(n17), .Y(gray_addr[4]) );
  INVX16 U137 ( .A(n102), .Y(lbp_addr[13]) );
  INVX16 U139 ( .A(n104), .Y(lbp_addr[11]) );
  INVX16 U141 ( .A(n106), .Y(lbp_addr[4]) );
  INVX16 U143 ( .A(n108), .Y(lbp_addr[6]) );
  INVX16 U145 ( .A(n110), .Y(lbp_addr[8]) );
  INVX16 U147 ( .A(n112), .Y(lbp_addr[9]) );
  INVX16 U149 ( .A(n114), .Y(lbp_addr[1]) );
  INVX16 U151 ( .A(n116), .Y(lbp_addr[2]) );
  INVX16 U153 ( .A(n118), .Y(lbp_addr[3]) );
  INVX16 U155 ( .A(n120), .Y(lbp_addr[10]) );
  INVX16 U159 ( .A(n124), .Y(lbp_addr[12]) );
  INVX16 U161 ( .A(n126), .Y(lbp_addr[5]) );
  BUFX6 U162 ( .A(n190), .Y(n142) );
  AO22X4 U163 ( .A0(n142), .A1(n191), .B0(lbp_data[5]), .B1(n243), .Y(n205) );
  INVX8 U164 ( .A(n190), .Y(n198) );
  AO22X4 U165 ( .A0(n180), .A1(n142), .B0(lbp_data[0]), .B1(n243), .Y(n199) );
  AO22X4 U166 ( .A0(n188), .A1(n142), .B0(lbp_data[4]), .B1(n243), .Y(n201) );
  AO22X4 U167 ( .A0(n181), .A1(n142), .B0(lbp_data[1]), .B1(n243), .Y(n203) );
  OAI32X1 U168 ( .A0(n198), .A1(n193), .A2(n184), .B0(n195), .B1(n182), .Y(
        n200) );
  CLKAND2X12 U169 ( .A(n138), .B(n139), .Y(n165) );
  NAND4BX2 U170 ( .AN(n50), .B(lbp_addr[5]), .C(lbp_addr[4]), .D(lbp_addr[6]), 
        .Y(N275) );
  INVX12 U171 ( .A(n33), .Y(gray_addr[12]) );
  INVX12 U172 ( .A(n15), .Y(gray_addr[2]) );
  INVX12 U173 ( .A(n28), .Y(gray_addr[10]) );
  AND2XL U174 ( .A(lbp_addr[4]), .B(N275), .Y(N283) );
  INVX12 U175 ( .A(n14), .Y(gray_addr[1]) );
  INVX12 U176 ( .A(n37), .Y(gray_addr[9]) );
  INVX12 U177 ( .A(n16), .Y(gray_addr[3]) );
  INVX12 U178 ( .A(n32), .Y(gray_addr[11]) );
  AND2XL U179 ( .A(lbp_addr[1]), .B(N275), .Y(N280) );
  INVX12 U180 ( .A(n34), .Y(gray_addr[13]) );
  AND2XL U181 ( .A(lbp_addr[11]), .B(N264), .Y(N290) );
  AND2XL U182 ( .A(lbp_addr[2]), .B(N275), .Y(N281) );
  INVX12 U183 ( .A(n18), .Y(gray_addr[5]) );
  INVX12 U184 ( .A(n36), .Y(gray_addr[8]) );
  AND2XL U185 ( .A(lbp_addr[3]), .B(N275), .Y(N282) );
  AND2XL U186 ( .A(lbp_addr[10]), .B(N264), .Y(N289) );
  INVX12 U187 ( .A(n35), .Y(gray_addr[7]) );
  INVX12 U188 ( .A(n10), .Y(gray_addr[0]) );
  CLKAND2X12 U189 ( .A(n155), .B(next_state[1]), .Y(N222) );
  AND2XL U190 ( .A(lbp_addr[8]), .B(N264), .Y(N287) );
  AND2XL U191 ( .A(lbp_addr[12]), .B(N264), .Y(N291) );
  AND2XL U192 ( .A(lbp_addr[5]), .B(N275), .Y(N284) );
  BUFX16 U193 ( .A(n262), .Y(lbp_data[1]) );
  BUFX16 U194 ( .A(n258), .Y(lbp_data[5]) );
  BUFX16 U195 ( .A(n259), .Y(lbp_data[4]) );
  BUFX16 U196 ( .A(n263), .Y(lbp_data[0]) );
  INVX12 U197 ( .A(n194), .Y(lbp_data[7]) );
  INVX12 U198 ( .A(n182), .Y(lbp_data[2]) );
  INVX12 U199 ( .A(n192), .Y(lbp_data[6]) );
  INVX12 U200 ( .A(n183), .Y(lbp_data[3]) );
  INVX16 U201 ( .A(n44), .Y(gray_req) );
  NAND2X2 U202 ( .A(n52), .B(n53), .Y(n44) );
  AND2XL U203 ( .A(lbp_addr[9]), .B(N264), .Y(N288) );
  NAND2BX4 U204 ( .AN(gray_data[3]), .B(ctr_data[3]), .Y(n138) );
  INVX3 U205 ( .A(gray_data[7]), .Y(n156) );
  OAI32X2 U206 ( .A0(n196), .A1(n197), .A2(n198), .B0(n195), .B1(n194), .Y(
        n206) );
  OR2X8 U207 ( .A(gray_data[2]), .B(n162), .Y(n139) );
  NOR2X1 U208 ( .A(n101), .B(n189), .Y(n181) );
  AND2XL U209 ( .A(N275), .B(lbp_addr[6]), .Y(N285) );
  AND2XL U210 ( .A(N264), .B(lbp_addr[13]), .Y(N292) );
  OAI21X4 U211 ( .A0(n179), .A1(n178), .B0(n177), .Y(n190) );
  AND4X4 U212 ( .A(n158), .B(n160), .C(n159), .D(n161), .Y(n179) );
  OAI2BB1X1 U213 ( .A0N(ctr_data[1]), .A1N(n157), .B0(gray_data[0]), .Y(n160)
         );
  INVX3 U214 ( .A(gray_data[6]), .Y(n173) );
  XOR2XL U215 ( .A(lbp_addr[6]), .B(n224), .Y(N103) );
  NOR2XL U216 ( .A(n221), .B(lbp_addr[3]), .Y(n222) );
  NAND2BXL U217 ( .AN(lbp_addr[1]), .B(N97), .Y(n220) );
  NOR2XL U218 ( .A(lbp_addr[5]), .B(n223), .Y(n224) );
  OR2XL U219 ( .A(n220), .B(lbp_addr[2]), .Y(n221) );
  XOR2XL U220 ( .A(lbp_addr[13]), .B(n219), .Y(N96) );
  NOR2XL U221 ( .A(n216), .B(lbp_addr[10]), .Y(n217) );
  NAND2BXL U222 ( .AN(lbp_addr[8]), .B(N90), .Y(n215) );
  NOR2XL U223 ( .A(lbp_addr[12]), .B(n218), .Y(n219) );
  OR2XL U224 ( .A(n215), .B(lbp_addr[9]), .Y(n216) );
  XNOR2XL U225 ( .A(lbp_addr[5]), .B(n223), .Y(N102) );
  XNOR2XL U226 ( .A(lbp_addr[12]), .B(n218), .Y(N95) );
  AO21XL U227 ( .A0(n221), .A1(lbp_addr[3]), .B0(n222), .Y(N100) );
  AO21XL U228 ( .A0(n216), .A1(lbp_addr[10]), .B0(n217), .Y(N93) );
  OAI2BB1XL U229 ( .A0N(n215), .A1N(lbp_addr[9]), .B0(n216), .Y(N92) );
  OAI2BB1XL U230 ( .A0N(n220), .A1N(lbp_addr[2]), .B0(n221), .Y(N99) );
  OAI2BB1XL U231 ( .A0N(lbp_addr[7]), .A1N(lbp_addr[8]), .B0(n215), .Y(N91) );
  OAI2BB1XL U232 ( .A0N(lbp_addr[0]), .A1N(lbp_addr[1]), .B0(n220), .Y(N98) );
  AND2XL U233 ( .A(lbp_addr[0]), .B(N275), .Y(N279) );
  AND2XL U234 ( .A(lbp_addr[7]), .B(N264), .Y(N286) );
  INVX3 U235 ( .A(n243), .Y(n195) );
  INVX3 U244 ( .A(n227), .Y(n210) );
  CLKINVX1 U245 ( .A(n24), .Y(n154) );
  CLKINVX1 U246 ( .A(n39), .Y(n209) );
  NOR2X2 U247 ( .A(n24), .B(n209), .Y(n30) );
  NAND2BX1 U248 ( .AN(n137), .B(N179), .Y(n193) );
  INVXL U249 ( .A(N275), .Y(n149) );
  AO22XL U250 ( .A0(gray_req), .A1(n152), .B0(n151), .B1(n210), .Y(
        next_state[1]) );
  CLKINVX1 U251 ( .A(n22), .Y(n152) );
  CLKINVX1 U252 ( .A(N264), .Y(n151) );
  AO21XL U253 ( .A0(n22), .A1(gray_req), .B0(lbp_valid), .Y(n155) );
  BUFX16 U254 ( .A(n208), .Y(lbp_valid) );
  CLKINVX1 U255 ( .A(n228), .Y(n208) );
  NAND2X1 U256 ( .A(n213), .B(n214), .Y(n39) );
  NAND2X1 U257 ( .A(n211), .B(n186), .Y(n24) );
  AOI21XL U258 ( .A0(n214), .A1(gray_req), .B0(N23), .Y(n46) );
  OAI21X2 U259 ( .A0(n25), .A1(n214), .B0(n22), .Y(n31) );
  NAND3BX1 U260 ( .AN(n185), .B(n226), .C(n187), .Y(n184) );
  XOR2X1 U261 ( .A(n186), .B(n226), .Y(n185) );
  AO21X1 U262 ( .A0(n187), .A1(n186), .B0(n185), .Y(n197) );
  NOR3X1 U263 ( .A(N179), .B(n137), .C(n184), .Y(n180) );
  NOR3X1 U264 ( .A(N179), .B(n197), .C(n137), .Y(n188) );
  NOR3X1 U265 ( .A(N179), .B(n189), .C(n197), .Y(n191) );
  OAI32X1 U266 ( .A0(n198), .A1(n196), .A2(n184), .B0(n195), .B1(n183), .Y(
        n204) );
  OAI32X1 U267 ( .A0(n198), .A1(n197), .A2(n193), .B0(n195), .B1(n192), .Y(
        n202) );
  NOR2BX4 U268 ( .AN(gray_data[7]), .B(ctr_data[7]), .Y(n144) );
  AO21X1 U269 ( .A0(ctr_data[0]), .A1(ctr_data[1]), .B0(n157), .Y(n159) );
  AO21X1 U270 ( .A0(gray_ready), .A1(n153), .B0(n155), .Y(next_state[0]) );
  AOI222XL U271 ( .A0(lbp_addr[6]), .A1(n11), .B0(N103), .B1(n12), .C0(N124), 
        .C1(n13), .Y(n19) );
  AOI222XL U272 ( .A0(lbp_addr[13]), .A1(n29), .B0(N96), .B1(n30), .C0(N145), 
        .C1(n31), .Y(n34) );
  AOI222XL U273 ( .A0(lbp_addr[5]), .A1(n11), .B0(N102), .B1(n12), .C0(N123), 
        .C1(n13), .Y(n18) );
  AOI222XL U274 ( .A0(lbp_addr[12]), .A1(n29), .B0(N95), .B1(n30), .C0(N144), 
        .C1(n31), .Y(n33) );
  AOI222XL U275 ( .A0(lbp_addr[4]), .A1(n11), .B0(N101), .B1(n12), .C0(N122), 
        .C1(n13), .Y(n17) );
  AOI222XL U276 ( .A0(lbp_addr[11]), .A1(n29), .B0(N94), .B1(n30), .C0(N143), 
        .C1(n31), .Y(n32) );
  NAND4BXL U277 ( .AN(lbp_addr[0]), .B(lbp_addr[1]), .C(lbp_addr[2]), .D(
        lbp_addr[3]), .Y(n50) );
  AOI222XL U278 ( .A0(lbp_addr[3]), .A1(n11), .B0(N100), .B1(n12), .C0(N121), 
        .C1(n13), .Y(n16) );
  AOI222XL U279 ( .A0(lbp_addr[10]), .A1(n29), .B0(N93), .B1(n30), .C0(N142), 
        .C1(n31), .Y(n28) );
  AOI222XL U280 ( .A0(lbp_addr[2]), .A1(n11), .B0(N99), .B1(n12), .C0(N120), 
        .C1(n13), .Y(n15) );
  AOI222XL U281 ( .A0(lbp_addr[9]), .A1(n29), .B0(N92), .B1(n30), .C0(N141), 
        .C1(n31), .Y(n37) );
  NAND4BXL U282 ( .AN(lbp_addr[7]), .B(lbp_addr[10]), .C(lbp_addr[11]), .D(
        lbp_addr[12]), .Y(n51) );
  AOI222XL U283 ( .A0(lbp_addr[1]), .A1(n11), .B0(N98), .B1(n12), .C0(N119), 
        .C1(n13), .Y(n14) );
  AOI222XL U284 ( .A0(lbp_addr[8]), .A1(n29), .B0(N91), .B1(n30), .C0(N140), 
        .C1(n31), .Y(n36) );
  AOI222XL U285 ( .A0(lbp_addr[0]), .A1(n11), .B0(N97), .B1(n12), .C0(N118), 
        .C1(n13), .Y(n10) );
  AOI222XL U286 ( .A0(lbp_addr[7]), .A1(n29), .B0(N90), .B1(n30), .C0(N139), 
        .C1(n31), .Y(n35) );
  AO22X1 U287 ( .A0(N38), .A1(n210), .B0(lbp_addr[13]), .B1(n227), .Y(n85) );
  AO22X1 U288 ( .A0(N46), .A1(lbp_valid), .B0(lbp_addr[6]), .B1(n228), .Y(n67)
         );
  AO22X1 U289 ( .A0(N37), .A1(n210), .B0(lbp_addr[12]), .B1(n227), .Y(n86) );
  CLKINVX1 U290 ( .A(req_cnt[0]), .Y(n213) );
  CLKINVX1 U291 ( .A(req_cnt[1]), .Y(n214) );
  AO22X1 U292 ( .A0(N36), .A1(n210), .B0(lbp_addr[11]), .B1(n227), .Y(n87) );
  CLKINVX1 U293 ( .A(req_cnt[2]), .Y(n211) );
  AO22X1 U294 ( .A0(N45), .A1(lbp_valid), .B0(lbp_addr[5]), .B1(n228), .Y(n66)
         );
  AO22X1 U295 ( .A0(N32), .A1(n210), .B0(lbp_addr[7]), .B1(n227), .Y(n91) );
  AO22X1 U296 ( .A0(N35), .A1(n210), .B0(lbp_addr[10]), .B1(n227), .Y(n88) );
  AO22X1 U297 ( .A0(N33), .A1(n210), .B0(lbp_addr[8]), .B1(n227), .Y(n90) );
  AO22X1 U298 ( .A0(N34), .A1(n210), .B0(lbp_addr[9]), .B1(n227), .Y(n89) );
  AO22X1 U299 ( .A0(N44), .A1(lbp_valid), .B0(lbp_addr[4]), .B1(n228), .Y(n65)
         );
  OAI2BB1X1 U300 ( .A0N(req_cnt[2]), .A1N(n147), .B0(n47), .Y(N25) );
  NAND4XL U301 ( .A(req_cnt[1]), .B(req_cnt[0]), .C(gray_req), .D(n211), .Y(
        n47) );
  CLKINVX1 U302 ( .A(n46), .Y(n147) );
  XOR2X1 U303 ( .A(n214), .B(req_cnt[2]), .Y(n21) );
  NAND3BX1 U304 ( .AN(n39), .B(req_cnt[3]), .C(n211), .Y(n22) );
  AO22X1 U305 ( .A0(N43), .A1(lbp_valid), .B0(lbp_addr[3]), .B1(n228), .Y(n64)
         );
  OAI32X4 U306 ( .A0(n213), .A1(req_cnt[1]), .A2(n24), .B0(req_cnt[0]), .B1(
        n25), .Y(n12) );
  AO22X1 U307 ( .A0(N42), .A1(lbp_valid), .B0(lbp_addr[2]), .B1(n228), .Y(n63)
         );
  OAI21XL U308 ( .A0(req_cnt[2]), .A1(n39), .B0(req_cnt[3]), .Y(n26) );
  AO22X1 U309 ( .A0(N41), .A1(lbp_valid), .B0(lbp_addr[1]), .B1(n228), .Y(n62)
         );
  AO22X1 U310 ( .A0(N40), .A1(lbp_valid), .B0(lbp_addr[0]), .B1(n228), .Y(n68)
         );
  NAND2BX1 U311 ( .AN(req_cnt[3]), .B(req_cnt[2]), .Y(n25) );
  NAND3BX1 U312 ( .AN(n25), .B(req_cnt[0]), .C(req_cnt[1]), .Y(n27) );
  NAND2X1 U313 ( .A(n225), .B(req_cnt[2]), .Y(n187) );
  AOI2BB1X1 U315 ( .A0N(n169), .A1N(n172), .B0(ctr_data[6]), .Y(n170) );
  NOR2X1 U319 ( .A(n44), .B(req_cnt[0]), .Y(N23) );
  AOI211X1 U320 ( .A0(req_cnt[1]), .A1(req_cnt[0]), .B0(n44), .C0(n209), .Y(
        N24) );
  OR2X1 U322 ( .A(ctr_data[1]), .B(ctr_data[0]), .Y(n161) );
  OR4X2 U323 ( .A(n102), .B(n112), .C(n51), .D(n110), .Y(N264) );
  NAND2X2 U324 ( .A(n148), .B(n153), .Y(n228) );
  NAND2X2 U325 ( .A(lbp_valid), .B(n149), .Y(n227) );
  NAND2X2 U326 ( .A(n209), .B(n154), .Y(n243) );
  AO22X4 U327 ( .A0(n176), .A1(n175), .B0(n173), .B1(n174), .Y(n177) );
  NAND2X1 U328 ( .A(n217), .B(n104), .Y(n218) );
  OAI21XL U329 ( .A0(n217), .A1(n104), .B0(n218), .Y(N94) );
  NAND2X1 U330 ( .A(n222), .B(n106), .Y(n223) );
  OAI21XL U331 ( .A0(n222), .A1(n106), .B0(n223), .Y(N101) );
  NAND2BX1 U332 ( .AN(req_cnt[1]), .B(n213), .Y(n225) );
  OAI2BB1X1 U333 ( .A0N(req_cnt[0]), .A1N(req_cnt[1]), .B0(n225), .Y(N179) );
  OR2X1 U334 ( .A(n225), .B(req_cnt[2]), .Y(n226) );
  LBP_DW01_inc_0_DW01_inc_1 r408 ( .A(lbp_addr[13:7]), .SUM({N145, N144, N143, 
        N142, N141, N140, N139}) );
  LBP_DW01_inc_1_DW01_inc_2 r407 ( .A(lbp_addr[6:0]), .SUM({N124, N123, N122, 
        N121, N120, N119, N118}) );
  LBP_DW01_inc_2_DW01_inc_3 add_80_aco ( .A({N292, N291, N290, N289, N288, 
        N287, N286}), .SUM({N38, N37, N36, N35, N34, N33, N32}) );
  LBP_DW01_inc_3_DW01_inc_4 add_82_aco ( .A({N285, N284, N283, N282, N281, 
        N280, N279}), .SUM({N46, N45, N44, N43, N42, N41, N40}) );
  DFFRX1 \ctr_j_reg[1]  ( .D(n62), .CK(clk), .RN(n212), .QN(n114) );
  DFFRX1 \ctr_j_reg[2]  ( .D(n63), .CK(clk), .RN(n212), .QN(n116) );
  DFFRX1 \ctr_i_reg[2]  ( .D(n89), .CK(clk), .RN(n212), .QN(n112) );
  DFFRX1 \ctr_i_reg[1]  ( .D(n90), .CK(clk), .RN(n212), .QN(n110) );
  DFFRX1 \ctr_j_reg[3]  ( .D(n64), .CK(clk), .RN(n212), .QN(n118) );
  DFFRX1 \ctr_i_reg[3]  ( .D(n88), .CK(clk), .RN(n212), .QN(n120) );
  DFFRX1 \ctr_j_reg[4]  ( .D(n65), .CK(clk), .RN(n212), .QN(n106) );
  DFFRX1 \ctr_i_reg[4]  ( .D(n87), .CK(clk), .RN(n212), .QN(n104) );
  DFFRX1 \ctr_j_reg[5]  ( .D(n66), .CK(clk), .RN(n212), .QN(n126) );
  DFFRX1 \ctr_i_reg[5]  ( .D(n86), .CK(clk), .RN(n212), .QN(n124) );
  DFFRX1 \ctr_j_reg[6]  ( .D(n67), .CK(clk), .RN(n212), .QN(n108) );
  DFFRX1 \ctr_i_reg[6]  ( .D(n85), .CK(clk), .RN(n212), .QN(n102) );
  EDFFXL \ctr_data_reg[1]  ( .D(gray_data[1]), .E(n195), .CK(clk), .Q(
        ctr_data[1]) );
  EDFFXL \ctr_data_reg[0]  ( .D(gray_data[0]), .E(n195), .CK(clk), .Q(
        ctr_data[0]) );
  EDFFXL \ctr_data_reg[6]  ( .D(gray_data[6]), .E(n195), .CK(clk), .Q(
        ctr_data[6]), .QN(n166) );
  EDFFXL \ctr_data_reg[3]  ( .D(gray_data[3]), .E(n195), .CK(clk), .Q(
        ctr_data[3]), .QN(n163) );
  EDFFXL \ctr_data_reg[7]  ( .D(gray_data[7]), .E(n195), .CK(clk), .Q(
        ctr_data[7]) );
  EDFFXL \ctr_data_reg[2]  ( .D(gray_data[2]), .E(n195), .CK(clk), .QN(n162)
         );
  EDFFXL \ctr_data_reg[4]  ( .D(n128), .E(n195), .CK(clk), .Q(ctr_data[4]), 
        .QN(n169) );
  DFFSX1 \ctr_j_reg[0]  ( .D(n68), .CK(clk), .SN(n212), .Q(n269), .QN(N97) );
  DFFSX1 \ctr_i_reg[0]  ( .D(n91), .CK(clk), .SN(n212), .Q(n268), .QN(N90) );
  EDFFX1 \ctr_data_reg[5]  ( .D(gray_data[5]), .E(n195), .CK(clk), .Q(
        ctr_data[5]), .QN(n172) );
  CLKINVX1 U136 ( .A(n268), .Y(n264) );
  INVX16 U138 ( .A(n264), .Y(lbp_addr[7]) );
  CLKINVX1 U140 ( .A(n269), .Y(n266) );
  INVX16 U142 ( .A(n266), .Y(lbp_addr[0]) );
endmodule

