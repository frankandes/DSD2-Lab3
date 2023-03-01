// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Mar  1 14:54:25 2023
// Host        : DESKTOP-5CIH7MF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/Frank
//               Andes/Documents/VScode_VHDL/DSD2-Lab3/DSD2-Lab3.sim/sim_1/impl/timing/xsim/InstructionDecodeTB_time_impl.v}
// Design      : InstructionDecode
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD25
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD26
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD27
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD29
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD30
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD31
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD32
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD33
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32M_HD36
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD28
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD34
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD35
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b1)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* ECO_CHECKSUM = "515f5977" *) 
(* NotValidForBitStream *)
module InstructionDecode
   (clk,
    Instruction,
    RegWriteAddr,
    RegWriteData,
    RegWriteEn,
    RegWrite,
    MemtoReg,
    MemWrite,
    ALUControl,
    ALUSrc,
    RegDst,
    RD1,
    RD2,
    RtDest,
    RdDest,
    ImmOut);
  input clk;
  input [31:0]Instruction;
  input [4:0]RegWriteAddr;
  input [31:0]RegWriteData;
  input RegWriteEn;
  output RegWrite;
  output MemtoReg;
  output MemWrite;
  output [3:0]ALUControl;
  output ALUSrc;
  output RegDst;
  output [31:0]RD1;
  output [31:0]RD2;
  output [4:0]RtDest;
  output [4:0]RdDest;
  output [31:0]ImmOut;

  wire [3:0]ALUControl;
  wire [3:0]ALUControl_OBUF;
  wire \ALUControl_OBUF[3]_inst_i_2_n_0 ;
  wire \ALUControl_OBUF[3]_inst_i_3_n_0 ;
  wire ALUSrc;
  wire ALUSrc_OBUF;
  wire [2:0]\ControlUnit/ALUControl_sig__23 ;
  wire [31:0]ImmOut;
  wire [15:0]ImmOut_OBUF;
  wire [31:0]Instruction;
  wire [31:21]Instruction_IBUF;
  wire MemWrite;
  wire MemWrite_OBUF;
  wire MemtoReg;
  wire MemtoReg_OBUF;
  wire [31:0]RD1;
  wire [31:0]RD1_OBUF;
  wire [31:0]RD2;
  wire [31:0]RD2_OBUF;
  wire [4:0]RdDest;
  wire RegDst;
  wire RegDst_OBUF;
  wire RegWrite;
  wire [4:0]RegWriteAddr;
  wire [4:0]RegWriteAddr_IBUF;
  wire [31:0]RegWriteData;
  wire [31:0]RegWriteData_IBUF;
  wire RegWriteEn;
  wire RegWriteEn_IBUF;
  wire RegWrite_OBUF;
  wire RegWrite_OBUF_inst_i_2_n_0;
  wire RegWrite_OBUF_inst_i_3_n_0;
  wire [4:0]RtDest;
  wire [4:0]RtDest_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;

initial begin
 $sdf_annotate("InstructionDecodeTB_time_impl.sdf",,,,"tool_control");
end
  OBUF \ALUControl_OBUF[0]_inst 
       (.I(ALUControl_OBUF[0]),
        .O(ALUControl[0]));
  LUT6 #(
    .INIT(64'h000000000000A004)) 
    \ALUControl_OBUF[0]_inst_i_1 
       (.I0(Instruction_IBUF[27]),
        .I1(\ControlUnit/ALUControl_sig__23 [0]),
        .I2(Instruction_IBUF[28]),
        .I3(Instruction_IBUF[29]),
        .I4(Instruction_IBUF[26]),
        .I5(\ALUControl_OBUF[3]_inst_i_3_n_0 ),
        .O(ALUControl_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000000000002202)) 
    \ALUControl_OBUF[0]_inst_i_2 
       (.I0(ImmOut_OBUF[1]),
        .I1(ImmOut_OBUF[0]),
        .I2(ImmOut_OBUF[2]),
        .I3(ImmOut_OBUF[5]),
        .I4(ImmOut_OBUF[3]),
        .I5(ImmOut_OBUF[4]),
        .O(\ControlUnit/ALUControl_sig__23 [0]));
  OBUF \ALUControl_OBUF[1]_inst 
       (.I(ALUControl_OBUF[1]),
        .O(ALUControl[1]));
  LUT6 #(
    .INIT(64'h0000000044440010)) 
    \ALUControl_OBUF[1]_inst_i_1 
       (.I0(Instruction_IBUF[26]),
        .I1(Instruction_IBUF[28]),
        .I2(\ControlUnit/ALUControl_sig__23 [1]),
        .I3(Instruction_IBUF[27]),
        .I4(Instruction_IBUF[29]),
        .I5(\ALUControl_OBUF[3]_inst_i_3_n_0 ),
        .O(ALUControl_OBUF[1]));
  LUT6 #(
    .INIT(64'h0003000000004008)) 
    \ALUControl_OBUF[1]_inst_i_2 
       (.I0(ImmOut_OBUF[1]),
        .I1(ImmOut_OBUF[0]),
        .I2(ImmOut_OBUF[3]),
        .I3(ImmOut_OBUF[4]),
        .I4(ImmOut_OBUF[2]),
        .I5(ImmOut_OBUF[5]),
        .O(\ControlUnit/ALUControl_sig__23 [1]));
  OBUF \ALUControl_OBUF[2]_inst 
       (.I(ALUControl_OBUF[2]),
        .O(ALUControl[2]));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    \ALUControl_OBUF[2]_inst_i_1 
       (.I0(Instruction_IBUF[27]),
        .I1(\ControlUnit/ALUControl_sig__23 [2]),
        .I2(Instruction_IBUF[29]),
        .I3(Instruction_IBUF[28]),
        .I4(Instruction_IBUF[26]),
        .I5(\ALUControl_OBUF[3]_inst_i_3_n_0 ),
        .O(ALUControl_OBUF[2]));
  LUT6 #(
    .INIT(64'h0001004001010101)) 
    \ALUControl_OBUF[2]_inst_i_2 
       (.I0(ImmOut_OBUF[2]),
        .I1(ImmOut_OBUF[3]),
        .I2(ImmOut_OBUF[4]),
        .I3(ImmOut_OBUF[5]),
        .I4(ImmOut_OBUF[1]),
        .I5(ImmOut_OBUF[0]),
        .O(\ControlUnit/ALUControl_sig__23 [2]));
  OBUF \ALUControl_OBUF[3]_inst 
       (.I(ALUControl_OBUF[3]),
        .O(ALUControl[3]));
  LUT6 #(
    .INIT(64'h0000000050F00004)) 
    \ALUControl_OBUF[3]_inst_i_1 
       (.I0(Instruction_IBUF[27]),
        .I1(\ALUControl_OBUF[3]_inst_i_2_n_0 ),
        .I2(Instruction_IBUF[29]),
        .I3(Instruction_IBUF[26]),
        .I4(Instruction_IBUF[28]),
        .I5(\ALUControl_OBUF[3]_inst_i_3_n_0 ),
        .O(ALUControl_OBUF[3]));
  LUT6 #(
    .INIT(64'h0100110000110001)) 
    \ALUControl_OBUF[3]_inst_i_2 
       (.I0(ImmOut_OBUF[4]),
        .I1(ImmOut_OBUF[3]),
        .I2(ImmOut_OBUF[0]),
        .I3(ImmOut_OBUF[2]),
        .I4(ImmOut_OBUF[1]),
        .I5(ImmOut_OBUF[5]),
        .O(\ALUControl_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ALUControl_OBUF[3]_inst_i_3 
       (.I0(Instruction_IBUF[31]),
        .I1(Instruction_IBUF[30]),
        .O(\ALUControl_OBUF[3]_inst_i_3_n_0 ));
  OBUF ALUSrc_OBUF_inst
       (.I(ALUSrc_OBUF),
        .O(ALUSrc));
  LUT6 #(
    .INIT(64'h0400040010510000)) 
    ALUSrc_OBUF_inst_i_1
       (.I0(Instruction_IBUF[30]),
        .I1(Instruction_IBUF[26]),
        .I2(Instruction_IBUF[28]),
        .I3(Instruction_IBUF[27]),
        .I4(Instruction_IBUF[29]),
        .I5(Instruction_IBUF[31]),
        .O(ALUSrc_OBUF));
  OBUF \ImmOut_OBUF[0]_inst 
       (.I(ImmOut_OBUF[0]),
        .O(ImmOut[0]));
  OBUF \ImmOut_OBUF[10]_inst 
       (.I(ImmOut_OBUF[10]),
        .O(ImmOut[10]));
  OBUF \ImmOut_OBUF[11]_inst 
       (.I(ImmOut_OBUF[11]),
        .O(ImmOut[11]));
  OBUF \ImmOut_OBUF[12]_inst 
       (.I(ImmOut_OBUF[12]),
        .O(ImmOut[12]));
  OBUF \ImmOut_OBUF[13]_inst 
       (.I(ImmOut_OBUF[13]),
        .O(ImmOut[13]));
  OBUF \ImmOut_OBUF[14]_inst 
       (.I(ImmOut_OBUF[14]),
        .O(ImmOut[14]));
  OBUF \ImmOut_OBUF[15]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[15]));
  OBUF \ImmOut_OBUF[16]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[16]));
  OBUF \ImmOut_OBUF[17]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[17]));
  OBUF \ImmOut_OBUF[18]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[18]));
  OBUF \ImmOut_OBUF[19]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[19]));
  OBUF \ImmOut_OBUF[1]_inst 
       (.I(ImmOut_OBUF[1]),
        .O(ImmOut[1]));
  OBUF \ImmOut_OBUF[20]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[20]));
  OBUF \ImmOut_OBUF[21]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[21]));
  OBUF \ImmOut_OBUF[22]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[22]));
  OBUF \ImmOut_OBUF[23]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[23]));
  OBUF \ImmOut_OBUF[24]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[24]));
  OBUF \ImmOut_OBUF[25]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[25]));
  OBUF \ImmOut_OBUF[26]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[26]));
  OBUF \ImmOut_OBUF[27]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[27]));
  OBUF \ImmOut_OBUF[28]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[28]));
  OBUF \ImmOut_OBUF[29]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[29]));
  OBUF \ImmOut_OBUF[2]_inst 
       (.I(ImmOut_OBUF[2]),
        .O(ImmOut[2]));
  OBUF \ImmOut_OBUF[30]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[30]));
  OBUF \ImmOut_OBUF[31]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(ImmOut[31]));
  OBUF \ImmOut_OBUF[3]_inst 
       (.I(ImmOut_OBUF[3]),
        .O(ImmOut[3]));
  OBUF \ImmOut_OBUF[4]_inst 
       (.I(ImmOut_OBUF[4]),
        .O(ImmOut[4]));
  OBUF \ImmOut_OBUF[5]_inst 
       (.I(ImmOut_OBUF[5]),
        .O(ImmOut[5]));
  OBUF \ImmOut_OBUF[6]_inst 
       (.I(ImmOut_OBUF[6]),
        .O(ImmOut[6]));
  OBUF \ImmOut_OBUF[7]_inst 
       (.I(ImmOut_OBUF[7]),
        .O(ImmOut[7]));
  OBUF \ImmOut_OBUF[8]_inst 
       (.I(ImmOut_OBUF[8]),
        .O(ImmOut[8]));
  OBUF \ImmOut_OBUF[9]_inst 
       (.I(ImmOut_OBUF[9]),
        .O(ImmOut[9]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[0]_inst 
       (.I(Instruction[0]),
        .O(ImmOut_OBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[10]_inst 
       (.I(Instruction[10]),
        .O(ImmOut_OBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[11]_inst 
       (.I(Instruction[11]),
        .O(ImmOut_OBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[12]_inst 
       (.I(Instruction[12]),
        .O(ImmOut_OBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[13]_inst 
       (.I(Instruction[13]),
        .O(ImmOut_OBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[14]_inst 
       (.I(Instruction[14]),
        .O(ImmOut_OBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[15]_inst 
       (.I(Instruction[15]),
        .O(ImmOut_OBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[16]_inst 
       (.I(Instruction[16]),
        .O(RtDest_OBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[17]_inst 
       (.I(Instruction[17]),
        .O(RtDest_OBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[18]_inst 
       (.I(Instruction[18]),
        .O(RtDest_OBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[19]_inst 
       (.I(Instruction[19]),
        .O(RtDest_OBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[1]_inst 
       (.I(Instruction[1]),
        .O(ImmOut_OBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[20]_inst 
       (.I(Instruction[20]),
        .O(RtDest_OBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[21]_inst 
       (.I(Instruction[21]),
        .O(Instruction_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[22]_inst 
       (.I(Instruction[22]),
        .O(Instruction_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[23]_inst 
       (.I(Instruction[23]),
        .O(Instruction_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[24]_inst 
       (.I(Instruction[24]),
        .O(Instruction_IBUF[24]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[25]_inst 
       (.I(Instruction[25]),
        .O(Instruction_IBUF[25]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[26]_inst 
       (.I(Instruction[26]),
        .O(Instruction_IBUF[26]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[27]_inst 
       (.I(Instruction[27]),
        .O(Instruction_IBUF[27]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[28]_inst 
       (.I(Instruction[28]),
        .O(Instruction_IBUF[28]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[29]_inst 
       (.I(Instruction[29]),
        .O(Instruction_IBUF[29]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[2]_inst 
       (.I(Instruction[2]),
        .O(ImmOut_OBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[30]_inst 
       (.I(Instruction[30]),
        .O(Instruction_IBUF[30]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[31]_inst 
       (.I(Instruction[31]),
        .O(Instruction_IBUF[31]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[3]_inst 
       (.I(Instruction[3]),
        .O(ImmOut_OBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[4]_inst 
       (.I(Instruction[4]),
        .O(ImmOut_OBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[5]_inst 
       (.I(Instruction[5]),
        .O(ImmOut_OBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[6]_inst 
       (.I(Instruction[6]),
        .O(ImmOut_OBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[7]_inst 
       (.I(Instruction[7]),
        .O(ImmOut_OBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[8]_inst 
       (.I(Instruction[8]),
        .O(ImmOut_OBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \Instruction_IBUF[9]_inst 
       (.I(Instruction[9]),
        .O(ImmOut_OBUF[9]));
  OBUF MemWrite_OBUF_inst
       (.I(MemWrite_OBUF),
        .O(MemWrite));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    MemWrite_OBUF_inst_i_1
       (.I0(Instruction_IBUF[28]),
        .I1(Instruction_IBUF[30]),
        .I2(Instruction_IBUF[27]),
        .I3(Instruction_IBUF[26]),
        .I4(Instruction_IBUF[31]),
        .I5(Instruction_IBUF[29]),
        .O(MemWrite_OBUF));
  OBUF MemtoReg_OBUF_inst
       (.I(MemtoReg_OBUF),
        .O(MemtoReg));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    MemtoReg_OBUF_inst_i_1
       (.I0(Instruction_IBUF[28]),
        .I1(Instruction_IBUF[30]),
        .I2(Instruction_IBUF[27]),
        .I3(Instruction_IBUF[26]),
        .I4(Instruction_IBUF[29]),
        .I5(Instruction_IBUF[31]),
        .O(MemtoReg_OBUF));
  OBUF \RD1_OBUF[0]_inst 
       (.I(RD1_OBUF[0]),
        .O(RD1[0]));
  OBUF \RD1_OBUF[10]_inst 
       (.I(RD1_OBUF[10]),
        .O(RD1[10]));
  OBUF \RD1_OBUF[11]_inst 
       (.I(RD1_OBUF[11]),
        .O(RD1[11]));
  OBUF \RD1_OBUF[12]_inst 
       (.I(RD1_OBUF[12]),
        .O(RD1[12]));
  OBUF \RD1_OBUF[13]_inst 
       (.I(RD1_OBUF[13]),
        .O(RD1[13]));
  OBUF \RD1_OBUF[14]_inst 
       (.I(RD1_OBUF[14]),
        .O(RD1[14]));
  OBUF \RD1_OBUF[15]_inst 
       (.I(RD1_OBUF[15]),
        .O(RD1[15]));
  OBUF \RD1_OBUF[16]_inst 
       (.I(RD1_OBUF[16]),
        .O(RD1[16]));
  OBUF \RD1_OBUF[17]_inst 
       (.I(RD1_OBUF[17]),
        .O(RD1[17]));
  OBUF \RD1_OBUF[18]_inst 
       (.I(RD1_OBUF[18]),
        .O(RD1[18]));
  OBUF \RD1_OBUF[19]_inst 
       (.I(RD1_OBUF[19]),
        .O(RD1[19]));
  OBUF \RD1_OBUF[1]_inst 
       (.I(RD1_OBUF[1]),
        .O(RD1[1]));
  OBUF \RD1_OBUF[20]_inst 
       (.I(RD1_OBUF[20]),
        .O(RD1[20]));
  OBUF \RD1_OBUF[21]_inst 
       (.I(RD1_OBUF[21]),
        .O(RD1[21]));
  OBUF \RD1_OBUF[22]_inst 
       (.I(RD1_OBUF[22]),
        .O(RD1[22]));
  OBUF \RD1_OBUF[23]_inst 
       (.I(RD1_OBUF[23]),
        .O(RD1[23]));
  OBUF \RD1_OBUF[24]_inst 
       (.I(RD1_OBUF[24]),
        .O(RD1[24]));
  OBUF \RD1_OBUF[25]_inst 
       (.I(RD1_OBUF[25]),
        .O(RD1[25]));
  OBUF \RD1_OBUF[26]_inst 
       (.I(RD1_OBUF[26]),
        .O(RD1[26]));
  OBUF \RD1_OBUF[27]_inst 
       (.I(RD1_OBUF[27]),
        .O(RD1[27]));
  OBUF \RD1_OBUF[28]_inst 
       (.I(RD1_OBUF[28]),
        .O(RD1[28]));
  OBUF \RD1_OBUF[29]_inst 
       (.I(RD1_OBUF[29]),
        .O(RD1[29]));
  OBUF \RD1_OBUF[2]_inst 
       (.I(RD1_OBUF[2]),
        .O(RD1[2]));
  OBUF \RD1_OBUF[30]_inst 
       (.I(RD1_OBUF[30]),
        .O(RD1[30]));
  OBUF \RD1_OBUF[31]_inst 
       (.I(RD1_OBUF[31]),
        .O(RD1[31]));
  OBUF \RD1_OBUF[3]_inst 
       (.I(RD1_OBUF[3]),
        .O(RD1[3]));
  OBUF \RD1_OBUF[4]_inst 
       (.I(RD1_OBUF[4]),
        .O(RD1[4]));
  OBUF \RD1_OBUF[5]_inst 
       (.I(RD1_OBUF[5]),
        .O(RD1[5]));
  OBUF \RD1_OBUF[6]_inst 
       (.I(RD1_OBUF[6]),
        .O(RD1[6]));
  OBUF \RD1_OBUF[7]_inst 
       (.I(RD1_OBUF[7]),
        .O(RD1[7]));
  OBUF \RD1_OBUF[8]_inst 
       (.I(RD1_OBUF[8]),
        .O(RD1[8]));
  OBUF \RD1_OBUF[9]_inst 
       (.I(RD1_OBUF[9]),
        .O(RD1[9]));
  OBUF \RD2_OBUF[0]_inst 
       (.I(RD2_OBUF[0]),
        .O(RD2[0]));
  OBUF \RD2_OBUF[10]_inst 
       (.I(RD2_OBUF[10]),
        .O(RD2[10]));
  OBUF \RD2_OBUF[11]_inst 
       (.I(RD2_OBUF[11]),
        .O(RD2[11]));
  OBUF \RD2_OBUF[12]_inst 
       (.I(RD2_OBUF[12]),
        .O(RD2[12]));
  OBUF \RD2_OBUF[13]_inst 
       (.I(RD2_OBUF[13]),
        .O(RD2[13]));
  OBUF \RD2_OBUF[14]_inst 
       (.I(RD2_OBUF[14]),
        .O(RD2[14]));
  OBUF \RD2_OBUF[15]_inst 
       (.I(RD2_OBUF[15]),
        .O(RD2[15]));
  OBUF \RD2_OBUF[16]_inst 
       (.I(RD2_OBUF[16]),
        .O(RD2[16]));
  OBUF \RD2_OBUF[17]_inst 
       (.I(RD2_OBUF[17]),
        .O(RD2[17]));
  OBUF \RD2_OBUF[18]_inst 
       (.I(RD2_OBUF[18]),
        .O(RD2[18]));
  OBUF \RD2_OBUF[19]_inst 
       (.I(RD2_OBUF[19]),
        .O(RD2[19]));
  OBUF \RD2_OBUF[1]_inst 
       (.I(RD2_OBUF[1]),
        .O(RD2[1]));
  OBUF \RD2_OBUF[20]_inst 
       (.I(RD2_OBUF[20]),
        .O(RD2[20]));
  OBUF \RD2_OBUF[21]_inst 
       (.I(RD2_OBUF[21]),
        .O(RD2[21]));
  OBUF \RD2_OBUF[22]_inst 
       (.I(RD2_OBUF[22]),
        .O(RD2[22]));
  OBUF \RD2_OBUF[23]_inst 
       (.I(RD2_OBUF[23]),
        .O(RD2[23]));
  OBUF \RD2_OBUF[24]_inst 
       (.I(RD2_OBUF[24]),
        .O(RD2[24]));
  OBUF \RD2_OBUF[25]_inst 
       (.I(RD2_OBUF[25]),
        .O(RD2[25]));
  OBUF \RD2_OBUF[26]_inst 
       (.I(RD2_OBUF[26]),
        .O(RD2[26]));
  OBUF \RD2_OBUF[27]_inst 
       (.I(RD2_OBUF[27]),
        .O(RD2[27]));
  OBUF \RD2_OBUF[28]_inst 
       (.I(RD2_OBUF[28]),
        .O(RD2[28]));
  OBUF \RD2_OBUF[29]_inst 
       (.I(RD2_OBUF[29]),
        .O(RD2[29]));
  OBUF \RD2_OBUF[2]_inst 
       (.I(RD2_OBUF[2]),
        .O(RD2[2]));
  OBUF \RD2_OBUF[30]_inst 
       (.I(RD2_OBUF[30]),
        .O(RD2[30]));
  OBUF \RD2_OBUF[31]_inst 
       (.I(RD2_OBUF[31]),
        .O(RD2[31]));
  OBUF \RD2_OBUF[3]_inst 
       (.I(RD2_OBUF[3]),
        .O(RD2[3]));
  OBUF \RD2_OBUF[4]_inst 
       (.I(RD2_OBUF[4]),
        .O(RD2[4]));
  OBUF \RD2_OBUF[5]_inst 
       (.I(RD2_OBUF[5]),
        .O(RD2[5]));
  OBUF \RD2_OBUF[6]_inst 
       (.I(RD2_OBUF[6]),
        .O(RD2[6]));
  OBUF \RD2_OBUF[7]_inst 
       (.I(RD2_OBUF[7]),
        .O(RD2[7]));
  OBUF \RD2_OBUF[8]_inst 
       (.I(RD2_OBUF[8]),
        .O(RD2[8]));
  OBUF \RD2_OBUF[9]_inst 
       (.I(RD2_OBUF[9]),
        .O(RD2[9]));
  OBUF \RdDest_OBUF[0]_inst 
       (.I(ImmOut_OBUF[11]),
        .O(RdDest[0]));
  OBUF \RdDest_OBUF[1]_inst 
       (.I(ImmOut_OBUF[12]),
        .O(RdDest[1]));
  OBUF \RdDest_OBUF[2]_inst 
       (.I(ImmOut_OBUF[13]),
        .O(RdDest[2]));
  OBUF \RdDest_OBUF[3]_inst 
       (.I(ImmOut_OBUF[14]),
        .O(RdDest[3]));
  OBUF \RdDest_OBUF[4]_inst 
       (.I(ImmOut_OBUF[15]),
        .O(RdDest[4]));
  OBUF RegDst_OBUF_inst
       (.I(RegDst_OBUF),
        .O(RegDst));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    RegDst_OBUF_inst_i_1
       (.I0(Instruction_IBUF[31]),
        .I1(Instruction_IBUF[30]),
        .I2(Instruction_IBUF[29]),
        .I3(Instruction_IBUF[28]),
        .I4(Instruction_IBUF[27]),
        .I5(Instruction_IBUF[26]),
        .O(RegDst_OBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteAddr_IBUF[0]_inst 
       (.I(RegWriteAddr[0]),
        .O(RegWriteAddr_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteAddr_IBUF[1]_inst 
       (.I(RegWriteAddr[1]),
        .O(RegWriteAddr_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteAddr_IBUF[2]_inst 
       (.I(RegWriteAddr[2]),
        .O(RegWriteAddr_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteAddr_IBUF[3]_inst 
       (.I(RegWriteAddr[3]),
        .O(RegWriteAddr_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteAddr_IBUF[4]_inst 
       (.I(RegWriteAddr[4]),
        .O(RegWriteAddr_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[0]_inst 
       (.I(RegWriteData[0]),
        .O(RegWriteData_IBUF[0]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[10]_inst 
       (.I(RegWriteData[10]),
        .O(RegWriteData_IBUF[10]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[11]_inst 
       (.I(RegWriteData[11]),
        .O(RegWriteData_IBUF[11]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[12]_inst 
       (.I(RegWriteData[12]),
        .O(RegWriteData_IBUF[12]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[13]_inst 
       (.I(RegWriteData[13]),
        .O(RegWriteData_IBUF[13]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[14]_inst 
       (.I(RegWriteData[14]),
        .O(RegWriteData_IBUF[14]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[15]_inst 
       (.I(RegWriteData[15]),
        .O(RegWriteData_IBUF[15]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[16]_inst 
       (.I(RegWriteData[16]),
        .O(RegWriteData_IBUF[16]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[17]_inst 
       (.I(RegWriteData[17]),
        .O(RegWriteData_IBUF[17]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[18]_inst 
       (.I(RegWriteData[18]),
        .O(RegWriteData_IBUF[18]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[19]_inst 
       (.I(RegWriteData[19]),
        .O(RegWriteData_IBUF[19]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[1]_inst 
       (.I(RegWriteData[1]),
        .O(RegWriteData_IBUF[1]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[20]_inst 
       (.I(RegWriteData[20]),
        .O(RegWriteData_IBUF[20]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[21]_inst 
       (.I(RegWriteData[21]),
        .O(RegWriteData_IBUF[21]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[22]_inst 
       (.I(RegWriteData[22]),
        .O(RegWriteData_IBUF[22]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[23]_inst 
       (.I(RegWriteData[23]),
        .O(RegWriteData_IBUF[23]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[24]_inst 
       (.I(RegWriteData[24]),
        .O(RegWriteData_IBUF[24]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[25]_inst 
       (.I(RegWriteData[25]),
        .O(RegWriteData_IBUF[25]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[26]_inst 
       (.I(RegWriteData[26]),
        .O(RegWriteData_IBUF[26]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[27]_inst 
       (.I(RegWriteData[27]),
        .O(RegWriteData_IBUF[27]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[28]_inst 
       (.I(RegWriteData[28]),
        .O(RegWriteData_IBUF[28]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[29]_inst 
       (.I(RegWriteData[29]),
        .O(RegWriteData_IBUF[29]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[2]_inst 
       (.I(RegWriteData[2]),
        .O(RegWriteData_IBUF[2]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[30]_inst 
       (.I(RegWriteData[30]),
        .O(RegWriteData_IBUF[30]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[31]_inst 
       (.I(RegWriteData[31]),
        .O(RegWriteData_IBUF[31]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[3]_inst 
       (.I(RegWriteData[3]),
        .O(RegWriteData_IBUF[3]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[4]_inst 
       (.I(RegWriteData[4]),
        .O(RegWriteData_IBUF[4]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[5]_inst 
       (.I(RegWriteData[5]),
        .O(RegWriteData_IBUF[5]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[6]_inst 
       (.I(RegWriteData[6]),
        .O(RegWriteData_IBUF[6]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[7]_inst 
       (.I(RegWriteData[7]),
        .O(RegWriteData_IBUF[7]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[8]_inst 
       (.I(RegWriteData[8]),
        .O(RegWriteData_IBUF[8]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    \RegWriteData_IBUF[9]_inst 
       (.I(RegWriteData[9]),
        .O(RegWriteData_IBUF[9]));
  IBUF #(
    .CCIO_EN("TRUE")) 
    RegWriteEn_IBUF_inst
       (.I(RegWriteEn),
        .O(RegWriteEn_IBUF));
  OBUF RegWrite_OBUF_inst
       (.I(RegWrite_OBUF),
        .O(RegWrite));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    RegWrite_OBUF_inst_i_1
       (.I0(Instruction_IBUF[30]),
        .I1(RegWrite_OBUF_inst_i_2_n_0),
        .O(RegWrite_OBUF));
  LUT6 #(
    .INIT(64'hFDBFBFBAFDBFBFBB)) 
    RegWrite_OBUF_inst_i_2
       (.I0(Instruction_IBUF[31]),
        .I1(Instruction_IBUF[29]),
        .I2(Instruction_IBUF[28]),
        .I3(Instruction_IBUF[27]),
        .I4(Instruction_IBUF[26]),
        .I5(RegWrite_OBUF_inst_i_3_n_0),
        .O(RegWrite_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0002000000005D31)) 
    RegWrite_OBUF_inst_i_3
       (.I0(ImmOut_OBUF[0]),
        .I1(ImmOut_OBUF[2]),
        .I2(ImmOut_OBUF[1]),
        .I3(ImmOut_OBUF[5]),
        .I4(ImmOut_OBUF[4]),
        .I5(ImmOut_OBUF[3]),
        .O(RegWrite_OBUF_inst_i_3_n_0));
  RegisterFile RegisterFile
       (.ADDRC(Instruction_IBUF[25:21]),
        .RD1_OBUF(RD1_OBUF),
        .\RD2[25] (clk_IBUF_BUFG),
        .RD2_OBUF(RD2_OBUF),
        .RegWriteAddr_IBUF(RegWriteAddr_IBUF),
        .RegWriteData_IBUF(RegWriteData_IBUF),
        .RegWriteEn_IBUF(RegWriteEn_IBUF),
        .RtDest_OBUF(RtDest_OBUF));
  OBUF \RtDest_OBUF[0]_inst 
       (.I(RtDest_OBUF[0]),
        .O(RtDest[0]));
  OBUF \RtDest_OBUF[1]_inst 
       (.I(RtDest_OBUF[1]),
        .O(RtDest[1]));
  OBUF \RtDest_OBUF[2]_inst 
       (.I(RtDest_OBUF[2]),
        .O(RtDest[2]));
  OBUF \RtDest_OBUF[3]_inst 
       (.I(RtDest_OBUF[3]),
        .O(RtDest[3]));
  OBUF \RtDest_OBUF[4]_inst 
       (.I(RtDest_OBUF[4]),
        .O(RtDest[4]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
endmodule

module RegisterFile
   (RD1_OBUF,
    RD2_OBUF,
    \RD2[25] ,
    RegWriteData_IBUF,
    ADDRC,
    RegWriteAddr_IBUF,
    RtDest_OBUF,
    RegWriteEn_IBUF);
  output [31:0]RD1_OBUF;
  output [31:0]RD2_OBUF;
  input \RD2[25] ;
  input [31:0]RegWriteData_IBUF;
  input [4:0]ADDRC;
  input [4:0]RegWriteAddr_IBUF;
  input [4:0]RtDest_OBUF;
  input RegWriteEn_IBUF;

  wire [4:0]ADDRC;
  wire [31:0]RD1_OBUF;
  wire \RD2[25] ;
  wire [31:0]RD2_OBUF;
  wire [4:0]RegWriteAddr_IBUF;
  wire [31:0]RegWriteData_IBUF;
  wire RegWriteEn_IBUF;
  wire [4:0]RtDest_OBUF;
  wire p_0_in;
  wire [1:0]NLW_reg_file_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_reg_file_reg_r1_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_reg_file_reg_r1_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_31_24_29_DOD_UNCONNECTED;
  wire NLW_reg_file_reg_r2_0_31_30_31_SPO_UNCONNECTED;
  wire NLW_reg_file_reg_r2_0_31_30_31__0_SPO_UNCONNECTED;
  wire [1:0]NLW_reg_file_reg_r2_0_31_6_11_DOD_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ reg_file_reg_r1_0_31_0_5
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[1:0]),
        .DIB(RegWriteData_IBUF[3:2]),
        .DIC(RegWriteData_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(RD1_OBUF[1:0]),
        .DOB(RD1_OBUF[3:2]),
        .DOC(RD1_OBUF[5:4]),
        .DOD(NLW_reg_file_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    reg_file_reg_r1_0_31_0_5_i_2
       (.I0(RegWriteEn_IBUF),
        .I1(RegWriteAddr_IBUF[2]),
        .I2(RegWriteAddr_IBUF[4]),
        .I3(RegWriteAddr_IBUF[0]),
        .I4(RegWriteAddr_IBUF[1]),
        .I5(RegWriteAddr_IBUF[3]),
        .O(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD25 reg_file_reg_r1_0_31_12_17
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[13:12]),
        .DIB(RegWriteData_IBUF[15:14]),
        .DIC(RegWriteData_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(RD1_OBUF[13:12]),
        .DOB(RD1_OBUF[15:14]),
        .DOC(RD1_OBUF[17:16]),
        .DOD(NLW_reg_file_reg_r1_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD26 reg_file_reg_r1_0_31_18_23
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[19:18]),
        .DIB(RegWriteData_IBUF[21:20]),
        .DIC(RegWriteData_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(RD1_OBUF[19:18]),
        .DOB(RD1_OBUF[21:20]),
        .DOC(RD1_OBUF[23:22]),
        .DOD(NLW_reg_file_reg_r1_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD27 reg_file_reg_r1_0_31_24_29
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[25:24]),
        .DIB(RegWriteData_IBUF[27:26]),
        .DIC(RegWriteData_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(RD1_OBUF[25:24]),
        .DOB(RD1_OBUF[27:26]),
        .DOC(RD1_OBUF[29:28]),
        .DOD(NLW_reg_file_reg_r1_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT = "32'h00000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_UNIQ_BASE_ reg_file_reg_r1_0_31_30_31
       (.A0(RegWriteAddr_IBUF[0]),
        .A1(RegWriteAddr_IBUF[1]),
        .A2(RegWriteAddr_IBUF[2]),
        .A3(RegWriteAddr_IBUF[3]),
        .A4(RegWriteAddr_IBUF[4]),
        .D(RegWriteData_IBUF[30]),
        .DPO(RD1_OBUF[30]),
        .DPRA0(ADDRC[0]),
        .DPRA1(ADDRC[1]),
        .DPRA2(ADDRC[2]),
        .DPRA3(ADDRC[3]),
        .DPRA4(ADDRC[4]),
        .SPO(NLW_reg_file_reg_r1_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT = "32'h00000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD28 reg_file_reg_r1_0_31_30_31__0
       (.A0(RegWriteAddr_IBUF[0]),
        .A1(RegWriteAddr_IBUF[1]),
        .A2(RegWriteAddr_IBUF[2]),
        .A3(RegWriteAddr_IBUF[3]),
        .A4(RegWriteAddr_IBUF[4]),
        .D(RegWriteData_IBUF[31]),
        .DPO(RD1_OBUF[31]),
        .DPRA0(ADDRC[0]),
        .DPRA1(ADDRC[1]),
        .DPRA2(ADDRC[2]),
        .DPRA3(ADDRC[3]),
        .DPRA4(ADDRC[4]),
        .SPO(NLW_reg_file_reg_r1_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r1_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD29 reg_file_reg_r1_0_31_6_11
       (.ADDRA(ADDRC),
        .ADDRB(ADDRC),
        .ADDRC(ADDRC),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[7:6]),
        .DIB(RegWriteData_IBUF[9:8]),
        .DIC(RegWriteData_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(RD1_OBUF[7:6]),
        .DOB(RD1_OBUF[9:8]),
        .DOC(RD1_OBUF[11:10]),
        .DOD(NLW_reg_file_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_HD30 reg_file_reg_r2_0_31_0_5
       (.ADDRA(RtDest_OBUF),
        .ADDRB(RtDest_OBUF),
        .ADDRC(RtDest_OBUF),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[1:0]),
        .DIB(RegWriteData_IBUF[3:2]),
        .DIC(RegWriteData_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(RD2_OBUF[1:0]),
        .DOB(RD2_OBUF[3:2]),
        .DOC(RD2_OBUF[5:4]),
        .DOD(NLW_reg_file_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_12_17" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M_HD31 reg_file_reg_r2_0_31_12_17
       (.ADDRA(RtDest_OBUF),
        .ADDRB(RtDest_OBUF),
        .ADDRC(RtDest_OBUF),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[13:12]),
        .DIB(RegWriteData_IBUF[15:14]),
        .DIC(RegWriteData_IBUF[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(RD2_OBUF[13:12]),
        .DOB(RD2_OBUF[15:14]),
        .DOC(RD2_OBUF[17:16]),
        .DOD(NLW_reg_file_reg_r2_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_18_23" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M_HD32 reg_file_reg_r2_0_31_18_23
       (.ADDRA(RtDest_OBUF),
        .ADDRB(RtDest_OBUF),
        .ADDRC(RtDest_OBUF),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[19:18]),
        .DIB(RegWriteData_IBUF[21:20]),
        .DIC(RegWriteData_IBUF[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(RD2_OBUF[19:18]),
        .DOB(RD2_OBUF[21:20]),
        .DOC(RD2_OBUF[23:22]),
        .DOD(NLW_reg_file_reg_r2_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_24_29" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M_HD33 reg_file_reg_r2_0_31_24_29
       (.ADDRA(RtDest_OBUF),
        .ADDRB(RtDest_OBUF),
        .ADDRC(RtDest_OBUF),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[25:24]),
        .DIB(RegWriteData_IBUF[27:26]),
        .DIC(RegWriteData_IBUF[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(RD2_OBUF[25:24]),
        .DOB(RD2_OBUF[27:26]),
        .DOC(RD2_OBUF[29:28]),
        .DOD(NLW_reg_file_reg_r2_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT = "32'h00000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD34 reg_file_reg_r2_0_31_30_31
       (.A0(RegWriteAddr_IBUF[0]),
        .A1(RegWriteAddr_IBUF[1]),
        .A2(RegWriteAddr_IBUF[2]),
        .A3(RegWriteAddr_IBUF[3]),
        .A4(RegWriteAddr_IBUF[4]),
        .D(RegWriteData_IBUF[30]),
        .DPO(RD2_OBUF[30]),
        .DPRA0(RtDest_OBUF[0]),
        .DPRA1(RtDest_OBUF[1]),
        .DPRA2(RtDest_OBUF[2]),
        .DPRA3(RtDest_OBUF[3]),
        .DPRA4(RtDest_OBUF[4]),
        .SPO(NLW_reg_file_reg_r2_0_31_30_31_SPO_UNCONNECTED),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT = "32'h00000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_30_31" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32X1D" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32X1D_HD35 reg_file_reg_r2_0_31_30_31__0
       (.A0(RegWriteAddr_IBUF[0]),
        .A1(RegWriteAddr_IBUF[1]),
        .A2(RegWriteAddr_IBUF[2]),
        .A3(RegWriteAddr_IBUF[3]),
        .A4(RegWriteAddr_IBUF[4]),
        .D(RegWriteData_IBUF[31]),
        .DPO(RD2_OBUF[31]),
        .DPRA0(RtDest_OBUF[0]),
        .DPRA1(RtDest_OBUF[1]),
        .DPRA2(RtDest_OBUF[2]),
        .DPRA3(RtDest_OBUF[3]),
        .DPRA4(RtDest_OBUF[4]),
        .SPO(NLW_reg_file_reg_r2_0_31_30_31__0_SPO_UNCONNECTED),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* IS_WCLK_INVERTED = "1'b1" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "RegisterFile/reg_file_reg_r2_0_31_6_11" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* XILINX_REPORT_XFORM = "RAM32M" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M_HD36 reg_file_reg_r2_0_31_6_11
       (.ADDRA(RtDest_OBUF),
        .ADDRB(RtDest_OBUF),
        .ADDRC(RtDest_OBUF),
        .ADDRD(RegWriteAddr_IBUF),
        .DIA(RegWriteData_IBUF[7:6]),
        .DIB(RegWriteData_IBUF[9:8]),
        .DIC(RegWriteData_IBUF[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(RD2_OBUF[7:6]),
        .DOB(RD2_OBUF[9:8]),
        .DOC(RD2_OBUF[11:10]),
        .DOD(NLW_reg_file_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(\RD2[25] ),
        .WE(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
