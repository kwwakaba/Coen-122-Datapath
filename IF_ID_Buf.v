`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2017 09:28:30 AM
// Design Name: 
// Module Name: IF_ID_Buf
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


module IF_ID_Buf(clk, inInstr, outInstr, inPC, outPC);

input clk;
input [31:0] inInstr, inPC;         //Instruction memory and Program Counter
output reg [31:0] outInstr, outPC;


always @(posedge clk)
begin
    outInstr = inInstr;             //Setting the IM and PC to the output values
    outPC = inPC;
end

endmodule
