`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/25/2021 04:30:33 PM
// Design Name: 
// Module Name: fp_to_int
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


module fp_to_int(
    input [31:0] fp,
    output [7:0] int
    );
    
wire [31:0] fp;
wire unsigned [7:0] int;
wire unsigned [7:0] e;
wire unsigned [7:0] e_a;
assign e=fp[30:23]-8'd127;
assign e_a=2**(e);
assign int= (e==8'd7) ? e_a + {1'd0,fp[22:16]} : 
(e==8'd6) ? e_a + {2'd0,fp[22:17]} : 
(e==8'd5) ? e_a + {3'd0,fp[22:18]} : 
(e==8'd4) ? e_a + {4'd0,fp[22:19]} : 
(e==8'd3) ? e_a + {5'd0,fp[22:20]} : 
(e==8'd2) ? e_a + {6'd0,fp[22:21]} : 
(e==8'd1) ? e_a + {7'd0,fp[22]}:
e_a;
endmodule
