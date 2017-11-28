`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2017 09:36:53 AM
// Design Name: 
// Module Name: SignExtend
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


module SignExtend(clock, rs_in, rs_extended_out);

// Inputs and Outputs
input clock;
input [21:0] rs_in;
output reg [31:0] rs_extended_out;

// Local memory

// Logic
always@(posedge clock)
begin
    // Copy rs into lower digits of output
    rs_extended_out [21:0] = rs_in [21:0];
    rs_extended_out [22] = rs_in [21];
    rs_extended_out [23] = rs_in [21];
    rs_extended_out [24] = rs_in [21];
    rs_extended_out [25] = rs_in [21];
    rs_extended_out [26] = rs_in [21];
    rs_extended_out [27] = rs_in [21];
    rs_extended_out [28] = rs_in [21];
    rs_extended_out [29] = rs_in [21];
    rs_extended_out [30] = rs_in [21];
    rs_extended_out [31] = rs_in [21];
    
end

endmodule
