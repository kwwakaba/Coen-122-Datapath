`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2017 10:08:23 AM
// Design Name: 
// Module Name: EX_WB_Buf
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


module EX_WB_Buf(clk, inN, inZ, inRegWrt,inMemToReg, inPCToReg, inBranchNeg, inBranchZero, inJump, inJumpMem, inALU, inData, inRD, inSignExt,
                      outN, outZ, outRegWrt,outMemToReg, outPCToReg, outBranchNeg, outBranchZero, outJump, outJumpMem, outALU, outData, outRD, outSignExt);

//We have to get all the inputs from the control module. We also have to the ipnuts
//from the ALU as well as the flags set, adn the data memory output. We also carry rd
//from the past buffer as well as the sign extened value
input clk;
input inN;
input inZ;
input inRegWrt;
input inMemToReg;
input inPCToReg;
input inBranchNeg;
input inBranchZero;
input inJump;
input inJumpMem;
input [31:0]inALU, inData, inSignExt;
input [5:0] inRD;

//For all the inputs we have to have the respective outputs 

output reg outN;
output reg outZ;
output reg outRegWrt;
output reg outMemToReg;
output reg outPCToReg;
output reg outBranchNeg;
output reg outBranchZero;
output reg outJump;
output reg outJumpMem;
output reg [31:0]outALU, outData, outSignExt;
output reg [5:0] outRD;

//Just like with the IF/ID buffer, we set the outputs to equal the inputs 

always @(posedge clk)
    begin
    outN = inN;
    outZ = inZ;
    outRegWrt = inRegWrt;
    outMemToReg = inMemToReg;
    outPCToReg = inPCToReg;
    outBranchNeg = inBranchNeg;
    outBranchZero = inBranchZero;
    outJump = inJump;
    outJumpMem = inJumpMem;
    outALU = inALU;
    outData = inData;
    outSignExt = inSignExt;
    outRD = inRD;

end
endmodule
