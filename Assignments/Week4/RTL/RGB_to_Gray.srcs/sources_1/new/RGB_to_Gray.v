`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 02:51:59 PM
// Design Name: 
// Module Name: RGB_to_Gray
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


module RGB_to_Gray(
    input CLK,
    input [7:0] R,
    input [7:0] G,
    input [7:0] B,
    input In_Valid,
    output [7:0] Gray,
    output Out_Valid
    );
    
// Wires list
wire CLK,In_Valid,Out_Valid;
wire [7:0] R,G,B,Gray;
wire stage0, stage1, stage2, stage3, stage4;    

// Datapath
Datapath Dtp(
    .R(R), 
    .G(G), 
    .B(B),
    .CLK(CLK),
    .stage0(stage0), 
    .stage1(stage1), 
    .stage2(stage2), 
    .stage3(stage3), 
    .stage4(stage4),
    .Gray(Gray)
    );

// Controller
Controller Ctl(
    .CLK(CLK),
    .In_Valid(In_Valid),
    .stage0(stage0),
    .stage1(stage1),
    .stage2(stage2),
    .stage3(stage3),
    .stage4(stage4),
    .Out_Valid(Out_Valid)
    );
    
        
endmodule
