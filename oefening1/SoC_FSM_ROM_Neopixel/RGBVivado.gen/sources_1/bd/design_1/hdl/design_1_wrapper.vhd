--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Fri May 26 15:41:00 2023
--Host        : LAPTOP-ISJLH1PH running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    clk_in1_0 : in STD_LOGIC;
    d_out_0 : out STD_LOGIC;
    pmodb_pin10_io : inout STD_LOGIC;
    pmodb_pin1_io : inout STD_LOGIC;
    pmodb_pin2_io : inout STD_LOGIC;
    pmodb_pin3_io : inout STD_LOGIC;
    pmodb_pin4_io : inout STD_LOGIC;
    pmodb_pin7_io : inout STD_LOGIC;
    pmodb_pin8_io : inout STD_LOGIC;
    pmodb_pin9_io : inout STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    d_out_0 : out STD_LOGIC;
    clk_in1_0 : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    pmodb_pin1_o : out STD_LOGIC;
    pmodb_pin7_i : in STD_LOGIC;
    pmodb_pin2_o : out STD_LOGIC;
    pmodb_pin8_i : in STD_LOGIC;
    pmodb_pin3_o : out STD_LOGIC;
    pmodb_pin9_i : in STD_LOGIC;
    pmodb_pin10_o : out STD_LOGIC;
    pmodb_pin4_o : out STD_LOGIC;
    pmodb_pin3_i : in STD_LOGIC;
    pmodb_pin4_i : in STD_LOGIC;
    pmodb_pin1_i : in STD_LOGIC;
    pmodb_pin2_i : in STD_LOGIC;
    pmodb_pin10_t : out STD_LOGIC;
    pmodb_pin8_t : out STD_LOGIC;
    pmodb_pin9_t : out STD_LOGIC;
    pmodb_pin4_t : out STD_LOGIC;
    pmodb_pin9_o : out STD_LOGIC;
    pmodb_pin10_i : in STD_LOGIC;
    pmodb_pin7_t : out STD_LOGIC;
    pmodb_pin1_t : out STD_LOGIC;
    pmodb_pin2_t : out STD_LOGIC;
    pmodb_pin7_o : out STD_LOGIC;
    pmodb_pin3_t : out STD_LOGIC;
    pmodb_pin8_o : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal pmodb_pin10_i : STD_LOGIC;
  signal pmodb_pin10_o : STD_LOGIC;
  signal pmodb_pin10_t : STD_LOGIC;
  signal pmodb_pin1_i : STD_LOGIC;
  signal pmodb_pin1_o : STD_LOGIC;
  signal pmodb_pin1_t : STD_LOGIC;
  signal pmodb_pin2_i : STD_LOGIC;
  signal pmodb_pin2_o : STD_LOGIC;
  signal pmodb_pin2_t : STD_LOGIC;
  signal pmodb_pin3_i : STD_LOGIC;
  signal pmodb_pin3_o : STD_LOGIC;
  signal pmodb_pin3_t : STD_LOGIC;
  signal pmodb_pin4_i : STD_LOGIC;
  signal pmodb_pin4_o : STD_LOGIC;
  signal pmodb_pin4_t : STD_LOGIC;
  signal pmodb_pin7_i : STD_LOGIC;
  signal pmodb_pin7_o : STD_LOGIC;
  signal pmodb_pin7_t : STD_LOGIC;
  signal pmodb_pin8_i : STD_LOGIC;
  signal pmodb_pin8_o : STD_LOGIC;
  signal pmodb_pin8_t : STD_LOGIC;
  signal pmodb_pin9_i : STD_LOGIC;
  signal pmodb_pin9_o : STD_LOGIC;
  signal pmodb_pin9_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      clk_in1_0 => clk_in1_0,
      d_out_0 => d_out_0,
      pmodb_pin10_i => pmodb_pin10_i,
      pmodb_pin10_o => pmodb_pin10_o,
      pmodb_pin10_t => pmodb_pin10_t,
      pmodb_pin1_i => pmodb_pin1_i,
      pmodb_pin1_o => pmodb_pin1_o,
      pmodb_pin1_t => pmodb_pin1_t,
      pmodb_pin2_i => pmodb_pin2_i,
      pmodb_pin2_o => pmodb_pin2_o,
      pmodb_pin2_t => pmodb_pin2_t,
      pmodb_pin3_i => pmodb_pin3_i,
      pmodb_pin3_o => pmodb_pin3_o,
      pmodb_pin3_t => pmodb_pin3_t,
      pmodb_pin4_i => pmodb_pin4_i,
      pmodb_pin4_o => pmodb_pin4_o,
      pmodb_pin4_t => pmodb_pin4_t,
      pmodb_pin7_i => pmodb_pin7_i,
      pmodb_pin7_o => pmodb_pin7_o,
      pmodb_pin7_t => pmodb_pin7_t,
      pmodb_pin8_i => pmodb_pin8_i,
      pmodb_pin8_o => pmodb_pin8_o,
      pmodb_pin8_t => pmodb_pin8_t,
      pmodb_pin9_i => pmodb_pin9_i,
      pmodb_pin9_o => pmodb_pin9_o,
      pmodb_pin9_t => pmodb_pin9_t
    );
pmodb_pin10_iobuf: component IOBUF
     port map (
      I => pmodb_pin10_o,
      IO => pmodb_pin10_io,
      O => pmodb_pin10_i,
      T => pmodb_pin10_t
    );
pmodb_pin1_iobuf: component IOBUF
     port map (
      I => pmodb_pin1_o,
      IO => pmodb_pin1_io,
      O => pmodb_pin1_i,
      T => pmodb_pin1_t
    );
pmodb_pin2_iobuf: component IOBUF
     port map (
      I => pmodb_pin2_o,
      IO => pmodb_pin2_io,
      O => pmodb_pin2_i,
      T => pmodb_pin2_t
    );
pmodb_pin3_iobuf: component IOBUF
     port map (
      I => pmodb_pin3_o,
      IO => pmodb_pin3_io,
      O => pmodb_pin3_i,
      T => pmodb_pin3_t
    );
pmodb_pin4_iobuf: component IOBUF
     port map (
      I => pmodb_pin4_o,
      IO => pmodb_pin4_io,
      O => pmodb_pin4_i,
      T => pmodb_pin4_t
    );
pmodb_pin7_iobuf: component IOBUF
     port map (
      I => pmodb_pin7_o,
      IO => pmodb_pin7_io,
      O => pmodb_pin7_i,
      T => pmodb_pin7_t
    );
pmodb_pin8_iobuf: component IOBUF
     port map (
      I => pmodb_pin8_o,
      IO => pmodb_pin8_io,
      O => pmodb_pin8_i,
      T => pmodb_pin8_t
    );
pmodb_pin9_iobuf: component IOBUF
     port map (
      I => pmodb_pin9_o,
      IO => pmodb_pin9_io,
      O => pmodb_pin9_i,
      T => pmodb_pin9_t
    );
end STRUCTURE;
