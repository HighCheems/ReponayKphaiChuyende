`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 02:11:24 PM
// Design Name: 
// Module Name: Controller
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


module Controller(
    input CLK,
    input In_Valid,
    output stage0,
    output stage1,
    output stage2,
    output stage3,
    output stage4,
    output Out_Valid
    );
    
// Wires list
wire CLK,In_Valid;
reg stage0, stage1, stage2, stage3, stage4, Out_Valid;

//Stage0
    reg s0_stage1, s0_stage2, s0_stage3, s0_stage4, s0_OutValid;
    always @(posedge CLK) begin 
        if(In_Valid==1'd1) begin
            stage0      <=1'd1;
            s0_stage1   <=1'd1;
            s0_stage2   <=1'd1;
            s0_stage3   <=1'd1;
            s0_stage4   <=1'd1;
            s0_OutValid <=1'd1;
        end else begin
            stage0      <=1'd0;
            s0_stage1   <=1'd0;
            s0_stage2   <=1'd0;
            s0_stage3   <=1'd0;
            s0_stage4   <=1'd0;
            s0_OutValid <=1'd0;
         end      
    end
//Stage1
    reg s1_stage2, s1_stage3, s1_stage4, s1_OutValid;
    always @(posedge CLK) begin 
        if(s0_stage1==1'd1) begin
            stage1      <=1'd1;
            s1_stage2   <=s0_stage2;
            s1_stage3   <=s0_stage3;
            s1_stage4   <=s0_stage4;
            s1_OutValid <=s0_OutValid;
        end else begin
            stage1      <=1'd0;
            s1_stage2   <=1'd0;
            s1_stage3   <=1'd0;
            s1_stage4   <=1'd0;
            s1_OutValid <=1'd0;
         end      
    end
//Stage2
    reg s2_stage3, s2_stage4, s2_OutValid;
    always @(posedge CLK) begin 
        if(s1_stage2==1'd1) begin
            stage2      <=1'd1;
            s2_stage3   <=s1_stage3;
            s2_stage4   <=s1_stage4;
            s2_OutValid <=s1_OutValid;
        end else begin
            stage2      <=1'd0;
            s2_stage3   <=1'd0;
            s2_stage4   <=1'd0;
            s2_OutValid <=1'd0;
         end      
    end
//Stage3
    reg s3_stage4,s3_OutValid;
    always @(posedge CLK) begin 
        if(s2_stage3==1'd1) begin
            stage3          <=1'd1;
            s3_stage4       <=s2_stage4;
            s3_OutValid     <=s2_OutValid;
        end else begin
            stage3          <=1'd0;
            s3_stage4       <=1'd0;
            s3_OutValid     <=1'd0;
         end      
    end
//Stage4
        reg s4_OutValid;
        always @(posedge CLK) begin
        if(s3_stage4==1'd1) begin
            stage4          <=1'd1;
            s4_OutValid     <=s3_OutValid;
        end else begin
            stage4          <=1'd0;
            s4_OutValid     <=1'd0;
        end
    end 
//Stage 5
        always @(posedge CLK) begin
        if(s4_OutValid==1'd1) begin
            Out_Valid       <=s4_OutValid;
        end else begin
            Out_Valid       <=1'd0;
        end
    end        
        
endmodule
