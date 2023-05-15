module system
	(
	axi_uartlite_4_TX_pin,
	axi_uartlite_4_RX_pin,
	RESET,
	GCLK,
	Digilent_Shared_Mem_Bus_Mux_QSPI_Mem_S_O_pin,
	Digilent_Shared_Mem_Bus_Mux_Mem_OEN_O_pin,
	Digilent_Shared_Mem_Bus_Mux_Mem_WEN_O_pin,
	Digilent_Shared_Mem_Bus_Mux_QSPI_Mem_C_O_pin,
	Digilent_Shared_Mem_Bus_Mux_FLASH_Mem_CEN_O_pin,
	Digilent_Shared_Mem_Bus_Mux_FLASH_Mem_RPN_O_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CEN_O_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_ADV_O_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CRE_O_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CLK_O_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_Wait_I_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_UB_O_pin,
	Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_LB_O_pin,
	Digilent_Shared_Mem_Bus_Mux_Mem_DQ,
	Digilent_Shared_Mem_Bus_Mux_Mem_Addr_O_pin,
	axi_uartlite_0_RX_pin,
	axi_uartlite_0_TX_pin,
	axi_uartlite_1_RX_pin,
	axi_uartlite_1_TX_pin,
	axi_uartlite_2_RX_pin,
	axi_uartlite_2_TX_pin,
	axi_uartlite_3_RX_pin,
	axi_uartlite_3_TX_pin,
	axi_gpio_6_GPIO_IO_I_pin,
	axi_gpio_6_GPIO_IO_O_pin,
	axi_gpio_5_GPIO_IO_O_pin,
	LEDS_TRI_O,
	axi_gpio_4_GPIO_IO_O_pin,
	axi_gpio_4_GPIO_IO_I_pin,
	axi_gpio_4_GPIO_IO_T_pin,
	axi_gpio_3_GPIO_IO_T_pin,
	axi_gpio_3_GPIO_IO_O_pin,
	axi_gpio_3_GPIO_IO_I_pin,
	axi_gpio_1_GPIO_IO_I_pin,
	axi_gpio_1_GPIO_IO_T_pin,
	axi_gpio_1_GPIO_IO_O_pin,
	axi_gpio_0_GPIO_IO_O_pin,
	axi_gpio_0_GPIO_IO_T_pin,
	axi_gpio_0_GPIO_IO_I_pin,
	axi_iic_0_Scl_I_pin,
	axi_iic_0_Scl_T_pin,
	axi_iic_0_Sda_T_pin,
	axi_iic_0_Scl_O_pin,
	axi_iic_0_Sda_O_pin,
	axi_iic_0_Sda_I_pin,
	axi_iic_1_Sda_T_pin,
	axi_iic_1_Scl_T_pin,
	axi_iic_1_Sda_O_pin,
	axi_iic_1_Scl_O_pin,
	axi_iic_1_Scl_I_pin,
	axi_iic_1_Sda_I_pin,
	axi_iic_2_Scl_O_pin,
	axi_iic_2_Scl_I_pin,
	axi_iic_2_Sda_O_pin,
	axi_iic_2_Sda_T_pin,
	axi_iic_2_Scl_T_pin,
	axi_iic_2_Sda_I_pin,
	axi_iic_3_Scl_I_pin,
	axi_iic_3_Sda_O_pin,
	axi_iic_3_Scl_O_pin,
	axi_iic_3_Sda_T_pin,
	axi_iic_3_Scl_T_pin,
	axi_iic_3_Sda_I_pin,
	axi_spi_0_SPISEL_pin,
	axi_spi_1_SPISEL_pin,
	axi_spi_2_SPISEL_pin,
	axi_spi_3_SPISEL_pin,
	axi_spi_0_SS_O_pin,
	axi_spi_0_SCK_O_pin,
	axi_spi_0_MOSI_O_pin,
	axi_spi_0_MISO_I_pin,
	axi_spi_1_SS_O_pin,
	axi_spi_1_SCK_O_pin,
	axi_spi_1_MISO_I_pin,
	axi_spi_1_MOSI_O_pin,
	axi_spi_2_SS_O_pin,
	axi_spi_2_SCK_O_pin,
	axi_spi_2_MOSI_O_pin,
	axi_spi_2_MISO_I_pin,
	axi_spi_3_SS_O_pin,
	axi_spi_3_SCK_O_pin,
	axi_spi_3_MOSI_O_pin,
	axi_spi_3_MISO_I_pin,
	axi_gpio_2_GPIO_IO
	);
output  axi_uartlite_4_TX_pin;
input  axi_uartlite_4_RX_pin;
input  RESET;
input  GCLK;
output  Digilent_Shared_Mem_Bus_Mux_QSPI_Mem_S_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_Mem_OEN_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_Mem_WEN_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_QSPI_Mem_C_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_FLASH_Mem_CEN_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_FLASH_Mem_RPN_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CEN_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_ADV_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CRE_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CLK_O_pin;
input  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_Wait_I_pin;
output  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_UB_O_pin;
output  Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_LB_O_pin;
inout [16:0] Digilent_Shared_Mem_Bus_Mux_Mem_DQ;
output [25:0] Digilent_Shared_Mem_Bus_Mux_Mem_Addr_O_pin;
input  axi_uartlite_0_RX_pin;
output  axi_uartlite_0_TX_pin;
input  axi_uartlite_1_RX_pin;
output  axi_uartlite_1_TX_pin;
input  axi_uartlite_2_RX_pin;
output  axi_uartlite_2_TX_pin;
input  axi_uartlite_3_RX_pin;
output  axi_uartlite_3_TX_pin;
input [0:31] axi_gpio_6_GPIO_IO_I_pin;
output [0:31] axi_gpio_6_GPIO_IO_O_pin;
output [0:31] axi_gpio_5_GPIO_IO_O_pin;
output [0:7] LEDS_TRI_O;
output [0:7] axi_gpio_4_GPIO_IO_O_pin;
input [0:7] axi_gpio_4_GPIO_IO_I_pin;
output [0:7] axi_gpio_4_GPIO_IO_T_pin;
output [0:7] axi_gpio_3_GPIO_IO_T_pin;
output [0:7] axi_gpio_3_GPIO_IO_O_pin;
input [0:7] axi_gpio_3_GPIO_IO_I_pin;
input [0:7] axi_gpio_1_GPIO_IO_I_pin;
output [0:7] axi_gpio_1_GPIO_IO_T_pin;
output [0:7] axi_gpio_1_GPIO_IO_O_pin;
output [0:7] axi_gpio_0_GPIO_IO_O_pin;
output [0:7] axi_gpio_0_GPIO_IO_T_pin;
input [0:7] axi_gpio_0_GPIO_IO_I_pin;
input  axi_iic_0_Scl_I_pin;
output  axi_iic_0_Scl_T_pin;
output  axi_iic_0_Sda_T_pin;
output  axi_iic_0_Scl_O_pin;
output  axi_iic_0_Sda_O_pin;
input  axi_iic_0_Sda_I_pin;
output  axi_iic_1_Sda_T_pin;
output  axi_iic_1_Scl_T_pin;
output  axi_iic_1_Sda_O_pin;
output  axi_iic_1_Scl_O_pin;
input  axi_iic_1_Scl_I_pin;
input  axi_iic_1_Sda_I_pin;
output  axi_iic_2_Scl_O_pin;
input  axi_iic_2_Scl_I_pin;
output  axi_iic_2_Sda_O_pin;
output  axi_iic_2_Sda_T_pin;
output  axi_iic_2_Scl_T_pin;
input  axi_iic_2_Sda_I_pin;
input  axi_iic_3_Scl_I_pin;
output  axi_iic_3_Sda_O_pin;
output  axi_iic_3_Scl_O_pin;
output  axi_iic_3_Sda_T_pin;
output  axi_iic_3_Scl_T_pin;
input  axi_iic_3_Sda_I_pin;
input  axi_spi_0_SPISEL_pin;
input  axi_spi_1_SPISEL_pin;
input  axi_spi_2_SPISEL_pin;
input  axi_spi_3_SPISEL_pin;
output [0:0] axi_spi_0_SS_O_pin;
output  axi_spi_0_SCK_O_pin;
output  axi_spi_0_MOSI_O_pin;
input  axi_spi_0_MISO_I_pin;
output [0:0] axi_spi_1_SS_O_pin;
output  axi_spi_1_SCK_O_pin;
input  axi_spi_1_MISO_I_pin;
output  axi_spi_1_MOSI_O_pin;
output [0:0] axi_spi_2_SS_O_pin;
output  axi_spi_2_SCK_O_pin;
output  axi_spi_2_MOSI_O_pin;
input  axi_spi_2_MISO_I_pin;
output [0:0] axi_spi_3_SS_O_pin;
output  axi_spi_3_SCK_O_pin;
output  axi_spi_3_MOSI_O_pin;
input  axi_spi_3_MISO_I_pin;
inout [0:7] axi_gpio_2_GPIO_IO;

endmodule
