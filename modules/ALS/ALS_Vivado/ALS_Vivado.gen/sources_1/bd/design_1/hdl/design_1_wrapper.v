//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Fri Mar 24 16:26:34 2023
//Host        : Laptop-B running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    pmodb_pin10_io,
    pmodb_pin1_io,
    pmodb_pin2_io,
    pmodb_pin3_io,
    pmodb_pin4_io,
    pmodb_pin7_io,
    pmodb_pin8_io,
    pmodb_pin9_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout pmodb_pin10_io;
  inout pmodb_pin1_io;
  inout pmodb_pin2_io;
  inout pmodb_pin3_io;
  inout pmodb_pin4_io;
  inout pmodb_pin7_io;
  inout pmodb_pin8_io;
  inout pmodb_pin9_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire pmodb_pin10_i;
  wire pmodb_pin10_io;
  wire pmodb_pin10_o;
  wire pmodb_pin10_t;
  wire pmodb_pin1_i;
  wire pmodb_pin1_io;
  wire pmodb_pin1_o;
  wire pmodb_pin1_t;
  wire pmodb_pin2_i;
  wire pmodb_pin2_io;
  wire pmodb_pin2_o;
  wire pmodb_pin2_t;
  wire pmodb_pin3_i;
  wire pmodb_pin3_io;
  wire pmodb_pin3_o;
  wire pmodb_pin3_t;
  wire pmodb_pin4_i;
  wire pmodb_pin4_io;
  wire pmodb_pin4_o;
  wire pmodb_pin4_t;
  wire pmodb_pin7_i;
  wire pmodb_pin7_io;
  wire pmodb_pin7_o;
  wire pmodb_pin7_t;
  wire pmodb_pin8_i;
  wire pmodb_pin8_io;
  wire pmodb_pin8_o;
  wire pmodb_pin8_t;
  wire pmodb_pin9_i;
  wire pmodb_pin9_io;
  wire pmodb_pin9_o;
  wire pmodb_pin9_t;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .pmodb_pin10_i(pmodb_pin10_i),
        .pmodb_pin10_o(pmodb_pin10_o),
        .pmodb_pin10_t(pmodb_pin10_t),
        .pmodb_pin1_i(pmodb_pin1_i),
        .pmodb_pin1_o(pmodb_pin1_o),
        .pmodb_pin1_t(pmodb_pin1_t),
        .pmodb_pin2_i(pmodb_pin2_i),
        .pmodb_pin2_o(pmodb_pin2_o),
        .pmodb_pin2_t(pmodb_pin2_t),
        .pmodb_pin3_i(pmodb_pin3_i),
        .pmodb_pin3_o(pmodb_pin3_o),
        .pmodb_pin3_t(pmodb_pin3_t),
        .pmodb_pin4_i(pmodb_pin4_i),
        .pmodb_pin4_o(pmodb_pin4_o),
        .pmodb_pin4_t(pmodb_pin4_t),
        .pmodb_pin7_i(pmodb_pin7_i),
        .pmodb_pin7_o(pmodb_pin7_o),
        .pmodb_pin7_t(pmodb_pin7_t),
        .pmodb_pin8_i(pmodb_pin8_i),
        .pmodb_pin8_o(pmodb_pin8_o),
        .pmodb_pin8_t(pmodb_pin8_t),
        .pmodb_pin9_i(pmodb_pin9_i),
        .pmodb_pin9_o(pmodb_pin9_o),
        .pmodb_pin9_t(pmodb_pin9_t));
  IOBUF pmodb_pin10_iobuf
       (.I(pmodb_pin10_o),
        .IO(pmodb_pin10_io),
        .O(pmodb_pin10_i),
        .T(pmodb_pin10_t));
  IOBUF pmodb_pin1_iobuf
       (.I(pmodb_pin1_o),
        .IO(pmodb_pin1_io),
        .O(pmodb_pin1_i),
        .T(pmodb_pin1_t));
  IOBUF pmodb_pin2_iobuf
       (.I(pmodb_pin2_o),
        .IO(pmodb_pin2_io),
        .O(pmodb_pin2_i),
        .T(pmodb_pin2_t));
  IOBUF pmodb_pin3_iobuf
       (.I(pmodb_pin3_o),
        .IO(pmodb_pin3_io),
        .O(pmodb_pin3_i),
        .T(pmodb_pin3_t));
  IOBUF pmodb_pin4_iobuf
       (.I(pmodb_pin4_o),
        .IO(pmodb_pin4_io),
        .O(pmodb_pin4_i),
        .T(pmodb_pin4_t));
  IOBUF pmodb_pin7_iobuf
       (.I(pmodb_pin7_o),
        .IO(pmodb_pin7_io),
        .O(pmodb_pin7_i),
        .T(pmodb_pin7_t));
  IOBUF pmodb_pin8_iobuf
       (.I(pmodb_pin8_o),
        .IO(pmodb_pin8_io),
        .O(pmodb_pin8_i),
        .T(pmodb_pin8_t));
  IOBUF pmodb_pin9_iobuf
       (.I(pmodb_pin9_o),
        .IO(pmodb_pin9_io),
        .O(pmodb_pin9_i),
        .T(pmodb_pin9_t));
endmodule
