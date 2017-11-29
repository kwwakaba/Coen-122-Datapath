`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 10:19:33 AM
// Design Name: 
// Module Name: instrMem
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


module InstructionMemory(addr,clock,instr);

// Inputs and Outputs
input clock;
input [7:0] addr;
output reg [31:0] instr;

// Local Memory
wire [31:0] instruction[255:0];
assign instruction[0] = 32'b11110000010000000000000100000000;
assign instruction[1] = 32'b01010000100000010000000000000000;
assign instruction[2] = 32'b01100000110000010000000000000000;
assign instruction[3] = 32'b11110010100000000000000000110010;
assign instruction[4] = 32'b00000000000000000000000000000000;
assign instruction[5] = 32'b00000000000000000000000000000000;
assign instruction[6] = 32'b00000000000000000000000000000000;
assign instruction[7] = 32'b00000000000000000000000000000000;
assign instruction[8] = 32'b00000000000000000000000000000000;
assign instruction[9] = 32'b10110010100000000000000000000000;
assign instruction[10] = 32'b01010000100000100000000000000000;
assign instruction[50] = 32'b00110000010000010000000000000000;
assign instruction[51] = 32'b11100001000000010000000000000000;
assign instruction[52] = 32'b01000001010000010000100000000000;
assign instruction[53] = 32'b01110001100001000000010000000000;
assign instruction[54] = 32'b11110010110000000000000001100100;
assign instruction[55] = 32'b00000000000000000000000000000000;
assign instruction[56] = 32'b00000000000000000000000000000000;
assign instruction[57] = 32'b00000000000000000000000000000000;
assign instruction[58] = 32'b00000000000000000000000000000000;
assign instruction[59] = 32'b00000000000000000000000000000000;
assign instruction[60] = 32'b10010010110000000000000000000000;
assign instruction[61] = 32'b01010000100000100000000000000000;
assign instruction[100] = 32'b00000000000000000000000000000000;
assign instruction[101] = 32'b00000000000000000000000000000000;
assign instruction[102] = 32'b00000000000000000000000000000000;
assign instruction[103] = 32'b00000000000000000000000000000000;
assign instruction[104] = 32'b00000000000000000000000000000000;
assign instruction[105] = 32'b10100000010000000000000000000000;
assign instruction[256] = 32'b10100000010000000000000000000000;

// Logic
always@(negedge clock)
begin
    instr = instruction[addr];
end

endmodule
