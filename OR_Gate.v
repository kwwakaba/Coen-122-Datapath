`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2017 09:29:52 AM
// Design Name: 
// Module Name: OR_Gate
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


module OR_Gate(inA, inB, inC, out);

input inA, inB, inC;
output reg out;

always @(inA or inB or inC)
begin
    if((inA == 1) || (inB == 1) || (inC == 1))
        out = 1;
    else
        out = 0;
end

initial begin 
    out = 0;
end
endmodule
