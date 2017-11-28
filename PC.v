`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2017 09:49:12 AM
// Design Name: 
// Module Name: PC
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


module PC(clk, in, out);

input clk;
input [31:0] in;
output reg [31:0] out;

initial begin
    out = 0;
end

always @(negedge clk) 
begin
    if(in)
    begin
        out = in;
    end
end



endmodule
