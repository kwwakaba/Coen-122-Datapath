`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2017 09:35:25 AM
// Design Name: 
// Module Name: ThreeToOne
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


module ThreeToOne(controlA, controlB, inA, inB, inC, out);

input controlA, controlB;
input [31:0] inA, inB, inC;
output reg [31:0] out;

always @(controlA or controlB or inA or inB or inC)
begin
    if(controlA == 0)
        begin
            if(controlB == 0)
                out = inA;
            else
                out = inB;
        end
    else
        out = inC;
end

initial begin
    out = 0;
end
endmodule