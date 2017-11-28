`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2017 09:36:29 AM
// Design Name: 
// Module Name: ID_EX_Buf
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


module ID_EX_Buf(clk, inRegWrt, inMemToReg, inPCToReg, inBranchNeg, inALUOP, inMemRead, inMemWrt,inBranchZero, inJump, inJumpMem, inRS, inRT, inRD, inSignExt, 
                     outRegWrt, outMemToReg, outPCToReg, outBranchNeg, outALUOP, outMemRead, outMemWrt,outBranchZero, outJump, outJumpMem, outRS, outRT, outRD, outSignExt );

input clk;

//We have to get all the inputs from the control module. We also have to the ipnuts
//from the register file and the sign extention ALU
input inRegWrt;
input inMemToReg;
input inPCToReg;
input inBranchNeg;
input [3:0] inALUOP;
input inMemRead;
input inMemWrt;
input inBranchZero;
input inJump;
input inJumpMem;
input [31:0] inRS,inRT, inSignExt;
input [5:0] inRD;

//For all the inputs we have to have the respective outputs 
output reg outRegWrt;
output reg outMemToReg;
output reg outPCToReg;
output reg outBranchNeg;
output reg [3:0] outALUOP;
output reg outMemRead;
output reg outMemWrt;
output reg outBranchZero;
output reg outJump;
output reg outJumpMem;
output reg [31:0] outRS,outRT,outSignExt;
output reg [5:0] outRD;

//Just like with the IF/ID buffer, we set the outputs to equal the inputs 
always @(posedge clk)
begin 
    outRegWrt = inRegWrt;
    outMemToReg= inMemToReg;
    outPCToReg= inPCToReg;
    outBranchNeg = inBranchNeg;
    outALUOP= inALUOP;
    outMemRead= inMemRead;
    outMemWrt = inMemWrt;
    outBranchZero = inBranchZero;
    outJump = inJump;
    outJumpMem = inJumpMem;

    outRS = inRS;
    outRT = inRT;
    outRD = inRD;
    outSignExt = inSignExt;
end
endmodule
