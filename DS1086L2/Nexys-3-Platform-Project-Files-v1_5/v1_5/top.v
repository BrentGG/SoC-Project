`timescale 1ns / 1ps

/* 
//////////////////////////////////////////////////////////////////////////////////
// Company: 			WDE, LLC (on behalf of Maxim as a contractor)
// Engineer: 			Nate Young (WDE LLC)
// 
// Create Date:    08:36:17 03/09/2012 
// Design Name: 	
// Module Name:    topLevel 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
   This is the top level HDL wrapper around the Maxim PMOD Microblaze design.  It connects the microblaze ports to external pins,
	and provides a place to instantiate external logic synthesized by HDL.
	
	The design is intended to be used on a Digilent Nexys3 board.
	The design is clocked by a 100Mhz clock, which is then sent to a DCM which creates (2) outputs, one intended to drive the
		microblaze core, and the other to drive internal HDL-based logic.  The DCM was instantiated to allow optional frequency adjustment
		on either of these clocks.
	
	The microblaze core has several peripherals:
		-GPO connected to LEDs
		-AXI IIC connected to PMOD port A
		-AXI SPI connected to PMOD port B
		-AXI GPIO (8 bits) connected to PMOD port C
		-AXI to 9600baud Uart-lite connected to PMOD D
		
//
//////////////////////////////////////////////////////////////////////////////////
*/
module topLevel(
    input clk,
	 input RxD,
	 output TxD,
	 inout [7:0]JA,
	 inout [7:0]JB,
	 inout [7:0]JC,
	 inout [7:0]JD,
    output [7:0] Led,
	 output [7:0]seg,
	 output [3:0]an,
	 inout QuadSpiFlashDB,
	 inout [15:0]MemDB,
	 output [26:1]MemAdr,
	 output MemOE,
	 output MemWR,
	 output MemAdv,
	 output MemClk,
	 output RamCS,
	 output RamCRE,
	 output RamUB,
	 output RamLB,
	 output FlashCS,
	 output FlashRp,
	 output QuadSpiFlashCS,
	 output QuadSpiFlashSck,
	 input MemWait
    );
	 
wire [7:0] gpioWire;

reg [23:0] counter=24'd0;
reg [7:0] ledReg=8'd1;
//assign Led[7:0] = ledReg[7:0];
assign Led[7:0] = gpioWire[7:0];
reg direction=1'b0;
reg [3:0] directionCount=4'd0;

reg [2:0] state;
reg reset=1'b0;

reg alwaysZero=1'b0;
// State machine values
parameter S_IDLE = 0;
parameter S_COUNT = 1;
parameter S_MOVE_LED = 2;
parameter S_SET_DIRECTION = 3;

wire CLK_OUT1;
wire CLK_OUT2;

// Bit 3 is the furthest left (MSB) on the 4 digit display
//assign an[3:0] = 4'b0111; = MSB on
//assign seg[7:0] = 8'd0; //yields all one

dcm instance_name
   (// Clock in ports
    .CLK_IN1(clk),      // IN
    // Clock out ports
    .CLK_OUT1(CLK_OUT1),     // OUT
    .CLK_OUT2(CLK_OUT2),     // OUT
    // Status and control signals
    .RESET(alwaysZero),// IN
    .LOCKED(LOCKED));      // OUT


// HDL to drive the 7-segment display
wire [31:0] GPIO5_output;	
reg [19:0] sevenSegmentCounter = 20'd0;
reg [7:0] sevenSegmentOutput = 8'd0;
reg [3:0] sevenSegmentActive=4'b1111;
reg [1:0] sevenSegmentRefresh=2'b00;	 
assign seg[7:0] = sevenSegmentOutput[7:0];
assign an[3:0] = sevenSegmentActive[3:0];
always @(posedge CLK_OUT1) begin
	if(sevenSegmentCounter==20'd200000) begin
		sevenSegmentCounter <= 20'd0;
		sevenSegmentRefresh <= sevenSegmentRefresh + 1;
	end else begin
		sevenSegmentCounter <= sevenSegmentCounter + 1;
	end
	
	case(sevenSegmentRefresh)
		2'b00: begin
			sevenSegmentActive[3:0] <= 4'b0111;
			sevenSegmentOutput[7:0] <= ~GPIO5_output[31:24];
		end
		2'b01: begin
			sevenSegmentActive[3:0] <= 4'b1011;
			sevenSegmentOutput[7:0] <= ~GPIO5_output[23:16];
		end
		2'b10: begin
			sevenSegmentActive[3:0] <= 4'b1101;
			sevenSegmentOutput[7:0] <= ~GPIO5_output[15:8];
		end
		2'b11: begin
			sevenSegmentActive[3:0] <= 4'b1110;
			sevenSegmentOutput[7:0] <= ~GPIO5_output[7:0];
		end
	endcase
end


always @(posedge CLK_OUT1) begin
	case(state)
		S_IDLE: begin
			state<= S_COUNT;
			reset<=1'b1;
		end
		
		S_COUNT: begin
			counter <= counter + 1;
			if(counter == 24'h7FFFFF) begin
				state <= S_MOVE_LED;
			end
		end
					
		S_MOVE_LED: begin
			counter<=24'd0;
			reset<=1'b0;
			if(direction == 1'b0) begin
				ledReg <= ledReg << 1;
			end else begin
				ledReg <= ledReg >> 1;
			end
			state <= S_SET_DIRECTION;
		end
		
		S_SET_DIRECTION: begin
			directionCount <= directionCount + 1;
			if(directionCount==4'd6) begin
				direction <= ~direction;
				directionCount<=4'd0;
			end
			state<=S_COUNT;
		end
	endcase
end
	
wire [7:0] GPIO0_input;	
wire [7:0] GPIO0_output;	
wire [7:0] GPIO0_tristate;	
wire [7:0] GPIO1_input;	
wire [7:0] GPIO1_output;	
wire [7:0] GPIO1_tristate;	
wire [7:0] GPIO2_input;	
wire [7:0] GPIO2_output;	
wire [7:0] GPIO2_tristate;	
wire [7:0] GPIO3_input;	
wire [7:0] GPIO3_output;	
wire [7:0] GPIO3_tristate;	
wire [7:0] GPIO4_input;	
wire [7:0] GPIO4_output;	
wire [7:0] GPIO4_tristate;	

wire [31:0] GPIO6_input;
wire [31:0] GPIO6_output;

wire [7:0] GPIO2;

wire uart0Tx;
wire uart0Rx;
wire uart1Tx;
wire uart1Rx;
wire uart2Tx;
wire uart2Rx;
wire uart3Tx;
wire uart3Rx;
wire uart4Tx;
wire uart4Rx;

wire SPI_0_SS;
wire SPI_0_MOSI;
wire SPI_0_MISO;
wire SPI_0_SCLK;
wire SPI_1_SS;
wire SPI_1_MOSI;
wire SPI_1_MISO;
wire SPI_1_SCLK;
wire SPI_2_SS;
wire SPI_2_MOSI;
wire SPI_2_MISO;
wire SPI_2_SCLK;
wire SPI_3_SS;
wire SPI_3_MOSI;
wire SPI_3_MISO;
wire SPI_3_SCLK;

wire I2C_0_SDA_input;
wire I2C_0_SDA_output;
wire I2C_0_SDA_tristate;
wire I2C_0_SCL_input;
wire I2C_0_SCL_output;
wire I2C_0_SCL_tristate;
wire I2C_1_SDA_input;
wire I2C_1_SDA_output;
wire I2C_1_SDA_tristate;
wire I2C_1_SCL_input;
wire I2C_1_SCL_output;
wire I2C_1_SCL_tristate;
wire I2C_2_SDA_input;
wire I2C_2_SDA_output;
wire I2C_2_SDA_tristate;
wire I2C_2_SCL_input;
wire I2C_2_SCL_output;
wire I2C_2_SCL_tristate;
wire I2C_3_SDA_input;
wire I2C_3_SDA_output;
wire I2C_3_SDA_tristate;
wire I2C_3_SCL_input;
wire I2C_3_SCL_output;
wire I2C_3_SCL_tristate;


system cpu1 (
    .RESET(reset), 
    .LEDS_TRI_O(gpioWire[7:0]), 
    .GCLK(CLK_OUT2), 
    .axi_uartlite_0_RX_pin(uart0Rx), 
    .axi_uartlite_0_TX_pin(uart0Tx), 
    .axi_spi_0_SPISEL_pin(1'b1), 
    .axi_spi_1_SPISEL_pin(1'b1), 
    .axi_uartlite_1_RX_pin(uart1Rx), 
    .axi_uartlite_1_TX_pin(uart1Tx), 
    .axi_uartlite_2_RX_pin(uart2Rx), 
    .axi_uartlite_2_TX_pin(uart2Tx), 
    .axi_uartlite_3_RX_pin(uart3Rx), 
    .axi_uartlite_3_TX_pin(uart3Tx), 
	 .axi_uartlite_4_RX_pin(uart4Rx), 
    .axi_uartlite_4_TX_pin(uart4Tx), 
    .axi_gpio_0_GPIO_IO_I_pin(GPIO0_input[7:0]), 
    .axi_gpio_0_GPIO_IO_O_pin(GPIO0_output[7:0]), 
    .axi_gpio_0_GPIO_IO_T_pin(GPIO0_tristate[7:0]), 
    .axi_gpio_1_GPIO_IO_I_pin(GPIO1_input[7:0]), 
    .axi_gpio_1_GPIO_IO_O_pin(GPIO1_output[7:0]), 
    .axi_gpio_1_GPIO_IO_T_pin(GPIO1_tristate[7:0]), 
    .axi_gpio_2_GPIO_IO_I_pin(GPIO2_input[7:0]), 
    .axi_gpio_2_GPIO_IO_O_pin(GPIO2_output[7:0]), 
    .axi_gpio_2_GPIO_IO_T_pin(GPIO2_tristate[7:0]), 
	 .axi_gpio_3_GPIO_IO_I_pin(GPIO3_input[7:0]), 
    .axi_gpio_3_GPIO_IO_O_pin(GPIO3_output[7:0]), 
    .axi_gpio_3_GPIO_IO_T_pin(GPIO3_tristate[7:0]), 
	 .axi_gpio_4_GPIO_IO_I_pin(GPIO4_input[7:0]), 
    .axi_gpio_4_GPIO_IO_O_pin(GPIO4_output[7:0]), 
    .axi_gpio_4_GPIO_IO_T_pin(GPIO4_tristate[7:0]), 
	 .axi_gpio_5_GPIO_IO_O_pin(GPIO5_output[31:0]), 
	 .axi_gpio_6_GPIO_IO_O_pin(GPIO6_output[31:0]), 
	 .axi_gpio_6_GPIO_IO_I_pin(GPIO6_input[31:0]), 
    .axi_iic_0_Sda_I_pin(I2C_0_SDA_input), 
    .axi_iic_0_Sda_O_pin(I2C_0_SDA_output), 
    .axi_iic_0_Sda_T_pin(I2C_0_SDA_tristate), 
    .axi_iic_0_Scl_I_pin(I2C_0_SCL_input), 
    .axi_iic_0_Scl_O_pin(I2C_0_SCL_output), 
    .axi_iic_0_Scl_T_pin(I2C_0_SCL_tristate), 
    .axi_spi_0_SCK_O_pin(SPI_0_SCLK), 
    .axi_spi_0_MISO_I_pin(SPI_0_MISO), 
    .axi_spi_0_MOSI_O_pin(SPI_0_MOSI), 
    .axi_spi_0_SS_O_pin(SPI_0_SS),
	 .axi_spi_1_SCK_O_pin(SPI_1_SCLK), 
    .axi_spi_1_SS_O_pin(SPI_1_SS), 
    .axi_spi_1_MISO_I_pin(SPI_1_MISO), 
    .axi_spi_1_MOSI_O_pin(SPI_1_MOSI), 
	 .axi_iic_1_Sda_I_pin(I2C_1_SDA_input), 
    .axi_iic_1_Sda_O_pin(I2C_1_SDA_output), 
    .axi_iic_1_Sda_T_pin(I2C_1_SDA_tristate), 
    .axi_iic_1_Scl_I_pin(I2C_1_SCL_input), 
    .axi_iic_1_Scl_O_pin(I2C_1_SCL_output), 
    .axi_iic_1_Scl_T_pin(I2C_1_SCL_tristate),
	 .axi_iic_2_Sda_I_pin(I2C_2_SDA_input), 
    .axi_iic_2_Sda_O_pin(I2C_2_SDA_output), 
    .axi_iic_2_Sda_T_pin(I2C_2_SDA_tristate), 
    .axi_iic_2_Scl_I_pin(I2C_2_SCL_input), 
    .axi_iic_2_Scl_O_pin(I2C_2_SCL_output), 
    .axi_iic_2_Scl_T_pin(I2C_2_SCL_tristate),
	 .axi_iic_3_Sda_I_pin(I2C_3_SDA_input), 
    .axi_iic_3_Sda_O_pin(I2C_3_SDA_output), 
    .axi_iic_3_Sda_T_pin(I2C_3_SDA_tristate), 
    .axi_iic_3_Scl_I_pin(I2C_3_SCL_input), 
    .axi_iic_3_Scl_O_pin(I2C_3_SCL_output), 
    .axi_iic_3_Scl_T_pin(I2C_3_SCL_tristate),
	 .axi_spi_2_SPISEL_pin(1'b1), 
    .axi_spi_2_SCK_O_pin(SPI_2_SCLK), 
    .axi_spi_2_SS_O_pin(SPI_2_SS), 
    .axi_spi_2_MISO_I_pin(SPI_2_MISO), 
    .axi_spi_2_MOSI_O_pin(SPI_2_MOSI), 
	 .axi_spi_3_SPISEL_pin(1'b1), 
    .axi_spi_3_SCK_O_pin(SPI_3_SCLK), 
    .axi_spi_3_SS_O_pin(SPI_3_SS), 
    .axi_spi_3_MISO_I_pin(SPI_3_MISO), 
    .axi_spi_3_MOSI_O_pin(SPI_3_MOSI),
	 .Digilent_Shared_Mem_Bus_Mux_QSPI_Mem_S_O_pin(QuadSpiFlashSck), 
    .Digilent_Shared_Mem_Bus_Mux_Mem_OEN_O_pin(MemOE), 
    .Digilent_Shared_Mem_Bus_Mux_Mem_WEN_O_pin(MemWR), 
    .Digilent_Shared_Mem_Bus_Mux_QSPI_Mem_C_O_pin(QuadSpiFlashCS), 
    .Digilent_Shared_Mem_Bus_Mux_FLASH_Mem_CEN_O_pin(FlashCS), 
    .Digilent_Shared_Mem_Bus_Mux_FLASH_Mem_RPN_O_pin(FlashRp), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CEN_O_pin(RamCS), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_ADV_O_pin(MemAdv), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CRE_O_pin(RamCRE), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_CLK_O_pin(MemClk), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_Wait_I_pin(MemWait), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_UB_O_pin(RamUB), 
    .Digilent_Shared_Mem_Bus_Mux_PSRAM_Mem_LB_O_pin(RamLB), 
    .Digilent_Shared_Mem_Bus_Mux_Mem_DQ({MemDB[15:0],QuadSpiFlashDB}), 
    .Digilent_Shared_Mem_Bus_Mux_Mem_Addr_O_pin(MemAdr[26:1])
    );

pModPortMuxWithI2C pmodPortAMux(
    .A(GPIO4_output[1:0]),
    .uartTx(uart0Tx),
    .uartRx(uart0Rx),
    .SPI_SS(SPI_0_SS),
    .SPI_MOSI(SPI_0_MOSI),
    .SPI_MISO(SPI_0_MISO),
    .SPI_SCK(SPI_0_SCLK),
	 .GPIO_outputFromMicroBlaze(GPIO0_output[3:0]),
	 .GPIO_inputToMicroBlaze(GPIO0_input[3:0]),
    .GPIO_tristate(GPIO0_tristate[3:0]),
	 .I2C_SDA_inputToMicroBlaze(I2C_0_SDA_input),
	 .I2C_SDA_outputFromMicroBlaze(I2C_0_SDA_output),
	 .I2C_SDA_tristate(I2C_0_SDA_tristate),
	 .I2C_SCL_inputToMicroBlaze(I2C_0_SCL_input),
	 .I2C_SCL_outputFromMicroBlaze(I2C_0_SCL_output),
	 .I2C_SCL_tristate(I2C_0_SCL_tristate),
    .pmodConnector(JA[3:0])
    );
	 
pModPortMuxWithI2C pmodPortBMux(
    .A(GPIO4_output[3:2]),
    .uartTx(uart1Tx),
    .uartRx(uart1Rx),
    .SPI_SS(SPI_1_SS),
    .SPI_MOSI(SPI_1_MOSI),
    .SPI_MISO(SPI_1_MISO),
    .SPI_SCK(SPI_1_SCLK),
	 .GPIO_outputFromMicroBlaze(GPIO1_output[3:0]),
	 .GPIO_inputToMicroBlaze(GPIO1_input[3:0]),
    .GPIO_tristate(GPIO1_tristate[3:0]),
	 .I2C_SDA_inputToMicroBlaze(I2C_1_SDA_input),
	 .I2C_SDA_outputFromMicroBlaze(I2C_1_SDA_output),
	 .I2C_SDA_tristate(I2C_1_SDA_tristate),
	 .I2C_SCL_inputToMicroBlaze(I2C_1_SCL_input),
	 .I2C_SCL_outputFromMicroBlaze(I2C_1_SCL_output),
	 .I2C_SCL_tristate(I2C_1_SCL_tristate),
    .pmodConnector(JB[3:0])
    );	
	 
pModPortMuxWithI2C pmodPortCMux(
    .A(GPIO4_output[5:4]),
    .uartTx(uart2Tx),
    .uartRx(uart2Rx),
    .SPI_SS(SPI_2_SS),
    .SPI_MOSI(SPI_2_MOSI),
    .SPI_MISO(SPI_2_MISO),
    .SPI_SCK(SPI_2_SCLK),
	 .GPIO_outputFromMicroBlaze(GPIO2_output[3:0]),
	 .GPIO_inputToMicroBlaze(GPIO2_input[3:0]),
    .GPIO_tristate(GPIO2_tristate[3:0]),
	 .I2C_SDA_inputToMicroBlaze(I2C_2_SDA_input),
	 .I2C_SDA_outputFromMicroBlaze(I2C_2_SDA_output),
	 .I2C_SDA_tristate(I2C_2_SDA_tristate),
	 .I2C_SCL_inputToMicroBlaze(I2C_2_SCL_input),
	 .I2C_SCL_outputFromMicroBlaze(I2C_2_SCL_output),
	 .I2C_SCL_tristate(I2C_2_SCL_tristate),
    .pmodConnector(JC[3:0])
    );
	 
	
pModPortMuxWithI2C pmodPortDMux(
    .A(GPIO4_output[7:6]),
    .uartTx(uart3Tx),
    .uartRx(uart3Rx),
    .SPI_SS(SPI_3_SS),
    .SPI_MOSI(SPI_3_MOSI),
    .SPI_MISO(SPI_3_MISO),
    .SPI_SCK(SPI_3_SCLK),
	 .GPIO_outputFromMicroBlaze(GPIO3_output[3:0]),
	 .GPIO_inputToMicroBlaze(GPIO3_input[3:0]),
    .GPIO_tristate(GPIO3_tristate[3:0]),
	 .I2C_SDA_inputToMicroBlaze(I2C_3_SDA_input),
	 .I2C_SDA_outputFromMicroBlaze(I2C_3_SDA_output),
	 .I2C_SDA_tristate(I2C_3_SDA_tristate),
	 .I2C_SCL_inputToMicroBlaze(I2C_3_SCL_input),
	 .I2C_SCL_outputFromMicroBlaze(I2C_3_SCL_output),
	 .I2C_SCL_tristate(I2C_3_SCL_tristate),
	 .pmodConnector(JD[3:0])
    );
	
	 assign GPIO0_input[7] = JA[7];
	 assign JA[7] = (GPIO0_tristate[7]==1) ? 1'bz : GPIO0_output[7];
	 assign GPIO0_input[6] = JA[6];
	 assign JA[6] = (GPIO0_tristate[6]==1) ? 1'bz : GPIO0_output[6];
	 assign GPIO0_input[5] = JA[5];
	 assign JA[5] = (GPIO0_tristate[5]==1) ? 1'bz : GPIO0_output[5];
	 assign GPIO0_input[4] = JA[4];
	 assign JA[4] = (GPIO0_tristate[4]==1) ? 1'bz : GPIO0_output[4];
	 
	 assign GPIO1_input[7] = JB[7];
	 assign JB[7] = (GPIO1_tristate[7]==1) ? 1'bz : GPIO1_output[7];
	 assign GPIO1_input[6] = JB[6];
	 assign JB[6] = (GPIO1_tristate[6]==1) ? 1'bz : GPIO1_output[6];
	 assign GPIO1_input[5] = JB[5];
	 assign JB[5] = (GPIO1_tristate[5]==1) ? 1'bz : GPIO1_output[5];
	 assign GPIO1_input[4] = JB[4];
	 assign JB[4] = (GPIO1_tristate[4]==1) ? 1'bz : GPIO1_output[4];
	 
	 assign GPIO2_input[7] = JC[7];
	 assign JC[7] = (GPIO2_tristate[7]==1) ? 1'bz : GPIO2_output[7];
	 assign GPIO2_input[6] = JC[6];
	 assign JC[6] = (GPIO2_tristate[6]==1) ? 1'bz : GPIO2_output[6];
	 assign GPIO2_input[5] = JC[5];
	 assign JC[5] = (GPIO2_tristate[5]==1) ? 1'bz : GPIO2_output[5];
	 assign GPIO2_input[4] = JC[4];
	 assign JC[4] = (GPIO2_tristate[4]==1) ? 1'bz : GPIO2_output[4];
	 
	 assign GPIO3_input[7] = JD[7];
	 assign JD[7] = (GPIO3_tristate[7]==1) ? 1'bz : GPIO3_output[7];
	 assign GPIO0_input[6] = JD[6];
	 assign JD[6] = (GPIO3_tristate[6]==1) ? 1'bz : GPIO3_output[6];
	 assign GPIO0_input[5] = JD[5];
	 assign JD[5] = (GPIO3_tristate[5]==1) ? 1'bz : GPIO3_output[5];
	 assign GPIO0_input[4] = JD[4];
	 assign JD[4] = (GPIO3_tristate[4]==1) ? 1'bz : GPIO3_output[4];

	 assign uart4Rx = RxD;
	 assign TxD = uart4Tx;
	 
	 /*
// Frequency Counter (for testbed)
freqCounters freqCounter1(
    .clk100M(CLK_OUT1),
    .clkToBeMeasured(JB[7]),
    .enableCount(GPIO6_output[30]),
    .reset(GPIO6_output[31]),
    .selA_BNOT(GPIO6_output[29]),
    .count(GPIO6_input[28:0])
    );
	 */

endmodule

