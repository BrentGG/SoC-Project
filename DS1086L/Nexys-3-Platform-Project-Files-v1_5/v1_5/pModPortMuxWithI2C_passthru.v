`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:        Nate Young (WDE LLC, on behalf of Maxim)
// 
// Create Date:    13:59:13 03/12/2012 
// Design Name: 
// Module Name:    pModPortMux 
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
//
//////////////////////////////////////////////////////////////////////////////////

// NOTE THAT most of these port definitions appear 'backwards' because of this modules relationship
// to the microblaze.  Nomenclature is defined wrt to the microblaze (and the system).
module pModPortMuxWithI2C_passthru(
    input [1:0]A,
    input uartTx,
    output uartRx,
    input SPI_SS,
    input SPI_MOSI,
    output SPI_MISO,
    input SPI_SCK,
    input [3:0] GPIO_outputFromMicroBlaze,
     output[3:0] GPIO_inputToMicroBlaze,
     input [3:0] GPIO_tristate,
     output I2C_SDA_inputToMicroBlaze,
     input I2C_SDA_outputFromMicroBlaze,
     input I2C_SDA_tristate,
     output I2C_SCL_inputToMicroBlaze,
     input I2C_SCL_outputFromMicroBlaze,
     input I2C_SCL_tristate,
    output [3:0] pmodConnector
    );
     
// A[1:0] is the 'mux active select port.  This is intended to be connected to GPO of the Microblaze
// A = 2'b00   => UART active
// A = 2'b01   => SPI active
// A = 2'b10    => GPIO active
// A = 2'b11    => I2C active

wire [3:0] pmodInput;
wire [3:0] pmodOutput;
reg [3:0]  pmodOutputEnable;
wire [3:0] outputSignal;

assign pmodConnector[0] = SPI_SS;
assign pmodConnector[1] = SPI_MOSI;
assign pmodConnector[2] = SPI_MISO;
assign pmodConnector[3] = SPI_SCK;

/*

// PMOD connector input
assign pmodInput[3:0] = pmodConnector[3:0];

// GPIO inputs
assign GPIO_inputToMicroBlaze[3:0] = pmodInput[3:0];

// I2C inputs 
assign I2C_SCL_inputToMicroBlaze = pmodInput[2];
assign I2C_SDA_inputToMicroBlaze = pmodInput[3];

// UART input
assign uartRx = pmodInput[1];

// SPI inputs
assign SPI_MISO = pmodInput[2]; 

// PMOD connector output mux (UART, SPI, GPIO ,I2C)
assign outputSignal[0] = ((A[1] & ~A[0]) & GPIO_outputFromMicroBlaze[0]) | ((~A[1] & A[0]) & SPI_SS);
assign outputSignal[1] = ((A[1] & ~A[0]) & GPIO_outputFromMicroBlaze[1]) | ((~A[1] & A[0]) & SPI_MOSI);
assign outputSignal[2] = ((A[1] & ~A[0]) & GPIO_outputFromMicroBlaze[2]) | ((~A[1] & ~A[0]) & uartTx) | ((A[1] & A[0]) & I2C_SCL_outputFromMicroBlaze);
assign outputSignal[3] = ((A[1] & ~A[0]) & GPIO_outputFromMicroBlaze[3]) | ((~A[1] & A[0]) & SPI_SCK) | ((A[1] & A[0]) & I2C_SDA_outputFromMicroBlaze);

// PMOD connector output tri-state
assign pmodConnector[0] = pmodOutputEnable[0] ? outputSignal[0] : 1'bz;
assign pmodConnector[1] = pmodOutputEnable[1] ? outputSignal[1] : 1'bz;
assign pmodConnector[2] = pmodOutputEnable[2] ? outputSignal[2] : 1'bz;
assign pmodConnector[3] = pmodOutputEnable[3] ? outputSignal[3] : 1'bz;


always @ (A[1] or A[0]) begin
    if(A[1]==0 && A[0]==0) begin    // UART is active
        pmodOutputEnable[0] = 1'b0;
        pmodOutputEnable[1] = 1'b0;
        pmodOutputEnable[2] = 1'b1; // uartTx
        pmodOutputEnable[3] = 1'b0;
    end else if(A[1]==0 && A[0]==1) begin // SPI is active
        pmodOutputEnable[0] = 1'b1; //SS
        pmodOutputEnable[1] = 1'b1; //MOSI
        pmodOutputEnable[2] = 1'b0; //MISO
        pmodOutputEnable[3] = 1'b1; //SCLK
    end else if(A[1]==1 && A[0]==0) begin  // GPIO is active
        // We want this net enabled when GPIO direction bit is 0 (output from mb to pmod)
        pmodOutputEnable[0] = ~GPIO_Direction[0];
        pmodOutputEnable[1] = ~GPIO_Direction[1];
        pmodOutputEnable[2] = ~GPIO_Direction[2];
        pmodOutputEnable[3] = ~GPIO_Direction[3];
    end else if(A[1]==1 && A[0]==1) begin
        pmodOutputEnable[0] = 1'b0;
        pmodOutputEnable[1] = 1'b0;
        pmodOutputEnable[2] = ~I2C_SCL_tristate;
        pmodOutputEnable[3] = ~I2C_SDA_tristate;
    end
end

*/
endmodule
