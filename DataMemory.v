`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 10:04:06 AM
// Design Name: 
// Module Name: DataMemory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DataMemory(clk, write_signal, read_signal, address, dataIn, dataOut);

//Parameter Initalization
input clk;
input write_signal;
input read_signal;
input [31:0] address;
input [31:0] dataIn;

output reg [31:0] dataOut;

reg[31:0] addressBlock[65535:0];

//Case that if the clock is on the positive edge, we first output the data in the address, and depending on the flags, we read or write
always @(posedge clk)
begin
    dataOut = addressBlock[address[15:0]];
    if(write_signal == 1)
        addressBlock[address[15:0]] = dataIn;
    if(read_signal == 1)
        dataOut = addressBlock[address[15:0]];
end



endmodule
