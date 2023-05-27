--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
--Date        : Sat May 27 12:29:59 2023
--Host        : DESKTOP-BJUKTU0 running 64-bit major release  (build 9200)
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
    IIC_0_scl_io : inout STD_LOGIC;
    IIC_0_sda_io : inout STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_in1_0 : in STD_LOGIC;
    d_out_0 : out STD_LOGIC;
    pmoda_pin10_io : inout STD_LOGIC;
    pmoda_pin1_io : inout STD_LOGIC;
    pmoda_pin2_io : inout STD_LOGIC;
    pmoda_pin3_io : inout STD_LOGIC;
    pmoda_pin4_io : inout STD_LOGIC;
    pmoda_pin7_io : inout STD_LOGIC;
    pmoda_pin8_io : inout STD_LOGIC;
    pmoda_pin9_io : inout STD_LOGIC;
    sws_2bits_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
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
    pmoda_pin1_o : out STD_LOGIC;
    pmoda_pin7_i : in STD_LOGIC;
    pmoda_pin2_o : out STD_LOGIC;
    pmoda_pin8_i : in STD_LOGIC;
    pmoda_pin3_o : out STD_LOGIC;
    pmoda_pin9_i : in STD_LOGIC;
    pmoda_pin10_o : out STD_LOGIC;
    pmoda_pin4_o : out STD_LOGIC;
    pmoda_pin3_i : in STD_LOGIC;
    pmoda_pin4_i : in STD_LOGIC;
    pmoda_pin1_i : in STD_LOGIC;
    pmoda_pin2_i : in STD_LOGIC;
    pmoda_pin10_t : out STD_LOGIC;
    pmoda_pin8_t : out STD_LOGIC;
    pmoda_pin9_t : out STD_LOGIC;
    pmoda_pin4_t : out STD_LOGIC;
    pmoda_pin9_o : out STD_LOGIC;
    pmoda_pin10_i : in STD_LOGIC;
    pmoda_pin7_t : out STD_LOGIC;
    pmoda_pin1_t : out STD_LOGIC;
    pmoda_pin2_t : out STD_LOGIC;
    pmoda_pin7_o : out STD_LOGIC;
    pmoda_pin3_t : out STD_LOGIC;
    pmoda_pin8_o : out STD_LOGIC;
    IIC_0_scl_i : in STD_LOGIC;
    IIC_0_scl_o : out STD_LOGIC;
    IIC_0_scl_t : out STD_LOGIC;
    IIC_0_sda_i : in STD_LOGIC;
    IIC_0_sda_o : out STD_LOGIC;
    IIC_0_sda_t : out STD_LOGIC;
    btns_4bits_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sws_2bits_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 )
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
  signal IIC_0_scl_i : STD_LOGIC;
  signal IIC_0_scl_o : STD_LOGIC;
  signal IIC_0_scl_t : STD_LOGIC;
  signal IIC_0_sda_i : STD_LOGIC;
  signal IIC_0_sda_o : STD_LOGIC;
  signal IIC_0_sda_t : STD_LOGIC;
  signal pmoda_pin10_i : STD_LOGIC;
  signal pmoda_pin10_o : STD_LOGIC;
  signal pmoda_pin10_t : STD_LOGIC;
  signal pmoda_pin1_i : STD_LOGIC;
  signal pmoda_pin1_o : STD_LOGIC;
  signal pmoda_pin1_t : STD_LOGIC;
  signal pmoda_pin2_i : STD_LOGIC;
  signal pmoda_pin2_o : STD_LOGIC;
  signal pmoda_pin2_t : STD_LOGIC;
  signal pmoda_pin3_i : STD_LOGIC;
  signal pmoda_pin3_o : STD_LOGIC;
  signal pmoda_pin3_t : STD_LOGIC;
  signal pmoda_pin4_i : STD_LOGIC;
  signal pmoda_pin4_o : STD_LOGIC;
  signal pmoda_pin4_t : STD_LOGIC;
  signal pmoda_pin7_i : STD_LOGIC;
  signal pmoda_pin7_o : STD_LOGIC;
  signal pmoda_pin7_t : STD_LOGIC;
  signal pmoda_pin8_i : STD_LOGIC;
  signal pmoda_pin8_o : STD_LOGIC;
  signal pmoda_pin8_t : STD_LOGIC;
  signal pmoda_pin9_i : STD_LOGIC;
  signal pmoda_pin9_o : STD_LOGIC;
  signal pmoda_pin9_t : STD_LOGIC;
begin
IIC_0_scl_iobuf: component IOBUF
     port map (
      I => IIC_0_scl_o,
      IO => IIC_0_scl_io,
      O => IIC_0_scl_i,
      T => IIC_0_scl_t
    );
IIC_0_sda_iobuf: component IOBUF
     port map (
      I => IIC_0_sda_o,
      IO => IIC_0_sda_io,
      O => IIC_0_sda_i,
      T => IIC_0_sda_t
    );
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
      IIC_0_scl_i => IIC_0_scl_i,
      IIC_0_scl_o => IIC_0_scl_o,
      IIC_0_scl_t => IIC_0_scl_t,
      IIC_0_sda_i => IIC_0_sda_i,
      IIC_0_sda_o => IIC_0_sda_o,
      IIC_0_sda_t => IIC_0_sda_t,
      btns_4bits_tri_i(3 downto 0) => btns_4bits_tri_i(3 downto 0),
      clk_in1_0 => clk_in1_0,
      d_out_0 => d_out_0,
      pmoda_pin10_i => pmoda_pin10_i,
      pmoda_pin10_o => pmoda_pin10_o,
      pmoda_pin10_t => pmoda_pin10_t,
      pmoda_pin1_i => pmoda_pin1_i,
      pmoda_pin1_o => pmoda_pin1_o,
      pmoda_pin1_t => pmoda_pin1_t,
      pmoda_pin2_i => pmoda_pin2_i,
      pmoda_pin2_o => pmoda_pin2_o,
      pmoda_pin2_t => pmoda_pin2_t,
      pmoda_pin3_i => pmoda_pin3_i,
      pmoda_pin3_o => pmoda_pin3_o,
      pmoda_pin3_t => pmoda_pin3_t,
      pmoda_pin4_i => pmoda_pin4_i,
      pmoda_pin4_o => pmoda_pin4_o,
      pmoda_pin4_t => pmoda_pin4_t,
      pmoda_pin7_i => pmoda_pin7_i,
      pmoda_pin7_o => pmoda_pin7_o,
      pmoda_pin7_t => pmoda_pin7_t,
      pmoda_pin8_i => pmoda_pin8_i,
      pmoda_pin8_o => pmoda_pin8_o,
      pmoda_pin8_t => pmoda_pin8_t,
      pmoda_pin9_i => pmoda_pin9_i,
      pmoda_pin9_o => pmoda_pin9_o,
      pmoda_pin9_t => pmoda_pin9_t,
      sws_2bits_tri_i(1 downto 0) => sws_2bits_tri_i(1 downto 0)
    );
pmoda_pin10_iobuf: component IOBUF
     port map (
      I => pmoda_pin10_o,
      IO => pmoda_pin10_io,
      O => pmoda_pin10_i,
      T => pmoda_pin10_t
    );
pmoda_pin1_iobuf: component IOBUF
     port map (
      I => pmoda_pin1_o,
      IO => pmoda_pin1_io,
      O => pmoda_pin1_i,
      T => pmoda_pin1_t
    );
pmoda_pin2_iobuf: component IOBUF
     port map (
      I => pmoda_pin2_o,
      IO => pmoda_pin2_io,
      O => pmoda_pin2_i,
      T => pmoda_pin2_t
    );
pmoda_pin3_iobuf: component IOBUF
     port map (
      I => pmoda_pin3_o,
      IO => pmoda_pin3_io,
      O => pmoda_pin3_i,
      T => pmoda_pin3_t
    );
pmoda_pin4_iobuf: component IOBUF
     port map (
      I => pmoda_pin4_o,
      IO => pmoda_pin4_io,
      O => pmoda_pin4_i,
      T => pmoda_pin4_t
    );
pmoda_pin7_iobuf: component IOBUF
     port map (
      I => pmoda_pin7_o,
      IO => pmoda_pin7_io,
      O => pmoda_pin7_i,
      T => pmoda_pin7_t
    );
pmoda_pin8_iobuf: component IOBUF
     port map (
      I => pmoda_pin8_o,
      IO => pmoda_pin8_io,
      O => pmoda_pin8_i,
      T => pmoda_pin8_t
    );
pmoda_pin9_iobuf: component IOBUF
     port map (
      I => pmoda_pin9_o,
      IO => pmoda_pin9_io,
      O => pmoda_pin9_i,
      T => pmoda_pin9_t
    );
end STRUCTURE;
