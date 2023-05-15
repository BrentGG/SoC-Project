`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:08 04/04/2012 
// Design Name: 
// Module Name:    freqCounters 
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
module freqCounters(
    input clk100M,
    input clkToBeMeasured,
    input enableCount,
    input reset,
    input selA_BNOT,
    output [27:0] count
    );

reg [27:0]clockActivity = 28'd0;
reg [27:0]counter100M 	= 28'd0;
reg [27:0]counterDUT 	= 28'd0;
reg state					= 1'b0;

always @(posedge clk100M) begin
	if(reset==1'b1) begin
		counter100M <= 28'd0;
	end else if(enableCount==1'b1) begin
		counter100M <= counter100M + 1;
	end
end

always @(posedge clkToBeMeasured or posedge reset) begin
	if(reset==1'b1) begin
		counterDUT <= 28'd0;
	end else if(enableCount==1'b1) begin
		counterDUT <= counterDUT + 1;
	end
end

assign count[27:0] = (selA_BNOT) ? counter100M[27:0] : counterDUT[27:0];

endmodule
