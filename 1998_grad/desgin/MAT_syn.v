/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Mon May 12 15:20:48 2025
/////////////////////////////////////////////////////////////


module PE_0_DW_mult_tc_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n26, n28, n31, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n77, n79, n80, n81, n82,
         n83, n85, n87, n88, n89, n90, n91, n94, n96, n97, n98, n99, n100,
         n102, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n118, n119, n120, n121, n122, n123, n124, n125,
         n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n242, n243, n244, n245, n246,
         n247, n248, n249, n279, n280, n281, n282, n283, n284, n285;
  assign product[15] = n15;

  AO21X1 U244 ( .A0(n34), .A1(n21), .B0(n22), .Y(n285) );
  NOR2XL U245 ( .A(n51), .B(n46), .Y(n42) );
  NOR2X2 U246 ( .A(n115), .B(n117), .Y(n46) );
  NAND2X1 U247 ( .A(n128), .B(n132), .Y(n67) );
  NOR2X6 U248 ( .A(n279), .B(n69), .Y(n64) );
  NOR2X8 U249 ( .A(n133), .B(n134), .Y(n69) );
  OR2X2 U250 ( .A(n163), .B(n151), .Y(n124) );
  OAI22X2 U251 ( .A0(n194), .A1(n227), .B0(n193), .B1(n231), .Y(n160) );
  BUFX6 U252 ( .A(n66), .Y(n279) );
  ADDFX2 U253 ( .A(n148), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  OR2X1 U254 ( .A(n176), .B(n169), .Y(n281) );
  OAI22X2 U255 ( .A0(n211), .A1(n229), .B0(n210), .B1(n233), .Y(n176) );
  OAI22X2 U256 ( .A0(n212), .A1(n229), .B0(n211), .B1(n233), .Y(n177) );
  INVXL U257 ( .A(n39), .Y(n94) );
  OAI21X4 U258 ( .A0(n39), .A1(n47), .B0(n40), .Y(n38) );
  NOR2X4 U259 ( .A(n46), .B(n39), .Y(n37) );
  NOR2X4 U260 ( .A(n114), .B(n110), .Y(n39) );
  NAND2X2 U261 ( .A(n177), .B(n145), .Y(n90) );
  OAI22X1 U262 ( .A0(n213), .A1(n233), .B0(n229), .B1(n237), .Y(n145) );
  AOI21X2 U263 ( .A0(n64), .A1(n72), .B0(n65), .Y(n63) );
  NOR2X1 U264 ( .A(n128), .B(n132), .Y(n66) );
  ADDFX2 U265 ( .A(n111), .B(n147), .CI(n154), .CO(n107), .S(n108) );
  NAND2X1 U266 ( .A(n53), .B(n37), .Y(n35) );
  NOR2X2 U267 ( .A(n118), .B(n122), .Y(n55) );
  OAI21XL U268 ( .A0(n71), .A1(n69), .B0(n70), .Y(n68) );
  XOR2X1 U269 ( .A(n12), .B(n83), .Y(product[3]) );
  BUFX6 U270 ( .A(a[0]), .Y(n221) );
  AOI21X4 U271 ( .A0(n281), .A1(n88), .B0(n85), .Y(n83) );
  OAI21XL U272 ( .A0(n52), .A1(n46), .B0(n47), .Y(n43) );
  OR2X1 U273 ( .A(n109), .B(n108), .Y(n280) );
  OR2X1 U274 ( .A(n139), .B(n140), .Y(n282) );
  OR2X1 U275 ( .A(n107), .B(n106), .Y(n283) );
  NOR2X1 U276 ( .A(n123), .B(n127), .Y(n60) );
  OAI21X2 U277 ( .A0(n35), .A1(n63), .B0(n36), .Y(n34) );
  AO21X1 U278 ( .A0(n34), .A1(n280), .B0(n31), .Y(n284) );
  XNOR2X1 U279 ( .A(a[1]), .B(b[5]), .Y(n193) );
  CMPR42X2 U280 ( .A(n171), .B(n164), .C(n152), .D(n130), .ICI(n131), .S(n128), 
        .ICO(n126), .CO(n127) );
  XNOR2X4 U281 ( .A(n285), .B(n1), .Y(product[14]) );
  XNOR2X4 U282 ( .A(n284), .B(n2), .Y(product[13]) );
  INVXL U283 ( .A(n46), .Y(n45) );
  OAI22X1 U284 ( .A0(n189), .A1(n227), .B0(n188), .B1(n231), .Y(n155) );
  CMPR42X2 U285 ( .A(n157), .B(n170), .C(n129), .D(n126), .ICI(n125), .S(n123), 
        .ICO(n121), .CO(n122) );
  OAI22X1 U286 ( .A0(n191), .A1(n227), .B0(n190), .B1(n231), .Y(n157) );
  OAI21X2 U287 ( .A0(n75), .A1(n73), .B0(n74), .Y(n72) );
  AOI21X2 U288 ( .A0(n80), .A1(n282), .B0(n77), .Y(n75) );
  XNOR2X2 U289 ( .A(a[1]), .B(b[1]), .Y(n211) );
  CMPR42X2 U290 ( .A(n119), .B(n149), .C(n155), .D(n162), .ICI(n116), .S(n115), 
        .ICO(n113), .CO(n114) );
  OAI22X1 U291 ( .A0(n182), .A1(n226), .B0(n181), .B1(n230), .Y(n149) );
  OAI22X1 U292 ( .A0(n188), .A1(n227), .B0(n187), .B1(n231), .Y(n111) );
  OAI22X1 U293 ( .A0(n182), .A1(n230), .B0(n183), .B1(n226), .Y(n150) );
  XNOR2X4 U294 ( .A(a[2]), .B(b[7]), .Y(n183) );
  XNOR2X4 U295 ( .A(a[4]), .B(b[7]), .Y(n181) );
  CMPR42X2 U296 ( .A(n156), .B(n150), .C(n120), .D(n124), .ICI(n121), .S(n118), 
        .ICO(n116), .CO(n117) );
  OAI22X1 U297 ( .A0(n189), .A1(n231), .B0(n190), .B1(n227), .Y(n156) );
  OAI22X1 U298 ( .A0(n191), .A1(n231), .B0(n192), .B1(n227), .Y(n158) );
  INVX1 U299 ( .A(n53), .Y(n51) );
  XOR2XL U300 ( .A(n71), .B(n9), .Y(product[6]) );
  INVXL U301 ( .A(n69), .Y(n99) );
  INVXL U302 ( .A(n279), .Y(n98) );
  NAND2X1 U303 ( .A(n133), .B(n134), .Y(n70) );
  NOR2X1 U304 ( .A(n135), .B(n138), .Y(n73) );
  OAI22XL U305 ( .A0(n186), .A1(n230), .B0(n226), .B1(n234), .Y(n142) );
  OAI22X1 U306 ( .A0(n209), .A1(n229), .B0(n208), .B1(n233), .Y(n174) );
  XNOR2XL U307 ( .A(n221), .B(b[5]), .Y(n194) );
  XNOR2XL U308 ( .A(a[5]), .B(b[7]), .Y(n180) );
  INVX1 U309 ( .A(n23), .Y(n21) );
  INVX1 U310 ( .A(n24), .Y(n22) );
  XNOR2X1 U311 ( .A(n62), .B(n7), .Y(product[8]) );
  INVXL U312 ( .A(n60), .Y(n97) );
  OAI21X2 U313 ( .A0(n279), .A1(n70), .B0(n67), .Y(n65) );
  OAI21X4 U314 ( .A0(n83), .A1(n81), .B0(n82), .Y(n80) );
  INVX1 U315 ( .A(n33), .Y(n31) );
  OAI22X2 U316 ( .A0(n185), .A1(n226), .B0(n184), .B1(n230), .Y(n152) );
  OAI22X2 U317 ( .A0(n206), .A1(n229), .B0(n205), .B1(n233), .Y(n171) );
  INVX1 U318 ( .A(n111), .Y(n112) );
  ADDFHX2 U319 ( .A(n161), .B(n174), .CI(n167), .CO(n138), .S(n139) );
  OAI22XL U320 ( .A0(n209), .A1(n233), .B0(n210), .B1(n229), .Y(n175) );
  OAI22XL U321 ( .A0(n204), .A1(n232), .B0(n228), .B1(n236), .Y(n144) );
  OAI22XL U322 ( .A0(n207), .A1(n233), .B0(n208), .B1(n229), .Y(n173) );
  XNOR2X1 U323 ( .A(a[1]), .B(b[7]), .Y(n184) );
  XNOR2X1 U324 ( .A(a[3]), .B(b[5]), .Y(n191) );
  AOI21XL U325 ( .A0(n34), .A1(n16), .B0(n17), .Y(n15) );
  OAI21X2 U326 ( .A0(n61), .A1(n55), .B0(n56), .Y(n54) );
  INVXL U327 ( .A(n61), .Y(n59) );
  NOR2X1 U328 ( .A(n141), .B(n168), .Y(n81) );
  NAND2BXL U329 ( .AN(n89), .B(n90), .Y(n14) );
  NOR2XL U330 ( .A(n177), .B(n145), .Y(n89) );
  NOR2X1 U331 ( .A(n146), .B(n105), .Y(n18) );
  NAND2XL U332 ( .A(n141), .B(n168), .Y(n82) );
  NAND2XL U333 ( .A(n135), .B(n138), .Y(n74) );
  NAND2XL U334 ( .A(n176), .B(n169), .Y(n87) );
  CMPR42X2 U335 ( .A(n153), .B(n172), .C(n165), .D(n159), .ICI(n136), .S(n133), 
        .ICO(n131), .CO(n132) );
  OAI22X1 U336 ( .A0(n193), .A1(n227), .B0(n192), .B1(n231), .Y(n159) );
  OAI22X2 U337 ( .A0(n207), .A1(n229), .B0(n206), .B1(n233), .Y(n172) );
  ADDHX1 U338 ( .A(n142), .B(n158), .CO(n129), .S(n130) );
  OAI22XL U339 ( .A0(n184), .A1(n226), .B0(n183), .B1(n230), .Y(n151) );
  AO21XL U340 ( .A0(n227), .A1(n231), .B0(n187), .Y(n154) );
  OAI22X1 U341 ( .A0(n179), .A1(n226), .B0(n178), .B1(n230), .Y(n105) );
  OAI22XL U342 ( .A0(n203), .A1(n228), .B0(n202), .B1(n232), .Y(n168) );
  OAI22XL U343 ( .A0(n198), .A1(n228), .B0(n197), .B1(n232), .Y(n163) );
  OAI22X1 U344 ( .A0(n197), .A1(n228), .B0(n196), .B1(n232), .Y(n119) );
  XNOR2XL U345 ( .A(a[5]), .B(b[3]), .Y(n198) );
  XNOR2XL U346 ( .A(a[1]), .B(b[3]), .Y(n202) );
  XNOR2XL U347 ( .A(a[2]), .B(b[3]), .Y(n201) );
  XNOR2XL U348 ( .A(a[4]), .B(b[3]), .Y(n199) );
  XNOR2XL U349 ( .A(a[3]), .B(b[3]), .Y(n200) );
  CLKINVX1 U350 ( .A(n51), .Y(n49) );
  CLKINVX1 U351 ( .A(n52), .Y(n50) );
  CLKINVX1 U352 ( .A(n63), .Y(n62) );
  CLKINVX1 U353 ( .A(n54), .Y(n52) );
  CLKINVX1 U354 ( .A(n72), .Y(n71) );
  NAND2X1 U355 ( .A(n280), .B(n283), .Y(n23) );
  AOI21X1 U356 ( .A0(n54), .A1(n37), .B0(n38), .Y(n36) );
  NAND2X1 U357 ( .A(n283), .B(n28), .Y(n2) );
  XOR2X1 U358 ( .A(n41), .B(n4), .Y(product[11]) );
  NAND2X1 U359 ( .A(n94), .B(n40), .Y(n4) );
  AOI21X1 U360 ( .A0(n42), .A1(n62), .B0(n43), .Y(n41) );
  NAND2X1 U361 ( .A(n91), .B(n19), .Y(n1) );
  CLKINVX1 U362 ( .A(n18), .Y(n91) );
  XOR2X1 U363 ( .A(n57), .B(n6), .Y(product[9]) );
  NAND2X1 U364 ( .A(n96), .B(n56), .Y(n6) );
  AOI21X1 U365 ( .A0(n62), .A1(n97), .B0(n59), .Y(n57) );
  CLKINVX1 U366 ( .A(n55), .Y(n96) );
  CLKINVX1 U367 ( .A(n79), .Y(n77) );
  CLKINVX1 U368 ( .A(n87), .Y(n85) );
  CLKINVX1 U369 ( .A(n90), .Y(n88) );
  NOR2X1 U370 ( .A(n60), .B(n55), .Y(n53) );
  XOR2X1 U371 ( .A(n48), .B(n5), .Y(product[10]) );
  NAND2X1 U372 ( .A(n45), .B(n47), .Y(n5) );
  AOI21X1 U373 ( .A0(n62), .A1(n49), .B0(n50), .Y(n48) );
  XNOR2X1 U374 ( .A(n34), .B(n3), .Y(product[12]) );
  NAND2X1 U375 ( .A(n280), .B(n33), .Y(n3) );
  NOR2X1 U376 ( .A(n23), .B(n18), .Y(n16) );
  OAI21XL U377 ( .A0(n24), .A1(n18), .B0(n19), .Y(n17) );
  NAND2X1 U378 ( .A(n97), .B(n61), .Y(n7) );
  XNOR2X1 U379 ( .A(n68), .B(n8), .Y(product[7]) );
  NAND2X1 U380 ( .A(n98), .B(n67), .Y(n8) );
  NAND2X1 U381 ( .A(n99), .B(n70), .Y(n9) );
  AOI21X1 U382 ( .A0(n31), .A1(n283), .B0(n26), .Y(n24) );
  CLKINVX1 U383 ( .A(n28), .Y(n26) );
  XOR2X1 U384 ( .A(n75), .B(n10), .Y(product[5]) );
  NAND2X1 U385 ( .A(n100), .B(n74), .Y(n10) );
  CLKINVX1 U386 ( .A(n73), .Y(n100) );
  XNOR2X1 U387 ( .A(n80), .B(n11), .Y(product[4]) );
  NAND2X1 U388 ( .A(n282), .B(n79), .Y(n11) );
  NAND2X1 U389 ( .A(n102), .B(n82), .Y(n12) );
  CLKINVX1 U390 ( .A(n81), .Y(n102) );
  XNOR2X1 U391 ( .A(n13), .B(n88), .Y(product[2]) );
  NAND2X1 U392 ( .A(n281), .B(n87), .Y(n13) );
  NAND2X1 U393 ( .A(n123), .B(n127), .Y(n61) );
  NAND2X1 U394 ( .A(n118), .B(n122), .Y(n56) );
  NAND2X1 U395 ( .A(n115), .B(n117), .Y(n47) );
  NAND2X1 U396 ( .A(n114), .B(n110), .Y(n40) );
  NAND2X1 U397 ( .A(n109), .B(n108), .Y(n33) );
  NAND2X1 U398 ( .A(n107), .B(n106), .Y(n28) );
  CLKINVX1 U399 ( .A(n105), .Y(n106) );
  NAND2X1 U400 ( .A(n146), .B(n105), .Y(n19) );
  CLKINVX1 U401 ( .A(n14), .Y(product[1]) );
  NAND2X1 U402 ( .A(n139), .B(n140), .Y(n79) );
  OAI22XL U403 ( .A0(n198), .A1(n232), .B0(n199), .B1(n228), .Y(n164) );
  CLKINVX1 U404 ( .A(b[1]), .Y(n237) );
  NAND2BX1 U405 ( .AN(n221), .B(b[1]), .Y(n213) );
  CLKINVX1 U406 ( .A(n119), .Y(n120) );
  OAI22XL U407 ( .A0(n200), .A1(n228), .B0(n199), .B1(n232), .Y(n165) );
  NOR2BX1 U408 ( .AN(n221), .B(n230), .Y(n153) );
  CLKINVX1 U409 ( .A(b[7]), .Y(n234) );
  XNOR2X1 U410 ( .A(n163), .B(n151), .Y(n125) );
  AO21X1 U411 ( .A0(n229), .A1(n233), .B0(n205), .Y(n170) );
  XNOR2X1 U412 ( .A(n221), .B(b[1]), .Y(n212) );
  AO21X1 U413 ( .A0(n228), .A1(n232), .B0(n196), .Y(n162) );
  NOR2BX1 U414 ( .AN(n221), .B(n231), .Y(n161) );
  OAI22XL U415 ( .A0(n202), .A1(n228), .B0(n201), .B1(n232), .Y(n167) );
  ADDHX1 U416 ( .A(n144), .B(n175), .CO(n140), .S(n141) );
  CLKINVX1 U417 ( .A(b[3]), .Y(n236) );
  ADDFX2 U418 ( .A(n173), .B(n160), .CI(n137), .CO(n134), .S(n135) );
  OAI22XL U419 ( .A0(n180), .A1(n230), .B0(n181), .B1(n226), .Y(n148) );
  OAI22XL U420 ( .A0(n180), .A1(n226), .B0(n179), .B1(n230), .Y(n147) );
  AO21X1 U421 ( .A0(n226), .A1(n230), .B0(n178), .Y(n146) );
  NOR2BX1 U422 ( .AN(n221), .B(n233), .Y(product[0]) );
  XNOR2X1 U423 ( .A(n221), .B(b[3]), .Y(n203) );
  NOR2BX1 U424 ( .AN(n221), .B(n232), .Y(n169) );
  CLKBUFX3 U425 ( .A(n248), .Y(n232) );
  CLKBUFX3 U426 ( .A(n247), .Y(n231) );
  CLKBUFX3 U427 ( .A(n246), .Y(n230) );
  XNOR2X1 U428 ( .A(n221), .B(b[7]), .Y(n185) );
  NAND2BX1 U429 ( .AN(n221), .B(b[3]), .Y(n204) );
  NAND2BX1 U430 ( .AN(n221), .B(b[7]), .Y(n186) );
  NAND2BX1 U431 ( .AN(n221), .B(b[5]), .Y(n195) );
  ADDHXL U432 ( .A(n143), .B(n166), .CO(n136), .S(n137) );
  OAI22XL U433 ( .A0(n200), .A1(n232), .B0(n201), .B1(n228), .Y(n166) );
  OAI22XL U434 ( .A0(n195), .A1(n231), .B0(n227), .B1(n235), .Y(n143) );
  CLKINVX1 U435 ( .A(b[5]), .Y(n235) );
  CLKBUFX3 U436 ( .A(n249), .Y(n233) );
  XNOR2X1 U437 ( .A(a[7]), .B(b[1]), .Y(n205) );
  XNOR2X1 U438 ( .A(a[4]), .B(b[5]), .Y(n190) );
  XNOR2X1 U439 ( .A(a[2]), .B(b[5]), .Y(n192) );
  XNOR2X1 U440 ( .A(a[6]), .B(b[1]), .Y(n206) );
  XNOR2X1 U441 ( .A(a[2]), .B(b[1]), .Y(n210) );
  XNOR2X1 U442 ( .A(a[3]), .B(b[7]), .Y(n182) );
  XNOR2X1 U443 ( .A(a[4]), .B(b[1]), .Y(n208) );
  XNOR2X1 U444 ( .A(a[5]), .B(b[5]), .Y(n189) );
  XNOR2X1 U445 ( .A(a[3]), .B(b[1]), .Y(n209) );
  XNOR2X1 U446 ( .A(a[5]), .B(b[1]), .Y(n207) );
  XNOR2X1 U447 ( .A(a[6]), .B(b[5]), .Y(n188) );
  XNOR2X1 U448 ( .A(a[6]), .B(b[7]), .Y(n179) );
  XNOR2X1 U449 ( .A(a[7]), .B(b[7]), .Y(n178) );
  XNOR2X1 U450 ( .A(a[7]), .B(b[5]), .Y(n187) );
  CLKBUFX3 U451 ( .A(n244), .Y(n228) );
  NAND2X1 U452 ( .A(n224), .B(n248), .Y(n244) );
  XOR2X1 U453 ( .A(b[2]), .B(b[3]), .Y(n224) );
  CLKBUFX3 U454 ( .A(n245), .Y(n229) );
  NAND2X1 U455 ( .A(n225), .B(n249), .Y(n245) );
  XOR2X1 U456 ( .A(b[0]), .B(b[1]), .Y(n225) );
  CLKBUFX3 U457 ( .A(n243), .Y(n227) );
  NAND2X1 U458 ( .A(n223), .B(n247), .Y(n243) );
  XOR2X1 U459 ( .A(b[4]), .B(b[5]), .Y(n223) );
  CLKBUFX3 U460 ( .A(n242), .Y(n226) );
  NAND2X1 U461 ( .A(n222), .B(n246), .Y(n242) );
  XOR2X1 U462 ( .A(b[6]), .B(b[7]), .Y(n222) );
  XNOR2X1 U463 ( .A(a[6]), .B(b[3]), .Y(n197) );
  XNOR2X1 U464 ( .A(a[7]), .B(b[3]), .Y(n196) );
  CLKINVX1 U465 ( .A(b[0]), .Y(n249) );
  XNOR2X1 U466 ( .A(b[2]), .B(b[1]), .Y(n248) );
  XNOR2X1 U467 ( .A(b[4]), .B(b[3]), .Y(n247) );
  XNOR2X1 U468 ( .A(b[6]), .B(b[5]), .Y(n246) );
endmodule


module PE_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n70, n72, n73, n74, n75, n76, n78,
         n80, n81, n82, n83, n85, n87, n88, n89, n90, n91, n92, n93, n94, n95,
         n96, n98, n100, n157, n158, n159, n161;

  NOR2X2 U121 ( .A(B[7]), .B(A[7]), .Y(n59) );
  NAND2X1 U122 ( .A(n88), .B(n33), .Y(n4) );
  OR2X1 U123 ( .A(B[4]), .B(A[4]), .Y(n157) );
  OR2X1 U124 ( .A(B[2]), .B(A[2]), .Y(n158) );
  OR2X1 U125 ( .A(B[0]), .B(A[0]), .Y(n159) );
  AND2X2 U126 ( .A(n159), .B(n85), .Y(SUM[0]) );
  INVX1 U127 ( .A(n32), .Y(n88) );
  NOR2X1 U128 ( .A(n42), .B(n39), .Y(n37) );
  NOR2X2 U129 ( .A(B[12]), .B(A[12]), .Y(n39) );
  OAI21XL U130 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  OAI21XL U131 ( .A0(n1), .A1(n28), .B0(n29), .Y(n27) );
  OAI21XL U132 ( .A0(n21), .A1(n1), .B0(n22), .Y(n20) );
  OAI21XL U133 ( .A0(n1), .A1(n42), .B0(n43), .Y(n41) );
  NOR2X2 U134 ( .A(B[13]), .B(A[13]), .Y(n32) );
  NOR2X2 U135 ( .A(B[14]), .B(A[14]), .Y(n25) );
  INVX1 U136 ( .A(n42), .Y(n90) );
  INVX1 U137 ( .A(n59), .Y(n94) );
  INVX1 U138 ( .A(n47), .Y(n91) );
  INVX1 U139 ( .A(n50), .Y(n92) );
  OAI21XL U140 ( .A0(n76), .A1(n74), .B0(n75), .Y(n73) );
  OAI21XL U141 ( .A0(n82), .A1(n85), .B0(n83), .Y(n81) );
  OAI21XL U142 ( .A0(n56), .A1(n54), .B0(n55), .Y(n53) );
  OAI21XL U143 ( .A0(n68), .A1(n66), .B0(n67), .Y(n65) );
  NOR2XL U144 ( .A(n59), .B(n62), .Y(n57) );
  NOR2XL U145 ( .A(n50), .B(n47), .Y(n45) );
  NOR2X1 U146 ( .A(B[8]), .B(A[8]), .Y(n54) );
  NOR2X1 U147 ( .A(B[6]), .B(A[6]), .Y(n62) );
  NOR2X1 U148 ( .A(B[5]), .B(A[5]), .Y(n66) );
  NOR2X1 U149 ( .A(B[3]), .B(A[3]), .Y(n74) );
  NOR2X1 U150 ( .A(B[1]), .B(A[1]), .Y(n82) );
  NAND2XL U151 ( .A(B[11]), .B(A[11]), .Y(n43) );
  NAND2XL U152 ( .A(B[13]), .B(A[13]), .Y(n33) );
  NAND2XL U153 ( .A(B[6]), .B(A[6]), .Y(n63) );
  NAND2XL U154 ( .A(B[9]), .B(A[9]), .Y(n51) );
  NAND2XL U155 ( .A(B[12]), .B(A[12]), .Y(n40) );
  NAND2XL U156 ( .A(B[8]), .B(A[8]), .Y(n55) );
  NAND2XL U157 ( .A(B[7]), .B(A[7]), .Y(n60) );
  NAND2XL U158 ( .A(B[10]), .B(A[10]), .Y(n48) );
  NAND2XL U159 ( .A(B[14]), .B(A[14]), .Y(n26) );
  NAND2XL U160 ( .A(B[15]), .B(A[15]), .Y(n19) );
  CLKINVX1 U161 ( .A(n53), .Y(n52) );
  CLKINVX1 U162 ( .A(n65), .Y(n64) );
  CLKINVX1 U163 ( .A(n38), .Y(n36) );
  XNOR2X1 U164 ( .A(n34), .B(n4), .Y(SUM[13]) );
  OAI21XL U165 ( .A0(n1), .A1(n35), .B0(n36), .Y(n34) );
  CLKINVX1 U166 ( .A(n37), .Y(n35) );
  XOR2X1 U167 ( .A(n1), .B(n6), .Y(SUM[11]) );
  NAND2X1 U168 ( .A(n90), .B(n43), .Y(n6) );
  XNOR2X1 U169 ( .A(n27), .B(n3), .Y(SUM[14]) );
  NAND2X1 U170 ( .A(n87), .B(n26), .Y(n3) );
  NAND2X1 U171 ( .A(n37), .B(n88), .Y(n28) );
  CLKINVX1 U172 ( .A(n25), .Y(n87) );
  XOR2X1 U173 ( .A(n52), .B(n8), .Y(SUM[9]) );
  NAND2X1 U174 ( .A(n92), .B(n51), .Y(n8) );
  XNOR2X1 U175 ( .A(n49), .B(n7), .Y(SUM[10]) );
  NAND2X1 U176 ( .A(n91), .B(n48), .Y(n7) );
  XNOR2X1 U177 ( .A(n41), .B(n5), .Y(SUM[12]) );
  NAND2X1 U178 ( .A(n89), .B(n40), .Y(n5) );
  CLKINVX1 U179 ( .A(n39), .Y(n89) );
  XNOR2X1 U180 ( .A(n20), .B(n2), .Y(SUM[15]) );
  NAND2X1 U181 ( .A(n161), .B(n19), .Y(n2) );
  NAND2X1 U182 ( .A(n23), .B(n37), .Y(n21) );
  XOR2X1 U183 ( .A(n56), .B(n9), .Y(SUM[8]) );
  NAND2X1 U184 ( .A(n93), .B(n55), .Y(n9) );
  CLKINVX1 U185 ( .A(n54), .Y(n93) );
  XNOR2X1 U186 ( .A(n61), .B(n10), .Y(SUM[7]) );
  OAI21XL U187 ( .A0(n64), .A1(n62), .B0(n63), .Y(n61) );
  NAND2X1 U188 ( .A(n94), .B(n60), .Y(n10) );
  XOR2X1 U189 ( .A(n11), .B(n64), .Y(SUM[6]) );
  NAND2X1 U190 ( .A(n95), .B(n63), .Y(n11) );
  CLKINVX1 U191 ( .A(n62), .Y(n95) );
  XOR2X1 U192 ( .A(n68), .B(n12), .Y(SUM[5]) );
  NAND2X1 U193 ( .A(n96), .B(n67), .Y(n12) );
  CLKINVX1 U194 ( .A(n66), .Y(n96) );
  XNOR2X1 U195 ( .A(n73), .B(n13), .Y(SUM[4]) );
  NAND2X1 U196 ( .A(n157), .B(n72), .Y(n13) );
  XOR2X1 U197 ( .A(n14), .B(n76), .Y(SUM[3]) );
  NAND2X1 U198 ( .A(n98), .B(n75), .Y(n14) );
  CLKINVX1 U199 ( .A(n74), .Y(n98) );
  XNOR2X1 U200 ( .A(n15), .B(n81), .Y(SUM[2]) );
  NAND2X1 U201 ( .A(n158), .B(n80), .Y(n15) );
  XOR2X1 U202 ( .A(n16), .B(n85), .Y(SUM[1]) );
  NAND2X1 U203 ( .A(n100), .B(n83), .Y(n16) );
  CLKINVX1 U204 ( .A(n82), .Y(n100) );
  OAI21X1 U205 ( .A0(n43), .A1(n39), .B0(n40), .Y(n38) );
  AOI21X1 U206 ( .A0(n73), .A1(n157), .B0(n70), .Y(n68) );
  CLKINVX1 U207 ( .A(n72), .Y(n70) );
  AOI21X1 U208 ( .A0(n57), .A1(n65), .B0(n58), .Y(n56) );
  OAI21XL U209 ( .A0(n59), .A1(n63), .B0(n60), .Y(n58) );
  AOI21X1 U210 ( .A0(n81), .A1(n158), .B0(n78), .Y(n76) );
  CLKINVX1 U211 ( .A(n80), .Y(n78) );
  AOI21X1 U212 ( .A0(n23), .A1(n38), .B0(n24), .Y(n22) );
  OAI21XL U213 ( .A0(n25), .A1(n33), .B0(n26), .Y(n24) );
  AOI21X1 U214 ( .A0(n38), .A1(n88), .B0(n31), .Y(n29) );
  CLKINVX1 U215 ( .A(n33), .Y(n31) );
  NOR2X1 U216 ( .A(n32), .B(n25), .Y(n23) );
  CLKBUFX3 U217 ( .A(n44), .Y(n1) );
  AOI21X1 U218 ( .A0(n53), .A1(n45), .B0(n46), .Y(n44) );
  OAI21XL U219 ( .A0(n47), .A1(n51), .B0(n48), .Y(n46) );
  NOR2X2 U220 ( .A(B[11]), .B(A[11]), .Y(n42) );
  NOR2X2 U221 ( .A(B[9]), .B(A[9]), .Y(n50) );
  NOR2X2 U222 ( .A(B[10]), .B(A[10]), .Y(n47) );
  OR2X1 U223 ( .A(B[15]), .B(A[15]), .Y(n161) );
  NAND2X1 U224 ( .A(B[2]), .B(A[2]), .Y(n80) );
  NAND2X1 U225 ( .A(B[4]), .B(A[4]), .Y(n72) );
  NAND2X1 U226 ( .A(B[0]), .B(A[0]), .Y(n85) );
  NAND2X1 U227 ( .A(B[3]), .B(A[3]), .Y(n75) );
  NAND2X1 U228 ( .A(B[5]), .B(A[5]), .Y(n67) );
  NAND2X1 U229 ( .A(B[1]), .B(A[1]), .Y(n83) );
endmodule


module PE_0 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0;

  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[3]  ( .D(in[3]), .CK(clock), .Q(in_prop[3]) );
  DFFQX1 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQXL \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQXL \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQXL \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQXL \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQXL \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQXL \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQXL \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  PE_0_DW_mult_tc_2 mult_196 ( .a(in), .b(mat_A_coeff), .product({N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  PE_0_DW01_add_2 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16}) );
endmodule


module PE_8_DW_mult_tc_0_DW_mult_tc_5 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244;

  ADDFXL U2 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n193), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n195), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  CLKBUFX3 U140 ( .A(n219), .Y(n190) );
  BUFX4 U141 ( .A(n210), .Y(n189) );
  ADDHX1 U142 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  OAI22X1 U143 ( .A0(n211), .A1(n212), .B0(n189), .B1(n213), .Y(n78) );
  INVX3 U144 ( .A(a[3]), .Y(n198) );
  XOR2XL U145 ( .A(b[5]), .B(n199), .Y(n207) );
  XOR2XL U146 ( .A(b[6]), .B(n199), .Y(n208) );
  OA22XL U147 ( .A0(n217), .A1(n212), .B0(n189), .B1(n241), .Y(n240) );
  AO21XL U148 ( .A0(n212), .A1(n189), .B0(n218), .Y(n72) );
  AO21XL U149 ( .A0(n221), .A1(n190), .B0(n228), .Y(n64) );
  XOR2XL U150 ( .A(b[2]), .B(n198), .Y(n214) );
  CLKINVX2 U151 ( .A(a[1]), .Y(n199) );
  XOR2XL U152 ( .A(b[3]), .B(n198), .Y(n215) );
  XOR2XL U153 ( .A(b[4]), .B(n198), .Y(n216) );
  XOR2XL U154 ( .A(b[5]), .B(n198), .Y(n217) );
  XOR2XL U155 ( .A(b[6]), .B(n198), .Y(n241) );
  XOR2XL U156 ( .A(b[7]), .B(n198), .Y(n218) );
  XOR2XL U157 ( .A(b[7]), .B(a[1]), .Y(n209) );
  CLKINVX1 U158 ( .A(n15), .Y(n193) );
  CLKINVX1 U159 ( .A(n29), .Y(n197) );
  CLKINVX1 U160 ( .A(n21), .Y(n195) );
  NAND2X2 U161 ( .A(n189), .B(n242), .Y(n212) );
  XNOR2X1 U162 ( .A(a[2]), .B(a[1]), .Y(n210) );
  CLKINVX1 U163 ( .A(n1), .Y(product[15]) );
  NAND2X2 U164 ( .A(n190), .B(n243), .Y(n221) );
  XNOR2X1 U165 ( .A(a[4]), .B(a[3]), .Y(n219) );
  NAND2X2 U166 ( .A(a[1]), .B(n200), .Y(n202) );
  INVX3 U167 ( .A(a[0]), .Y(n200) );
  INVX3 U168 ( .A(a[5]), .Y(n196) );
  NAND2X2 U169 ( .A(n191), .B(n244), .Y(n231) );
  CLKBUFX3 U170 ( .A(n229), .Y(n191) );
  XNOR2X1 U171 ( .A(a[6]), .B(a[5]), .Y(n229) );
  INVX3 U172 ( .A(a[7]), .Y(n194) );
  CLKINVX1 U173 ( .A(b[0]), .Y(n201) );
  NOR2X1 U174 ( .A(n200), .B(n201), .Y(product[0]) );
  OAI22XL U175 ( .A0(b[0]), .A1(n202), .B0(n203), .B1(n200), .Y(n87) );
  OAI22XL U176 ( .A0(n203), .A1(n202), .B0(n204), .B1(n200), .Y(n86) );
  XOR2X1 U177 ( .A(b[1]), .B(n199), .Y(n203) );
  OAI22XL U178 ( .A0(n204), .A1(n202), .B0(n205), .B1(n200), .Y(n85) );
  XOR2X1 U179 ( .A(b[2]), .B(n199), .Y(n204) );
  OAI22XL U180 ( .A0(n205), .A1(n202), .B0(n206), .B1(n200), .Y(n84) );
  XOR2X1 U181 ( .A(b[3]), .B(n199), .Y(n205) );
  OAI22XL U182 ( .A0(n206), .A1(n202), .B0(n207), .B1(n200), .Y(n83) );
  XOR2X1 U183 ( .A(b[4]), .B(n199), .Y(n206) );
  OAI22XL U184 ( .A0(n207), .A1(n202), .B0(n208), .B1(n200), .Y(n82) );
  OAI2BB2XL U185 ( .B0(n208), .B1(n202), .A0N(n209), .A1N(a[0]), .Y(n81) );
  NOR2X1 U186 ( .A(n189), .B(n201), .Y(n79) );
  XOR2X1 U187 ( .A(n198), .B(b[0]), .Y(n211) );
  OAI22XL U188 ( .A0(n213), .A1(n212), .B0(n189), .B1(n214), .Y(n77) );
  XOR2X1 U189 ( .A(b[1]), .B(n198), .Y(n213) );
  OAI22XL U190 ( .A0(n214), .A1(n212), .B0(n189), .B1(n215), .Y(n76) );
  OAI22XL U191 ( .A0(n215), .A1(n212), .B0(n189), .B1(n216), .Y(n75) );
  OAI22XL U192 ( .A0(n216), .A1(n212), .B0(n189), .B1(n217), .Y(n74) );
  NOR2X1 U193 ( .A(n190), .B(n201), .Y(n71) );
  OAI22XL U194 ( .A0(n220), .A1(n221), .B0(n190), .B1(n222), .Y(n70) );
  XOR2X1 U195 ( .A(n196), .B(b[0]), .Y(n220) );
  OAI22XL U196 ( .A0(n222), .A1(n221), .B0(n190), .B1(n223), .Y(n69) );
  XOR2X1 U197 ( .A(b[1]), .B(n196), .Y(n222) );
  OAI22XL U198 ( .A0(n223), .A1(n221), .B0(n190), .B1(n224), .Y(n68) );
  XOR2X1 U199 ( .A(b[2]), .B(n196), .Y(n223) );
  OAI22XL U200 ( .A0(n224), .A1(n221), .B0(n190), .B1(n225), .Y(n67) );
  XOR2X1 U201 ( .A(b[3]), .B(n196), .Y(n224) );
  OAI22XL U202 ( .A0(n225), .A1(n221), .B0(n190), .B1(n226), .Y(n66) );
  XOR2X1 U203 ( .A(b[4]), .B(n196), .Y(n225) );
  OAI22XL U204 ( .A0(n226), .A1(n221), .B0(n190), .B1(n227), .Y(n65) );
  XOR2X1 U205 ( .A(b[5]), .B(n196), .Y(n226) );
  NOR2X1 U206 ( .A(n191), .B(n201), .Y(n63) );
  OAI22XL U207 ( .A0(n230), .A1(n231), .B0(n191), .B1(n232), .Y(n62) );
  XOR2X1 U208 ( .A(n194), .B(b[0]), .Y(n230) );
  OAI22XL U209 ( .A0(n232), .A1(n231), .B0(n191), .B1(n233), .Y(n61) );
  XOR2X1 U210 ( .A(b[1]), .B(n194), .Y(n232) );
  OAI22XL U211 ( .A0(n233), .A1(n231), .B0(n191), .B1(n234), .Y(n60) );
  XOR2X1 U212 ( .A(b[2]), .B(n194), .Y(n233) );
  OAI22XL U213 ( .A0(n234), .A1(n231), .B0(n191), .B1(n235), .Y(n59) );
  XOR2X1 U214 ( .A(b[3]), .B(n194), .Y(n234) );
  OAI22XL U215 ( .A0(n235), .A1(n231), .B0(n191), .B1(n236), .Y(n58) );
  XOR2X1 U216 ( .A(b[4]), .B(n194), .Y(n235) );
  OAI22XL U217 ( .A0(n236), .A1(n231), .B0(n191), .B1(n237), .Y(n57) );
  XOR2X1 U218 ( .A(b[5]), .B(n194), .Y(n236) );
  AO21X1 U219 ( .A0(n231), .A1(n191), .B0(n238), .Y(n56) );
  OAI21XL U220 ( .A0(b[0]), .A1(n199), .B0(n202), .Y(n55) );
  OAI32X1 U221 ( .A0(n198), .A1(b[0]), .A2(n189), .B0(n198), .B1(n212), .Y(n54) );
  OAI32X1 U222 ( .A0(n196), .A1(b[0]), .A2(n190), .B0(n196), .B1(n221), .Y(n53) );
  OAI32X1 U223 ( .A0(n194), .A1(b[0]), .A2(n191), .B0(n194), .B1(n231), .Y(n52) );
  XOR2X1 U224 ( .A(n239), .B(n240), .Y(n35) );
  NAND2BX1 U225 ( .AN(n239), .B(n240), .Y(n34) );
  OAI2BB1X1 U226 ( .A0N(n200), .A1N(n202), .B0(n209), .Y(n239) );
  OAI22XL U227 ( .A0(n189), .A1(n218), .B0(n241), .B1(n212), .Y(n29) );
  XOR2X1 U228 ( .A(a[3]), .B(a[2]), .Y(n242) );
  OAI22XL U229 ( .A0(n190), .A1(n228), .B0(n227), .B1(n221), .Y(n21) );
  XOR2X1 U230 ( .A(a[5]), .B(a[4]), .Y(n243) );
  XOR2X1 U231 ( .A(b[6]), .B(n196), .Y(n227) );
  XOR2X1 U232 ( .A(b[7]), .B(n196), .Y(n228) );
  OAI22XL U233 ( .A0(n191), .A1(n238), .B0(n237), .B1(n231), .Y(n15) );
  XOR2X1 U234 ( .A(a[7]), .B(a[6]), .Y(n244) );
  XOR2X1 U235 ( .A(b[6]), .B(n194), .Y(n237) );
  XOR2X1 U236 ( .A(b[7]), .B(n194), .Y(n238) );
endmodule


module PE_8_DW01_add_0_DW01_add_5 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  XOR3X1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Y(SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module PE_8 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0, n1;

  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQX1 \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQX1 \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[3]  ( .D(in[3]), .CK(clock), .Q(in_prop[3]) );
  DFFQX2 \in_prop_reg[1]  ( .D(n1), .CK(clock), .Q(in_prop[1]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQXL \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQX1 \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  CLKBUFX3 U3 ( .A(in[1]), .Y(n1) );
  PE_8_DW_mult_tc_0_DW_mult_tc_5 mult_196 ( .a({in[7:2], n1, in[0]}), .b(
        mat_A_coeff), .product({N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4, N3, N2, N1, N0}) );
  PE_8_DW01_add_0_DW01_add_5 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module PE_7_DW_mult_tc_0_DW_mult_tc_3 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244;

  ADDFXL U2 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n193), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U4 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U6 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U9 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U12 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n195), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  INVX3 U140 ( .A(a[3]), .Y(n198) );
  CLKBUFX3 U141 ( .A(n219), .Y(n190) );
  ADDHXL U142 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  ADDHX1 U143 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  XOR2X1 U144 ( .A(b[2]), .B(n198), .Y(n214) );
  OAI22X1 U145 ( .A0(n211), .A1(n212), .B0(n189), .B1(n213), .Y(n78) );
  BUFX4 U146 ( .A(n210), .Y(n189) );
  XOR2XL U147 ( .A(b[3]), .B(n198), .Y(n215) );
  XOR2XL U148 ( .A(b[4]), .B(n198), .Y(n216) );
  XOR2XL U149 ( .A(b[5]), .B(n198), .Y(n217) );
  XOR2XL U150 ( .A(b[6]), .B(n198), .Y(n241) );
  XOR2XL U151 ( .A(b[7]), .B(n198), .Y(n218) );
  OA22XL U152 ( .A0(n217), .A1(n212), .B0(n189), .B1(n241), .Y(n240) );
  AO21XL U153 ( .A0(n212), .A1(n189), .B0(n218), .Y(n72) );
  AO21XL U154 ( .A0(n221), .A1(n190), .B0(n228), .Y(n64) );
  CLKINVX2 U155 ( .A(a[1]), .Y(n199) );
  XOR2XL U156 ( .A(b[7]), .B(a[1]), .Y(n209) );
  CLKINVX1 U157 ( .A(n15), .Y(n193) );
  CLKINVX1 U158 ( .A(n29), .Y(n197) );
  CLKINVX1 U159 ( .A(n21), .Y(n195) );
  NAND2X2 U160 ( .A(n189), .B(n242), .Y(n212) );
  XNOR2X1 U161 ( .A(a[2]), .B(a[1]), .Y(n210) );
  CLKINVX1 U162 ( .A(n1), .Y(product[15]) );
  NAND2X2 U163 ( .A(n190), .B(n243), .Y(n221) );
  XNOR2X1 U164 ( .A(a[4]), .B(a[3]), .Y(n219) );
  NAND2X2 U165 ( .A(a[1]), .B(n200), .Y(n202) );
  INVX3 U166 ( .A(a[0]), .Y(n200) );
  INVX3 U167 ( .A(a[5]), .Y(n196) );
  CLKBUFX3 U168 ( .A(n229), .Y(n191) );
  XNOR2X1 U169 ( .A(a[6]), .B(a[5]), .Y(n229) );
  NAND2X2 U170 ( .A(n191), .B(n244), .Y(n231) );
  INVX3 U171 ( .A(a[7]), .Y(n194) );
  CLKINVX1 U172 ( .A(b[0]), .Y(n201) );
  NOR2X1 U173 ( .A(n200), .B(n201), .Y(product[0]) );
  OAI22XL U174 ( .A0(b[0]), .A1(n202), .B0(n203), .B1(n200), .Y(n87) );
  OAI22XL U175 ( .A0(n203), .A1(n202), .B0(n204), .B1(n200), .Y(n86) );
  XOR2X1 U176 ( .A(b[1]), .B(n199), .Y(n203) );
  OAI22XL U177 ( .A0(n204), .A1(n202), .B0(n205), .B1(n200), .Y(n85) );
  XOR2X1 U178 ( .A(b[2]), .B(n199), .Y(n204) );
  OAI22XL U179 ( .A0(n205), .A1(n202), .B0(n206), .B1(n200), .Y(n84) );
  XOR2X1 U180 ( .A(b[3]), .B(n199), .Y(n205) );
  OAI22XL U181 ( .A0(n206), .A1(n202), .B0(n207), .B1(n200), .Y(n83) );
  XOR2X1 U182 ( .A(b[4]), .B(n199), .Y(n206) );
  OAI22XL U183 ( .A0(n207), .A1(n202), .B0(n208), .B1(n200), .Y(n82) );
  XOR2X1 U184 ( .A(b[5]), .B(n199), .Y(n207) );
  OAI2BB2XL U185 ( .B0(n208), .B1(n202), .A0N(n209), .A1N(a[0]), .Y(n81) );
  XOR2X1 U186 ( .A(b[6]), .B(n199), .Y(n208) );
  NOR2X1 U187 ( .A(n189), .B(n201), .Y(n79) );
  XOR2X1 U188 ( .A(n198), .B(b[0]), .Y(n211) );
  OAI22XL U189 ( .A0(n213), .A1(n212), .B0(n189), .B1(n214), .Y(n77) );
  XOR2X1 U190 ( .A(b[1]), .B(n198), .Y(n213) );
  OAI22XL U191 ( .A0(n214), .A1(n212), .B0(n189), .B1(n215), .Y(n76) );
  OAI22XL U192 ( .A0(n215), .A1(n212), .B0(n189), .B1(n216), .Y(n75) );
  OAI22XL U193 ( .A0(n216), .A1(n212), .B0(n189), .B1(n217), .Y(n74) );
  NOR2X1 U194 ( .A(n190), .B(n201), .Y(n71) );
  OAI22XL U195 ( .A0(n220), .A1(n221), .B0(n190), .B1(n222), .Y(n70) );
  XOR2X1 U196 ( .A(n196), .B(b[0]), .Y(n220) );
  OAI22XL U197 ( .A0(n222), .A1(n221), .B0(n190), .B1(n223), .Y(n69) );
  XOR2X1 U198 ( .A(b[1]), .B(n196), .Y(n222) );
  OAI22XL U199 ( .A0(n223), .A1(n221), .B0(n190), .B1(n224), .Y(n68) );
  XOR2X1 U200 ( .A(b[2]), .B(n196), .Y(n223) );
  OAI22XL U201 ( .A0(n224), .A1(n221), .B0(n190), .B1(n225), .Y(n67) );
  XOR2X1 U202 ( .A(b[3]), .B(n196), .Y(n224) );
  OAI22XL U203 ( .A0(n225), .A1(n221), .B0(n190), .B1(n226), .Y(n66) );
  XOR2X1 U204 ( .A(b[4]), .B(n196), .Y(n225) );
  OAI22XL U205 ( .A0(n226), .A1(n221), .B0(n190), .B1(n227), .Y(n65) );
  XOR2X1 U206 ( .A(b[5]), .B(n196), .Y(n226) );
  NOR2X1 U207 ( .A(n191), .B(n201), .Y(n63) );
  OAI22XL U208 ( .A0(n230), .A1(n231), .B0(n191), .B1(n232), .Y(n62) );
  XOR2X1 U209 ( .A(n194), .B(b[0]), .Y(n230) );
  OAI22XL U210 ( .A0(n232), .A1(n231), .B0(n191), .B1(n233), .Y(n61) );
  XOR2X1 U211 ( .A(b[1]), .B(n194), .Y(n232) );
  OAI22XL U212 ( .A0(n233), .A1(n231), .B0(n191), .B1(n234), .Y(n60) );
  XOR2X1 U213 ( .A(b[2]), .B(n194), .Y(n233) );
  OAI22XL U214 ( .A0(n234), .A1(n231), .B0(n191), .B1(n235), .Y(n59) );
  XOR2X1 U215 ( .A(b[3]), .B(n194), .Y(n234) );
  OAI22XL U216 ( .A0(n235), .A1(n231), .B0(n191), .B1(n236), .Y(n58) );
  XOR2X1 U217 ( .A(b[4]), .B(n194), .Y(n235) );
  OAI22XL U218 ( .A0(n236), .A1(n231), .B0(n191), .B1(n237), .Y(n57) );
  XOR2X1 U219 ( .A(b[5]), .B(n194), .Y(n236) );
  AO21X1 U220 ( .A0(n231), .A1(n191), .B0(n238), .Y(n56) );
  OAI21XL U221 ( .A0(b[0]), .A1(n199), .B0(n202), .Y(n55) );
  OAI32X1 U222 ( .A0(n198), .A1(b[0]), .A2(n189), .B0(n198), .B1(n212), .Y(n54) );
  OAI32X1 U223 ( .A0(n196), .A1(b[0]), .A2(n190), .B0(n196), .B1(n221), .Y(n53) );
  OAI32X1 U224 ( .A0(n194), .A1(b[0]), .A2(n191), .B0(n194), .B1(n231), .Y(n52) );
  XOR2X1 U225 ( .A(n239), .B(n240), .Y(n35) );
  NAND2BX1 U226 ( .AN(n239), .B(n240), .Y(n34) );
  OAI2BB1X1 U227 ( .A0N(n200), .A1N(n202), .B0(n209), .Y(n239) );
  OAI22XL U228 ( .A0(n189), .A1(n218), .B0(n241), .B1(n212), .Y(n29) );
  XOR2X1 U229 ( .A(a[3]), .B(a[2]), .Y(n242) );
  OAI22XL U230 ( .A0(n190), .A1(n228), .B0(n227), .B1(n221), .Y(n21) );
  XOR2X1 U231 ( .A(a[5]), .B(a[4]), .Y(n243) );
  XOR2X1 U232 ( .A(b[6]), .B(n196), .Y(n227) );
  XOR2X1 U233 ( .A(b[7]), .B(n196), .Y(n228) );
  OAI22XL U234 ( .A0(n191), .A1(n238), .B0(n237), .B1(n231), .Y(n15) );
  XOR2X1 U235 ( .A(a[7]), .B(a[6]), .Y(n244) );
  XOR2X1 U236 ( .A(b[6]), .B(n194), .Y(n237) );
  XOR2X1 U237 ( .A(b[7]), .B(n194), .Y(n238) );
endmodule


module PE_7_DW01_add_0_DW01_add_3 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  XOR3X1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Y(SUM[15]) );
  ADDFXL U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module PE_7 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0;

  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQX1 \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQX1 \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQXL \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQXL \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[3]  ( .D(in[3]), .CK(clock), .Q(in_prop[3]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  PE_7_DW_mult_tc_0_DW_mult_tc_3 mult_196 ( .a(in), .b(mat_A_coeff), .product(
        {N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  PE_7_DW01_add_0_DW01_add_3 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module PE_6_DW_mult_tc_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n26, n28, n31, n33, n34, n35, n36,
         n37, n38, n39, n40, n42, n43, n44, n45, n46, n47, n51, n52, n53, n54,
         n55, n56, n59, n61, n62, n63, n64, n65, n66, n67, n69, n70, n71, n72,
         n73, n74, n75, n77, n79, n80, n81, n82, n83, n85, n87, n89, n90, n91,
         n94, n96, n98, n99, n100, n102, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n236, n237, n242, n243,
         n244, n245, n246, n247, n248, n249, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309;
  assign product[15] = n15;

  OAI22X2 U244 ( .A0(n207), .A1(n233), .B0(n208), .B1(n229), .Y(n173) );
  XNOR2X4 U245 ( .A(a[5]), .B(b[1]), .Y(n207) );
  XNOR2X2 U246 ( .A(n34), .B(n3), .Y(product[12]) );
  OAI22X2 U247 ( .A0(n206), .A1(n229), .B0(n205), .B1(n233), .Y(n171) );
  XNOR2X4 U248 ( .A(a[6]), .B(b[1]), .Y(n206) );
  XNOR2X4 U249 ( .A(a[3]), .B(b[5]), .Y(n191) );
  OAI22X4 U250 ( .A0(n193), .A1(n227), .B0(n192), .B1(n231), .Y(n159) );
  XNOR2X2 U251 ( .A(a[1]), .B(b[5]), .Y(n193) );
  NOR2X2 U252 ( .A(n115), .B(n117), .Y(n46) );
  OAI21X2 U253 ( .A0(n52), .A1(n44), .B0(n47), .Y(n43) );
  INVX1 U254 ( .A(n54), .Y(n52) );
  CLKINVX2 U255 ( .A(n45), .Y(n44) );
  XNOR2X4 U256 ( .A(n305), .B(n6), .Y(product[9]) );
  NOR2BX1 U257 ( .AN(n221), .B(n232), .Y(n169) );
  BUFX16 U258 ( .A(a[0]), .Y(n221) );
  OAI22X4 U259 ( .A0(n191), .A1(n231), .B0(n192), .B1(n227), .Y(n158) );
  XNOR2X2 U260 ( .A(a[2]), .B(b[5]), .Y(n192) );
  XNOR2X2 U261 ( .A(n13), .B(n288), .Y(product[2]) );
  OR2X4 U262 ( .A(n176), .B(n169), .Y(n280) );
  NOR2X4 U263 ( .A(n290), .B(n65), .Y(n63) );
  CLKAND2X4 U264 ( .A(n64), .B(n72), .Y(n290) );
  OAI22X4 U265 ( .A0(n207), .A1(n229), .B0(n206), .B1(n233), .Y(n172) );
  OAI22X2 U266 ( .A0(n209), .A1(n233), .B0(n210), .B1(n229), .Y(n175) );
  OR2X8 U267 ( .A(n209), .B(n229), .Y(n296) );
  XNOR2X4 U268 ( .A(a[3]), .B(b[1]), .Y(n209) );
  NAND2X2 U269 ( .A(n302), .B(n303), .Y(n188) );
  OAI22X2 U270 ( .A0(n188), .A1(n227), .B0(n187), .B1(n231), .Y(n111) );
  NAND2X2 U271 ( .A(n115), .B(n117), .Y(n47) );
  NAND2X4 U272 ( .A(n292), .B(n293), .Y(n177) );
  XNOR2X1 U273 ( .A(a[4]), .B(b[1]), .Y(n208) );
  XNOR2X2 U274 ( .A(a[2]), .B(b[1]), .Y(n210) );
  XNOR2X2 U275 ( .A(a[1]), .B(b[1]), .Y(n211) );
  CLKINVX1 U276 ( .A(n111), .Y(n112) );
  OR2X1 U277 ( .A(n71), .B(n69), .Y(n309) );
  BUFX4 U278 ( .A(n61), .Y(n282) );
  NOR2X4 U279 ( .A(n114), .B(n110), .Y(n39) );
  OAI22X1 U280 ( .A0(n213), .A1(n233), .B0(n229), .B1(n237), .Y(n145) );
  NOR2X4 U281 ( .A(n295), .B(n85), .Y(n83) );
  NOR2X2 U282 ( .A(n294), .B(n90), .Y(n295) );
  CLKINVX1 U283 ( .A(n280), .Y(n294) );
  NOR2X1 U284 ( .A(n46), .B(n39), .Y(n37) );
  OR2X2 U285 ( .A(n66), .B(n70), .Y(n291) );
  XOR2X1 U286 ( .A(n71), .B(n9), .Y(product[6]) );
  NAND2X1 U287 ( .A(n100), .B(n74), .Y(n10) );
  CLKINVX1 U288 ( .A(n73), .Y(n100) );
  NOR2X4 U289 ( .A(n118), .B(n122), .Y(n55) );
  INVX3 U290 ( .A(n63), .Y(n62) );
  NAND2X1 U291 ( .A(n118), .B(n122), .Y(n56) );
  OR2X1 U292 ( .A(n109), .B(n108), .Y(n279) );
  OR2X1 U293 ( .A(n107), .B(n106), .Y(n281) );
  NAND2X2 U294 ( .A(n286), .B(n56), .Y(n54) );
  NAND2X1 U295 ( .A(n53), .B(n37), .Y(n35) );
  NOR2X2 U296 ( .A(n283), .B(n55), .Y(n53) );
  NOR2X1 U297 ( .A(n51), .B(n44), .Y(n42) );
  INVX2 U298 ( .A(a[6]), .Y(n300) );
  OAI21X4 U299 ( .A0(n83), .A1(n81), .B0(n82), .Y(n80) );
  NAND2X1 U300 ( .A(n141), .B(n168), .Y(n82) );
  NAND2X2 U301 ( .A(n135), .B(n138), .Y(n74) );
  CMPR42X2 U302 ( .A(n153), .B(n172), .C(n165), .D(n159), .ICI(n136), .S(n133), 
        .ICO(n131), .CO(n132) );
  OAI22X1 U303 ( .A0(n200), .A1(n228), .B0(n199), .B1(n232), .Y(n165) );
  AOI21X2 U304 ( .A0(n54), .A1(n37), .B0(n38), .Y(n36) );
  OAI21X4 U305 ( .A0(n75), .A1(n73), .B0(n74), .Y(n72) );
  NOR2X2 U306 ( .A(n135), .B(n138), .Y(n73) );
  NAND2X1 U307 ( .A(n98), .B(n67), .Y(n8) );
  AO21X2 U308 ( .A0(n229), .A1(n233), .B0(n205), .Y(n170) );
  XNOR2X4 U309 ( .A(a[7]), .B(b[1]), .Y(n205) );
  OR2X8 U310 ( .A(n212), .B(n229), .Y(n292) );
  XNOR2X4 U311 ( .A(n221), .B(b[1]), .Y(n212) );
  OAI22X4 U312 ( .A0(n191), .A1(n227), .B0(n190), .B1(n231), .Y(n157) );
  OAI22X2 U313 ( .A0(n189), .A1(n227), .B0(n188), .B1(n231), .Y(n155) );
  XNOR2X2 U314 ( .A(a[5]), .B(b[5]), .Y(n189) );
  XNOR2X4 U315 ( .A(n307), .B(n5), .Y(product[10]) );
  AO21X4 U316 ( .A0(n62), .A1(n53), .B0(n54), .Y(n307) );
  INVX3 U317 ( .A(n304), .Y(n283) );
  OR2X2 U318 ( .A(n123), .B(n127), .Y(n304) );
  OR2X6 U319 ( .A(n139), .B(n140), .Y(n284) );
  OR2X1 U320 ( .A(n39), .B(n47), .Y(n285) );
  NAND2X1 U321 ( .A(n285), .B(n40), .Y(n38) );
  OAI22X4 U322 ( .A0(n211), .A1(n229), .B0(n210), .B1(n233), .Y(n176) );
  CLKAND2X6 U323 ( .A(n309), .B(n70), .Y(n289) );
  OR2X4 U324 ( .A(n282), .B(n55), .Y(n286) );
  XOR2X4 U325 ( .A(n287), .B(n4), .Y(product[11]) );
  AOI21X1 U326 ( .A0(n42), .A1(n62), .B0(n43), .Y(n287) );
  CMPR42X2 U327 ( .A(n156), .B(n150), .C(n120), .D(n124), .ICI(n121), .S(n118), 
        .ICO(n116), .CO(n117) );
  XNOR2X4 U328 ( .A(n306), .B(n2), .Y(product[13]) );
  AND2XL U329 ( .A(n177), .B(n145), .Y(n288) );
  XOR2X4 U330 ( .A(n289), .B(n8), .Y(product[7]) );
  NOR2X1 U331 ( .A(n66), .B(n69), .Y(n64) );
  NAND2X1 U332 ( .A(n291), .B(n67), .Y(n65) );
  NOR2X1 U333 ( .A(n35), .B(n63), .Y(n298) );
  OAI22X4 U334 ( .A0(n194), .A1(n227), .B0(n193), .B1(n231), .Y(n160) );
  CLKINVX1 U335 ( .A(n81), .Y(n102) );
  AO21XL U336 ( .A0(n62), .A1(n304), .B0(n59), .Y(n305) );
  NOR2X4 U337 ( .A(n128), .B(n132), .Y(n66) );
  XOR2X1 U338 ( .A(n12), .B(n83), .Y(product[3]) );
  NAND2X2 U339 ( .A(n128), .B(n132), .Y(n67) );
  AOI21X4 U340 ( .A0(n80), .A1(n284), .B0(n77), .Y(n75) );
  OR2X1 U341 ( .A(n211), .B(n233), .Y(n293) );
  NAND2X2 U342 ( .A(n177), .B(n145), .Y(n90) );
  XNOR2X2 U343 ( .A(a[4]), .B(b[5]), .Y(n190) );
  INVX1 U344 ( .A(n53), .Y(n51) );
  OR2X4 U345 ( .A(n298), .B(n299), .Y(n34) );
  INVX1 U346 ( .A(n36), .Y(n299) );
  AO21X4 U347 ( .A0(n34), .A1(n279), .B0(n31), .Y(n306) );
  AOI21XL U348 ( .A0(n34), .A1(n16), .B0(n17), .Y(n15) );
  OR2XL U349 ( .A(n208), .B(n233), .Y(n297) );
  NAND2X1 U350 ( .A(n296), .B(n297), .Y(n174) );
  ADDFHX2 U351 ( .A(n161), .B(n174), .CI(n167), .CO(n138), .S(n139) );
  XNOR2X4 U352 ( .A(n308), .B(n1), .Y(product[14]) );
  ADDHX1 U353 ( .A(n142), .B(n158), .CO(n129), .S(n130) );
  AO21X4 U354 ( .A0(n34), .A1(n21), .B0(n22), .Y(n308) );
  NAND2X1 U355 ( .A(a[6]), .B(b[5]), .Y(n302) );
  NAND2X2 U356 ( .A(n300), .B(n301), .Y(n303) );
  INVXL U357 ( .A(b[5]), .Y(n301) );
  INVXL U358 ( .A(n66), .Y(n98) );
  NAND2BXL U359 ( .AN(n89), .B(n90), .Y(n14) );
  NOR2XL U360 ( .A(n177), .B(n145), .Y(n89) );
  XNOR2X1 U361 ( .A(a[7]), .B(b[5]), .Y(n187) );
  CMPR42X2 U362 ( .A(n157), .B(n170), .C(n129), .D(n126), .ICI(n125), .S(n123), 
        .ICO(n121), .CO(n122) );
  CMPR42X2 U363 ( .A(n171), .B(n164), .C(n152), .D(n130), .ICI(n131), .S(n128), 
        .ICO(n126), .CO(n127) );
  OAI22X1 U364 ( .A0(n189), .A1(n231), .B0(n190), .B1(n227), .Y(n156) );
  NOR2XL U365 ( .A(n23), .B(n18), .Y(n16) );
  INVXL U366 ( .A(n282), .Y(n59) );
  INVX1 U367 ( .A(n28), .Y(n26) );
  NOR2X1 U368 ( .A(n146), .B(n105), .Y(n18) );
  NAND2XL U369 ( .A(n176), .B(n169), .Y(n87) );
  NAND2XL U370 ( .A(n139), .B(n140), .Y(n79) );
  NOR2BXL U371 ( .AN(n221), .B(n230), .Y(n153) );
  CMPR42X2 U372 ( .A(n119), .B(n149), .C(n155), .D(n162), .ICI(n116), .S(n115), 
        .ICO(n113), .CO(n114) );
  AO21XL U373 ( .A0(n228), .A1(n232), .B0(n196), .Y(n162) );
  ADDFXL U374 ( .A(n111), .B(n147), .CI(n154), .CO(n107), .S(n108) );
  OAI22X1 U375 ( .A0(n180), .A1(n226), .B0(n179), .B1(n230), .Y(n147) );
  OAI22XL U376 ( .A0(n203), .A1(n228), .B0(n202), .B1(n232), .Y(n168) );
  XNOR2XL U377 ( .A(n221), .B(b[3]), .Y(n203) );
  NAND2BXL U378 ( .AN(n221), .B(b[1]), .Y(n213) );
  OAI22XL U379 ( .A0(n198), .A1(n228), .B0(n197), .B1(n232), .Y(n163) );
  OAI22XL U380 ( .A0(n184), .A1(n226), .B0(n183), .B1(n230), .Y(n151) );
  OAI22X1 U381 ( .A0(n179), .A1(n226), .B0(n178), .B1(n230), .Y(n105) );
  NOR2BXL U382 ( .AN(n221), .B(n233), .Y(product[0]) );
  OAI22X1 U383 ( .A0(n197), .A1(n228), .B0(n196), .B1(n232), .Y(n119) );
  XNOR2XL U384 ( .A(n221), .B(b[7]), .Y(n185) );
  NAND2BXL U385 ( .AN(n221), .B(b[3]), .Y(n204) );
  NAND2BXL U386 ( .AN(n221), .B(b[7]), .Y(n186) );
  NAND2BXL U387 ( .AN(n221), .B(b[5]), .Y(n195) );
  XNOR2XL U388 ( .A(a[5]), .B(b[3]), .Y(n198) );
  XNOR2XL U389 ( .A(a[1]), .B(b[7]), .Y(n184) );
  XNOR2XL U390 ( .A(a[1]), .B(b[3]), .Y(n202) );
  XNOR2XL U391 ( .A(a[2]), .B(b[7]), .Y(n183) );
  XNOR2XL U392 ( .A(a[2]), .B(b[3]), .Y(n201) );
  XNOR2XL U393 ( .A(a[4]), .B(b[3]), .Y(n199) );
  XNOR2XL U394 ( .A(a[3]), .B(b[3]), .Y(n200) );
  XNOR2XL U395 ( .A(a[4]), .B(b[7]), .Y(n181) );
  XNOR2XL U396 ( .A(a[5]), .B(b[7]), .Y(n180) );
  XNOR2XL U397 ( .A(a[3]), .B(b[7]), .Y(n182) );
  INVX3 U398 ( .A(n72), .Y(n71) );
  NOR2X4 U399 ( .A(n133), .B(n134), .Y(n69) );
  NAND2X2 U400 ( .A(n133), .B(n134), .Y(n70) );
  CLKINVX1 U401 ( .A(n23), .Y(n21) );
  NAND2X1 U402 ( .A(n279), .B(n281), .Y(n23) );
  CLKINVX1 U403 ( .A(n24), .Y(n22) );
  CLKINVX1 U404 ( .A(n79), .Y(n77) );
  CLKINVX1 U405 ( .A(n87), .Y(n85) );
  NAND2X1 U406 ( .A(n45), .B(n47), .Y(n5) );
  NAND2X1 U407 ( .A(n96), .B(n56), .Y(n6) );
  CLKINVX1 U408 ( .A(n55), .Y(n96) );
  NAND2X1 U409 ( .A(n279), .B(n33), .Y(n3) );
  NAND2X1 U410 ( .A(n281), .B(n28), .Y(n2) );
  NAND2X1 U411 ( .A(n94), .B(n40), .Y(n4) );
  CLKINVX1 U412 ( .A(n39), .Y(n94) );
  XNOR2X1 U413 ( .A(n62), .B(n7), .Y(product[8]) );
  NAND2X1 U414 ( .A(n304), .B(n282), .Y(n7) );
  NAND2X1 U415 ( .A(n99), .B(n70), .Y(n9) );
  CLKINVX1 U416 ( .A(n69), .Y(n99) );
  NAND2X1 U417 ( .A(n91), .B(n19), .Y(n1) );
  CLKINVX1 U418 ( .A(n18), .Y(n91) );
  NAND2X1 U419 ( .A(n280), .B(n87), .Y(n13) );
  XNOR2X1 U420 ( .A(n80), .B(n11), .Y(product[4]) );
  NAND2X1 U421 ( .A(n284), .B(n79), .Y(n11) );
  NAND2X1 U422 ( .A(n102), .B(n82), .Y(n12) );
  XOR2X1 U423 ( .A(n75), .B(n10), .Y(product[5]) );
  CLKINVX1 U424 ( .A(n46), .Y(n45) );
  OAI21XL U425 ( .A0(n24), .A1(n18), .B0(n19), .Y(n17) );
  AOI21X1 U426 ( .A0(n31), .A1(n281), .B0(n26), .Y(n24) );
  CLKINVX1 U427 ( .A(n33), .Y(n31) );
  NAND2X1 U428 ( .A(n123), .B(n127), .Y(n61) );
  NOR2X2 U429 ( .A(n141), .B(n168), .Y(n81) );
  CLKINVX1 U430 ( .A(n14), .Y(product[1]) );
  NAND2X1 U431 ( .A(n114), .B(n110), .Y(n40) );
  NAND2X1 U432 ( .A(n107), .B(n106), .Y(n28) );
  NAND2X1 U433 ( .A(n146), .B(n105), .Y(n19) );
  NAND2X1 U434 ( .A(n109), .B(n108), .Y(n33) );
  CLKINVX1 U435 ( .A(n105), .Y(n106) );
  OAI22XL U436 ( .A0(n185), .A1(n226), .B0(n184), .B1(n230), .Y(n152) );
  OAI22XL U437 ( .A0(n198), .A1(n232), .B0(n199), .B1(n228), .Y(n164) );
  OAI22XL U438 ( .A0(n186), .A1(n230), .B0(n226), .B1(n234), .Y(n142) );
  CLKINVX1 U439 ( .A(b[7]), .Y(n234) );
  OR2X1 U440 ( .A(n163), .B(n151), .Y(n124) );
  CLKINVX1 U441 ( .A(n119), .Y(n120) );
  OAI22XL U442 ( .A0(n182), .A1(n230), .B0(n183), .B1(n226), .Y(n150) );
  XNOR2X1 U443 ( .A(n163), .B(n151), .Y(n125) );
  OAI22XL U444 ( .A0(n202), .A1(n228), .B0(n201), .B1(n232), .Y(n167) );
  NOR2BX1 U445 ( .AN(n221), .B(n231), .Y(n161) );
  ADDHX1 U446 ( .A(n144), .B(n175), .CO(n140), .S(n141) );
  OAI22XL U447 ( .A0(n204), .A1(n232), .B0(n228), .B1(n236), .Y(n144) );
  CLKINVX1 U448 ( .A(b[3]), .Y(n236) );
  OAI22XL U449 ( .A0(n182), .A1(n226), .B0(n181), .B1(n230), .Y(n149) );
  ADDFX2 U450 ( .A(n173), .B(n160), .CI(n137), .CO(n134), .S(n135) );
  XNOR2X1 U451 ( .A(n221), .B(b[5]), .Y(n194) );
  ADDFX2 U452 ( .A(n148), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  OAI22XL U453 ( .A0(n180), .A1(n230), .B0(n181), .B1(n226), .Y(n148) );
  AO21X1 U454 ( .A0(n227), .A1(n231), .B0(n187), .Y(n154) );
  CLKINVX1 U455 ( .A(b[1]), .Y(n237) );
  CLKBUFX3 U456 ( .A(n248), .Y(n232) );
  CLKBUFX3 U457 ( .A(n247), .Y(n231) );
  CLKBUFX3 U458 ( .A(n246), .Y(n230) );
  AO21X1 U459 ( .A0(n226), .A1(n230), .B0(n178), .Y(n146) );
  ADDHXL U460 ( .A(n143), .B(n166), .CO(n136), .S(n137) );
  OAI22XL U461 ( .A0(n200), .A1(n232), .B0(n201), .B1(n228), .Y(n166) );
  OAI22XL U462 ( .A0(n195), .A1(n231), .B0(n227), .B1(n301), .Y(n143) );
  CLKBUFX3 U463 ( .A(n249), .Y(n233) );
  CLKBUFX3 U464 ( .A(n244), .Y(n228) );
  NAND2X1 U465 ( .A(n224), .B(n248), .Y(n244) );
  XOR2X1 U466 ( .A(b[2]), .B(b[3]), .Y(n224) );
  CLKBUFX3 U467 ( .A(n245), .Y(n229) );
  NAND2X1 U468 ( .A(n225), .B(n249), .Y(n245) );
  XOR2X1 U469 ( .A(b[0]), .B(b[1]), .Y(n225) );
  CLKBUFX3 U470 ( .A(n243), .Y(n227) );
  NAND2X1 U471 ( .A(n223), .B(n247), .Y(n243) );
  XOR2X1 U472 ( .A(b[4]), .B(b[5]), .Y(n223) );
  CLKBUFX3 U473 ( .A(n242), .Y(n226) );
  NAND2X1 U474 ( .A(n222), .B(n246), .Y(n242) );
  XOR2X1 U475 ( .A(b[6]), .B(b[7]), .Y(n222) );
  XNOR2X1 U476 ( .A(a[6]), .B(b[3]), .Y(n197) );
  XNOR2X1 U477 ( .A(a[6]), .B(b[7]), .Y(n179) );
  XNOR2X1 U478 ( .A(a[7]), .B(b[3]), .Y(n196) );
  XNOR2X1 U479 ( .A(a[7]), .B(b[7]), .Y(n178) );
  CLKINVX1 U480 ( .A(b[0]), .Y(n249) );
  XNOR2X1 U481 ( .A(b[2]), .B(b[1]), .Y(n248) );
  XNOR2X1 U482 ( .A(b[4]), .B(b[3]), .Y(n247) );
  XNOR2X1 U483 ( .A(b[6]), .B(b[5]), .Y(n246) );
endmodule


module PE_6_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n19, n20, n21, n22, n23, n25, n26, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n70, n72, n73, n74, n75, n76, n78, n80, n81,
         n82, n83, n85, n87, n89, n90, n93, n95, n96, n98, n100, n157, n158,
         n159, n160, n161, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180;

  NOR2X4 U121 ( .A(B[3]), .B(A[3]), .Y(n74) );
  XOR2X4 U122 ( .A(n178), .B(n3), .Y(SUM[14]) );
  OA21X1 U123 ( .A0(n1), .A1(n28), .B0(n29), .Y(n178) );
  NOR2X2 U124 ( .A(B[6]), .B(A[6]), .Y(n62) );
  CLKINVX6 U125 ( .A(n59), .Y(n171) );
  NOR2X6 U126 ( .A(B[7]), .B(A[7]), .Y(n59) );
  XNOR2X4 U127 ( .A(n41), .B(n5), .Y(SUM[12]) );
  BUFX8 U128 ( .A(n52), .Y(n163) );
  INVX1 U129 ( .A(n53), .Y(n52) );
  NOR2X2 U130 ( .A(B[5]), .B(A[5]), .Y(n66) );
  AOI21X4 U131 ( .A0(n81), .A1(n158), .B0(n78), .Y(n76) );
  OAI21X2 U132 ( .A0(n82), .A1(n85), .B0(n83), .Y(n81) );
  AOI21X4 U133 ( .A0(n73), .A1(n157), .B0(n70), .Y(n68) );
  NAND2X6 U134 ( .A(n165), .B(n75), .Y(n73) );
  NAND2X1 U135 ( .A(n177), .B(n168), .Y(n169) );
  CLKINVX1 U136 ( .A(n51), .Y(n168) );
  OAI21X2 U137 ( .A0(n39), .A1(n43), .B0(n40), .Y(n38) );
  NAND2X1 U138 ( .A(n57), .B(n65), .Y(n170) );
  NOR2X1 U139 ( .A(B[8]), .B(A[8]), .Y(n54) );
  NAND2X1 U140 ( .A(B[8]), .B(A[8]), .Y(n55) );
  NAND2X1 U141 ( .A(B[3]), .B(A[3]), .Y(n75) );
  OR2X2 U142 ( .A(n76), .B(n74), .Y(n165) );
  XNOR2X1 U143 ( .A(n49), .B(n7), .Y(SUM[10]) );
  NAND2X1 U144 ( .A(n167), .B(n51), .Y(n49) );
  NAND2X1 U145 ( .A(n176), .B(n43), .Y(n41) );
  OR2X1 U146 ( .A(B[4]), .B(A[4]), .Y(n157) );
  OR2X1 U147 ( .A(B[2]), .B(A[2]), .Y(n158) );
  AND2X2 U148 ( .A(n173), .B(n60), .Y(n159) );
  OA21XL U149 ( .A0(n25), .A1(n33), .B0(n26), .Y(n160) );
  NOR2X1 U150 ( .A(B[10]), .B(A[10]), .Y(n47) );
  OR2X1 U151 ( .A(A[0]), .B(B[0]), .Y(n161) );
  AND2X2 U152 ( .A(n161), .B(n85), .Y(SUM[0]) );
  NOR2X2 U153 ( .A(B[13]), .B(A[13]), .Y(n32) );
  NAND2X6 U154 ( .A(n175), .B(n55), .Y(n53) );
  OR2X1 U155 ( .A(n1), .B(n42), .Y(n176) );
  OR2X1 U156 ( .A(n1), .B(n21), .Y(n179) );
  NAND2X2 U157 ( .A(B[11]), .B(A[11]), .Y(n43) );
  NAND2X1 U158 ( .A(B[14]), .B(A[14]), .Y(n26) );
  NAND2X4 U159 ( .A(B[6]), .B(A[6]), .Y(n63) );
  NAND2X1 U160 ( .A(B[12]), .B(A[12]), .Y(n40) );
  OR2X4 U161 ( .A(n68), .B(n66), .Y(n164) );
  NAND2X4 U162 ( .A(n164), .B(n67), .Y(n65) );
  INVXL U163 ( .A(n65), .Y(n64) );
  BUFX12 U164 ( .A(n44), .Y(n1) );
  NAND2XL U165 ( .A(n23), .B(n38), .Y(n166) );
  AND2X2 U166 ( .A(n166), .B(n160), .Y(n22) );
  NAND2X2 U167 ( .A(n179), .B(n22), .Y(n20) );
  NAND2X1 U168 ( .A(B[13]), .B(A[13]), .Y(n33) );
  OR2X2 U169 ( .A(n163), .B(n50), .Y(n167) );
  NOR2X2 U170 ( .A(B[9]), .B(A[9]), .Y(n50) );
  NAND2X4 U171 ( .A(B[9]), .B(A[9]), .Y(n51) );
  NAND2X2 U172 ( .A(n169), .B(n48), .Y(n46) );
  NAND2X2 U173 ( .A(B[10]), .B(A[10]), .Y(n48) );
  AOI21X4 U174 ( .A0(n53), .A1(n45), .B0(n46), .Y(n44) );
  OR2X4 U175 ( .A(n56), .B(n54), .Y(n175) );
  INVX1 U176 ( .A(n80), .Y(n78) );
  NOR2X1 U177 ( .A(n59), .B(n62), .Y(n57) );
  AND2X2 U178 ( .A(n170), .B(n159), .Y(n56) );
  NAND2X1 U179 ( .A(n171), .B(n172), .Y(n173) );
  CLKINVX1 U180 ( .A(n63), .Y(n172) );
  NAND2X1 U181 ( .A(B[7]), .B(A[7]), .Y(n60) );
  OR2XL U182 ( .A(B[9]), .B(A[9]), .Y(n174) );
  NAND2XL U183 ( .A(n89), .B(n40), .Y(n5) );
  XNOR2X1 U184 ( .A(n20), .B(n2), .Y(SUM[15]) );
  NAND2X1 U185 ( .A(n180), .B(n19), .Y(n2) );
  NOR2X2 U186 ( .A(n42), .B(n39), .Y(n37) );
  NOR2X1 U187 ( .A(n32), .B(n25), .Y(n23) );
  NOR2X2 U188 ( .A(B[11]), .B(A[11]), .Y(n42) );
  NAND2X1 U189 ( .A(n23), .B(n37), .Y(n21) );
  OAI21X1 U190 ( .A0(n1), .A1(n35), .B0(n36), .Y(n34) );
  NOR2X1 U191 ( .A(n50), .B(n47), .Y(n45) );
  INVXL U192 ( .A(n39), .Y(n89) );
  NAND2XL U193 ( .A(n177), .B(n48), .Y(n7) );
  INVXL U194 ( .A(n62), .Y(n95) );
  NAND2XL U195 ( .A(B[15]), .B(A[15]), .Y(n19) );
  OR2XL U196 ( .A(B[10]), .B(A[10]), .Y(n177) );
  NAND2XL U197 ( .A(n37), .B(n30), .Y(n28) );
  XOR2XL U198 ( .A(n163), .B(n8), .Y(SUM[9]) );
  XOR2XL U199 ( .A(n56), .B(n9), .Y(SUM[8]) );
  XOR2XL U200 ( .A(n11), .B(n64), .Y(SUM[6]) );
  XOR2XL U201 ( .A(n68), .B(n12), .Y(SUM[5]) );
  NAND2XL U202 ( .A(n96), .B(n67), .Y(n12) );
  XNOR2XL U203 ( .A(n73), .B(n13), .Y(SUM[4]) );
  NAND2XL U204 ( .A(n157), .B(n72), .Y(n13) );
  XOR2XL U205 ( .A(n14), .B(n76), .Y(SUM[3]) );
  NAND2XL U206 ( .A(n98), .B(n75), .Y(n14) );
  XNOR2XL U207 ( .A(n15), .B(n81), .Y(SUM[2]) );
  NAND2XL U208 ( .A(n158), .B(n80), .Y(n15) );
  NAND2XL U209 ( .A(n100), .B(n83), .Y(n16) );
  NOR2XL U210 ( .A(B[1]), .B(A[1]), .Y(n82) );
  CLKINVX1 U211 ( .A(n38), .Y(n36) );
  CLKINVX1 U212 ( .A(n37), .Y(n35) );
  XNOR2X1 U213 ( .A(n34), .B(n4), .Y(SUM[13]) );
  NAND2X1 U214 ( .A(n30), .B(n33), .Y(n4) );
  NAND2X1 U215 ( .A(n87), .B(n26), .Y(n3) );
  CLKINVX1 U216 ( .A(n25), .Y(n87) );
  XOR2X1 U217 ( .A(n1), .B(n6), .Y(SUM[11]) );
  NAND2X1 U218 ( .A(n90), .B(n43), .Y(n6) );
  CLKINVX1 U219 ( .A(n42), .Y(n90) );
  AOI21X1 U220 ( .A0(n38), .A1(n30), .B0(n31), .Y(n29) );
  CLKINVX1 U221 ( .A(n33), .Y(n31) );
  CLKINVX1 U222 ( .A(n32), .Y(n30) );
  CLKINVX1 U223 ( .A(n72), .Y(n70) );
  NAND2X1 U224 ( .A(n174), .B(n51), .Y(n8) );
  NAND2X1 U225 ( .A(n93), .B(n55), .Y(n9) );
  CLKINVX1 U226 ( .A(n54), .Y(n93) );
  XNOR2X1 U227 ( .A(n61), .B(n10), .Y(SUM[7]) );
  OAI21XL U228 ( .A0(n64), .A1(n62), .B0(n63), .Y(n61) );
  NAND2X1 U229 ( .A(n171), .B(n60), .Y(n10) );
  NAND2X1 U230 ( .A(n95), .B(n63), .Y(n11) );
  CLKINVX1 U231 ( .A(n66), .Y(n96) );
  CLKINVX1 U232 ( .A(n74), .Y(n98) );
  XOR2X1 U233 ( .A(n16), .B(n85), .Y(SUM[1]) );
  CLKINVX1 U234 ( .A(n82), .Y(n100) );
  NOR2X2 U235 ( .A(B[12]), .B(A[12]), .Y(n39) );
  NOR2X2 U236 ( .A(B[14]), .B(A[14]), .Y(n25) );
  NAND2X1 U237 ( .A(B[2]), .B(A[2]), .Y(n80) );
  NAND2X1 U238 ( .A(B[4]), .B(A[4]), .Y(n72) );
  NAND2X1 U239 ( .A(B[5]), .B(A[5]), .Y(n67) );
  NAND2X1 U240 ( .A(B[1]), .B(A[1]), .Y(n83) );
  OR2X1 U241 ( .A(B[15]), .B(A[15]), .Y(n180) );
  NAND2X1 U242 ( .A(A[0]), .B(B[0]), .Y(n85) );
endmodule


module PE_6 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0;

  DFFQX1 \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[3]  ( .D(in[3]), .CK(clock), .Q(in_prop[3]) );
  DFFQXL \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQXL \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQXL \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQXL \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQXL \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQXL \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQXL \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQXL \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQX2 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  PE_6_DW_mult_tc_2 mult_196 ( .a(in), .b(mat_A_coeff), .product({N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  PE_6_DW01_add_2 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16}) );
endmodule


module PE_5_DW_mult_tc_0_DW_mult_tc_4 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244;

  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n195), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  ADDFX2 U140 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  NAND2X2 U141 ( .A(n190), .B(n243), .Y(n221) );
  CLKBUFX3 U142 ( .A(n219), .Y(n190) );
  INVX3 U143 ( .A(a[3]), .Y(n198) );
  INVX3 U144 ( .A(n189), .Y(n210) );
  INVX3 U145 ( .A(a[0]), .Y(n200) );
  ADDFXL U146 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U147 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U148 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFX2 U149 ( .A(n17), .B(n193), .CI(n3), .CO(n2), .S(product[13]) );
  CLKINVX1 U150 ( .A(a[1]), .Y(n199) );
  XOR2X1 U151 ( .A(b[2]), .B(n199), .Y(n204) );
  ADDHX1 U152 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  CMPR32X2 U153 ( .A(n19), .B(n18), .C(n4), .CO(n3), .S(product[12]) );
  XOR2X1 U154 ( .A(a[2]), .B(a[1]), .Y(n189) );
  OAI22XL U155 ( .A0(n220), .A1(n221), .B0(n190), .B1(n222), .Y(n70) );
  OAI2BB1XL U156 ( .A0N(n200), .A1N(n202), .B0(n209), .Y(n239) );
  NAND2X4 U157 ( .A(n210), .B(n242), .Y(n212) );
  OAI32XL U158 ( .A0(n196), .A1(b[0]), .A2(n190), .B0(n196), .B1(n221), .Y(n53) );
  XOR2XL U159 ( .A(b[2]), .B(n198), .Y(n214) );
  XOR2XL U160 ( .A(b[4]), .B(n199), .Y(n206) );
  XOR2XL U161 ( .A(b[3]), .B(n198), .Y(n215) );
  XNOR2XL U162 ( .A(a[6]), .B(a[5]), .Y(n229) );
  XOR2XL U163 ( .A(b[5]), .B(n199), .Y(n207) );
  XOR2XL U164 ( .A(b[4]), .B(n198), .Y(n216) );
  XOR2XL U165 ( .A(b[2]), .B(n196), .Y(n223) );
  XOR2XL U166 ( .A(b[3]), .B(n196), .Y(n224) );
  XOR2XL U167 ( .A(b[6]), .B(n199), .Y(n208) );
  XOR2XL U168 ( .A(b[5]), .B(n198), .Y(n217) );
  XOR2XL U169 ( .A(b[4]), .B(n196), .Y(n225) );
  XOR2XL U170 ( .A(b[7]), .B(n198), .Y(n218) );
  XOR2XL U171 ( .A(b[6]), .B(n198), .Y(n241) );
  XOR2XL U172 ( .A(b[7]), .B(a[1]), .Y(n209) );
  XOR2XL U173 ( .A(b[5]), .B(n196), .Y(n226) );
  XOR2XL U174 ( .A(b[6]), .B(n196), .Y(n227) );
  XOR2XL U175 ( .A(b[7]), .B(n196), .Y(n228) );
  CLKINVX1 U176 ( .A(n15), .Y(n193) );
  CLKINVX1 U177 ( .A(n29), .Y(n197) );
  CLKINVX1 U178 ( .A(n21), .Y(n195) );
  CLKINVX1 U179 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U180 ( .A(a[4]), .B(a[3]), .Y(n219) );
  NAND2X2 U181 ( .A(a[1]), .B(n200), .Y(n202) );
  INVX3 U182 ( .A(a[5]), .Y(n196) );
  NAND2X2 U183 ( .A(n191), .B(n244), .Y(n231) );
  CLKBUFX3 U184 ( .A(n229), .Y(n191) );
  INVX3 U185 ( .A(a[7]), .Y(n194) );
  CLKINVX1 U186 ( .A(b[0]), .Y(n201) );
  NOR2X1 U187 ( .A(n200), .B(n201), .Y(product[0]) );
  OAI22XL U188 ( .A0(b[0]), .A1(n202), .B0(n203), .B1(n200), .Y(n87) );
  OAI22XL U189 ( .A0(n203), .A1(n202), .B0(n204), .B1(n200), .Y(n86) );
  XOR2X1 U190 ( .A(b[1]), .B(n199), .Y(n203) );
  OAI22XL U191 ( .A0(n204), .A1(n202), .B0(n205), .B1(n200), .Y(n85) );
  OAI22XL U192 ( .A0(n205), .A1(n202), .B0(n206), .B1(n200), .Y(n84) );
  XOR2X1 U193 ( .A(b[3]), .B(n199), .Y(n205) );
  OAI22XL U194 ( .A0(n206), .A1(n202), .B0(n207), .B1(n200), .Y(n83) );
  OAI22XL U195 ( .A0(n207), .A1(n202), .B0(n208), .B1(n200), .Y(n82) );
  OAI2BB2XL U196 ( .B0(n208), .B1(n202), .A0N(n209), .A1N(a[0]), .Y(n81) );
  NOR2X1 U197 ( .A(n210), .B(n201), .Y(n79) );
  OAI22XL U198 ( .A0(n211), .A1(n212), .B0(n210), .B1(n213), .Y(n78) );
  XOR2X1 U199 ( .A(n198), .B(b[0]), .Y(n211) );
  OAI22XL U200 ( .A0(n213), .A1(n212), .B0(n210), .B1(n214), .Y(n77) );
  XOR2X1 U201 ( .A(b[1]), .B(n198), .Y(n213) );
  OAI22XL U202 ( .A0(n214), .A1(n212), .B0(n210), .B1(n215), .Y(n76) );
  OAI22XL U203 ( .A0(n215), .A1(n212), .B0(n210), .B1(n216), .Y(n75) );
  OAI22XL U204 ( .A0(n216), .A1(n212), .B0(n210), .B1(n217), .Y(n74) );
  AO21X1 U205 ( .A0(n212), .A1(n210), .B0(n218), .Y(n72) );
  NOR2X1 U206 ( .A(n190), .B(n201), .Y(n71) );
  XOR2X1 U207 ( .A(n196), .B(b[0]), .Y(n220) );
  OAI22XL U208 ( .A0(n222), .A1(n221), .B0(n190), .B1(n223), .Y(n69) );
  XOR2X1 U209 ( .A(b[1]), .B(n196), .Y(n222) );
  OAI22XL U210 ( .A0(n223), .A1(n221), .B0(n190), .B1(n224), .Y(n68) );
  OAI22XL U211 ( .A0(n224), .A1(n221), .B0(n190), .B1(n225), .Y(n67) );
  OAI22XL U212 ( .A0(n225), .A1(n221), .B0(n190), .B1(n226), .Y(n66) );
  OAI22XL U213 ( .A0(n226), .A1(n221), .B0(n190), .B1(n227), .Y(n65) );
  AO21X1 U214 ( .A0(n221), .A1(n190), .B0(n228), .Y(n64) );
  NOR2X1 U215 ( .A(n191), .B(n201), .Y(n63) );
  OAI22XL U216 ( .A0(n230), .A1(n231), .B0(n191), .B1(n232), .Y(n62) );
  XOR2X1 U217 ( .A(n194), .B(b[0]), .Y(n230) );
  OAI22XL U218 ( .A0(n232), .A1(n231), .B0(n191), .B1(n233), .Y(n61) );
  XOR2X1 U219 ( .A(b[1]), .B(n194), .Y(n232) );
  OAI22XL U220 ( .A0(n233), .A1(n231), .B0(n191), .B1(n234), .Y(n60) );
  XOR2X1 U221 ( .A(b[2]), .B(n194), .Y(n233) );
  OAI22XL U222 ( .A0(n234), .A1(n231), .B0(n191), .B1(n235), .Y(n59) );
  XOR2X1 U223 ( .A(b[3]), .B(n194), .Y(n234) );
  OAI22XL U224 ( .A0(n235), .A1(n231), .B0(n191), .B1(n236), .Y(n58) );
  XOR2X1 U225 ( .A(b[4]), .B(n194), .Y(n235) );
  OAI22XL U226 ( .A0(n236), .A1(n231), .B0(n191), .B1(n237), .Y(n57) );
  XOR2X1 U227 ( .A(b[5]), .B(n194), .Y(n236) );
  AO21X1 U228 ( .A0(n231), .A1(n191), .B0(n238), .Y(n56) );
  OAI21XL U229 ( .A0(b[0]), .A1(n199), .B0(n202), .Y(n55) );
  OAI32X1 U230 ( .A0(n198), .A1(b[0]), .A2(n210), .B0(n198), .B1(n212), .Y(n54) );
  OAI32X1 U231 ( .A0(n194), .A1(b[0]), .A2(n191), .B0(n194), .B1(n231), .Y(n52) );
  XOR2X1 U232 ( .A(n239), .B(n240), .Y(n35) );
  NAND2BX1 U233 ( .AN(n239), .B(n240), .Y(n34) );
  OA22X1 U234 ( .A0(n217), .A1(n212), .B0(n210), .B1(n241), .Y(n240) );
  OAI22XL U235 ( .A0(n210), .A1(n218), .B0(n241), .B1(n212), .Y(n29) );
  XOR2X1 U236 ( .A(a[3]), .B(a[2]), .Y(n242) );
  OAI22XL U237 ( .A0(n190), .A1(n228), .B0(n227), .B1(n221), .Y(n21) );
  XOR2X1 U238 ( .A(a[5]), .B(a[4]), .Y(n243) );
  OAI22XL U239 ( .A0(n191), .A1(n238), .B0(n237), .B1(n231), .Y(n15) );
  XOR2X1 U240 ( .A(a[7]), .B(a[6]), .Y(n244) );
  XOR2X1 U241 ( .A(b[6]), .B(n194), .Y(n237) );
  XOR2X1 U242 ( .A(b[7]), .B(n194), .Y(n238) );
endmodule


module PE_5_DW01_add_0_DW01_add_4 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5;
  wire   [15:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  XOR3X1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Y(SUM[15]) );
  ADDFHX4 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFHX4 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[13]), .B(A[13]), .Y(n2) );
  XOR2XL U3 ( .A(carry[13]), .B(n2), .Y(SUM[13]) );
  NAND2X4 U4 ( .A(B[13]), .B(carry[13]), .Y(n3) );
  NAND2X4 U5 ( .A(A[13]), .B(carry[13]), .Y(n4) );
  NAND2X4 U6 ( .A(A[13]), .B(B[13]), .Y(n5) );
  NAND3X8 U7 ( .A(n3), .B(n4), .C(n5), .Y(carry[14]) );
  XOR2X1 U8 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module PE_5 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0;

  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQX1 \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQX1 \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[3]  ( .D(in[3]), .CK(clock), .Q(in_prop[3]) );
  DFFQX2 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQXL \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  PE_5_DW_mult_tc_0_DW_mult_tc_4 mult_196 ( .a(in), .b(mat_A_coeff), .product(
        {N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  PE_5_DW01_add_0_DW01_add_4 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module PE_4_DW_mult_tc_0_DW_mult_tc_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243, n244;

  ADDFXL U2 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n193), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n195), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  NAND2X6 U140 ( .A(n210), .B(n242), .Y(n212) );
  XOR2X1 U141 ( .A(b[2]), .B(n198), .Y(n214) );
  OAI32XL U142 ( .A0(n198), .A1(b[0]), .A2(n210), .B0(n198), .B1(n212), .Y(n54) );
  INVX3 U143 ( .A(a[3]), .Y(n198) );
  XOR2X1 U144 ( .A(b[2]), .B(n199), .Y(n204) );
  INVX8 U145 ( .A(a[1]), .Y(n199) );
  BUFX4 U146 ( .A(n219), .Y(n190) );
  CLKBUFX6 U147 ( .A(n202), .Y(n189) );
  ADDFXL U148 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U149 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U150 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  NAND2X1 U151 ( .A(a[1]), .B(n200), .Y(n202) );
  OAI22X1 U152 ( .A0(n211), .A1(n212), .B0(n210), .B1(n213), .Y(n78) );
  OAI22X1 U153 ( .A0(n203), .A1(n189), .B0(n204), .B1(n200), .Y(n86) );
  ADDHX1 U154 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  XNOR2X4 U155 ( .A(a[2]), .B(a[1]), .Y(n210) );
  OAI22XL U156 ( .A0(n220), .A1(n221), .B0(n190), .B1(n222), .Y(n70) );
  ADDHX1 U157 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  NAND2X4 U158 ( .A(n190), .B(n243), .Y(n221) );
  ADDFXL U159 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  OAI2BB1XL U160 ( .A0N(n200), .A1N(n189), .B0(n209), .Y(n239) );
  OAI32XL U161 ( .A0(n196), .A1(b[0]), .A2(n190), .B0(n196), .B1(n221), .Y(n53) );
  INVX4 U162 ( .A(a[0]), .Y(n200) );
  XOR2XL U163 ( .A(b[4]), .B(n199), .Y(n206) );
  XOR2XL U164 ( .A(b[3]), .B(n198), .Y(n215) );
  XNOR2XL U165 ( .A(a[6]), .B(a[5]), .Y(n229) );
  XOR2XL U166 ( .A(b[5]), .B(n199), .Y(n207) );
  XOR2XL U167 ( .A(b[4]), .B(n198), .Y(n216) );
  XOR2XL U168 ( .A(b[2]), .B(n196), .Y(n223) );
  XOR2XL U169 ( .A(b[3]), .B(n196), .Y(n224) );
  XOR2XL U170 ( .A(b[6]), .B(n199), .Y(n208) );
  XOR2XL U171 ( .A(b[5]), .B(n198), .Y(n217) );
  XOR2XL U172 ( .A(b[4]), .B(n196), .Y(n225) );
  XOR2XL U173 ( .A(b[6]), .B(n198), .Y(n241) );
  XOR2XL U174 ( .A(b[7]), .B(n198), .Y(n218) );
  XOR2XL U175 ( .A(b[7]), .B(a[1]), .Y(n209) );
  XOR2XL U176 ( .A(b[5]), .B(n196), .Y(n226) );
  XOR2XL U177 ( .A(b[6]), .B(n196), .Y(n227) );
  XOR2XL U178 ( .A(b[7]), .B(n196), .Y(n228) );
  CLKINVX1 U179 ( .A(n15), .Y(n193) );
  CLKINVX1 U180 ( .A(n29), .Y(n197) );
  CLKINVX1 U181 ( .A(n21), .Y(n195) );
  CLKINVX1 U182 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U183 ( .A(a[4]), .B(a[3]), .Y(n219) );
  INVX3 U184 ( .A(a[5]), .Y(n196) );
  CLKBUFX3 U185 ( .A(n229), .Y(n191) );
  NAND2X2 U186 ( .A(n191), .B(n244), .Y(n231) );
  INVX3 U187 ( .A(a[7]), .Y(n194) );
  CLKINVX1 U188 ( .A(b[0]), .Y(n201) );
  NOR2X1 U189 ( .A(n200), .B(n201), .Y(product[0]) );
  OAI22XL U190 ( .A0(b[0]), .A1(n189), .B0(n203), .B1(n200), .Y(n87) );
  XOR2X1 U191 ( .A(b[1]), .B(n199), .Y(n203) );
  OAI22XL U192 ( .A0(n204), .A1(n189), .B0(n205), .B1(n200), .Y(n85) );
  OAI22XL U193 ( .A0(n205), .A1(n189), .B0(n206), .B1(n200), .Y(n84) );
  XOR2X1 U194 ( .A(b[3]), .B(n199), .Y(n205) );
  OAI22XL U195 ( .A0(n206), .A1(n189), .B0(n207), .B1(n200), .Y(n83) );
  OAI22XL U196 ( .A0(n207), .A1(n189), .B0(n208), .B1(n200), .Y(n82) );
  OAI2BB2XL U197 ( .B0(n208), .B1(n189), .A0N(n209), .A1N(a[0]), .Y(n81) );
  NOR2X1 U198 ( .A(n210), .B(n201), .Y(n79) );
  XOR2X1 U199 ( .A(n198), .B(b[0]), .Y(n211) );
  OAI22XL U200 ( .A0(n213), .A1(n212), .B0(n210), .B1(n214), .Y(n77) );
  XOR2X1 U201 ( .A(b[1]), .B(n198), .Y(n213) );
  OAI22XL U202 ( .A0(n214), .A1(n212), .B0(n210), .B1(n215), .Y(n76) );
  OAI22XL U203 ( .A0(n215), .A1(n212), .B0(n210), .B1(n216), .Y(n75) );
  OAI22XL U204 ( .A0(n216), .A1(n212), .B0(n210), .B1(n217), .Y(n74) );
  AO21X1 U205 ( .A0(n212), .A1(n210), .B0(n218), .Y(n72) );
  NOR2X1 U206 ( .A(n190), .B(n201), .Y(n71) );
  XOR2X1 U207 ( .A(n196), .B(b[0]), .Y(n220) );
  OAI22XL U208 ( .A0(n222), .A1(n221), .B0(n190), .B1(n223), .Y(n69) );
  XOR2X1 U209 ( .A(b[1]), .B(n196), .Y(n222) );
  OAI22XL U210 ( .A0(n223), .A1(n221), .B0(n190), .B1(n224), .Y(n68) );
  OAI22XL U211 ( .A0(n224), .A1(n221), .B0(n190), .B1(n225), .Y(n67) );
  OAI22XL U212 ( .A0(n225), .A1(n221), .B0(n190), .B1(n226), .Y(n66) );
  OAI22XL U213 ( .A0(n226), .A1(n221), .B0(n190), .B1(n227), .Y(n65) );
  AO21X1 U214 ( .A0(n221), .A1(n190), .B0(n228), .Y(n64) );
  NOR2X1 U215 ( .A(n191), .B(n201), .Y(n63) );
  OAI22XL U216 ( .A0(n230), .A1(n231), .B0(n191), .B1(n232), .Y(n62) );
  XOR2X1 U217 ( .A(n194), .B(b[0]), .Y(n230) );
  OAI22XL U218 ( .A0(n232), .A1(n231), .B0(n191), .B1(n233), .Y(n61) );
  XOR2X1 U219 ( .A(b[1]), .B(n194), .Y(n232) );
  OAI22XL U220 ( .A0(n233), .A1(n231), .B0(n191), .B1(n234), .Y(n60) );
  XOR2X1 U221 ( .A(b[2]), .B(n194), .Y(n233) );
  OAI22XL U222 ( .A0(n234), .A1(n231), .B0(n191), .B1(n235), .Y(n59) );
  XOR2X1 U223 ( .A(b[3]), .B(n194), .Y(n234) );
  OAI22XL U224 ( .A0(n235), .A1(n231), .B0(n191), .B1(n236), .Y(n58) );
  XOR2X1 U225 ( .A(b[4]), .B(n194), .Y(n235) );
  OAI22XL U226 ( .A0(n236), .A1(n231), .B0(n191), .B1(n237), .Y(n57) );
  XOR2X1 U227 ( .A(b[5]), .B(n194), .Y(n236) );
  AO21X1 U228 ( .A0(n231), .A1(n191), .B0(n238), .Y(n56) );
  OAI21XL U229 ( .A0(b[0]), .A1(n199), .B0(n189), .Y(n55) );
  OAI32X1 U230 ( .A0(n194), .A1(b[0]), .A2(n191), .B0(n194), .B1(n231), .Y(n52) );
  XOR2X1 U231 ( .A(n239), .B(n240), .Y(n35) );
  NAND2BX1 U232 ( .AN(n239), .B(n240), .Y(n34) );
  OA22X1 U233 ( .A0(n217), .A1(n212), .B0(n210), .B1(n241), .Y(n240) );
  OAI22XL U234 ( .A0(n210), .A1(n218), .B0(n241), .B1(n212), .Y(n29) );
  XOR2X1 U235 ( .A(a[3]), .B(a[2]), .Y(n242) );
  OAI22XL U236 ( .A0(n190), .A1(n228), .B0(n227), .B1(n221), .Y(n21) );
  XOR2X1 U237 ( .A(a[5]), .B(a[4]), .Y(n243) );
  OAI22XL U238 ( .A0(n191), .A1(n238), .B0(n237), .B1(n231), .Y(n15) );
  XOR2X1 U239 ( .A(a[7]), .B(a[6]), .Y(n244) );
  XOR2X1 U240 ( .A(b[6]), .B(n194), .Y(n237) );
  XOR2X1 U241 ( .A(b[7]), .B(n194), .Y(n238) );
endmodule


module PE_4_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  XOR3X1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Y(SUM[15]) );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module PE_4 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0, n1, n2;

  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQX1 \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQX1 \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQX1 \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[3]  ( .D(n2), .CK(clock), .Q(in_prop[3]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  DFFQX1 \in_prop_reg[0]  ( .D(n1), .CK(clock), .Q(in_prop[0]) );
  BUFX6 U3 ( .A(in[0]), .Y(n1) );
  CLKBUFX3 U4 ( .A(in[3]), .Y(n2) );
  PE_4_DW_mult_tc_0_DW_mult_tc_2 mult_196 ( .a({in[7:4], n2, in[2:1], n1}), 
        .b(mat_A_coeff), .product({N15, N14, N13, N12, N11, N10, N9, N8, N7, 
        N6, N5, N4, N3, N2, N1, N0}) );
  PE_4_DW01_add_0_DW01_add_2 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module PE_3_DW_mult_tc_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n26, n28, n31, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n45, n46, n47, n51, n52, n53, n54,
         n55, n56, n58, n59, n60, n61, n62, n63, n64, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n86, n87, n88, n89, n90, n91, n94, n96, n98, n99, n100, n102, n103,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n236, n242, n243, n244, n245, n246, n247, n248, n249, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327;
  assign product[15] = n15;

  XNOR2X4 U244 ( .A(a[2]), .B(b[1]), .Y(n210) );
  CLKINVX1 U245 ( .A(n54), .Y(n52) );
  AO21X2 U246 ( .A0(n62), .A1(n53), .B0(n54), .Y(n325) );
  AOI21X2 U247 ( .A0(n54), .A1(n37), .B0(n38), .Y(n36) );
  OAI21X4 U248 ( .A0(n61), .A1(n55), .B0(n56), .Y(n54) );
  INVXL U249 ( .A(a[1]), .Y(n284) );
  NAND2X6 U250 ( .A(a[1]), .B(b[1]), .Y(n306) );
  NAND2BX4 U251 ( .AN(n89), .B(n90), .Y(n14) );
  NOR2X2 U252 ( .A(n177), .B(n145), .Y(n89) );
  NAND2X2 U253 ( .A(n68), .B(n8), .Y(n310) );
  NAND2X2 U254 ( .A(n98), .B(n67), .Y(n8) );
  NAND2X1 U255 ( .A(n13), .B(n88), .Y(n289) );
  INVX2 U256 ( .A(n13), .Y(n288) );
  NAND2X2 U257 ( .A(n103), .B(n87), .Y(n13) );
  NAND2X2 U258 ( .A(n300), .B(n301), .Y(product[5]) );
  AO21X2 U259 ( .A0(n34), .A1(n279), .B0(n31), .Y(n324) );
  NAND2X4 U260 ( .A(n53), .B(n37), .Y(n35) );
  NOR2X6 U261 ( .A(n46), .B(n39), .Y(n37) );
  NOR2X2 U262 ( .A(n135), .B(n138), .Y(n73) );
  ADDFHX4 U263 ( .A(n173), .B(n160), .CI(n137), .CO(n134), .S(n135) );
  XNOR2X4 U264 ( .A(n324), .B(n2), .Y(product[13]) );
  NAND2X4 U265 ( .A(n327), .B(n70), .Y(n68) );
  OR2X6 U266 ( .A(n71), .B(n69), .Y(n327) );
  OR2X8 U267 ( .A(n208), .B(n233), .Y(n292) );
  XNOR2X4 U268 ( .A(a[4]), .B(b[1]), .Y(n208) );
  NAND2X2 U269 ( .A(n100), .B(n74), .Y(n10) );
  NAND2X2 U270 ( .A(n123), .B(n127), .Y(n61) );
  OAI22X2 U271 ( .A0(n189), .A1(n231), .B0(n190), .B1(n227), .Y(n156) );
  CLKINVX1 U272 ( .A(n61), .Y(n59) );
  NAND2X1 U273 ( .A(n118), .B(n122), .Y(n56) );
  NOR2X1 U274 ( .A(n66), .B(n69), .Y(n64) );
  OR2X1 U275 ( .A(n229), .B(n305), .Y(n294) );
  XNOR2X1 U276 ( .A(a[6]), .B(b[1]), .Y(n206) );
  XNOR2X1 U277 ( .A(a[2]), .B(b[5]), .Y(n192) );
  NAND2X2 U278 ( .A(n286), .B(n287), .Y(n193) );
  XNOR2X1 U279 ( .A(a[4]), .B(b[3]), .Y(n199) );
  OAI22XL U280 ( .A0(n195), .A1(n231), .B0(n227), .B1(n285), .Y(n143) );
  OR2X1 U281 ( .A(n209), .B(n229), .Y(n291) );
  XNOR2X1 U282 ( .A(a[2]), .B(b[3]), .Y(n201) );
  OAI22X2 U283 ( .A0(n197), .A1(n228), .B0(n196), .B1(n232), .Y(n119) );
  XNOR2X1 U284 ( .A(a[7]), .B(b[3]), .Y(n196) );
  OAI22X1 U285 ( .A0(n191), .A1(n227), .B0(n190), .B1(n231), .Y(n157) );
  NAND2X6 U286 ( .A(n306), .B(n307), .Y(n211) );
  NAND2X1 U287 ( .A(n304), .B(n305), .Y(n307) );
  CLKINVX1 U288 ( .A(n66), .Y(n98) );
  CLKINVX1 U289 ( .A(n68), .Y(n308) );
  CLKINVX1 U290 ( .A(n10), .Y(n299) );
  XOR2X1 U291 ( .A(n71), .B(n9), .Y(product[6]) );
  NAND2X6 U292 ( .A(n310), .B(n311), .Y(product[7]) );
  NAND2X4 U293 ( .A(n308), .B(n309), .Y(n311) );
  CLKINVX1 U294 ( .A(n8), .Y(n309) );
  NAND2X1 U295 ( .A(n296), .B(n297), .Y(product[8]) );
  NAND2X1 U296 ( .A(n62), .B(n7), .Y(n296) );
  NAND2X1 U297 ( .A(n63), .B(n295), .Y(n297) );
  CLKINVX1 U298 ( .A(n55), .Y(n96) );
  BUFX12 U299 ( .A(a[0]), .Y(n221) );
  CLKINVX1 U300 ( .A(n14), .Y(product[1]) );
  XNOR2X1 U301 ( .A(n80), .B(n11), .Y(product[4]) );
  XNOR2X2 U302 ( .A(n34), .B(n3), .Y(product[12]) );
  OAI22X2 U303 ( .A0(n200), .A1(n232), .B0(n201), .B1(n228), .Y(n166) );
  OR2X1 U304 ( .A(n109), .B(n108), .Y(n279) );
  OR2X1 U305 ( .A(n107), .B(n106), .Y(n280) );
  OAI22X1 U306 ( .A0(n198), .A1(n232), .B0(n199), .B1(n228), .Y(n164) );
  INVX1 U307 ( .A(n78), .Y(n76) );
  NAND2X1 U308 ( .A(n176), .B(n169), .Y(n87) );
  OA21X2 U309 ( .A0(n66), .A1(n70), .B0(n67), .Y(n281) );
  INVX3 U310 ( .A(n90), .Y(n88) );
  AND2X4 U311 ( .A(n320), .B(n281), .Y(n63) );
  AND2X2 U312 ( .A(n96), .B(n56), .Y(n282) );
  NOR2X2 U313 ( .A(n123), .B(n127), .Y(n60) );
  AND2XL U314 ( .A(n143), .B(n166), .Y(n283) );
  CLKINVX1 U315 ( .A(b[1]), .Y(n305) );
  INVXL U316 ( .A(a[1]), .Y(n304) );
  NAND2XL U317 ( .A(a[1]), .B(b[5]), .Y(n286) );
  INVX1 U318 ( .A(n60), .Y(n58) );
  NOR2X4 U319 ( .A(n128), .B(n132), .Y(n66) );
  OAI22X2 U320 ( .A0(n207), .A1(n229), .B0(n206), .B1(n233), .Y(n172) );
  OAI22X2 U321 ( .A0(n189), .A1(n227), .B0(n188), .B1(n231), .Y(n155) );
  NAND2X2 U322 ( .A(n128), .B(n132), .Y(n67) );
  NOR2X4 U323 ( .A(n60), .B(n55), .Y(n53) );
  NOR2X4 U324 ( .A(n118), .B(n122), .Y(n55) );
  OAI22X2 U325 ( .A0(n207), .A1(n233), .B0(n208), .B1(n229), .Y(n173) );
  ADDFHX4 U326 ( .A(n161), .B(n174), .CI(n167), .CO(n138), .S(n139) );
  NOR2BX1 U327 ( .AN(n221), .B(n231), .Y(n161) );
  OAI22X2 U328 ( .A0(n203), .A1(n228), .B0(n202), .B1(n232), .Y(n168) );
  OAI22X2 U329 ( .A0(n200), .A1(n228), .B0(n199), .B1(n232), .Y(n165) );
  XNOR2X2 U330 ( .A(a[3]), .B(b[3]), .Y(n200) );
  XOR2X4 U331 ( .A(n323), .B(n282), .Y(product[9]) );
  XNOR2X2 U332 ( .A(a[3]), .B(b[5]), .Y(n191) );
  OAI21X1 U333 ( .A0(n39), .A1(n47), .B0(n40), .Y(n38) );
  OAI21X1 U334 ( .A0(n52), .A1(n46), .B0(n47), .Y(n43) );
  NOR2X6 U335 ( .A(n176), .B(n169), .Y(n86) );
  NOR2BX2 U336 ( .AN(n221), .B(n232), .Y(n169) );
  XNOR2X2 U337 ( .A(a[6]), .B(b[3]), .Y(n197) );
  OAI22X2 U338 ( .A0(n188), .A1(n227), .B0(n187), .B1(n231), .Y(n111) );
  NOR2X2 U339 ( .A(n115), .B(n117), .Y(n46) );
  CMPR42X2 U340 ( .A(n156), .B(n150), .C(n120), .D(n124), .ICI(n121), .S(n118), 
        .ICO(n116), .CO(n117) );
  CMPR42X2 U341 ( .A(n119), .B(n149), .C(n155), .D(n162), .ICI(n116), .S(n115), 
        .ICO(n113), .CO(n114) );
  ADDHX1 U342 ( .A(n142), .B(n158), .CO(n129), .S(n130) );
  OAI22X1 U343 ( .A0(n191), .A1(n231), .B0(n192), .B1(n227), .Y(n158) );
  NAND2X6 U344 ( .A(n322), .B(n74), .Y(n72) );
  NAND2X2 U345 ( .A(n284), .B(n285), .Y(n287) );
  INVXL U346 ( .A(b[5]), .Y(n285) );
  OAI22X4 U347 ( .A0(n194), .A1(n227), .B0(n193), .B1(n231), .Y(n160) );
  OAI22X1 U348 ( .A0(n193), .A1(n227), .B0(n192), .B1(n231), .Y(n159) );
  CMPR42X2 U349 ( .A(n157), .B(n170), .C(n129), .D(n126), .ICI(n125), .S(n123), 
        .ICO(n121), .CO(n122) );
  NAND2X6 U350 ( .A(n288), .B(n90), .Y(n290) );
  NAND2X6 U351 ( .A(n289), .B(n290), .Y(product[2]) );
  OAI22X2 U352 ( .A0(n209), .A1(n233), .B0(n210), .B1(n229), .Y(n175) );
  OAI22X4 U353 ( .A0(n211), .A1(n229), .B0(n210), .B1(n233), .Y(n176) );
  NAND2X4 U354 ( .A(n291), .B(n292), .Y(n174) );
  NAND2X4 U355 ( .A(n293), .B(n294), .Y(n145) );
  OR2X8 U356 ( .A(n213), .B(n233), .Y(n293) );
  CLKINVX1 U357 ( .A(n7), .Y(n295) );
  INVX3 U358 ( .A(n63), .Y(n62) );
  NAND2X2 U359 ( .A(n58), .B(n61), .Y(n7) );
  NAND2XL U360 ( .A(n75), .B(n299), .Y(n300) );
  NAND2XL U361 ( .A(n298), .B(n10), .Y(n301) );
  INVXL U362 ( .A(n75), .Y(n298) );
  AOI21X4 U363 ( .A0(n80), .A1(n76), .B0(n77), .Y(n75) );
  XOR2X2 U364 ( .A(n143), .B(n166), .Y(n137) );
  CMPR42X2 U365 ( .A(n153), .B(n172), .C(n165), .D(n159), .ICI(n283), .S(n133), 
        .ICO(n131), .CO(n132) );
  XOR2X4 U366 ( .A(n41), .B(n4), .Y(product[11]) );
  XNOR2X4 U367 ( .A(a[4]), .B(b[5]), .Y(n190) );
  XNOR2X4 U368 ( .A(n325), .B(n5), .Y(product[10]) );
  OR2X1 U369 ( .A(n206), .B(n229), .Y(n302) );
  OR2XL U370 ( .A(n205), .B(n233), .Y(n303) );
  NAND2X1 U371 ( .A(n302), .B(n303), .Y(n171) );
  XNOR2X4 U372 ( .A(a[7]), .B(b[1]), .Y(n205) );
  CMPR42X2 U373 ( .A(n171), .B(n164), .C(n152), .D(n130), .ICI(n131), .S(n128), 
        .ICO(n126), .CO(n127) );
  NAND2X6 U374 ( .A(n177), .B(n145), .Y(n90) );
  NAND2X4 U375 ( .A(n312), .B(n313), .Y(n177) );
  OR2X6 U376 ( .A(n211), .B(n233), .Y(n313) );
  INVX8 U377 ( .A(n72), .Y(n71) );
  NAND2BX4 U378 ( .AN(n221), .B(b[1]), .Y(n213) );
  NAND2X6 U379 ( .A(n317), .B(n318), .Y(product[3]) );
  AND2X2 U380 ( .A(n319), .B(n87), .Y(n83) );
  AO21X2 U381 ( .A0(n62), .A1(n58), .B0(n59), .Y(n323) );
  CLKINVX1 U382 ( .A(n83), .Y(n316) );
  NAND2X2 U383 ( .A(n102), .B(n82), .Y(n12) );
  NAND2X2 U384 ( .A(n12), .B(n316), .Y(n317) );
  NAND2X2 U385 ( .A(n315), .B(n83), .Y(n318) );
  CLKINVX3 U386 ( .A(n12), .Y(n315) );
  NAND2X2 U387 ( .A(n141), .B(n168), .Y(n82) );
  OAI22X2 U388 ( .A0(n202), .A1(n228), .B0(n201), .B1(n232), .Y(n167) );
  OR2X1 U389 ( .A(n212), .B(n229), .Y(n312) );
  XNOR2XL U390 ( .A(n221), .B(b[1]), .Y(n212) );
  BUFX2 U391 ( .A(n245), .Y(n229) );
  OR2X6 U392 ( .A(n83), .B(n81), .Y(n314) );
  NAND2X6 U393 ( .A(n314), .B(n82), .Y(n80) );
  NOR2X4 U394 ( .A(n141), .B(n168), .Y(n81) );
  XNOR2X1 U395 ( .A(a[1]), .B(b[3]), .Y(n202) );
  NAND2X4 U396 ( .A(n64), .B(n72), .Y(n320) );
  NAND2X1 U397 ( .A(n84), .B(n88), .Y(n319) );
  INVX1 U398 ( .A(n86), .Y(n84) );
  AO21X4 U399 ( .A0(n34), .A1(n21), .B0(n22), .Y(n326) );
  OR2X4 U400 ( .A(n35), .B(n63), .Y(n321) );
  NAND2X4 U401 ( .A(n321), .B(n36), .Y(n34) );
  XNOR2X2 U402 ( .A(n326), .B(n1), .Y(product[14]) );
  AOI21XL U403 ( .A0(n34), .A1(n16), .B0(n17), .Y(n15) );
  OR2X4 U404 ( .A(n75), .B(n73), .Y(n322) );
  NAND2X1 U405 ( .A(n135), .B(n138), .Y(n74) );
  CLKBUFX3 U406 ( .A(n249), .Y(n233) );
  NAND2X1 U407 ( .A(n114), .B(n110), .Y(n40) );
  NAND2X1 U408 ( .A(n109), .B(n108), .Y(n33) );
  OAI22X1 U409 ( .A0(n198), .A1(n228), .B0(n197), .B1(n232), .Y(n163) );
  ADDFX2 U410 ( .A(n148), .B(n112), .CI(n113), .CO(n109), .S(n110) );
  INVX1 U411 ( .A(n111), .Y(n112) );
  XNOR2X1 U412 ( .A(a[5]), .B(b[5]), .Y(n189) );
  NOR2XL U413 ( .A(n51), .B(n46), .Y(n42) );
  NOR2XL U414 ( .A(n23), .B(n18), .Y(n16) );
  NOR2X1 U415 ( .A(n146), .B(n105), .Y(n18) );
  NAND2XL U416 ( .A(n139), .B(n140), .Y(n79) );
  NOR2BXL U417 ( .AN(n221), .B(n230), .Y(n153) );
  XNOR2XL U418 ( .A(n221), .B(b[3]), .Y(n203) );
  NOR2BXL U419 ( .AN(n221), .B(n233), .Y(product[0]) );
  OAI22XL U420 ( .A0(n184), .A1(n226), .B0(n183), .B1(n230), .Y(n151) );
  OAI22X1 U421 ( .A0(n179), .A1(n226), .B0(n178), .B1(n230), .Y(n105) );
  XNOR2XL U422 ( .A(n221), .B(b[7]), .Y(n185) );
  NAND2BXL U423 ( .AN(n221), .B(b[3]), .Y(n204) );
  NAND2BXL U424 ( .AN(n221), .B(b[7]), .Y(n186) );
  NAND2BXL U425 ( .AN(n221), .B(b[5]), .Y(n195) );
  XNOR2XL U426 ( .A(a[1]), .B(b[7]), .Y(n184) );
  XNOR2XL U427 ( .A(a[2]), .B(b[7]), .Y(n183) );
  XNOR2XL U428 ( .A(a[4]), .B(b[7]), .Y(n181) );
  XNOR2XL U429 ( .A(a[5]), .B(b[7]), .Y(n180) );
  XNOR2XL U430 ( .A(a[3]), .B(b[7]), .Y(n182) );
  NOR2X4 U431 ( .A(n133), .B(n134), .Y(n69) );
  NAND2X2 U432 ( .A(n133), .B(n134), .Y(n70) );
  CLKINVX1 U433 ( .A(n23), .Y(n21) );
  CLKINVX1 U434 ( .A(n53), .Y(n51) );
  CLKINVX1 U435 ( .A(n24), .Y(n22) );
  NAND2X1 U436 ( .A(n279), .B(n280), .Y(n23) );
  NAND2X1 U437 ( .A(n45), .B(n47), .Y(n5) );
  CLKINVX1 U438 ( .A(n79), .Y(n77) );
  NAND2X1 U439 ( .A(n280), .B(n28), .Y(n2) );
  NAND2X1 U440 ( .A(n279), .B(n33), .Y(n3) );
  NAND2X1 U441 ( .A(n94), .B(n40), .Y(n4) );
  AOI21X1 U442 ( .A0(n42), .A1(n62), .B0(n43), .Y(n41) );
  CLKINVX1 U443 ( .A(n39), .Y(n94) );
  NAND2X1 U444 ( .A(n99), .B(n70), .Y(n9) );
  CLKINVX1 U445 ( .A(n69), .Y(n99) );
  NAND2X1 U446 ( .A(n91), .B(n19), .Y(n1) );
  CLKINVX1 U447 ( .A(n18), .Y(n91) );
  CLKINVX1 U448 ( .A(n46), .Y(n45) );
  CLKINVX1 U449 ( .A(n86), .Y(n103) );
  NAND2X1 U450 ( .A(n76), .B(n79), .Y(n11) );
  CLKINVX1 U451 ( .A(n81), .Y(n102) );
  CLKINVX1 U452 ( .A(n73), .Y(n100) );
  OAI21XL U453 ( .A0(n24), .A1(n18), .B0(n19), .Y(n17) );
  AOI21X1 U454 ( .A0(n31), .A1(n280), .B0(n26), .Y(n24) );
  CLKINVX1 U455 ( .A(n28), .Y(n26) );
  CLKINVX1 U456 ( .A(n33), .Y(n31) );
  NOR2X2 U457 ( .A(n114), .B(n110), .Y(n39) );
  CLKINVX1 U458 ( .A(n119), .Y(n120) );
  NAND2X1 U459 ( .A(n115), .B(n117), .Y(n47) );
  NOR2X2 U460 ( .A(n139), .B(n140), .Y(n78) );
  NAND2X1 U461 ( .A(n107), .B(n106), .Y(n28) );
  NAND2X1 U462 ( .A(n146), .B(n105), .Y(n19) );
  CLKINVX1 U463 ( .A(n105), .Y(n106) );
  OAI22XL U464 ( .A0(n185), .A1(n226), .B0(n184), .B1(n230), .Y(n152) );
  OAI22XL U465 ( .A0(n182), .A1(n226), .B0(n181), .B1(n230), .Y(n149) );
  AO21X1 U466 ( .A0(n228), .A1(n232), .B0(n196), .Y(n162) );
  OAI22XL U467 ( .A0(n182), .A1(n230), .B0(n183), .B1(n226), .Y(n150) );
  OR2X1 U468 ( .A(n163), .B(n151), .Y(n124) );
  XNOR2X1 U469 ( .A(n163), .B(n151), .Y(n125) );
  AO21X1 U470 ( .A0(n229), .A1(n233), .B0(n205), .Y(n170) );
  OAI22XL U471 ( .A0(n186), .A1(n230), .B0(n226), .B1(n234), .Y(n142) );
  CLKINVX1 U472 ( .A(b[7]), .Y(n234) );
  ADDHX1 U473 ( .A(n144), .B(n175), .CO(n140), .S(n141) );
  OAI22XL U474 ( .A0(n204), .A1(n232), .B0(n228), .B1(n236), .Y(n144) );
  CLKINVX1 U475 ( .A(b[3]), .Y(n236) );
  OAI22XL U476 ( .A0(n180), .A1(n230), .B0(n181), .B1(n226), .Y(n148) );
  XNOR2X1 U477 ( .A(n221), .B(b[5]), .Y(n194) );
  ADDFX2 U478 ( .A(n111), .B(n147), .CI(n154), .CO(n107), .S(n108) );
  OAI22XL U479 ( .A0(n180), .A1(n226), .B0(n179), .B1(n230), .Y(n147) );
  AO21X1 U480 ( .A0(n227), .A1(n231), .B0(n187), .Y(n154) );
  CLKBUFX3 U481 ( .A(n248), .Y(n232) );
  CLKBUFX3 U482 ( .A(n247), .Y(n231) );
  CLKBUFX3 U483 ( .A(n246), .Y(n230) );
  AO21X1 U484 ( .A0(n226), .A1(n230), .B0(n178), .Y(n146) );
  XNOR2X1 U485 ( .A(a[5]), .B(b[3]), .Y(n198) );
  XNOR2X1 U486 ( .A(a[3]), .B(b[1]), .Y(n209) );
  XNOR2X1 U487 ( .A(a[6]), .B(b[5]), .Y(n188) );
  XNOR2X1 U488 ( .A(a[5]), .B(b[1]), .Y(n207) );
  XNOR2X1 U489 ( .A(a[7]), .B(b[5]), .Y(n187) );
  CLKBUFX3 U490 ( .A(n244), .Y(n228) );
  NAND2X1 U491 ( .A(n224), .B(n248), .Y(n244) );
  XOR2X1 U492 ( .A(b[2]), .B(b[3]), .Y(n224) );
  NAND2X1 U493 ( .A(n225), .B(n249), .Y(n245) );
  XOR2X1 U494 ( .A(b[0]), .B(b[1]), .Y(n225) );
  CLKBUFX3 U495 ( .A(n243), .Y(n227) );
  NAND2X1 U496 ( .A(n223), .B(n247), .Y(n243) );
  XOR2X1 U497 ( .A(b[4]), .B(b[5]), .Y(n223) );
  CLKBUFX3 U498 ( .A(n242), .Y(n226) );
  NAND2X1 U499 ( .A(n222), .B(n246), .Y(n242) );
  XOR2X1 U500 ( .A(b[6]), .B(b[7]), .Y(n222) );
  XNOR2X1 U501 ( .A(a[6]), .B(b[7]), .Y(n179) );
  XNOR2X1 U502 ( .A(a[7]), .B(b[7]), .Y(n178) );
  CLKINVX1 U503 ( .A(b[0]), .Y(n249) );
  XNOR2X1 U504 ( .A(b[2]), .B(b[1]), .Y(n248) );
  XNOR2X1 U505 ( .A(b[4]), .B(b[3]), .Y(n247) );
  XNOR2X1 U506 ( .A(b[6]), .B(b[5]), .Y(n246) );
endmodule


module PE_3_DW01_add_2 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n59, n60, n61, n62,
         n63, n66, n67, n68, n69, n71, n72, n73, n75, n76, n78, n80, n81, n82,
         n83, n84, n85, n87, n89, n90, n92, n93, n94, n95, n96, n100, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177;

  XNOR2X1 U121 ( .A(n27), .B(n3), .Y(SUM[14]) );
  NAND2X2 U122 ( .A(n168), .B(n29), .Y(n27) );
  XNOR2X2 U123 ( .A(n49), .B(n7), .Y(SUM[10]) );
  XNOR2X4 U124 ( .A(n20), .B(n2), .Y(SUM[15]) );
  XNOR2X1 U125 ( .A(n41), .B(n5), .Y(SUM[12]) );
  NAND2X2 U126 ( .A(n176), .B(n43), .Y(n41) );
  BUFX6 U127 ( .A(n60), .Y(n157) );
  NOR2X2 U128 ( .A(B[8]), .B(A[8]), .Y(n54) );
  INVXL U129 ( .A(n54), .Y(n93) );
  BUFX6 U130 ( .A(B[6]), .Y(n158) );
  NOR2X2 U131 ( .A(B[13]), .B(A[13]), .Y(n32) );
  NOR2X2 U132 ( .A(n32), .B(n25), .Y(n23) );
  NAND2X4 U133 ( .A(B[13]), .B(A[13]), .Y(n33) );
  NOR2X2 U134 ( .A(B[5]), .B(A[5]), .Y(n66) );
  NAND2X2 U135 ( .A(B[5]), .B(A[5]), .Y(n67) );
  NOR2X1 U136 ( .A(n52), .B(n50), .Y(n173) );
  NAND2X1 U137 ( .A(B[10]), .B(A[10]), .Y(n48) );
  NOR2X2 U138 ( .A(n158), .B(A[6]), .Y(n62) );
  NAND2X1 U139 ( .A(n158), .B(A[6]), .Y(n63) );
  NAND2X1 U140 ( .A(B[8]), .B(A[8]), .Y(n55) );
  CLKINVX1 U141 ( .A(n53), .Y(n52) );
  NOR2X2 U142 ( .A(B[9]), .B(A[9]), .Y(n50) );
  OR2X1 U143 ( .A(n25), .B(n33), .Y(n162) );
  AO21X2 U144 ( .A0(n81), .A1(n159), .B0(n78), .Y(n169) );
  OAI21X1 U145 ( .A0(n1), .A1(n35), .B0(n36), .Y(n34) );
  INVX3 U146 ( .A(n32), .Y(n30) );
  OAI21X2 U147 ( .A0(n43), .A1(n39), .B0(n40), .Y(n38) );
  OR2X1 U148 ( .A(B[2]), .B(A[2]), .Y(n159) );
  OR2X2 U149 ( .A(n59), .B(n62), .Y(n160) );
  OR2X1 U150 ( .A(n163), .B(n24), .Y(n161) );
  CLKINVX1 U151 ( .A(n71), .Y(n69) );
  OR2X2 U152 ( .A(n1), .B(n42), .Y(n176) );
  OR2X2 U153 ( .A(n1), .B(n28), .Y(n168) );
  BUFX8 U154 ( .A(n44), .Y(n1) );
  NOR2X1 U155 ( .A(n21), .B(n1), .Y(n175) );
  NAND2X2 U156 ( .A(n172), .B(n75), .Y(n73) );
  AND2X8 U157 ( .A(n170), .B(n72), .Y(n68) );
  NAND2X1 U158 ( .A(B[4]), .B(A[4]), .Y(n72) );
  NOR2X2 U159 ( .A(B[1]), .B(A[1]), .Y(n82) );
  XOR2XL U160 ( .A(n52), .B(n8), .Y(SUM[9]) );
  INVXL U161 ( .A(n37), .Y(n35) );
  AOI21X2 U162 ( .A0(n53), .A1(n45), .B0(n46), .Y(n44) );
  OAI21X4 U163 ( .A0(n56), .A1(n54), .B0(n55), .Y(n53) );
  NAND2X1 U164 ( .A(n162), .B(n26), .Y(n24) );
  AND2X4 U165 ( .A(n23), .B(n38), .Y(n163) );
  NOR2X6 U166 ( .A(B[14]), .B(A[14]), .Y(n25) );
  NAND2X4 U167 ( .A(n73), .B(n69), .Y(n170) );
  AOI21XL U168 ( .A0(n81), .A1(n159), .B0(n78), .Y(n76) );
  OAI21X2 U169 ( .A0(n82), .A1(n85), .B0(n83), .Y(n81) );
  NOR2X2 U170 ( .A(n50), .B(n47), .Y(n45) );
  OAI21X2 U171 ( .A0(n47), .A1(n51), .B0(n48), .Y(n46) );
  NOR2X2 U172 ( .A(B[10]), .B(A[10]), .Y(n47) );
  NOR2X6 U173 ( .A(B[11]), .B(A[11]), .Y(n42) );
  OA21X4 U174 ( .A0(n59), .A1(n63), .B0(n157), .Y(n167) );
  NOR2X4 U175 ( .A(B[7]), .B(A[7]), .Y(n59) );
  OR2X1 U176 ( .A(B[3]), .B(A[3]), .Y(n164) );
  OA21X4 U177 ( .A0(n68), .A1(n66), .B0(n67), .Y(n165) );
  AND2X2 U178 ( .A(n166), .B(n167), .Y(n56) );
  OR2X4 U179 ( .A(n160), .B(n165), .Y(n166) );
  NAND2XL U180 ( .A(n94), .B(n157), .Y(n10) );
  NAND2XL U181 ( .A(n37), .B(n30), .Y(n28) );
  AOI21XL U182 ( .A0(n38), .A1(n30), .B0(n31), .Y(n29) );
  INVXL U183 ( .A(n59), .Y(n94) );
  NAND2X2 U184 ( .A(B[9]), .B(A[9]), .Y(n51) );
  OR2X2 U185 ( .A(n175), .B(n161), .Y(n20) );
  NAND2XL U186 ( .A(B[3]), .B(A[3]), .Y(n75) );
  OR2XL U187 ( .A(B[10]), .B(A[10]), .Y(n171) );
  OR2X1 U188 ( .A(n173), .B(n174), .Y(n49) );
  INVXL U189 ( .A(n62), .Y(n95) );
  NAND2X1 U190 ( .A(n169), .B(n164), .Y(n172) );
  NAND2X1 U191 ( .A(B[14]), .B(A[14]), .Y(n26) );
  NAND2XL U192 ( .A(n89), .B(n40), .Y(n5) );
  NOR2X1 U193 ( .A(B[4]), .B(A[4]), .Y(n71) );
  INVXL U194 ( .A(n51), .Y(n174) );
  NAND2XL U195 ( .A(n23), .B(n37), .Y(n21) );
  INVXL U196 ( .A(n25), .Y(n87) );
  INVXL U197 ( .A(n39), .Y(n89) );
  INVXL U198 ( .A(n42), .Y(n90) );
  NAND2XL U199 ( .A(n90), .B(n43), .Y(n6) );
  NOR2X2 U200 ( .A(n42), .B(n39), .Y(n37) );
  INVXL U201 ( .A(n50), .Y(n92) );
  NAND2X1 U202 ( .A(B[12]), .B(A[12]), .Y(n40) );
  INVXL U203 ( .A(n38), .Y(n36) );
  XOR2XL U204 ( .A(n56), .B(n9), .Y(SUM[8]) );
  XOR2XL U205 ( .A(n11), .B(n165), .Y(SUM[6]) );
  XOR2XL U206 ( .A(n68), .B(n12), .Y(SUM[5]) );
  NAND2XL U207 ( .A(n96), .B(n67), .Y(n12) );
  XNOR2XL U208 ( .A(n73), .B(n13), .Y(SUM[4]) );
  NAND2XL U209 ( .A(n69), .B(n72), .Y(n13) );
  XOR2XL U210 ( .A(n76), .B(n14), .Y(SUM[3]) );
  NAND2XL U211 ( .A(n164), .B(n75), .Y(n14) );
  XNOR2XL U212 ( .A(n15), .B(n81), .Y(SUM[2]) );
  NAND2XL U213 ( .A(n159), .B(n80), .Y(n15) );
  XOR2XL U214 ( .A(n16), .B(n85), .Y(SUM[1]) );
  NAND2XL U215 ( .A(n100), .B(n83), .Y(n16) );
  NAND2BXL U216 ( .AN(n84), .B(n85), .Y(n17) );
  NOR2XL U217 ( .A(B[0]), .B(A[0]), .Y(n84) );
  NAND2X2 U218 ( .A(B[11]), .B(A[11]), .Y(n43) );
  NAND2X1 U219 ( .A(n87), .B(n26), .Y(n3) );
  XNOR2X1 U220 ( .A(n34), .B(n4), .Y(SUM[13]) );
  NAND2X1 U221 ( .A(n30), .B(n33), .Y(n4) );
  CLKINVX1 U222 ( .A(n33), .Y(n31) );
  XOR2X1 U223 ( .A(n1), .B(n6), .Y(SUM[11]) );
  NAND2X1 U224 ( .A(n171), .B(n48), .Y(n7) );
  CLKINVX1 U225 ( .A(n80), .Y(n78) );
  NAND2X1 U226 ( .A(n92), .B(n51), .Y(n8) );
  NAND2X1 U227 ( .A(n93), .B(n55), .Y(n9) );
  XNOR2X1 U228 ( .A(n61), .B(n10), .Y(SUM[7]) );
  OAI21XL U229 ( .A0(n165), .A1(n62), .B0(n63), .Y(n61) );
  NAND2X1 U230 ( .A(n95), .B(n63), .Y(n11) );
  CLKINVX1 U231 ( .A(n66), .Y(n96) );
  CLKINVX1 U232 ( .A(n82), .Y(n100) );
  NAND2X1 U233 ( .A(n177), .B(n19), .Y(n2) );
  NAND2X1 U234 ( .A(B[15]), .B(A[15]), .Y(n19) );
  NOR2X2 U235 ( .A(B[12]), .B(A[12]), .Y(n39) );
  NAND2X1 U236 ( .A(B[7]), .B(A[7]), .Y(n60) );
  NAND2X1 U237 ( .A(B[2]), .B(A[2]), .Y(n80) );
  NAND2X1 U238 ( .A(B[1]), .B(A[1]), .Y(n83) );
  OR2X1 U239 ( .A(B[15]), .B(A[15]), .Y(n177) );
  NAND2X1 U240 ( .A(B[0]), .B(A[0]), .Y(n85) );
  CLKINVX1 U241 ( .A(n17), .Y(SUM[0]) );
endmodule


module PE_3 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0;

  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[3]  ( .D(in[3]), .CK(clock), .Q(in_prop[3]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQXL \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQXL \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQXL \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQXL \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQXL \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQXL \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQXL \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQXL \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQXL \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX2 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  PE_3_DW_mult_tc_2 mult_196 ( .a(in), .b(mat_A_coeff), .product({N15, N14, 
        N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}) );
  PE_3_DW01_add_2 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16}) );
endmodule


module PE_2_DW_mult_tc_0_DW_mult_tc_1 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n191,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243;

  ADDFXL U2 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n193), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n195), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n197), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  OAI22X1 U140 ( .A0(n203), .A1(n202), .B0(n204), .B1(n200), .Y(n86) );
  ADDHX1 U141 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI21X1 U142 ( .A0(b[0]), .A1(n199), .B0(n202), .Y(n55) );
  NAND2X6 U143 ( .A(a[1]), .B(n200), .Y(n202) );
  OAI32X4 U144 ( .A0(n196), .A1(b[0]), .A2(n190), .B0(n196), .B1(n220), .Y(n53) );
  NAND2X6 U145 ( .A(n190), .B(n242), .Y(n220) );
  XOR2X1 U146 ( .A(b[2]), .B(n198), .Y(n213) );
  CLKBUFX3 U147 ( .A(n218), .Y(n190) );
  INVX6 U148 ( .A(a[1]), .Y(n199) );
  INVX3 U149 ( .A(a[0]), .Y(n200) );
  INVX3 U150 ( .A(a[3]), .Y(n198) );
  NAND2X6 U151 ( .A(n189), .B(n241), .Y(n211) );
  ADDFXL U152 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  ADDFXL U153 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U154 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  ADDFXL U155 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  XNOR2X4 U156 ( .A(a[2]), .B(a[1]), .Y(n189) );
  OAI22X1 U157 ( .A0(b[0]), .A1(n202), .B0(n203), .B1(n200), .Y(n87) );
  OAI22X4 U158 ( .A0(n210), .A1(n211), .B0(n189), .B1(n212), .Y(n78) );
  XOR2X1 U159 ( .A(b[2]), .B(n199), .Y(n204) );
  ADDHX1 U160 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  OAI22XL U161 ( .A0(n219), .A1(n220), .B0(n190), .B1(n221), .Y(n70) );
  OAI2BB1XL U162 ( .A0N(n200), .A1N(n202), .B0(n209), .Y(n238) );
  XOR2XL U163 ( .A(b[4]), .B(n199), .Y(n206) );
  XOR2XL U164 ( .A(b[3]), .B(n198), .Y(n214) );
  XNOR2XL U165 ( .A(a[6]), .B(a[5]), .Y(n228) );
  XOR2XL U166 ( .A(b[5]), .B(n199), .Y(n207) );
  XOR2XL U167 ( .A(b[2]), .B(n196), .Y(n222) );
  XOR2XL U168 ( .A(b[4]), .B(n198), .Y(n215) );
  XOR2XL U169 ( .A(b[6]), .B(n199), .Y(n208) );
  XOR2XL U170 ( .A(b[3]), .B(n196), .Y(n223) );
  XOR2XL U171 ( .A(b[5]), .B(n198), .Y(n216) );
  XOR2XL U172 ( .A(b[4]), .B(n196), .Y(n224) );
  XOR2XL U173 ( .A(b[6]), .B(n198), .Y(n240) );
  XOR2XL U174 ( .A(b[7]), .B(n198), .Y(n217) );
  XOR2XL U175 ( .A(b[7]), .B(a[1]), .Y(n209) );
  XOR2XL U176 ( .A(b[5]), .B(n196), .Y(n225) );
  XOR2XL U177 ( .A(b[6]), .B(n196), .Y(n226) );
  XOR2XL U178 ( .A(b[7]), .B(n196), .Y(n227) );
  CLKINVX1 U179 ( .A(n15), .Y(n193) );
  CLKINVX1 U180 ( .A(n29), .Y(n197) );
  CLKINVX1 U181 ( .A(n21), .Y(n195) );
  CLKINVX1 U182 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U183 ( .A(a[4]), .B(a[3]), .Y(n218) );
  INVX3 U184 ( .A(a[5]), .Y(n196) );
  NAND2X2 U185 ( .A(n191), .B(n243), .Y(n230) );
  CLKBUFX3 U186 ( .A(n228), .Y(n191) );
  INVX3 U187 ( .A(a[7]), .Y(n194) );
  CLKINVX1 U188 ( .A(b[0]), .Y(n201) );
  NOR2X1 U189 ( .A(n200), .B(n201), .Y(product[0]) );
  XOR2X1 U190 ( .A(b[1]), .B(n199), .Y(n203) );
  OAI22XL U191 ( .A0(n204), .A1(n202), .B0(n205), .B1(n200), .Y(n85) );
  OAI22XL U192 ( .A0(n205), .A1(n202), .B0(n206), .B1(n200), .Y(n84) );
  XOR2X1 U193 ( .A(b[3]), .B(n199), .Y(n205) );
  OAI22XL U194 ( .A0(n206), .A1(n202), .B0(n207), .B1(n200), .Y(n83) );
  OAI22XL U195 ( .A0(n207), .A1(n202), .B0(n208), .B1(n200), .Y(n82) );
  OAI2BB2XL U196 ( .B0(n208), .B1(n202), .A0N(n209), .A1N(a[0]), .Y(n81) );
  NOR2X1 U197 ( .A(n189), .B(n201), .Y(n79) );
  XOR2X1 U198 ( .A(n198), .B(b[0]), .Y(n210) );
  OAI22XL U199 ( .A0(n212), .A1(n211), .B0(n189), .B1(n213), .Y(n77) );
  XOR2X1 U200 ( .A(b[1]), .B(n198), .Y(n212) );
  OAI22XL U201 ( .A0(n213), .A1(n211), .B0(n189), .B1(n214), .Y(n76) );
  OAI22XL U202 ( .A0(n214), .A1(n211), .B0(n189), .B1(n215), .Y(n75) );
  OAI22XL U203 ( .A0(n215), .A1(n211), .B0(n189), .B1(n216), .Y(n74) );
  AO21X1 U204 ( .A0(n211), .A1(n189), .B0(n217), .Y(n72) );
  NOR2X1 U205 ( .A(n190), .B(n201), .Y(n71) );
  XOR2X1 U206 ( .A(n196), .B(b[0]), .Y(n219) );
  OAI22XL U207 ( .A0(n221), .A1(n220), .B0(n190), .B1(n222), .Y(n69) );
  XOR2X1 U208 ( .A(b[1]), .B(n196), .Y(n221) );
  OAI22XL U209 ( .A0(n222), .A1(n220), .B0(n190), .B1(n223), .Y(n68) );
  OAI22XL U210 ( .A0(n223), .A1(n220), .B0(n190), .B1(n224), .Y(n67) );
  OAI22XL U211 ( .A0(n224), .A1(n220), .B0(n190), .B1(n225), .Y(n66) );
  OAI22XL U212 ( .A0(n225), .A1(n220), .B0(n190), .B1(n226), .Y(n65) );
  AO21X1 U213 ( .A0(n220), .A1(n190), .B0(n227), .Y(n64) );
  NOR2X1 U214 ( .A(n191), .B(n201), .Y(n63) );
  OAI22XL U215 ( .A0(n229), .A1(n230), .B0(n191), .B1(n231), .Y(n62) );
  XOR2X1 U216 ( .A(n194), .B(b[0]), .Y(n229) );
  OAI22XL U217 ( .A0(n231), .A1(n230), .B0(n191), .B1(n232), .Y(n61) );
  XOR2X1 U218 ( .A(b[1]), .B(n194), .Y(n231) );
  OAI22XL U219 ( .A0(n232), .A1(n230), .B0(n191), .B1(n233), .Y(n60) );
  XOR2X1 U220 ( .A(b[2]), .B(n194), .Y(n232) );
  OAI22XL U221 ( .A0(n233), .A1(n230), .B0(n191), .B1(n234), .Y(n59) );
  XOR2X1 U222 ( .A(b[3]), .B(n194), .Y(n233) );
  OAI22XL U223 ( .A0(n234), .A1(n230), .B0(n191), .B1(n235), .Y(n58) );
  XOR2X1 U224 ( .A(b[4]), .B(n194), .Y(n234) );
  OAI22XL U225 ( .A0(n235), .A1(n230), .B0(n191), .B1(n236), .Y(n57) );
  XOR2X1 U226 ( .A(b[5]), .B(n194), .Y(n235) );
  AO21X1 U227 ( .A0(n230), .A1(n191), .B0(n237), .Y(n56) );
  OAI32X1 U228 ( .A0(n198), .A1(b[0]), .A2(n189), .B0(n198), .B1(n211), .Y(n54) );
  OAI32X1 U229 ( .A0(n194), .A1(b[0]), .A2(n191), .B0(n194), .B1(n230), .Y(n52) );
  XOR2X1 U230 ( .A(n238), .B(n239), .Y(n35) );
  NAND2BX1 U231 ( .AN(n238), .B(n239), .Y(n34) );
  OA22X1 U232 ( .A0(n216), .A1(n211), .B0(n189), .B1(n240), .Y(n239) );
  OAI22XL U233 ( .A0(n189), .A1(n217), .B0(n240), .B1(n211), .Y(n29) );
  XOR2X1 U234 ( .A(a[3]), .B(a[2]), .Y(n241) );
  OAI22XL U235 ( .A0(n190), .A1(n227), .B0(n226), .B1(n220), .Y(n21) );
  XOR2X1 U236 ( .A(a[5]), .B(a[4]), .Y(n242) );
  OAI22XL U237 ( .A0(n191), .A1(n237), .B0(n236), .B1(n230), .Y(n15) );
  XOR2X1 U238 ( .A(a[7]), .B(a[6]), .Y(n243) );
  XOR2X1 U239 ( .A(b[6]), .B(n194), .Y(n236) );
  XOR2X1 U240 ( .A(b[7]), .B(n194), .Y(n237) );
endmodule


module PE_2_DW01_add_0_DW01_add_1 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  XOR3X1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Y(SUM[15]) );
  ADDFX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module PE_2 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0, n1;

  DFFQX1 \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQX1 \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQX1 \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[3]  ( .D(n1), .CK(clock), .Q(in_prop[3]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQXL \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQX2 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  CLKBUFX3 U3 ( .A(in[3]), .Y(n1) );
  PE_2_DW_mult_tc_0_DW_mult_tc_1 mult_196 ( .a({in[7:4], n1, in[2:0]}), .b(
        mat_A_coeff), .product({N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, 
        N5, N4, N3, N2, N1, N0}) );
  PE_2_DW01_add_0_DW01_add_1 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, 
        N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, 
        N30, N29, N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, 
        N16}) );
endmodule


module PE_1_DW_mult_tc_0 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n17,
         n18, n19, n20, n21, n23, n24, n25, n26, n27, n28, n29, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n74, n75, n76,
         n77, n78, n79, n81, n82, n83, n84, n85, n86, n87, n189, n190, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n230, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n240, n241, n242, n243;

  ADDFXL U2 ( .A(n15), .B(n56), .CI(n2), .CO(n1), .S(product[14]) );
  ADDFXL U3 ( .A(n17), .B(n192), .CI(n3), .CO(n2), .S(product[13]) );
  ADDFXL U5 ( .A(n20), .B(n24), .CI(n5), .CO(n4), .S(product[11]) );
  ADDFXL U7 ( .A(n28), .B(n32), .CI(n7), .CO(n6), .S(product[9]) );
  ADDFXL U8 ( .A(n33), .B(n37), .CI(n8), .CO(n7), .S(product[8]) );
  ADDFXL U10 ( .A(n44), .B(n43), .CI(n10), .CO(n9), .S(product[6]) );
  ADDFXL U11 ( .A(n45), .B(n48), .CI(n11), .CO(n10), .S(product[5]) );
  ADDFXL U13 ( .A(n51), .B(n54), .CI(n13), .CO(n12), .S(product[3]) );
  ADDFXL U14 ( .A(n86), .B(n79), .CI(n14), .CO(n13), .S(product[2]) );
  ADDHXL U15 ( .A(n55), .B(n87), .CO(n14), .S(product[1]) );
  ADDFXL U17 ( .A(n21), .B(n64), .CI(n57), .CO(n17), .S(n18) );
  ADDFXL U18 ( .A(n194), .B(n58), .CI(n23), .CO(n19), .S(n20) );
  CMPR42X1 U20 ( .A(n72), .B(n65), .C(n29), .D(n59), .ICI(n26), .S(n25), .ICO(
        n23), .CO(n24) );
  CMPR42X1 U21 ( .A(n66), .B(n60), .C(n196), .D(n34), .ICI(n31), .S(n28), 
        .ICO(n26), .CO(n27) );
  CMPR42X1 U23 ( .A(n67), .B(n61), .C(n39), .D(n36), .ICI(n35), .S(n33), .ICO(
        n31), .CO(n32) );
  CMPR42X1 U26 ( .A(n81), .B(n68), .C(n74), .D(n41), .ICI(n40), .S(n38), .ICO(
        n36), .CO(n37) );
  ADDHXL U27 ( .A(n62), .B(n52), .CO(n39), .S(n40) );
  CMPR42X1 U28 ( .A(n63), .B(n82), .C(n75), .D(n69), .ICI(n46), .S(n43), .ICO(
        n41), .CO(n42) );
  ADDFXL U29 ( .A(n76), .B(n83), .CI(n47), .CO(n44), .S(n45) );
  ADDFXL U31 ( .A(n84), .B(n71), .CI(n77), .CO(n48), .S(n49) );
  ADDHXL U32 ( .A(n85), .B(n78), .CO(n50), .S(n51) );
  OAI22X1 U140 ( .A0(n203), .A1(n201), .B0(n204), .B1(n199), .Y(n85) );
  OAI32X4 U141 ( .A0(n195), .A1(b[0]), .A2(n189), .B0(n195), .B1(n220), .Y(n53) );
  NAND2X6 U142 ( .A(n189), .B(n242), .Y(n220) );
  XOR2X2 U143 ( .A(b[2]), .B(n198), .Y(n203) );
  INVX12 U144 ( .A(a[1]), .Y(n198) );
  CLKBUFX3 U145 ( .A(n218), .Y(n189) );
  INVX3 U146 ( .A(a[0]), .Y(n199) );
  NAND2X4 U147 ( .A(a[1]), .B(n199), .Y(n201) );
  INVX3 U148 ( .A(a[3]), .Y(n197) );
  ADDFXL U149 ( .A(n38), .B(n42), .CI(n9), .CO(n8), .S(product[7]) );
  ADDFXL U150 ( .A(n25), .B(n27), .CI(n6), .CO(n5), .S(product[10]) );
  OAI22X1 U151 ( .A0(b[0]), .A1(n201), .B0(n202), .B1(n199), .Y(n87) );
  OAI22X4 U152 ( .A0(n210), .A1(n211), .B0(n209), .B1(n212), .Y(n78) );
  XNOR2X4 U153 ( .A(a[2]), .B(a[1]), .Y(n209) );
  OAI22XL U154 ( .A0(n219), .A1(n220), .B0(n189), .B1(n221), .Y(n70) );
  ADDHX1 U155 ( .A(n70), .B(n53), .CO(n46), .S(n47) );
  ADDFXL U156 ( .A(n19), .B(n18), .CI(n4), .CO(n3), .S(product[12]) );
  ADDFX1 U157 ( .A(n49), .B(n50), .CI(n12), .CO(n11), .S(product[4]) );
  OAI2BB1XL U158 ( .A0N(n199), .A1N(n201), .B0(n208), .Y(n238) );
  NAND2X4 U159 ( .A(n209), .B(n241), .Y(n211) );
  XOR2XL U160 ( .A(b[2]), .B(n197), .Y(n213) );
  XOR2XL U161 ( .A(b[4]), .B(n198), .Y(n205) );
  XOR2XL U162 ( .A(b[3]), .B(n197), .Y(n214) );
  XNOR2XL U163 ( .A(a[6]), .B(a[5]), .Y(n228) );
  XOR2XL U164 ( .A(b[5]), .B(n198), .Y(n206) );
  XOR2XL U165 ( .A(b[4]), .B(n197), .Y(n215) );
  XOR2XL U166 ( .A(b[2]), .B(n195), .Y(n222) );
  XOR2XL U167 ( .A(b[3]), .B(n195), .Y(n223) );
  XOR2XL U168 ( .A(b[6]), .B(n198), .Y(n207) );
  XOR2XL U169 ( .A(b[5]), .B(n197), .Y(n216) );
  XOR2XL U170 ( .A(b[4]), .B(n195), .Y(n224) );
  XOR2XL U171 ( .A(b[7]), .B(n197), .Y(n217) );
  XOR2XL U172 ( .A(b[6]), .B(n197), .Y(n240) );
  XOR2XL U173 ( .A(b[7]), .B(a[1]), .Y(n208) );
  XOR2XL U174 ( .A(b[5]), .B(n195), .Y(n225) );
  XOR2XL U175 ( .A(b[6]), .B(n195), .Y(n226) );
  XOR2XL U176 ( .A(b[7]), .B(n195), .Y(n227) );
  CLKINVX1 U177 ( .A(n15), .Y(n192) );
  CLKINVX1 U178 ( .A(n29), .Y(n196) );
  CLKINVX1 U179 ( .A(n21), .Y(n194) );
  CLKINVX1 U180 ( .A(n1), .Y(product[15]) );
  XNOR2X1 U181 ( .A(a[4]), .B(a[3]), .Y(n218) );
  INVX3 U182 ( .A(a[5]), .Y(n195) );
  NAND2X2 U183 ( .A(n190), .B(n243), .Y(n230) );
  CLKBUFX3 U184 ( .A(n228), .Y(n190) );
  INVX3 U185 ( .A(a[7]), .Y(n193) );
  CLKINVX1 U186 ( .A(b[0]), .Y(n200) );
  NOR2X1 U187 ( .A(n199), .B(n200), .Y(product[0]) );
  OAI22XL U188 ( .A0(n202), .A1(n201), .B0(n203), .B1(n199), .Y(n86) );
  XOR2X1 U189 ( .A(b[1]), .B(n198), .Y(n202) );
  OAI22XL U190 ( .A0(n204), .A1(n201), .B0(n205), .B1(n199), .Y(n84) );
  XOR2X1 U191 ( .A(b[3]), .B(n198), .Y(n204) );
  OAI22XL U192 ( .A0(n205), .A1(n201), .B0(n206), .B1(n199), .Y(n83) );
  OAI22XL U193 ( .A0(n206), .A1(n201), .B0(n207), .B1(n199), .Y(n82) );
  OAI2BB2XL U194 ( .B0(n207), .B1(n201), .A0N(n208), .A1N(a[0]), .Y(n81) );
  NOR2X1 U195 ( .A(n209), .B(n200), .Y(n79) );
  XOR2X1 U196 ( .A(n197), .B(b[0]), .Y(n210) );
  OAI22XL U197 ( .A0(n212), .A1(n211), .B0(n209), .B1(n213), .Y(n77) );
  XOR2X1 U198 ( .A(b[1]), .B(n197), .Y(n212) );
  OAI22XL U199 ( .A0(n213), .A1(n211), .B0(n209), .B1(n214), .Y(n76) );
  OAI22XL U200 ( .A0(n214), .A1(n211), .B0(n209), .B1(n215), .Y(n75) );
  OAI22XL U201 ( .A0(n215), .A1(n211), .B0(n209), .B1(n216), .Y(n74) );
  AO21X1 U202 ( .A0(n211), .A1(n209), .B0(n217), .Y(n72) );
  NOR2X1 U203 ( .A(n189), .B(n200), .Y(n71) );
  XOR2X1 U204 ( .A(n195), .B(b[0]), .Y(n219) );
  OAI22XL U205 ( .A0(n221), .A1(n220), .B0(n189), .B1(n222), .Y(n69) );
  XOR2X1 U206 ( .A(b[1]), .B(n195), .Y(n221) );
  OAI22XL U207 ( .A0(n222), .A1(n220), .B0(n189), .B1(n223), .Y(n68) );
  OAI22XL U208 ( .A0(n223), .A1(n220), .B0(n189), .B1(n224), .Y(n67) );
  OAI22XL U209 ( .A0(n224), .A1(n220), .B0(n189), .B1(n225), .Y(n66) );
  OAI22XL U210 ( .A0(n225), .A1(n220), .B0(n189), .B1(n226), .Y(n65) );
  AO21X1 U211 ( .A0(n220), .A1(n189), .B0(n227), .Y(n64) );
  NOR2X1 U212 ( .A(n190), .B(n200), .Y(n63) );
  OAI22XL U213 ( .A0(n229), .A1(n230), .B0(n190), .B1(n231), .Y(n62) );
  XOR2X1 U214 ( .A(n193), .B(b[0]), .Y(n229) );
  OAI22XL U215 ( .A0(n231), .A1(n230), .B0(n190), .B1(n232), .Y(n61) );
  XOR2X1 U216 ( .A(b[1]), .B(n193), .Y(n231) );
  OAI22XL U217 ( .A0(n232), .A1(n230), .B0(n190), .B1(n233), .Y(n60) );
  XOR2X1 U218 ( .A(b[2]), .B(n193), .Y(n232) );
  OAI22XL U219 ( .A0(n233), .A1(n230), .B0(n190), .B1(n234), .Y(n59) );
  XOR2X1 U220 ( .A(b[3]), .B(n193), .Y(n233) );
  OAI22XL U221 ( .A0(n234), .A1(n230), .B0(n190), .B1(n235), .Y(n58) );
  XOR2X1 U222 ( .A(b[4]), .B(n193), .Y(n234) );
  OAI22XL U223 ( .A0(n235), .A1(n230), .B0(n190), .B1(n236), .Y(n57) );
  XOR2X1 U224 ( .A(b[5]), .B(n193), .Y(n235) );
  AO21X1 U225 ( .A0(n230), .A1(n190), .B0(n237), .Y(n56) );
  OAI21XL U226 ( .A0(b[0]), .A1(n198), .B0(n201), .Y(n55) );
  OAI32X1 U227 ( .A0(n197), .A1(b[0]), .A2(n209), .B0(n197), .B1(n211), .Y(n54) );
  OAI32X1 U228 ( .A0(n193), .A1(b[0]), .A2(n190), .B0(n193), .B1(n230), .Y(n52) );
  XOR2X1 U229 ( .A(n238), .B(n239), .Y(n35) );
  NAND2BX1 U230 ( .AN(n238), .B(n239), .Y(n34) );
  OA22X1 U231 ( .A0(n216), .A1(n211), .B0(n209), .B1(n240), .Y(n239) );
  OAI22XL U232 ( .A0(n209), .A1(n217), .B0(n240), .B1(n211), .Y(n29) );
  XOR2X1 U233 ( .A(a[3]), .B(a[2]), .Y(n241) );
  OAI22XL U234 ( .A0(n189), .A1(n227), .B0(n226), .B1(n220), .Y(n21) );
  XOR2X1 U235 ( .A(a[5]), .B(a[4]), .Y(n242) );
  OAI22XL U236 ( .A0(n190), .A1(n237), .B0(n236), .B1(n230), .Y(n15) );
  XOR2X1 U237 ( .A(a[7]), .B(a[6]), .Y(n243) );
  XOR2X1 U238 ( .A(b[6]), .B(n193), .Y(n236) );
  XOR2X1 U239 ( .A(b[7]), .B(n193), .Y(n237) );
endmodule


module PE_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [15:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
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
  XOR3X1 U1_15 ( .A(A[15]), .B(B[15]), .C(carry[15]), .Y(SUM[15]) );
  ADDFX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module PE_1 ( sum_o, in_prop, sum_i, in, mat_A_coeff, clock );
  output [15:0] sum_o;
  output [7:0] in_prop;
  input [15:0] sum_i;
  input [7:0] in;
  input [7:0] mat_A_coeff;
  input clock;
  wire   N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N9, N8, N7, N6, N5, N4, N3, N2, N15, N14, N13, N12, N11,
         N10, N1, N0, n1;

  DFFQX1 \sum_o_reg[14]  ( .D(N30), .CK(clock), .Q(sum_o[14]) );
  DFFQX1 \sum_o_reg[13]  ( .D(N29), .CK(clock), .Q(sum_o[13]) );
  DFFQX1 \sum_o_reg[12]  ( .D(N28), .CK(clock), .Q(sum_o[12]) );
  DFFQX1 \sum_o_reg[11]  ( .D(N27), .CK(clock), .Q(sum_o[11]) );
  DFFQX1 \sum_o_reg[10]  ( .D(N26), .CK(clock), .Q(sum_o[10]) );
  DFFQX1 \sum_o_reg[9]  ( .D(N25), .CK(clock), .Q(sum_o[9]) );
  DFFQX1 \sum_o_reg[8]  ( .D(N24), .CK(clock), .Q(sum_o[8]) );
  DFFQX1 \sum_o_reg[7]  ( .D(N23), .CK(clock), .Q(sum_o[7]) );
  DFFQX1 \sum_o_reg[6]  ( .D(N22), .CK(clock), .Q(sum_o[6]) );
  DFFQX1 \sum_o_reg[5]  ( .D(N21), .CK(clock), .Q(sum_o[5]) );
  DFFQX1 \sum_o_reg[4]  ( .D(N20), .CK(clock), .Q(sum_o[4]) );
  DFFQX1 \sum_o_reg[3]  ( .D(N19), .CK(clock), .Q(sum_o[3]) );
  DFFQX1 \sum_o_reg[2]  ( .D(N18), .CK(clock), .Q(sum_o[2]) );
  DFFQX1 \sum_o_reg[1]  ( .D(N17), .CK(clock), .Q(sum_o[1]) );
  DFFQX1 \sum_o_reg[0]  ( .D(N16), .CK(clock), .Q(sum_o[0]) );
  DFFQXL \sum_o_reg[15]  ( .D(N31), .CK(clock), .Q(sum_o[15]) );
  DFFQX1 \in_prop_reg[7]  ( .D(in[7]), .CK(clock), .Q(in_prop[7]) );
  DFFQX1 \in_prop_reg[6]  ( .D(in[6]), .CK(clock), .Q(in_prop[6]) );
  DFFQX1 \in_prop_reg[5]  ( .D(in[5]), .CK(clock), .Q(in_prop[5]) );
  DFFQX1 \in_prop_reg[4]  ( .D(in[4]), .CK(clock), .Q(in_prop[4]) );
  DFFQX1 \in_prop_reg[3]  ( .D(n1), .CK(clock), .Q(in_prop[3]) );
  DFFQX1 \in_prop_reg[2]  ( .D(in[2]), .CK(clock), .Q(in_prop[2]) );
  DFFQX1 \in_prop_reg[1]  ( .D(in[1]), .CK(clock), .Q(in_prop[1]) );
  DFFQX1 \in_prop_reg[0]  ( .D(in[0]), .CK(clock), .Q(in_prop[0]) );
  CLKBUFX3 U3 ( .A(in[3]), .Y(n1) );
  PE_1_DW_mult_tc_0 mult_196 ( .a({in[7:4], n1, in[2:0]}), .b(mat_A_coeff), 
        .product({N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
  PE_1_DW01_add_0 add_196 ( .A(sum_i), .B({N15, N14, N13, N12, N11, N10, N9, 
        N8, N7, N6, N5, N4, N3, N2, N1, N0}), .CI(1'b0), .SUM({N31, N30, N29, 
        N28, N27, N26, N25, N24, N23, N22, N21, N20, N19, N18, N17, N16}) );
endmodule


module MAT ( out, ready, in, start, clock );
  output [15:0] out;
  input [7:0] in;
  input start, clock;
  output ready;
  wire   n70, st_r, N15, N16, \in_row[0][7] , \in_row[0][6] , \in_row[0][5] ,
         \in_row[0][4] , \in_row[0][3] , \in_row[0][2] , \in_row[0][1] ,
         \in_row[0][0] , \in_row[1][7] , \in_row[1][6] , \in_row[1][5] ,
         \in_row[1][4] , \in_row[1][3] , \in_row[1][2] , \in_row[1][1] ,
         \in_row[1][0] , \in_row[2][7] , \in_row[2][6] , \in_row[2][5] ,
         \in_row[2][4] , \in_row[2][3] , \in_row[2][2] , \in_row[2][1] ,
         \in_row[2][0] , \sum_o[0][15] , \sum_o[0][14] , \sum_o[0][13] ,
         \sum_o[0][12] , \sum_o[0][11] , \sum_o[0][10] , \sum_o[0][9] ,
         \sum_o[0][8] , \sum_o[0][7] , \sum_o[0][6] , \sum_o[0][5] ,
         \sum_o[0][4] , \sum_o[0][3] , \sum_o[0][2] , \sum_o[0][1] ,
         \sum_o[0][0] , \sum_o[1][15] , \sum_o[1][14] , \sum_o[1][13] ,
         \sum_o[1][12] , \sum_o[1][11] , \sum_o[1][10] , \sum_o[1][9] ,
         \sum_o[1][8] , \sum_o[1][7] , \sum_o[1][6] , \sum_o[1][5] ,
         \sum_o[1][4] , \sum_o[1][3] , \sum_o[1][2] , \sum_o[1][1] ,
         \sum_o[1][0] , \sum_o[2][15] , \sum_o[2][14] , \sum_o[2][13] ,
         \sum_o[2][12] , \sum_o[2][11] , \sum_o[2][10] , \sum_o[2][9] ,
         \sum_o[2][8] , \sum_o[2][7] , \sum_o[2][6] , \sum_o[2][5] ,
         \sum_o[2][4] , \sum_o[2][3] , \sum_o[2][2] , \sum_o[2][1] ,
         \sum_o[2][0] , \sum_o[3][15] , \sum_o[3][14] , \sum_o[3][13] ,
         \sum_o[3][12] , \sum_o[3][11] , \sum_o[3][10] , \sum_o[3][9] ,
         \sum_o[3][8] , \sum_o[3][7] , \sum_o[3][6] , \sum_o[3][5] ,
         \sum_o[3][4] , \sum_o[3][3] , \sum_o[3][2] , \sum_o[3][1] ,
         \sum_o[3][0] , \sum_o[4][15] , \sum_o[4][14] , \sum_o[4][13] ,
         \sum_o[4][12] , \sum_o[4][11] , \sum_o[4][10] , \sum_o[4][9] ,
         \sum_o[4][8] , \sum_o[4][7] , \sum_o[4][6] , \sum_o[4][5] ,
         \sum_o[4][4] , \sum_o[4][3] , \sum_o[4][2] , \sum_o[4][1] ,
         \sum_o[4][0] , \sum_o[5][15] , \sum_o[5][14] , \sum_o[5][13] ,
         \sum_o[5][12] , \sum_o[5][11] , \sum_o[5][10] , \sum_o[5][9] ,
         \sum_o[5][8] , \sum_o[5][7] , \sum_o[5][6] , \sum_o[5][5] ,
         \sum_o[5][4] , \sum_o[5][3] , \sum_o[5][2] , \sum_o[5][1] ,
         \sum_o[5][0] , \sum_o[6][15] , \sum_o[6][14] , \sum_o[6][13] ,
         \sum_o[6][12] , \sum_o[6][11] , \sum_o[6][10] , \sum_o[6][9] ,
         \sum_o[6][8] , \sum_o[6][7] , \sum_o[6][6] , \sum_o[6][5] ,
         \sum_o[6][4] , \sum_o[6][3] , \sum_o[6][2] , \sum_o[6][1] ,
         \sum_o[6][0] , \sum_o[7][15] , \sum_o[7][14] , \sum_o[7][13] ,
         \sum_o[7][12] , \sum_o[7][11] , \sum_o[7][10] , \sum_o[7][9] ,
         \sum_o[7][8] , \sum_o[7][7] , \sum_o[7][6] , \sum_o[7][5] ,
         \sum_o[7][4] , \sum_o[7][3] , \sum_o[7][2] , \sum_o[7][1] ,
         \sum_o[7][0] , \sum_o[8][15] , \sum_o[8][14] , \sum_o[8][13] ,
         \sum_o[8][12] , \sum_o[8][11] , \sum_o[8][10] , \sum_o[8][9] ,
         \sum_o[8][8] , \sum_o[8][7] , \sum_o[8][6] , \sum_o[8][5] ,
         \sum_o[8][4] , \sum_o[8][3] , \sum_o[8][2] , \sum_o[8][1] ,
         \sum_o[8][0] , \in_prop[0][7] , \in_prop[0][6] , \in_prop[0][5] ,
         \in_prop[0][4] , \in_prop[0][3] , \in_prop[0][2] , \in_prop[0][1] ,
         \in_prop[0][0] , \in_prop[1][7] , \in_prop[1][6] , \in_prop[1][5] ,
         \in_prop[1][4] , \in_prop[1][3] , \in_prop[1][2] , \in_prop[1][1] ,
         \in_prop[1][0] , \in_prop[2][7] , \in_prop[2][6] , \in_prop[2][5] ,
         \in_prop[2][4] , \in_prop[2][3] , \in_prop[2][2] , \in_prop[2][1] ,
         \in_prop[2][0] , \in_prop[3][7] , \in_prop[3][6] , \in_prop[3][5] ,
         \in_prop[3][4] , \in_prop[3][3] , \in_prop[3][2] , \in_prop[3][1] ,
         \in_prop[3][0] , \in_prop[4][7] , \in_prop[4][6] , \in_prop[4][5] ,
         \in_prop[4][4] , \in_prop[4][3] , \in_prop[4][2] , \in_prop[4][1] ,
         \in_prop[4][0] , \in_prop[5][7] , \in_prop[5][6] , \in_prop[5][5] ,
         \in_prop[5][4] , \in_prop[5][3] , \in_prop[5][2] , \in_prop[5][1] ,
         \in_prop[5][0] , st_2r, st_3r, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n43, n44,
         n45, n46, n47, n48, n49, n50, n67, n68, n69;
  wire   [1:0] cnt_row;

  AO22X4 U3 ( .A0(n44), .A1(in[0]), .B0(n22), .B1(\in_row[2][0] ), .Y(
        \in_row[2][0] ) );
  AO22X4 U4 ( .A0(n44), .A1(in[1]), .B0(n22), .B1(\in_row[2][1] ), .Y(
        \in_row[2][1] ) );
  AO22X4 U5 ( .A0(n44), .A1(in[2]), .B0(n22), .B1(\in_row[2][2] ), .Y(
        \in_row[2][2] ) );
  AO22X4 U6 ( .A0(n44), .A1(in[3]), .B0(n22), .B1(\in_row[2][3] ), .Y(
        \in_row[2][3] ) );
  AO22X4 U7 ( .A0(n44), .A1(in[4]), .B0(n22), .B1(\in_row[2][4] ), .Y(
        \in_row[2][4] ) );
  AO22X4 U8 ( .A0(n44), .A1(in[5]), .B0(n22), .B1(\in_row[2][5] ), .Y(
        \in_row[2][5] ) );
  AO22X4 U9 ( .A0(n44), .A1(in[6]), .B0(n22), .B1(\in_row[2][6] ), .Y(
        \in_row[2][6] ) );
  AO22X4 U10 ( .A0(n44), .A1(in[7]), .B0(n22), .B1(\in_row[2][7] ), .Y(
        \in_row[2][7] ) );
  AO22X4 U11 ( .A0(in[0]), .A1(n49), .B0(n50), .B1(\in_row[1][0] ), .Y(
        \in_row[1][0] ) );
  AO22X4 U12 ( .A0(in[1]), .A1(n49), .B0(n50), .B1(\in_row[1][1] ), .Y(
        \in_row[1][1] ) );
  AO22X4 U13 ( .A0(in[2]), .A1(n49), .B0(n50), .B1(\in_row[1][2] ), .Y(
        \in_row[1][2] ) );
  AO22X4 U14 ( .A0(in[3]), .A1(n49), .B0(n50), .B1(\in_row[1][3] ), .Y(
        \in_row[1][3] ) );
  AO22X4 U15 ( .A0(in[4]), .A1(n49), .B0(n50), .B1(\in_row[1][4] ), .Y(
        \in_row[1][4] ) );
  AO22X4 U16 ( .A0(in[5]), .A1(n49), .B0(n50), .B1(\in_row[1][5] ), .Y(
        \in_row[1][5] ) );
  AO22X4 U17 ( .A0(in[6]), .A1(n49), .B0(n50), .B1(\in_row[1][6] ), .Y(
        \in_row[1][6] ) );
  AO22X4 U18 ( .A0(in[7]), .A1(n49), .B0(n50), .B1(\in_row[1][7] ), .Y(
        \in_row[1][7] ) );
  AO22X4 U19 ( .A0(in[0]), .A1(n46), .B0(n47), .B1(\in_row[0][0] ), .Y(
        \in_row[0][0] ) );
  AO22X4 U20 ( .A0(in[1]), .A1(n46), .B0(n47), .B1(\in_row[0][1] ), .Y(
        \in_row[0][1] ) );
  AO22X4 U21 ( .A0(in[2]), .A1(n46), .B0(n47), .B1(\in_row[0][2] ), .Y(
        \in_row[0][2] ) );
  AO22X4 U22 ( .A0(in[3]), .A1(n46), .B0(n47), .B1(\in_row[0][3] ), .Y(
        \in_row[0][3] ) );
  AO22X4 U23 ( .A0(in[4]), .A1(n46), .B0(n47), .B1(\in_row[0][4] ), .Y(
        \in_row[0][4] ) );
  AO22X4 U24 ( .A0(in[5]), .A1(n46), .B0(n47), .B1(\in_row[0][5] ), .Y(
        \in_row[0][5] ) );
  AO22X4 U25 ( .A0(in[6]), .A1(n46), .B0(n47), .B1(\in_row[0][6] ), .Y(
        \in_row[0][6] ) );
  AO22X4 U26 ( .A0(in[7]), .A1(n46), .B0(n47), .B1(\in_row[0][7] ), .Y(
        \in_row[0][7] ) );
  DFFQX1 st_r_reg ( .D(start), .CK(clock), .Q(st_r) );
  DFFQX1 \cnt_row_reg[1]  ( .D(N16), .CK(clock), .Q(cnt_row[1]) );
  DFFQX1 \cnt_row_reg[0]  ( .D(N15), .CK(clock), .Q(cnt_row[0]) );
  DFFQX1 st_2r_reg ( .D(st_r), .CK(clock), .Q(st_2r) );
  DFFQX1 st_3r_reg ( .D(st_2r), .CK(clock), .Q(st_3r) );
  DFFQX1 ready_reg ( .D(st_3r), .CK(clock), .Q(n70) );
  INVX12 U70 ( .A(n34), .Y(out[15]) );
  AOI222X4 U71 ( .A0(\sum_o[2][15] ), .A1(n45), .B0(\sum_o[8][15] ), .B1(n43), 
        .C0(\sum_o[5][15] ), .C1(n48), .Y(n34) );
  INVX12 U72 ( .A(n35), .Y(out[14]) );
  AOI222X4 U73 ( .A0(\sum_o[2][14] ), .A1(n45), .B0(\sum_o[8][14] ), .B1(n43), 
        .C0(\sum_o[5][14] ), .C1(n48), .Y(n35) );
  INVX12 U74 ( .A(n36), .Y(out[13]) );
  AOI222X4 U75 ( .A0(\sum_o[2][13] ), .A1(n24), .B0(\sum_o[8][13] ), .B1(n43), 
        .C0(\sum_o[5][13] ), .C1(n48), .Y(n36) );
  INVX12 U76 ( .A(n37), .Y(out[12]) );
  AOI222X4 U77 ( .A0(\sum_o[2][12] ), .A1(n45), .B0(\sum_o[8][12] ), .B1(n43), 
        .C0(\sum_o[5][12] ), .C1(n48), .Y(n37) );
  INVX12 U78 ( .A(n38), .Y(out[11]) );
  AOI222X1 U79 ( .A0(\sum_o[2][11] ), .A1(n46), .B0(\sum_o[8][11] ), .B1(n43), 
        .C0(\sum_o[5][11] ), .C1(n49), .Y(n38) );
  INVX12 U80 ( .A(n39), .Y(out[10]) );
  AOI222X1 U81 ( .A0(\sum_o[2][10] ), .A1(n45), .B0(\sum_o[8][10] ), .B1(n43), 
        .C0(\sum_o[5][10] ), .C1(n48), .Y(n39) );
  INVX12 U82 ( .A(n28), .Y(out[6]) );
  AOI222X1 U83 ( .A0(\sum_o[2][6] ), .A1(n46), .B0(\sum_o[8][6] ), .B1(n43), 
        .C0(\sum_o[5][6] ), .C1(n49), .Y(n28) );
  INVX12 U84 ( .A(n29), .Y(out[5]) );
  AOI222X1 U85 ( .A0(\sum_o[2][5] ), .A1(n45), .B0(\sum_o[8][5] ), .B1(n43), 
        .C0(\sum_o[5][5] ), .C1(n48), .Y(n29) );
  INVX12 U86 ( .A(n30), .Y(out[4]) );
  AOI222X1 U87 ( .A0(\sum_o[2][4] ), .A1(n45), .B0(\sum_o[8][4] ), .B1(n43), 
        .C0(\sum_o[5][4] ), .C1(n48), .Y(n30) );
  INVX12 U88 ( .A(n31), .Y(out[3]) );
  AOI222X1 U89 ( .A0(\sum_o[2][3] ), .A1(n45), .B0(\sum_o[8][3] ), .B1(n43), 
        .C0(\sum_o[5][3] ), .C1(n48), .Y(n31) );
  INVX12 U90 ( .A(n32), .Y(out[2]) );
  AOI222X1 U91 ( .A0(\sum_o[2][2] ), .A1(n45), .B0(\sum_o[8][2] ), .B1(n43), 
        .C0(\sum_o[5][2] ), .C1(n48), .Y(n32) );
  INVX12 U92 ( .A(n25), .Y(out[9]) );
  AOI222X1 U93 ( .A0(\sum_o[2][9] ), .A1(n46), .B0(\sum_o[8][9] ), .B1(n44), 
        .C0(\sum_o[5][9] ), .C1(n49), .Y(n25) );
  INVX12 U94 ( .A(n33), .Y(out[1]) );
  AOI222X1 U95 ( .A0(\sum_o[2][1] ), .A1(n45), .B0(\sum_o[8][1] ), .B1(n43), 
        .C0(\sum_o[5][1] ), .C1(n48), .Y(n33) );
  INVX12 U96 ( .A(n26), .Y(out[8]) );
  AOI222X1 U97 ( .A0(\sum_o[2][8] ), .A1(n46), .B0(\sum_o[8][8] ), .B1(n44), 
        .C0(\sum_o[5][8] ), .C1(n49), .Y(n26) );
  INVX12 U98 ( .A(n40), .Y(out[0]) );
  AOI222X1 U99 ( .A0(\sum_o[2][0] ), .A1(n45), .B0(\sum_o[8][0] ), .B1(n43), 
        .C0(\sum_o[5][0] ), .C1(n48), .Y(n40) );
  INVX12 U100 ( .A(n27), .Y(out[7]) );
  AOI222X1 U101 ( .A0(\sum_o[2][7] ), .A1(n46), .B0(\sum_o[8][7] ), .B1(n44), 
        .C0(\sum_o[5][7] ), .C1(n49), .Y(n27) );
  BUFX12 U102 ( .A(n70), .Y(ready) );
  CLKBUFX3 U103 ( .A(n68), .Y(n44) );
  CLKINVX1 U104 ( .A(cnt_row[0]), .Y(n69) );
  NAND2X2 U105 ( .A(cnt_row[1]), .B(n69), .Y(n22) );
  CLKBUFX2 U106 ( .A(n68), .Y(n43) );
  CLKINVX3 U107 ( .A(n48), .Y(n50) );
  NOR2XL U108 ( .A(n50), .B(n41), .Y(N16) );
  NOR2XL U109 ( .A(n69), .B(cnt_row[1]), .Y(n23) );
  NOR2XL U110 ( .A(cnt_row[1]), .B(cnt_row[0]), .Y(n24) );
  OAI21XL U111 ( .A0(st_r), .A1(n67), .B0(n22), .Y(n41) );
  NOR2XL U112 ( .A(cnt_row[0]), .B(n41), .Y(N15) );
  INVX3 U113 ( .A(n50), .Y(n49) );
  INVX3 U114 ( .A(n47), .Y(n46) );
  CLKINVX1 U115 ( .A(n22), .Y(n68) );
  INVX3 U116 ( .A(n45), .Y(n47) );
  CLKINVX1 U117 ( .A(start), .Y(n67) );
  CLKBUFX3 U118 ( .A(n23), .Y(n48) );
  CLKBUFX3 U119 ( .A(n24), .Y(n45) );
  PE_0 PE0 ( .sum_o({\sum_o[0][15] , \sum_o[0][14] , \sum_o[0][13] , 
        \sum_o[0][12] , \sum_o[0][11] , \sum_o[0][10] , \sum_o[0][9] , 
        \sum_o[0][8] , \sum_o[0][7] , \sum_o[0][6] , \sum_o[0][5] , 
        \sum_o[0][4] , \sum_o[0][3] , \sum_o[0][2] , \sum_o[0][1] , 
        \sum_o[0][0] }), .in_prop({\in_prop[0][7] , \in_prop[0][6] , 
        \in_prop[0][5] , \in_prop[0][4] , \in_prop[0][3] , \in_prop[0][2] , 
        \in_prop[0][1] , \in_prop[0][0] }), .sum_i({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .in({\in_row[0][7] , \in_row[0][6] , \in_row[0][5] , \in_row[0][4] , 
        \in_row[0][3] , \in_row[0][2] , \in_row[0][1] , \in_row[0][0] }), 
        .mat_A_coeff({1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .clock(clock) );
  PE_8 PE3 ( .sum_o({\sum_o[3][15] , \sum_o[3][14] , \sum_o[3][13] , 
        \sum_o[3][12] , \sum_o[3][11] , \sum_o[3][10] , \sum_o[3][9] , 
        \sum_o[3][8] , \sum_o[3][7] , \sum_o[3][6] , \sum_o[3][5] , 
        \sum_o[3][4] , \sum_o[3][3] , \sum_o[3][2] , \sum_o[3][1] , 
        \sum_o[3][0] }), .in_prop({\in_prop[3][7] , \in_prop[3][6] , 
        \in_prop[3][5] , \in_prop[3][4] , \in_prop[3][3] , \in_prop[3][2] , 
        \in_prop[3][1] , \in_prop[3][0] }), .sum_i({1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .in({\in_prop[0][7] , \in_prop[0][6] , \in_prop[0][5] , \in_prop[0][4] , 
        \in_prop[0][3] , \in_prop[0][2] , \in_prop[0][1] , \in_prop[0][0] }), 
        .mat_A_coeff({1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0}), 
        .clock(clock) );
  PE_7 PE6 ( .sum_o({\sum_o[6][15] , \sum_o[6][14] , \sum_o[6][13] , 
        \sum_o[6][12] , \sum_o[6][11] , \sum_o[6][10] , \sum_o[6][9] , 
        \sum_o[6][8] , \sum_o[6][7] , \sum_o[6][6] , \sum_o[6][5] , 
        \sum_o[6][4] , \sum_o[6][3] , \sum_o[6][2] , \sum_o[6][1] , 
        \sum_o[6][0] }), .sum_i({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .in({
        \in_prop[3][7] , \in_prop[3][6] , \in_prop[3][5] , \in_prop[3][4] , 
        \in_prop[3][3] , \in_prop[3][2] , \in_prop[3][1] , \in_prop[3][0] }), 
        .mat_A_coeff({1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1}), 
        .clock(clock) );
  PE_6 PE1 ( .sum_o({\sum_o[1][15] , \sum_o[1][14] , \sum_o[1][13] , 
        \sum_o[1][12] , \sum_o[1][11] , \sum_o[1][10] , \sum_o[1][9] , 
        \sum_o[1][8] , \sum_o[1][7] , \sum_o[1][6] , \sum_o[1][5] , 
        \sum_o[1][4] , \sum_o[1][3] , \sum_o[1][2] , \sum_o[1][1] , 
        \sum_o[1][0] }), .in_prop({\in_prop[1][7] , \in_prop[1][6] , 
        \in_prop[1][5] , \in_prop[1][4] , \in_prop[1][3] , \in_prop[1][2] , 
        \in_prop[1][1] , \in_prop[1][0] }), .sum_i({\sum_o[0][15] , 
        \sum_o[0][14] , \sum_o[0][13] , \sum_o[0][12] , \sum_o[0][11] , 
        \sum_o[0][10] , \sum_o[0][9] , \sum_o[0][8] , \sum_o[0][7] , 
        \sum_o[0][6] , \sum_o[0][5] , \sum_o[0][4] , \sum_o[0][3] , 
        \sum_o[0][2] , \sum_o[0][1] , \sum_o[0][0] }), .in({\in_row[1][7] , 
        \in_row[1][6] , \in_row[1][5] , \in_row[1][4] , \in_row[1][3] , 
        \in_row[1][2] , \in_row[1][1] , \in_row[1][0] }), .mat_A_coeff({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b0}), .clock(clock) );
  PE_5 PE4 ( .sum_o({\sum_o[4][15] , \sum_o[4][14] , \sum_o[4][13] , 
        \sum_o[4][12] , \sum_o[4][11] , \sum_o[4][10] , \sum_o[4][9] , 
        \sum_o[4][8] , \sum_o[4][7] , \sum_o[4][6] , \sum_o[4][5] , 
        \sum_o[4][4] , \sum_o[4][3] , \sum_o[4][2] , \sum_o[4][1] , 
        \sum_o[4][0] }), .in_prop({\in_prop[4][7] , \in_prop[4][6] , 
        \in_prop[4][5] , \in_prop[4][4] , \in_prop[4][3] , \in_prop[4][2] , 
        \in_prop[4][1] , \in_prop[4][0] }), .sum_i({\sum_o[3][15] , 
        \sum_o[3][14] , \sum_o[3][13] , \sum_o[3][12] , \sum_o[3][11] , 
        \sum_o[3][10] , \sum_o[3][9] , \sum_o[3][8] , \sum_o[3][7] , 
        \sum_o[3][6] , \sum_o[3][5] , \sum_o[3][4] , \sum_o[3][3] , 
        \sum_o[3][2] , \sum_o[3][1] , \sum_o[3][0] }), .in({\in_prop[1][7] , 
        \in_prop[1][6] , \in_prop[1][5] , \in_prop[1][4] , \in_prop[1][3] , 
        \in_prop[1][2] , \in_prop[1][1] , \in_prop[1][0] }), .mat_A_coeff({
        1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .clock(clock) );
  PE_4 PE7 ( .sum_o({\sum_o[7][15] , \sum_o[7][14] , \sum_o[7][13] , 
        \sum_o[7][12] , \sum_o[7][11] , \sum_o[7][10] , \sum_o[7][9] , 
        \sum_o[7][8] , \sum_o[7][7] , \sum_o[7][6] , \sum_o[7][5] , 
        \sum_o[7][4] , \sum_o[7][3] , \sum_o[7][2] , \sum_o[7][1] , 
        \sum_o[7][0] }), .sum_i({\sum_o[6][15] , \sum_o[6][14] , 
        \sum_o[6][13] , \sum_o[6][12] , \sum_o[6][11] , \sum_o[6][10] , 
        \sum_o[6][9] , \sum_o[6][8] , \sum_o[6][7] , \sum_o[6][6] , 
        \sum_o[6][5] , \sum_o[6][4] , \sum_o[6][3] , \sum_o[6][2] , 
        \sum_o[6][1] , \sum_o[6][0] }), .in({\in_prop[4][7] , \in_prop[4][6] , 
        \in_prop[4][5] , \in_prop[4][4] , \in_prop[4][3] , \in_prop[4][2] , 
        \in_prop[4][1] , \in_prop[4][0] }), .mat_A_coeff({1'b1, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1}), .clock(clock) );
  PE_3 PE2 ( .sum_o({\sum_o[2][15] , \sum_o[2][14] , \sum_o[2][13] , 
        \sum_o[2][12] , \sum_o[2][11] , \sum_o[2][10] , \sum_o[2][9] , 
        \sum_o[2][8] , \sum_o[2][7] , \sum_o[2][6] , \sum_o[2][5] , 
        \sum_o[2][4] , \sum_o[2][3] , \sum_o[2][2] , \sum_o[2][1] , 
        \sum_o[2][0] }), .in_prop({\in_prop[2][7] , \in_prop[2][6] , 
        \in_prop[2][5] , \in_prop[2][4] , \in_prop[2][3] , \in_prop[2][2] , 
        \in_prop[2][1] , \in_prop[2][0] }), .sum_i({\sum_o[1][15] , 
        \sum_o[1][14] , \sum_o[1][13] , \sum_o[1][12] , \sum_o[1][11] , 
        \sum_o[1][10] , \sum_o[1][9] , \sum_o[1][8] , \sum_o[1][7] , 
        \sum_o[1][6] , \sum_o[1][5] , \sum_o[1][4] , \sum_o[1][3] , 
        \sum_o[1][2] , \sum_o[1][1] , \sum_o[1][0] }), .in({\in_row[2][7] , 
        \in_row[2][6] , \in_row[2][5] , \in_row[2][4] , \in_row[2][3] , 
        \in_row[2][2] , \in_row[2][1] , \in_row[2][0] }), .mat_A_coeff({1'b0, 
        1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1}), .clock(clock) );
  PE_2 PE5 ( .sum_o({\sum_o[5][15] , \sum_o[5][14] , \sum_o[5][13] , 
        \sum_o[5][12] , \sum_o[5][11] , \sum_o[5][10] , \sum_o[5][9] , 
        \sum_o[5][8] , \sum_o[5][7] , \sum_o[5][6] , \sum_o[5][5] , 
        \sum_o[5][4] , \sum_o[5][3] , \sum_o[5][2] , \sum_o[5][1] , 
        \sum_o[5][0] }), .in_prop({\in_prop[5][7] , \in_prop[5][6] , 
        \in_prop[5][5] , \in_prop[5][4] , \in_prop[5][3] , \in_prop[5][2] , 
        \in_prop[5][1] , \in_prop[5][0] }), .sum_i({\sum_o[4][15] , 
        \sum_o[4][14] , \sum_o[4][13] , \sum_o[4][12] , \sum_o[4][11] , 
        \sum_o[4][10] , \sum_o[4][9] , \sum_o[4][8] , \sum_o[4][7] , 
        \sum_o[4][6] , \sum_o[4][5] , \sum_o[4][4] , \sum_o[4][3] , 
        \sum_o[4][2] , \sum_o[4][1] , \sum_o[4][0] }), .in({\in_prop[2][7] , 
        \in_prop[2][6] , \in_prop[2][5] , \in_prop[2][4] , \in_prop[2][3] , 
        \in_prop[2][2] , \in_prop[2][1] , \in_prop[2][0] }), .mat_A_coeff({
        1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0}), .clock(clock) );
  PE_1 PE8 ( .sum_o({\sum_o[8][15] , \sum_o[8][14] , \sum_o[8][13] , 
        \sum_o[8][12] , \sum_o[8][11] , \sum_o[8][10] , \sum_o[8][9] , 
        \sum_o[8][8] , \sum_o[8][7] , \sum_o[8][6] , \sum_o[8][5] , 
        \sum_o[8][4] , \sum_o[8][3] , \sum_o[8][2] , \sum_o[8][1] , 
        \sum_o[8][0] }), .sum_i({\sum_o[7][15] , \sum_o[7][14] , 
        \sum_o[7][13] , \sum_o[7][12] , \sum_o[7][11] , \sum_o[7][10] , 
        \sum_o[7][9] , \sum_o[7][8] , \sum_o[7][7] , \sum_o[7][6] , 
        \sum_o[7][5] , \sum_o[7][4] , \sum_o[7][3] , \sum_o[7][2] , 
        \sum_o[7][1] , \sum_o[7][0] }), .in({\in_prop[5][7] , \in_prop[5][6] , 
        \in_prop[5][5] , \in_prop[5][4] , \in_prop[5][3] , \in_prop[5][2] , 
        \in_prop[5][1] , \in_prop[5][0] }), .mat_A_coeff({1'b0, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .clock(clock) );
endmodule

