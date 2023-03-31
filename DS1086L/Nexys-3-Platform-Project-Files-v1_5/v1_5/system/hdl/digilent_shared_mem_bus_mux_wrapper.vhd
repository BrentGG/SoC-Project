-------------------------------------------------------------------------------
-- digilent_shared_mem_bus_mux_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library d_shared_mem_bus_v1_00_a;
use d_shared_mem_bus_v1_00_a.all;

entity digilent_shared_mem_bus_mux_wrapper is
  port (
    Mem_Addr_O : out std_logic_vector(25 downto 0);
    Mem_DQ_O : out std_logic_vector(16 downto 0);
    Mem_DQ_T : out std_logic_vector(16 downto 0);
    Mem_DQ_I : in std_logic_vector(16 downto 0);
    Mem_OEN_O : out std_logic;
    Mem_WEN_O : out std_logic;
    QSPI_Mem_S_O : out std_logic;
    QSPI_Mem_C_O : out std_logic;
    FLASH_Mem_CEN_O : out std_logic;
    FLASH_Mem_RPN_O : out std_logic;
    PSRAM_Mem_CEN_O : out std_logic;
    PSRAM_Mem_ADV_O : out std_logic;
    PSRAM_Mem_CRE_O : out std_logic;
    PSRAM_Mem_CLK_O : out std_logic;
    PSRAM_Mem_Wait_I : in std_logic;
    PSRAM_Mem_UB_O : out std_logic;
    PSRAM_Mem_LB_O : out std_logic;
    S_AXI_ACLK : in std_logic;
    S_AXI_ARESETN : in std_logic;
    S_AXI_AWADDR : in std_logic_vector(31 downto 0);
    S_AXI_AWVALID : in std_logic;
    S_AXI_WDATA : in std_logic_vector(31 downto 0);
    S_AXI_WSTRB : in std_logic_vector(3 downto 0);
    S_AXI_WVALID : in std_logic;
    S_AXI_BREADY : in std_logic;
    S_AXI_ARADDR : in std_logic_vector(31 downto 0);
    S_AXI_ARVALID : in std_logic;
    S_AXI_RREADY : in std_logic;
    S_AXI_ARREADY : out std_logic;
    S_AXI_RDATA : out std_logic_vector(31 downto 0);
    S_AXI_RRESP : out std_logic_vector(1 downto 0);
    S_AXI_RVALID : out std_logic;
    S_AXI_WREADY : out std_logic;
    S_AXI_BRESP : out std_logic_vector(1 downto 0);
    S_AXI_BVALID : out std_logic;
    S_AXI_AWREADY : out std_logic
  );
end digilent_shared_mem_bus_mux_wrapper;

architecture STRUCTURE of digilent_shared_mem_bus_mux_wrapper is

  component d_shared_mem_bus is
    generic (
      C_PSRAM_RW_CYCLE_NS : INTEGER;
      C_FLASH_RD_CYCLE_NS : INTEGER;
      C_FLASH_WR_CYCLE_NS : INTEGER;
      C_QSPI_BASEADDR : std_logic_vector;
      C_QSPI_HIGHADDR : std_logic_vector;
      C_PSRAM_BASEADDR : std_logic_vector;
      C_PSRAM_HIGHADDR : std_logic_vector;
      C_FLASH_BASEADDR : std_logic_vector;
      C_FLASH_HIGHADDR : std_logic_vector
    );
    port (
      Mem_Addr_O : out std_logic_vector(25 downto 0);
      Mem_DQ_O : out std_logic_vector(16 downto 0);
      Mem_DQ_T : out std_logic_vector(16 downto 0);
      Mem_DQ_I : in std_logic_vector(16 downto 0);
      Mem_OEN_O : out std_logic;
      Mem_WEN_O : out std_logic;
      QSPI_Mem_S_O : out std_logic;
      QSPI_Mem_C_O : out std_logic;
      FLASH_Mem_CEN_O : out std_logic;
      FLASH_Mem_RPN_O : out std_logic;
      PSRAM_Mem_CEN_O : out std_logic;
      PSRAM_Mem_ADV_O : out std_logic;
      PSRAM_Mem_CRE_O : out std_logic;
      PSRAM_Mem_CLK_O : out std_logic;
      PSRAM_Mem_Wait_I : in std_logic;
      PSRAM_Mem_UB_O : out std_logic;
      PSRAM_Mem_LB_O : out std_logic;
      S_AXI_ACLK : in std_logic;
      S_AXI_ARESETN : in std_logic;
      S_AXI_AWADDR : in std_logic_vector(31 downto 0);
      S_AXI_AWVALID : in std_logic;
      S_AXI_WDATA : in std_logic_vector(31 downto 0);
      S_AXI_WSTRB : in std_logic_vector(3 downto 0);
      S_AXI_WVALID : in std_logic;
      S_AXI_BREADY : in std_logic;
      S_AXI_ARADDR : in std_logic_vector(31 downto 0);
      S_AXI_ARVALID : in std_logic;
      S_AXI_RREADY : in std_logic;
      S_AXI_ARREADY : out std_logic;
      S_AXI_RDATA : out std_logic_vector(31 downto 0);
      S_AXI_RRESP : out std_logic_vector(1 downto 0);
      S_AXI_RVALID : out std_logic;
      S_AXI_WREADY : out std_logic;
      S_AXI_BRESP : out std_logic_vector(1 downto 0);
      S_AXI_BVALID : out std_logic;
      S_AXI_AWREADY : out std_logic
    );
  end component;

begin

  Digilent_Shared_Mem_Bus_Mux : d_shared_mem_bus
    generic map (
      C_PSRAM_RW_CYCLE_NS => 100,
      C_FLASH_RD_CYCLE_NS => 140,
      C_FLASH_WR_CYCLE_NS => 60,
      C_QSPI_BASEADDR => X"72800000",
      C_QSPI_HIGHADDR => X"7280ffff",
      C_PSRAM_BASEADDR => X"43000000",
      C_PSRAM_HIGHADDR => X"43ffffff",
      C_FLASH_BASEADDR => X"42000000",
      C_FLASH_HIGHADDR => X"42ffffff"
    )
    port map (
      Mem_Addr_O => Mem_Addr_O,
      Mem_DQ_O => Mem_DQ_O,
      Mem_DQ_T => Mem_DQ_T,
      Mem_DQ_I => Mem_DQ_I,
      Mem_OEN_O => Mem_OEN_O,
      Mem_WEN_O => Mem_WEN_O,
      QSPI_Mem_S_O => QSPI_Mem_S_O,
      QSPI_Mem_C_O => QSPI_Mem_C_O,
      FLASH_Mem_CEN_O => FLASH_Mem_CEN_O,
      FLASH_Mem_RPN_O => FLASH_Mem_RPN_O,
      PSRAM_Mem_CEN_O => PSRAM_Mem_CEN_O,
      PSRAM_Mem_ADV_O => PSRAM_Mem_ADV_O,
      PSRAM_Mem_CRE_O => PSRAM_Mem_CRE_O,
      PSRAM_Mem_CLK_O => PSRAM_Mem_CLK_O,
      PSRAM_Mem_Wait_I => PSRAM_Mem_Wait_I,
      PSRAM_Mem_UB_O => PSRAM_Mem_UB_O,
      PSRAM_Mem_LB_O => PSRAM_Mem_LB_O,
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_AWADDR => S_AXI_AWADDR,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_WDATA => S_AXI_WDATA,
      S_AXI_WSTRB => S_AXI_WSTRB,
      S_AXI_WVALID => S_AXI_WVALID,
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_ARADDR => S_AXI_ARADDR,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_RDATA => S_AXI_RDATA,
      S_AXI_RRESP => S_AXI_RRESP,
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_BRESP => S_AXI_BRESP,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_AWREADY => S_AXI_AWREADY
    );

end architecture STRUCTURE;

