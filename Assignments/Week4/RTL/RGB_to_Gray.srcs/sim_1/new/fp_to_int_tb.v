`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 05:38:56 PM
// Design Name: 
// Module Name: fp_to_int_tb
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


module fp_to_int_tb();
    
    wire [7:0] int;
    reg [31:0] fp;
    fp_to_int getInt(fp,int);
    
    integer i;
    initial begin
        #20;
        fp=32'b00111111100000000000000000000000; // data = 1
        #20;
        fp=32'b00111111110000000000000000000000; //data= 1.5
        #20;
        fp=32'b01000010110111101000000000000000; //data=111.25
        #20;
        fp=32'b01000011011111110000000000000000; //data=255
        #20;
        fp=32'b01000010100000000000000000000000; //data=64
        #20;
        fp=32'b01000010110011000011101100100011; //data=102.1155
        #20;
        fp=32'b00000000000000000000000000000000; //data=0;
        #20;
        fp=32'b00111111111100110011001100110011; //data=1.9
        #200;
        $finish;      
    end    
    
    
endmodule
