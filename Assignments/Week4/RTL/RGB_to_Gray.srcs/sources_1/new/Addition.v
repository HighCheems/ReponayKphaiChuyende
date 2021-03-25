`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 04:21:05 PM
// Design Name: 
// Module Name: Addition
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


module Addition(
    input [31:0] a_operand,
    input [31:0] b_operand,
    input [31:0] c_operand,
    output [31:0] result
    );
    
    wire [31:0] result1, result2;
    Addition_Subtraction add1(.a_operand(a_operand),.b_operand(b_operand),.AddBar_Sub(1'b0),.result(result1));
    Addition_Subtraction add2(.a_operand(result1),.b_operand(c_operand),.AddBar_Sub(1'b0),.result(result2));
    
    assign result = result2;
endmodule
