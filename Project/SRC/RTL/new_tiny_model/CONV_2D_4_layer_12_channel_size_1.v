
module CONV_2D_4_layer_12_channel_size_1 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter ReLU=0,
parameter w00 = 1,
parameter w01 = 1,
parameter w02 = 1,
parameter w03 = 1,
parameter w04 = 1,
parameter w05 = 1,
parameter w06 = 1,
parameter w07 = 1,
parameter w08 = 1,
parameter w09 = 1,
parameter w010 = 1,
parameter w011 = 1,
parameter bias_0 = 1,
parameter w10 = 1,
parameter w11 = 1,
parameter w12 = 1,
parameter w13 = 1,
parameter w14 = 1,
parameter w15 = 1,
parameter w16 = 1,
parameter w17 = 1,
parameter w18 = 1,
parameter w19 = 1,
parameter w110 = 1,
parameter w111 = 1,
parameter bias_1 = 2,
parameter w20 = 1,
parameter w21 = 1,
parameter w22 = 1,
parameter w23 = 1,
parameter w24 = 1,
parameter w25 = 1,
parameter w26 = 1,
parameter w27 = 1,
parameter w28 = 1,
parameter w29 = 1,
parameter w210 = 1,
parameter w211 = 1,
parameter bias_2 = 3,
parameter w30 = 1,
parameter w31 = 1,
parameter w32 = 1,
parameter w33 = 1,
parameter w34 = 1,
parameter w35 = 1,
parameter w36 = 1,
parameter w37 = 1,
parameter w38 = 1,
parameter w39 = 1,
parameter w310 = 1,
parameter w311 = 1,
parameter bias_3 = 4
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
In_3,
In_4,
In_5,
In_6,
In_7,
In_8,
In_9,
In_10,
In_11,
valid_out,
Out_0,
Out_1,
Out_2,
Out_3
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3,In_4,In_5,In_6,In_7,In_8,In_9,In_10,In_11;
output reg valid_out;
output reg [Datawidth-1:0] Out_0;
output reg [Datawidth-1:0] Out_1;
output reg [Datawidth-1:0] Out_2;
output reg [Datawidth-1:0] Out_3;

// local
wire 	valid_out_0,valid_out_1,valid_out_2,valid_out_3;
wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3;

// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		valid_out<=1'd0;
		Out_0<={Datawidth{1'b0}};
		Out_1<={Datawidth{1'b0}};	
		Out_2<={Datawidth{1'b0}};
		Out_3<={Datawidth{1'b0}};
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1 ==1'd1 && valid_out_2 ==1'd1 && valid_out_3 ==1'd1) begin
			Out_0<=save_Out_0;
			Out_1<=save_Out_1;	
			Out_2<=save_Out_2;
			Out_3<=save_Out_3;
			valid_out<=1'd1;
		end
		else begin
		valid_out<=1'd0;
		end
	end
end 
 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w00),
.w1(w01),
.w2(w02),
.w3(w03),
.w4(w04),
.w5(w05),
.w6(w06),
.w7(w07),
.w8(w08),
.w9(w09),
.w10(w010),
.w11(w011),
.bias(bias_0)
) block_layer_0
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.Out(save_Out_0),
.valid_out(valid_out_0)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w10),
.w1(w11),
.w2(w12),
.w3(w13),
.w4(w14),
.w5(w15),
.w6(w16),
.w7(w17),
.w8(w18),
.w9(w19),
.w10(w110),
.w11(w111),
.bias(bias_1)
) block_layer_1
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.Out(save_Out_1),
.valid_out(valid_out_1)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w20),
.w1(w21),
.w2(w22),
.w3(w23),
.w4(w24),
.w5(w25),
.w6(w26),
.w7(w27),
.w8(w28),
.w9(w29),
.w10(w210),
.w11(w211),
.bias(bias_2)
) block_layer_2
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.Out(save_Out_2),
.valid_out(valid_out_2)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w30),
.w1(w31),
.w2(w32),
.w3(w33),
.w4(w34),
.w5(w35),
.w6(w36),
.w7(w37),
.w8(w38),
.w9(w39),
.w10(w310),
.w11(w311),
.bias(bias_3)
) block_layer_3
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.Out(save_Out_3),
.valid_out(valid_out_3)
);


endmodule 