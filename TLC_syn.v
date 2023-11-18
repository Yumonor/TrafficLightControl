/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03
// Date      : Sun May 24 01:29:08 2020
/////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module TLC_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;
  wire   [7:0] carry;

  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(n2), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XNOR2X1 U1 ( .A(B[6]), .B(carry[6]), .Y(DIFF[6]) );
  CLKINVX1 U2 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U5 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U6 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U7 ( .A(B[4]), .Y(n6) );
  CLKBUFX3 U8 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module TLC_DW01_sub_1 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n2, n3, n4, n5, n6, n7;
  wire   [7:0] carry;

  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(n2), .CO(carry[2]), .S(DIFF[1]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  XNOR2X1 U1 ( .A(B[6]), .B(carry[6]), .Y(DIFF[6]) );
  CLKINVX1 U2 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U3 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U4 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U5 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U6 ( .A(B[0]), .Y(n2) );
  CLKINVX1 U7 ( .A(B[1]), .Y(n3) );
  CLKBUFX3 U8 ( .A(B[0]), .Y(DIFF[0]) );
endmodule


module TLC_DW01_inc_0 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module TLC_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module TLC_DW01_sub_8 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_6 ( .A(A[6]), .B(n8), .C(carry[6]), .Y(DIFF[6]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
endmodule


module TLC_DW01_add_5 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [6:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XNOR2X1 U1 ( .A(B[0]), .B(n2), .Y(SUM[0]) );
  NOR2X1 U2 ( .A(n2), .B(n3), .Y(carry[1]) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n3) );
  XNOR2X1 U4 ( .A(B[6]), .B(n1), .Y(SUM[6]) );
  CLKINVX1 U5 ( .A(carry[6]), .Y(n1) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n2) );
endmodule


module TLC_DW01_inc_5 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module TLC_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  XOR3X1 U2_6 ( .A(A[6]), .B(n8), .C(carry[6]), .Y(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
endmodule


module TLC_DW01_inc_4 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module TLC_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  XOR3X1 U2_6 ( .A(A[6]), .B(n8), .C(carry[6]), .Y(DIFF[6]) );
  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[0]), .Y(n2) );
  NAND2X1 U3 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U4 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U5 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U6 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U7 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U8 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U9 ( .A(B[5]), .Y(n7) );
  CLKINVX1 U10 ( .A(B[6]), .Y(n8) );
endmodule


module TLC_DW01_add_3 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [6:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(B[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XNOR2X1 U1 ( .A(B[6]), .B(n1), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(carry[6]), .Y(n1) );
endmodule


module TLC_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_6 ( .A(A[6]), .B(n8), .C(carry[6]), .Y(DIFF[6]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
endmodule


module TLC_DW01_add_1 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [6:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(B[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CLKINVX1 U1 ( .A(B[0]), .Y(SUM[0]) );
  XNOR2X1 U2 ( .A(B[6]), .B(n1), .Y(SUM[6]) );
  CLKINVX1 U3 ( .A(carry[6]), .Y(n1) );
endmodule


module TLC_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [7:0] carry;

  ADDFXL U2_5 ( .A(A[5]), .B(n7), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFXL U2_4 ( .A(A[4]), .B(n6), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFXL U2_3 ( .A(A[3]), .B(n5), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFXL U2_2 ( .A(A[2]), .B(n4), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFXL U2_1 ( .A(A[1]), .B(n3), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_6 ( .A(A[6]), .B(n8), .C(carry[6]), .Y(DIFF[6]) );
  XNOR2X1 U1 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  CLKINVX1 U2 ( .A(B[6]), .Y(n8) );
  CLKINVX1 U3 ( .A(B[0]), .Y(n2) );
  NAND2X1 U4 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  CLKINVX1 U5 ( .A(B[1]), .Y(n3) );
  CLKINVX1 U6 ( .A(A[0]), .Y(n1) );
  CLKINVX1 U7 ( .A(B[2]), .Y(n4) );
  CLKINVX1 U8 ( .A(B[3]), .Y(n5) );
  CLKINVX1 U9 ( .A(B[4]), .Y(n6) );
  CLKINVX1 U10 ( .A(B[5]), .Y(n7) );
endmodule


module TLC_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module TLC_DW01_inc_2 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module TLC ( HG, HY, HR, FG, FY, FR, FL_show, HL_show, time_short, time_long, 
        time_buf, coil, button, rst, clk );
  output [6:0] FL_show;
  output [6:0] HL_show;
  input [6:0] time_short;
  input [6:0] time_long;
  input [3:0] time_buf;
  input coil, button, rst, clk;
  output HG, HY, HR, FG, FY, FR;
  wire   N35, N36, N37, N38, N39, N40, N41, N49, N50, N51, N52, N53, N54, N55,
         N74, N75, N76, N77, N78, N79, N80, N96, N97, N98, N99, N100, N101,
         N109, N110, N111, N112, N113, N114, N115, N127, N128, N129, N130,
         N132, N133, N134, N135, N136, N137, N138, N155, N156, N157, N158,
         N159, N160, N161, N182, N183, N184, N185, N186, N187, N188, N205,
         N206, N207, N208, N209, N210, N211, N226, N227, N228, N229, N230,
         N231, N232, N248, N249, N250, N251, N252, N253, N254, N255, N256,
         N257, N258, N259, N260, N261, N262, N268, N272, N274, N181, N180,
         N179, N178, N177, N176, N175, N174, N173, N172, N171, N170, N169,
         N168, N167, N166, N165, N164, N163, N162, N154, N153, N152, N151,
         N150, N149, N148, N108, N107, N106, N105, N104, N103, N102, N93, N92,
         N91, N90, N89, N87, N86, N85, N84, N83, N82, N81, N224, N223, N222,
         N221, N218, N217, N216, N215, N214, N213, N212, N204, N203, N202,
         N201, N200, N199, N198, N48, N47, N46, N45, N44, N43, N42,
         \mult_86/n4 , \mult_86/n3 , \mult_86/n2 , n137, n138, n139, n140,
         n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151,
         n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n228,
         n229, n230, n231, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, n247, n248, n249, n250,
         n251, n252, n253, n254, n255, n256;
  wire   [6:0] count0_cs;
  wire   [6:0] count1_cs;
  wire   [2:0] ns;
  wire   [6:0] count0_ns;
  wire   [6:0] count1_ns;
  wire   [6:1] \r498/carry ;
  wire   [7:0] \sub_1_root_add_40/carry ;
  wire   [6:1] \add_2_root_add_0_root_add_94_2/carry ;
  wire   [6:1] \add_2_root_add_0_root_add_68_2/carry ;
  wire   [7:0] \sub_1_root_add_85/carry ;
  wire   [6:1] \add_2_root_add_0_root_add_86_2/carry ;
  wire   SYNOPSYS_UNCONNECTED__0;
  assign HY = N268;
  assign FG = N272;
  assign FY = N274;
  assign N176 = time_long[1];
  assign N175 = time_long[0];
  assign N162 = time_buf[0];

  TLC_DW01_sub_0 sub_0_root_add_102 ( .A({1'b0, N130, N129, N128, N127, N89, 
        1'b0}), .B(count1_cs), .CI(1'b0), .DIFF({N254, N253, N252, N251, N250, 
        N249, N248}) );
  TLC_DW01_sub_1 sub_0_root_add_77 ( .A({1'b0, N130, N129, N128, N127, N89, 
        1'b0}), .B(count0_cs), .CI(1'b0), .DIFF({N138, N137, N136, N135, N134, 
        N133, N132}) );
  TLC_DW01_inc_0 r492 ( .A(count1_cs), .SUM({N80, N79, N78, N77, N76, N75, N74}) );
  TLC_DW01_inc_1 r488 ( .A(count0_cs), .SUM({N41, N40, N39, N38, N37, N36, N35}) );
  TLC_DW01_sub_8 sub_1_root_add_0_root_add_86_2 ( .A({N181, N180, N179, N178, 
        N177, N176, N175}), .B(count1_cs), .CI(1'b0), .DIFF({N174, N173, N172, 
        N171, N170, N169, N168}) );
  TLC_DW01_add_5 add_0_root_add_0_root_add_86_2 ( .A({1'b0, N167, N166, N165, 
        N164, N163, N162}), .B({N174, N173, N172, N171, N170, N169, N168}), 
        .CI(1'b0), .SUM({N188, N187, N186, N185, N184, N183, N182}) );
  TLC_DW01_inc_5 add_0_root_add_85 ( .A({N154, N153, N152, N151, N150, N149, 
        N148}), .SUM({N161, N160, N159, N158, N157, N156, N155}) );
  TLC_DW01_sub_6 sub_1_root_add_69 ( .A(time_short), .B(count1_cs), .CI(1'b0), 
        .DIFF({N108, N107, N106, N105, N104, N103, N102}) );
  TLC_DW01_inc_4 add_0_root_add_69 ( .A({N108, N107, N106, N105, N104, N103, 
        N102}), .SUM({N115, N114, N113, N112, N111, N110, N109}) );
  TLC_DW01_sub_5 sub_1_root_add_0_root_add_68_2 ( .A(time_short), .B(count1_cs), .CI(1'b0), .DIFF({N87, N86, N85, N84, N83, N82, N81}) );
  TLC_DW01_add_3 add_0_root_add_0_root_add_68_2 ( .A({1'b0, N93, N92, N91, N90, 
        N89, 1'b1}), .B({N87, N86, N85, N84, N83, N82, N81}), .CI(1'b0), .SUM(
        {N101, N100, N99, N98, N97, N96, SYNOPSYS_UNCONNECTED__0}) );
  TLC_DW01_sub_4 sub_1_root_add_0_root_add_94_2 ( .A({time_long[6:2], N176, 
        N175}), .B(count0_cs), .CI(1'b0), .DIFF({N218, N217, N216, N215, N214, 
        N213, N212}) );
  TLC_DW01_add_1 add_0_root_add_0_root_add_94_2 ( .A({1'b0, N224, N223, N222, 
        N221, N89, 1'b1}), .B({N218, N217, N216, N215, N214, N213, N212}), 
        .CI(1'b0), .SUM({N232, N231, N230, N229, N228, N227, N226}) );
  TLC_DW01_sub_3 sub_1_root_add_93 ( .A({time_long[6:2], N176, N175}), .B(
        count0_cs), .CI(1'b0), .DIFF({N204, N203, N202, N201, N200, N199, N198}) );
  TLC_DW01_inc_3 add_0_root_add_93 ( .A({N204, N203, N202, N201, N200, N199, 
        N198}), .SUM({N211, N210, N209, N208, N207, N206, N205}) );
  TLC_DW01_inc_2 add_0_root_add_40 ( .A({N48, N47, N46, N45, N44, N43, N42}), 
        .SUM({N55, N54, N53, N52, N51, N50, N49}) );
  ADDHXL \mult_86/U5  ( .A(N162), .B(time_buf[1]), .CO(\mult_86/n4 ), .S(N163)
         );
  ADDFXL \mult_86/U4  ( .A(time_buf[2]), .B(time_buf[1]), .CI(\mult_86/n4 ), 
        .CO(\mult_86/n3 ), .S(N164) );
  ADDFXL \mult_86/U3  ( .A(time_buf[3]), .B(time_buf[2]), .CI(\mult_86/n3 ), 
        .CO(\mult_86/n2 ), .S(N165) );
  ADDHXL \mult_86/U2  ( .A(time_buf[3]), .B(\mult_86/n2 ), .CO(N167), .S(N166)
         );
  DFFRXL \cs_reg[1]  ( .D(ns[1]), .CK(clk), .RN(n256), .Q(n139), .QN(n239) );
  DFFRXL \cs_reg[0]  ( .D(ns[0]), .CK(clk), .RN(n256), .Q(n137), .QN(n241) );
  DFFRXL \cs_reg[2]  ( .D(ns[2]), .CK(clk), .RN(n256), .Q(n138), .QN(n240) );
  TLATX1 \count1_ns_reg[0]  ( .G(N255), .D(N256), .Q(count1_ns[0]) );
  TLATX1 \count1_ns_reg[6]  ( .G(N255), .D(N262), .Q(count1_ns[6]) );
  DFFRX1 \count1_cs_reg[3]  ( .D(count1_ns[3]), .CK(clk), .RN(n256), .Q(
        count1_cs[3]), .QN(n247) );
  DFFRX1 \count1_cs_reg[0]  ( .D(count1_ns[0]), .CK(clk), .RN(n256), .Q(
        count1_cs[0]), .QN(n246) );
  DFFRX1 \count1_cs_reg[5]  ( .D(count1_ns[5]), .CK(clk), .RN(n256), .Q(
        count1_cs[5]), .QN(n248) );
  DFFRX1 \count1_cs_reg[6]  ( .D(count1_ns[6]), .CK(clk), .RN(n256), .Q(
        count1_cs[6]), .QN(n245) );
  DFFRX1 \count1_cs_reg[4]  ( .D(count1_ns[4]), .CK(clk), .RN(n256), .Q(
        count1_cs[4]), .QN(n244) );
  DFFRX1 \count1_cs_reg[1]  ( .D(count1_ns[1]), .CK(clk), .RN(n256), .Q(
        count1_cs[1]), .QN(n242) );
  DFFRX1 \count1_cs_reg[2]  ( .D(count1_ns[2]), .CK(clk), .RN(n256), .Q(
        count1_cs[2]), .QN(n243) );
  DFFRX1 \count0_cs_reg[5]  ( .D(count0_ns[5]), .CK(clk), .RN(n256), .Q(
        count0_cs[5]), .QN(n255) );
  DFFRX1 \count0_cs_reg[6]  ( .D(count0_ns[6]), .CK(clk), .RN(n256), .Q(
        count0_cs[6]), .QN(n252) );
  DFFRX1 \count0_cs_reg[0]  ( .D(count0_ns[0]), .CK(clk), .RN(n256), .Q(
        count0_cs[0]), .QN(n253) );
  DFFRX1 \count0_cs_reg[1]  ( .D(count0_ns[1]), .CK(clk), .RN(n256), .Q(
        count0_cs[1]), .QN(n249) );
  DFFRX1 \count0_cs_reg[2]  ( .D(count0_ns[2]), .CK(clk), .RN(n256), .Q(
        count0_cs[2]), .QN(n250) );
  DFFRX1 \count0_cs_reg[3]  ( .D(count0_ns[3]), .CK(clk), .RN(n256), .Q(
        count0_cs[3]), .QN(n254) );
  DFFRX1 \count0_cs_reg[4]  ( .D(count0_ns[4]), .CK(clk), .RN(n256), .Q(
        count0_cs[4]), .QN(n251) );
  TLATX1 \count1_ns_reg[1]  ( .G(N255), .D(N257), .Q(count1_ns[1]) );
  TLATX1 \count1_ns_reg[2]  ( .G(N255), .D(N258), .Q(count1_ns[2]) );
  TLATX1 \count1_ns_reg[3]  ( .G(N255), .D(N259), .Q(count1_ns[3]) );
  TLATX1 \count1_ns_reg[4]  ( .G(N255), .D(N260), .Q(count1_ns[4]) );
  TLATX1 \count1_ns_reg[5]  ( .G(N255), .D(N261), .Q(count1_ns[5]) );
  CLKINVX1 U111 ( .A(n207), .Y(N268) );
  CLKINVX1 U112 ( .A(n144), .Y(N274) );
  CLKINVX1 U113 ( .A(n150), .Y(N272) );
  CLKINVX1 U114 ( .A(n149), .Y(n147) );
  CLKINVX1 U115 ( .A(n143), .Y(n183) );
  XOR2X1 U116 ( .A(count1_cs[6]), .B(n140), .Y(N154) );
  NAND2X1 U117 ( .A(\sub_1_root_add_85/carry [5]), .B(n248), .Y(n140) );
  XOR2X1 U118 ( .A(count0_cs[6]), .B(n141), .Y(N48) );
  NAND2X1 U119 ( .A(\sub_1_root_add_40/carry [5]), .B(n255), .Y(n141) );
  ADDFXL U120 ( .A(time_buf[1]), .B(n249), .CI(\sub_1_root_add_40/carry [1]), 
        .CO(\sub_1_root_add_40/carry [2]), .S(N43) );
  ADDFXL U121 ( .A(time_buf[1]), .B(n242), .CI(\sub_1_root_add_85/carry [1]), 
        .CO(\sub_1_root_add_85/carry [2]), .S(N149) );
  CLKINVX1 U122 ( .A(N162), .Y(N89) );
  CLKINVX1 U123 ( .A(time_long[2]), .Y(N177) );
  ADDFXL U124 ( .A(time_buf[2]), .B(n250), .CI(\sub_1_root_add_40/carry [2]), 
        .CO(\sub_1_root_add_40/carry [3]), .S(N44) );
  ADDFXL U125 ( .A(time_buf[2]), .B(n243), .CI(\sub_1_root_add_85/carry [2]), 
        .CO(\sub_1_root_add_85/carry [3]), .S(N150) );
  ADDFXL U126 ( .A(time_buf[3]), .B(n254), .CI(\sub_1_root_add_40/carry [3]), 
        .CO(\sub_1_root_add_40/carry [4]), .S(N45) );
  ADDFXL U127 ( .A(time_buf[3]), .B(n247), .CI(\sub_1_root_add_85/carry [3]), 
        .CO(\sub_1_root_add_85/carry [4]), .S(N151) );
  XOR2X1 U128 ( .A(time_long[6]), .B(\add_2_root_add_0_root_add_86_2/carry [6]), .Y(N181) );
  AND2X1 U129 ( .A(\add_2_root_add_0_root_add_86_2/carry [5]), .B(time_long[5]), .Y(\add_2_root_add_0_root_add_86_2/carry [6]) );
  XOR2X1 U130 ( .A(time_long[5]), .B(\add_2_root_add_0_root_add_86_2/carry [5]), .Y(N180) );
  AND2X1 U131 ( .A(\add_2_root_add_0_root_add_86_2/carry [4]), .B(time_long[4]), .Y(\add_2_root_add_0_root_add_86_2/carry [5]) );
  XOR2X1 U132 ( .A(time_long[4]), .B(\add_2_root_add_0_root_add_86_2/carry [4]), .Y(N179) );
  AND2X1 U133 ( .A(time_long[2]), .B(time_long[3]), .Y(
        \add_2_root_add_0_root_add_86_2/carry [4]) );
  XOR2X1 U134 ( .A(time_long[3]), .B(time_long[2]), .Y(N178) );
  AND2X1 U135 ( .A(\add_2_root_add_0_root_add_94_2/carry [4]), .B(time_buf[3]), 
        .Y(N224) );
  XOR2X1 U136 ( .A(time_buf[3]), .B(\add_2_root_add_0_root_add_94_2/carry [4]), 
        .Y(N223) );
  AND2X1 U137 ( .A(\add_2_root_add_0_root_add_94_2/carry [3]), .B(time_buf[2]), 
        .Y(\add_2_root_add_0_root_add_94_2/carry [4]) );
  XOR2X1 U138 ( .A(time_buf[2]), .B(\add_2_root_add_0_root_add_94_2/carry [3]), 
        .Y(N222) );
  AND2X1 U139 ( .A(N162), .B(time_buf[1]), .Y(
        \add_2_root_add_0_root_add_94_2/carry [3]) );
  XOR2X1 U140 ( .A(time_buf[1]), .B(N162), .Y(N221) );
  XOR2X1 U141 ( .A(n255), .B(\sub_1_root_add_40/carry [5]), .Y(N47) );
  AND2X1 U142 ( .A(\sub_1_root_add_40/carry [4]), .B(n251), .Y(
        \sub_1_root_add_40/carry [5]) );
  XOR2X1 U143 ( .A(n251), .B(\sub_1_root_add_40/carry [4]), .Y(N46) );
  OR2X1 U144 ( .A(n253), .B(N162), .Y(\sub_1_root_add_40/carry [1]) );
  XNOR2X1 U145 ( .A(N162), .B(n253), .Y(N42) );
  XOR2X1 U146 ( .A(n248), .B(\sub_1_root_add_85/carry [5]), .Y(N153) );
  AND2X1 U147 ( .A(\sub_1_root_add_85/carry [4]), .B(n244), .Y(
        \sub_1_root_add_85/carry [5]) );
  XOR2X1 U148 ( .A(n244), .B(\sub_1_root_add_85/carry [4]), .Y(N152) );
  OR2X1 U149 ( .A(n246), .B(N162), .Y(\sub_1_root_add_85/carry [1]) );
  XNOR2X1 U150 ( .A(N162), .B(n246), .Y(N148) );
  AND2X1 U151 ( .A(\r498/carry [4]), .B(time_buf[3]), .Y(N130) );
  XOR2X1 U152 ( .A(time_buf[3]), .B(\r498/carry [4]), .Y(N129) );
  AND2X1 U153 ( .A(\r498/carry [3]), .B(time_buf[2]), .Y(\r498/carry [4]) );
  XOR2X1 U154 ( .A(time_buf[2]), .B(\r498/carry [3]), .Y(N128) );
  AND2X1 U155 ( .A(N162), .B(time_buf[1]), .Y(\r498/carry [3]) );
  XOR2X1 U156 ( .A(time_buf[1]), .B(N162), .Y(N127) );
  AND2X1 U157 ( .A(\add_2_root_add_0_root_add_68_2/carry [4]), .B(time_buf[3]), 
        .Y(N93) );
  XOR2X1 U158 ( .A(time_buf[3]), .B(\add_2_root_add_0_root_add_68_2/carry [4]), 
        .Y(N92) );
  AND2X1 U159 ( .A(\add_2_root_add_0_root_add_68_2/carry [3]), .B(time_buf[2]), 
        .Y(\add_2_root_add_0_root_add_68_2/carry [4]) );
  XOR2X1 U160 ( .A(time_buf[2]), .B(\add_2_root_add_0_root_add_68_2/carry [3]), 
        .Y(N91) );
  AND2X1 U161 ( .A(N162), .B(time_buf[1]), .Y(
        \add_2_root_add_0_root_add_68_2/carry [3]) );
  XOR2X1 U162 ( .A(time_buf[1]), .B(N162), .Y(N90) );
  OAI221XL U163 ( .A0(n142), .A1(n143), .B0(n144), .B1(n145), .C0(n146), .Y(
        ns[2]) );
  NOR3X1 U164 ( .A(N272), .B(n147), .C(N268), .Y(n146) );
  OAI211X1 U165 ( .A0(n148), .A1(n149), .B0(n150), .C0(n151), .Y(ns[1]) );
  AOI21X1 U166 ( .A0(coil), .A1(n152), .B0(n153), .Y(n151) );
  OAI211X1 U167 ( .A0(coil), .A1(n154), .B0(n155), .C0(n156), .Y(ns[0]) );
  AOI221XL U168 ( .A0(n147), .A1(n148), .B0(n157), .B1(n158), .C0(n159), .Y(
        n156) );
  AOI211X1 U169 ( .A0(time_long[6]), .A1(n252), .B0(n160), .C0(n150), .Y(n159)
         );
  OAI32X1 U170 ( .A0(n161), .A1(n162), .A2(n163), .B0(n163), .B1(n164), .Y(
        n160) );
  AOI32X1 U171 ( .A0(n251), .A1(n165), .A2(time_long[4]), .B0(time_long[5]), 
        .B1(n255), .Y(n164) );
  CLKINVX1 U172 ( .A(n162), .Y(n165) );
  NOR2X1 U173 ( .A(time_long[6]), .B(n252), .Y(n163) );
  NOR2X1 U174 ( .A(time_long[5]), .B(n255), .Y(n162) );
  OAI22XL U175 ( .A0(n166), .A1(n167), .B0(time_long[4]), .B1(n251), .Y(n161)
         );
  AOI2BB2X1 U176 ( .B0(n168), .B1(count0_cs[3]), .A0N(time_long[3]), .A1N(n169), .Y(n167) );
  NOR2X1 U177 ( .A(n168), .B(count0_cs[3]), .Y(n169) );
  NAND2X1 U178 ( .A(time_long[2]), .B(n250), .Y(n168) );
  AOI211X1 U179 ( .A0(count0_cs[3]), .A1(n170), .B0(n171), .C0(n172), .Y(n166)
         );
  AOI22X1 U180 ( .A0(N176), .A1(n249), .B0(N175), .B1(n253), .Y(n172) );
  OAI22XL U181 ( .A0(N176), .A1(n249), .B0(time_long[2]), .B1(n250), .Y(n171)
         );
  CLKINVX1 U182 ( .A(time_long[3]), .Y(n170) );
  NAND4X1 U183 ( .A(n252), .B(n255), .C(n251), .D(n173), .Y(n157) );
  OAI21XL U184 ( .A0(n174), .A1(n175), .B0(n176), .Y(n173) );
  OAI2BB2XL U185 ( .B0(time_buf[3]), .B1(n177), .A0N(count0_cs[3]), .A1N(n178), 
        .Y(n176) );
  NOR2X1 U186 ( .A(count0_cs[3]), .B(n178), .Y(n177) );
  NAND2X1 U187 ( .A(n250), .B(time_buf[2]), .Y(n178) );
  OAI22XL U188 ( .A0(time_buf[2]), .A1(n250), .B0(time_buf[3]), .B1(n254), .Y(
        n175) );
  OAI22XL U189 ( .A0(n249), .A1(n179), .B0(time_buf[1]), .B1(n180), .Y(n174)
         );
  AND2X1 U190 ( .A(n249), .B(n179), .Y(n180) );
  AND2X1 U191 ( .A(n253), .B(N162), .Y(n179) );
  CLKINVX1 U192 ( .A(n145), .Y(n148) );
  CLKINVX1 U193 ( .A(n153), .Y(n155) );
  OAI21XL U194 ( .A0(n144), .A1(n145), .B0(n181), .Y(n153) );
  AOI22X1 U195 ( .A0(button), .A1(n182), .B0(n183), .B1(n142), .Y(n181) );
  OAI222XL U196 ( .A0(n184), .A1(n185), .B0(n186), .B1(n187), .C0(count1_cs[6]), .C1(n188), .Y(n142) );
  CLKINVX1 U197 ( .A(time_short[6]), .Y(n188) );
  AOI32X1 U198 ( .A0(n244), .A1(n189), .A2(time_short[4]), .B0(time_short[5]), 
        .B1(n248), .Y(n187) );
  OAI22XL U199 ( .A0(n190), .A1(n191), .B0(time_short[4]), .B1(n244), .Y(n185)
         );
  AOI2BB2X1 U200 ( .B0(n192), .B1(count1_cs[3]), .A0N(time_short[3]), .A1N(
        n193), .Y(n191) );
  NOR2X1 U201 ( .A(n192), .B(count1_cs[3]), .Y(n193) );
  NAND2X1 U202 ( .A(time_short[2]), .B(n243), .Y(n192) );
  AOI211X1 U203 ( .A0(count1_cs[3]), .A1(n194), .B0(n195), .C0(n196), .Y(n190)
         );
  AOI22X1 U204 ( .A0(time_short[1]), .A1(n242), .B0(time_short[0]), .B1(n246), 
        .Y(n196) );
  OAI22XL U205 ( .A0(time_short[1]), .A1(n242), .B0(time_short[2]), .B1(n243), 
        .Y(n195) );
  CLKINVX1 U206 ( .A(time_short[3]), .Y(n194) );
  NAND2BX1 U207 ( .AN(n186), .B(n189), .Y(n184) );
  OR2X1 U208 ( .A(time_short[5]), .B(n248), .Y(n189) );
  NOR2X1 U209 ( .A(time_short[6]), .B(n245), .Y(n186) );
  NAND4X1 U210 ( .A(n245), .B(n248), .C(n244), .D(n197), .Y(n145) );
  OAI21XL U211 ( .A0(n198), .A1(n199), .B0(n200), .Y(n197) );
  OAI2BB2XL U212 ( .B0(time_buf[3]), .B1(n201), .A0N(count1_cs[3]), .A1N(n202), 
        .Y(n200) );
  NOR2X1 U213 ( .A(count1_cs[3]), .B(n202), .Y(n201) );
  NAND2X1 U214 ( .A(time_buf[2]), .B(n243), .Y(n202) );
  OAI22XL U215 ( .A0(time_buf[1]), .A1(n242), .B0(time_buf[2]), .B1(n243), .Y(
        n199) );
  OAI21XL U216 ( .A0(time_buf[3]), .A1(n247), .B0(n203), .Y(n198) );
  AO22X1 U217 ( .A0(n246), .A1(N162), .B0(n242), .B1(time_buf[1]), .Y(n203) );
  CLKINVX1 U218 ( .A(n152), .Y(n154) );
  CLKINVX1 U219 ( .A(rst), .Y(n256) );
  NOR2BX1 U220 ( .AN(N41), .B(n204), .Y(count0_ns[6]) );
  NOR2BX1 U221 ( .AN(N40), .B(n204), .Y(count0_ns[5]) );
  NOR2BX1 U222 ( .AN(N39), .B(n204), .Y(count0_ns[4]) );
  NOR2BX1 U223 ( .AN(N38), .B(n204), .Y(count0_ns[3]) );
  NOR2BX1 U224 ( .AN(N37), .B(n204), .Y(count0_ns[2]) );
  NOR2BX1 U225 ( .AN(N36), .B(n204), .Y(count0_ns[1]) );
  NOR2BX1 U226 ( .AN(N35), .B(n204), .Y(count0_ns[0]) );
  NOR2BX1 U227 ( .AN(N80), .B(n205), .Y(N262) );
  NOR2BX1 U228 ( .AN(N79), .B(n205), .Y(N261) );
  NOR2BX1 U229 ( .AN(N78), .B(n205), .Y(N260) );
  NOR2BX1 U230 ( .AN(N77), .B(n205), .Y(N259) );
  NOR2BX1 U231 ( .AN(N76), .B(n205), .Y(N258) );
  NOR2BX1 U232 ( .AN(N75), .B(n205), .Y(N257) );
  NOR2BX1 U233 ( .AN(N74), .B(n205), .Y(N256) );
  NAND2X1 U234 ( .A(n204), .B(n205), .Y(N255) );
  NOR3X1 U235 ( .A(n183), .B(n147), .C(N274), .Y(n205) );
  NOR2X1 U236 ( .A(n158), .B(N272), .Y(n204) );
  NAND3X1 U237 ( .A(n206), .B(n207), .C(n208), .Y(n158) );
  OAI21XL U238 ( .A0(n240), .A1(n209), .B0(n208), .Y(HR) );
  NAND2X1 U239 ( .A(n210), .B(n211), .Y(HL_show[6]) );
  AOI222XL U240 ( .A0(N232), .A1(N272), .B0(N254), .B1(N274), .C0(N188), .C1(
        n147), .Y(n211) );
  AOI221XL U241 ( .A0(N55), .A1(n212), .B0(N115), .B1(n183), .C0(n152), .Y(
        n210) );
  NAND2X1 U242 ( .A(n213), .B(n214), .Y(HL_show[5]) );
  AOI222XL U243 ( .A0(N231), .A1(N272), .B0(N253), .B1(N274), .C0(N187), .C1(
        n147), .Y(n214) );
  AOI221XL U244 ( .A0(N54), .A1(n212), .B0(N114), .B1(n183), .C0(n152), .Y(
        n213) );
  NAND2X1 U245 ( .A(n215), .B(n216), .Y(HL_show[4]) );
  AOI222XL U246 ( .A0(N230), .A1(N272), .B0(N252), .B1(N274), .C0(N186), .C1(
        n147), .Y(n216) );
  AOI22X1 U247 ( .A0(N53), .A1(n212), .B0(N113), .B1(n183), .Y(n215) );
  NAND2X1 U248 ( .A(n217), .B(n218), .Y(HL_show[3]) );
  AOI222XL U249 ( .A0(N229), .A1(N272), .B0(N251), .B1(N274), .C0(N185), .C1(
        n147), .Y(n218) );
  AOI22X1 U250 ( .A0(N52), .A1(n212), .B0(N112), .B1(n183), .Y(n217) );
  NAND2X1 U251 ( .A(n219), .B(n220), .Y(HL_show[2]) );
  AOI222XL U252 ( .A0(N228), .A1(N272), .B0(N250), .B1(N274), .C0(N184), .C1(
        n147), .Y(n220) );
  AOI22X1 U253 ( .A0(N51), .A1(n212), .B0(N111), .B1(n183), .Y(n219) );
  NAND2X1 U254 ( .A(n221), .B(n222), .Y(HL_show[1]) );
  AOI222XL U255 ( .A0(N227), .A1(N272), .B0(N249), .B1(N274), .C0(N183), .C1(
        n147), .Y(n222) );
  AOI221XL U256 ( .A0(N50), .A1(n212), .B0(N110), .B1(n183), .C0(n152), .Y(
        n221) );
  NAND2X1 U257 ( .A(n223), .B(n224), .Y(HL_show[0]) );
  AOI222XL U258 ( .A0(N226), .A1(N272), .B0(N248), .B1(N274), .C0(N182), .C1(
        n147), .Y(n224) );
  AOI221XL U259 ( .A0(N49), .A1(n212), .B0(N109), .B1(n183), .C0(n152), .Y(
        n223) );
  NOR2X1 U260 ( .A(n209), .B(n138), .Y(HG) );
  NOR2X1 U261 ( .A(N272), .B(N274), .Y(FR) );
  NAND3X1 U262 ( .A(n138), .B(n139), .C(n137), .Y(n144) );
  OAI211X1 U263 ( .A0(n143), .A1(n225), .B0(n226), .C0(n227), .Y(FL_show[6])
         );
  AOI222XL U264 ( .A0(N138), .A1(N268), .B0(N161), .B1(n147), .C0(N211), .C1(
        N272), .Y(n227) );
  CLKINVX1 U265 ( .A(N101), .Y(n225) );
  OAI211X1 U266 ( .A0(n143), .A1(n228), .B0(n226), .C0(n229), .Y(FL_show[5])
         );
  AOI222XL U267 ( .A0(N137), .A1(N268), .B0(N160), .B1(n147), .C0(N210), .C1(
        N272), .Y(n229) );
  CLKINVX1 U268 ( .A(N100), .Y(n228) );
  NAND2X1 U269 ( .A(n230), .B(n231), .Y(FL_show[4]) );
  AOI22X1 U270 ( .A0(N159), .A1(n147), .B0(N209), .B1(N272), .Y(n231) );
  AOI22X1 U271 ( .A0(N136), .A1(N268), .B0(N99), .B1(n183), .Y(n230) );
  NAND2X1 U272 ( .A(n232), .B(n233), .Y(FL_show[3]) );
  AOI22X1 U273 ( .A0(N158), .A1(n147), .B0(N208), .B1(N272), .Y(n233) );
  AOI22X1 U274 ( .A0(N135), .A1(N268), .B0(N98), .B1(n183), .Y(n232) );
  NAND2X1 U275 ( .A(n234), .B(n235), .Y(FL_show[2]) );
  AOI22X1 U276 ( .A0(N157), .A1(n147), .B0(N207), .B1(N272), .Y(n235) );
  AOI22X1 U277 ( .A0(N134), .A1(N268), .B0(N97), .B1(n183), .Y(n234) );
  OAI211X1 U278 ( .A0(n143), .A1(n236), .B0(n226), .C0(n237), .Y(FL_show[1])
         );
  AOI222XL U279 ( .A0(N133), .A1(N268), .B0(N156), .B1(n147), .C0(N206), .C1(
        N272), .Y(n237) );
  CLKINVX1 U280 ( .A(N96), .Y(n236) );
  OAI211X1 U281 ( .A0(N81), .A1(n143), .B0(n226), .C0(n238), .Y(FL_show[0]) );
  AOI222XL U282 ( .A0(N132), .A1(N268), .B0(N155), .B1(n147), .C0(N205), .C1(
        N272), .Y(n238) );
  NAND3X1 U283 ( .A(n138), .B(n139), .C(n241), .Y(n150) );
  NAND3X1 U284 ( .A(n137), .B(n138), .C(n239), .Y(n149) );
  NAND2X1 U285 ( .A(n209), .B(n138), .Y(n207) );
  NOR2X1 U286 ( .A(n152), .B(n212), .Y(n226) );
  CLKINVX1 U287 ( .A(n208), .Y(n212) );
  NAND2X1 U288 ( .A(n240), .B(n209), .Y(n208) );
  NOR2X1 U289 ( .A(n137), .B(n139), .Y(n209) );
  NAND2BX1 U290 ( .AN(n182), .B(n206), .Y(n152) );
  NAND3X1 U291 ( .A(n241), .B(n139), .C(n240), .Y(n206) );
  NOR3X1 U292 ( .A(n139), .B(n241), .C(n138), .Y(n182) );
  NAND3X1 U293 ( .A(n137), .B(n139), .C(n240), .Y(n143) );
endmodule

