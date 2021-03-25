`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 03:27:53 PM
// Design Name: 
// Module Name: integer_to_fp
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


module int_to_fp(
    input [7:0] int,
    output [31:0] fp
    );
    assign fp[31] = 1'b0;      //sign bit always 0
    wire [7:0]exponent;
    wire [22:0]mantissa;
    //if input[x]=1 => exponent=x => 2^x
    //mantissa[22:0]= {input[x:0],22-x'd0}
    assign {exponent, mantissa} = (int[7]) ? {8'd7, {int[6:0], 16'd0}}: 
                                  (int[6]) ? {8'd6, {int[5:0], 17'd0}}: 
                                  (int[5]) ? {8'd5, {int[4:0], 18'd0}}: 
                                  (int[4]) ? {8'd4, {int[3:0], 19'd0}}: 
                                  (int[3]) ? {8'd3, {int[2:0], 20'd0}}: 
                                  (int[2]) ? {8'd2, {int[1:0], 21'd0}}: 
                                  (int[1]) ? {8'd1, {int[0]  , 22'd0}}: 
                                                    {8'd0, 23'd0};                   
    assign fp[30:23] = (int == 0) ? 8'd0 : exponent + 8'd127;
    assign fp[22:0]  =  (int == 0) ? 8'd0 : mantissa;
endmodule
