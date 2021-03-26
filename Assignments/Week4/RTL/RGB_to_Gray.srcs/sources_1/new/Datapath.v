`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 03:41:19 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath(
    input [7:0] R, G, B,
    input CLK,
    input stage0, stage1, stage2, stage3, stage4,
    output [7:0] Gray
    );
    
    //Stage 0
    reg [7:0] R_reg,G_reg,B_reg;
    
    always @(posedge CLK) begin
        if(stage0) begin
            R_reg<=R;
            G_reg<=G;
            B_reg<=B;
        end
    end
    
    //Stage 1
    wire [31:0] R_fp, G_fp, B_fp;
    reg [31:0] R_fp_reg, G_fp_reg, B_fp_reg;
    
    int_to_fp getR_fp(.int(R_reg),.fp(R_fp));
    int_to_fp getG_fp(.int(G_reg),.fp(G_fp));
    int_to_fp getB_fp(.int(B_reg),.fp(B_fp));
    
    always @(posedge CLK) begin
        if (stage1) begin
            R_fp_reg <= R_fp;
            G_fp_reg <= G_fp;
            B_fp_reg <= B_fp;
        end
    end
    
    //Stage 2
    wire [31:0] R_mul, G_mul, B_mul;
    reg [31:0] R_mul_reg, G_mul_reg, B_mul_reg;
    
    Multiplication getR_mul(.a_operand(R_fp_reg),.b_operand(8'h3e991687),.result(R_mul)); //*0.289
    Multiplication getG_mul(.a_operand(G_fp_reg),.b_operand(8'h3f1645a2),.result(G_mul)); //*0.587
    Multiplication getB_mul(.a_operand(B_fp_reg),.b_operand(8'h3de978d5),.result(B_mul)); //*0.114
    
    always @(posedge CLK) begin
        if (stage2) begin
            R_mul_reg <= R_mul;
            G_mul_reg <= G_mul;
            B_mul_reg <= B_mul;
        end
    end
    
    //Stage 3
    wire [31:0] Sum;
    reg [31:0] Sum_reg;
    
    Addition getSum(.a_operand(R_mul_reg),.b_operand(G_mul_reg),.c_operand(B_mul_reg),.result(Sum));
    
    always @(posedge CLK) begin
        if (stage3) begin
            Sum_reg <= Sum;
        end
    end
    
    //Stage 4
    wire [7:0] Int_Gray;
    reg [7:0] Gray;
    fp_to_int getInt(.fp(Sum_reg),.int(Int_Gray));
    
    always @(posedge CLK) begin
        if (stage4) begin
            Gray <= Int_Gray;
        end
    end
    
    
endmodule
