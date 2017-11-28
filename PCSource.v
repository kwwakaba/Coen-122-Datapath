`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2017 09:33:32 AM
// Design Name: 
// Module Name: PCSource
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


module PCSource(inN, inZ, inBranchNeg, inBranchZero, inJump, inJumpMem, outSourceA, outSourceB);

input inN, inZ, inBranchNeg, inBranchZero, inJump, inJumpMem;
output reg outSourceA;
output reg outSourceB;


reg BranchNeg_out, BranchZero_out, BranchResult;

always @(inN or inZ or inBranchNeg or inBranchZero or inJump or inJumpMem)
begin
    //AND Zero
    if(inZ && inBranchZero)
        BranchZero_out = 1;
    else
        BranchZero_out = 0;

    //AND Negative
    if(inN && inBranchNeg)
        BranchNeg_out = 1;
    else
        BranchNeg_out = 0;
    
    //OR Negative, Zero, and Jump
    if(BranchZero_out || BranchNeg_out || inJump)
        BranchResult = 1;
    else
        BranchResult = 0;
        
 
    outSourceA = BranchResult;
    outSourceB = inJumpMem;
end

endmodule
