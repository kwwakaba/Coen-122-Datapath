`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2017 09:50:20 AM
// Design Name: 
// Module Name: RegisterMemory
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


module RegisterMemory(rs,rt,rd,dataIn,write_signal, rsOut, rtOut, clk, test_rs, test_rt, test_rd);

input [5:0] rs;
input [5:0] rt;
input [5:0] rd;
input [31:0] dataIn;
input write_signal;
input clk;

output reg [31:0] rsOut;
output reg [31:0] rtOut;

output [5:0] test_rs;
output [5:0] test_rt;
output [5:0] test_rd;

reg[31:0] addressBlock[63:0];

always @(negedge clk)
begin
    rsOut = addressBlock[rs];
    rtOut = addressBlock[rt];
    
    if(write_signal == 1)
        addressBlock[rd] = dataIn;
end

endmodule
