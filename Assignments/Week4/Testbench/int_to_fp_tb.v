`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 03:32:16 PM
// Design Name: 
// Module Name: integer_to_fp_tb
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


module int_to_fp_tb();
    reg [7:0]int;
    wire [31:0]fp;
    int_to_fp getFP(int,fp);
    
    integer i;
    initial begin
        for (i=0;i<256;i=i+1) begin
            #20;
            int=i;
        end
    end
endmodule