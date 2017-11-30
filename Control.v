`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 10:33:13 AM
// Design Name: 
// Module Name: Control
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


module Control(
    clock,
    opcode,
    RegWrt,
    MemToReg,
    PCToReg,
    BranchNeg,
    BranchZero,
    Jump,
    JumpMem,
    ALU_OP,
    MemRead,
    MemWrt,  
);

// Declare Inputs and Outputs
input clock;
input [3:0] opcode;
output reg RegWrt;
output reg MemToReg;
output reg PCToReg;
output reg BranchNeg;
output reg BranchZero;
output reg Jump;
output reg JumpMem;
output reg [3:0] ALU_OP;
output reg MemRead;
output reg MemWrt;


// Initialize all outputs to 0. ALU to "No Operation"    
/*initial begin
    RegWrt = 0;
    MemToReg = 0;
    PCToReg = 0;
    BranchNeg = 0;
    BranchZero = 0;
    Jump = 0;
    JumpMem = 0;
    ALU_OP = 4'b1111;
    MemRead = 0;
    MemWrt = 0;
end*/
    
always@(opcode, negedge clock)
begin
    
    // Truth Table. Set Outputs.
    if(opcode == 4'b1111) // Load PC
    begin
        RegWrt = 1;
        PCToReg = 1;
            MemToReg = 0;
            BranchNeg = 0;
            BranchZero = 0;
            Jump = 0;
            JumpMem = 0;
                    ALU_OP = 4'b1111;
            MemRead = 0;
            MemWrt = 0;
    end
    else if(opcode == 4'b1110) // Load
        begin
            RegWrt = 1;
            MemToReg = 1;
            MemRead = 1;
                PCToReg = 0;
                BranchNeg = 0;
                        ALU_OP = 4'b1111;
                BranchZero = 0;
                Jump = 0;
                JumpMem = 0;
                MemWrt = 0;
        end
    else if(opcode == 4'b0011) // Store
        begin
            MemWrt = 1;
            RegWrt = 0;
            MemToReg = 0;
            PCToReg = 0;
            BranchNeg = 0;
            BranchZero = 0;
            Jump = 0;
                    ALU_OP = 4'b1111;
            JumpMem = 0;
            MemRead = 0;
        end
    else if(opcode == 4'b0100) // Add
        begin
            RegWrt = 1;
            ALU_OP = 4'b0000;
                MemToReg = 0;
                PCToReg = 0;
                BranchNeg = 0;
                BranchZero = 0;
                Jump = 0;
                JumpMem = 0;
                MemRead = 0;
                MemWrt = 0;
        end
    else if(opcode == 4'b0101) // Increment
        begin
            RegWrt = 1;
            ALU_OP = 4'b0001;
                MemToReg = 0;
                PCToReg = 0;
                BranchNeg = 0;
                BranchZero = 0;
                Jump = 0;
                JumpMem = 0;
                MemRead = 0;
                MemWrt = 0;
        end
    else if(opcode == 4'b0110) // Negate
        begin
            RegWrt = 1;
            ALU_OP = 4'b0010;
                MemToReg = 0;
                PCToReg = 0;
                BranchNeg = 0;
                BranchZero = 0;
                Jump = 0;
                JumpMem = 0;
                MemRead = 0;
                MemWrt = 0;
        end
    else if(opcode == 4'b0111) // Subtract
        begin
            RegWrt = 1;
            ALU_OP = 4'b0011;
                MemToReg = 0;
                PCToReg = 0;
                BranchNeg = 0;
                BranchZero = 0;
                Jump = 0;
                JumpMem = 0;
                MemRead = 0;
                MemWrt = 0;
        end
    else if(opcode == 4'b1000) // Jump
        begin
            Jump = 1;
            RegWrt = 0;
            MemToReg = 0;
            PCToReg = 0;
            BranchNeg = 0;
                    ALU_OP = 4'b1111;
            BranchZero = 0;
            JumpMem = 0;
            MemRead = 0;
            MemWrt = 0;
        end
    else if(opcode == 4'b1001) // Branch if Zero
        begin
            BranchZero = 1;
            RegWrt = 0;
            MemToReg = 0;
            PCToReg = 0;
            BranchNeg = 0;
            Jump = 0;
                    ALU_OP = 4'b1111;
            JumpMem = 0;
            MemRead = 0;
            MemWrt = 0;
        end
    else if(opcode == 4'b1010) // Jump Memory
        begin
            JumpMem = 1;
            RegWrt = 0;
            MemToReg = 0;
            PCToReg = 0;
            BranchNeg = 0;
            BranchZero = 0;
                    ALU_OP = 4'b1111;
            Jump = 0;
            MemRead = 0;
            MemWrt = 0;
        end
    else if(opcode == 4'b1011) // Branch if Negative
        begin
            BranchNeg = 1;
            RegWrt = 0;
            MemToReg = 0;
            PCToReg = 0;
            BranchZero = 0;
                    ALU_OP = 4'b1111;
            Jump = 0;
            JumpMem = 0;
            MemRead = 0;
            MemWrt = 0;
        end
    else if(opcode == 4'b0001) // SUM
        begin
// CODE FOR SUM !!!!
        end
    else // if(opcode == 4'b0000) // No Operation
        begin
        RegWrt = 0;
        MemToReg = 0;
        PCToReg = 0;
        BranchNeg = 0;
        BranchZero = 0;
        Jump = 0;
        JumpMem = 0;
        ALU_OP = 4'b1111;
        MemRead = 0;
        MemWrt = 0;
        end
end

endmodule
