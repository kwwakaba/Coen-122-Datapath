`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2017 09:09:03 AM
// Design Name: 
// Module Name: ArithmeticLogicUnit
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


module ArithmeticLogicUnit(A, B,opCode, result, zero, neg, testA, testInternalA, testB, testOpcode, testResult);

    input [31:0] A,B;
    input [3:0] opCode;
    output reg [31:0] result;
    output reg zero;
    output reg neg;
    output reg [31:0] testA, testB, testOpcode, testResult, testInternalA;
    
    reg [31:0] internalA;
        
    always@(B,opCode)
    begin
    
    if(A === 32'bXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX)
        internalA = 32'b0;
    else
        internalA = A;
    
    
        if(opCode == 4'b0000)           // opCode for adding two values
            result = B + internalA;
        else if(opCode == 4'b0001)      //opCode for incrmementing a value
            result = B + 1;
        else if(opCode == 4'b0010)      //opCode for negating a value
            result = 0 + ((~internalA) + 1 );
        else if(opCode == 4'b0011)      //opCode for subtracting two values
            result = B + ((~internalA) + 1);
        else if(opCode == 4'b0100)      //opCode for passing a value
            result = 0 + internalA;
       
testA = A;
testInternalA = internalA;
testB = B;
testOpcode = opCode;
testResult = result;
       
       
        if(result == 32'b0)                 //Sets the zero flag if the result is zero
            begin
                zero = 1;
                neg = 0;
            end
        else if(result[31] == 1'b0)             //Sets both flags to zero if result is positive
            begin
                zero = 0;
                neg = 0;
            end
        else if(result[31] == 1'b1)        //Sets the negative flag if the result is negative 
            begin
                neg = 1;
                zero = 0;
            end
       
    end

endmodule
