module CONV_2D_16_layer_12_channel_size_1 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0,
parameter w0_0 = 1,
parameter w0_1 = 1,
parameter w0_2 = 1,
parameter w0_3 = 1,
parameter w0_4 = 1,
parameter w0_5 = 1,
parameter w0_6 = 1,
parameter w0_7 = 1,
parameter w0_8 = 1,
parameter w0_9 = 1,
parameter w0_10 = 1,
parameter w0_11 = 1,
parameter bias_0 = 1,
parameter w1_0 = 1,
parameter w1_1 = 1,
parameter w1_2 = 1,
parameter w1_3 = 1,
parameter w1_4 = 1,
parameter w1_5 = 1,
parameter w1_6 = 1,
parameter w1_7 = 1,
parameter w1_8 = 1,
parameter w1_9 = 1,
parameter w1_10 = 1,
parameter w1_11 = 1,
parameter bias_1 = 2,
parameter w2_0 = 1,
parameter w2_1 = 1,
parameter w2_2 = 1,
parameter w2_3 = 1,
parameter w2_4 = 1,
parameter w2_5 = 1,
parameter w2_6 = 1,
parameter w2_7 = 1,
parameter w2_8 = 1,
parameter w2_9 = 1,
parameter w2_10 = 1,
parameter w2_11 = 1,
parameter bias_2 = 3,
parameter w3_0 = 1,
parameter w3_1 = 1,
parameter w3_2 = 1,
parameter w3_3 = 1,
parameter w3_4 = 1,
parameter w3_5 = 1,
parameter w3_6 = 1,
parameter w3_7 = 1,
parameter w3_8 = 1,
parameter w3_9 = 1,
parameter w3_10 = 1,
parameter w3_11 = 1,
parameter bias_3 = 4,
parameter w4_0 = 1,
parameter w4_1 = 1,
parameter w4_2 = 1,
parameter w4_3 = 1,
parameter w4_4 = 1,
parameter w4_5 = 1,
parameter w4_6 = 1,
parameter w4_7 = 1,
parameter w4_8 = 1,
parameter w4_9 = 1,
parameter w4_10 = 1,
parameter w4_11 = 1,
parameter bias_4 = 5,
parameter w5_0 = 1,
parameter w5_1 = 1,
parameter w5_2 = 1,
parameter w5_3 = 1,
parameter w5_4 = 1,
parameter w5_5 = 1,
parameter w5_6 = 1,
parameter w5_7 = 1,
parameter w5_8 = 1,
parameter w5_9 = 1,
parameter w5_10 = 1,
parameter w5_11 = 1,
parameter bias_5 = 6,
parameter w6_0 = 1,
parameter w6_1 = 1,
parameter w6_2 = 1,
parameter w6_3 = 1,
parameter w6_4 = 1,
parameter w6_5 = 1,
parameter w6_6 = 1,
parameter w6_7 = 1,
parameter w6_8 = 1,
parameter w6_9 = 1,
parameter w6_10 = 1,
parameter w6_11 = 1,
parameter bias_6 = 7,
parameter w7_0 = 1,
parameter w7_1 = 1,
parameter w7_2 = 1,
parameter w7_3 = 1,
parameter w7_4 = 1,
parameter w7_5 = 1,
parameter w7_6 = 1,
parameter w7_7 = 1,
parameter w7_8 = 1,
parameter w7_9 = 1,
parameter w7_10 = 1,
parameter w7_11 = 1,
parameter bias_7 = 8,
parameter w8_0 = 1,
parameter w8_1 = 1,
parameter w8_2 = 1,
parameter w8_3 = 1,
parameter w8_4 = 1,
parameter w8_5 = 1,
parameter w8_6 = 1,
parameter w8_7 = 1,
parameter w8_8 = 1,
parameter w8_9 = 1,
parameter w8_10 = 1,
parameter w8_11 = 1,
parameter bias_8 = 9,
parameter w9_0 = 1,
parameter w9_1 = 1,
parameter w9_2 = 1,
parameter w9_3 = 1,
parameter w9_4 = 1,
parameter w9_5 = 1,
parameter w9_6 = 1,
parameter w9_7 = 1,
parameter w9_8 = 1,
parameter w9_9 = 1,
parameter w9_10 = 1,
parameter w9_11 = 1,
parameter bias_9 = 10,
parameter w10_0 = 1,
parameter w10_1 = 1,
parameter w10_2 = 1,
parameter w10_3 = 1,
parameter w10_4 = 1,
parameter w10_5 = 1,
parameter w10_6 = 1,
parameter w10_7 = 1,
parameter w10_8 = 1,
parameter w10_9 = 1,
parameter w10_10 = 1,
parameter w10_11 = 1,
parameter bias_10 = 11,
parameter w11_0 = 1,
parameter w11_1 = 1,
parameter w11_2 = 1,
parameter w11_3 = 1,
parameter w11_4 = 1,
parameter w11_5 = 1,
parameter w11_6 = 1,
parameter w11_7 = 1,
parameter w11_8 = 1,
parameter w11_9 = 1,
parameter w11_10 = 1,
parameter w11_11 = 1,
parameter bias_11 = 12,
parameter w12_0 = 1,
parameter w12_1 = 1,
parameter w12_2 = 1,
parameter w12_3 = 1,
parameter w12_4 = 1,
parameter w12_5 = 1,
parameter w12_6 = 1,
parameter w12_7 = 1,
parameter w12_8 = 1,
parameter w12_9 = 1,
parameter w12_10 = 1,
parameter w12_11 = 1,
parameter bias_12 = 13,
parameter w13_0 = 1,
parameter w13_1 = 1,
parameter w13_2 = 1,
parameter w13_3 = 1,
parameter w13_4 = 1,
parameter w13_5 = 1,
parameter w13_6 = 1,
parameter w13_7 = 1,
parameter w13_8 = 1,
parameter w13_9 = 1,
parameter w13_10 = 1,
parameter w13_11 = 1,
parameter bias_13 = 14,
parameter w14_0 = 1,
parameter w14_1 = 1,
parameter w14_2 = 1,
parameter w14_3 = 1,
parameter w14_4 = 1,
parameter w14_5 = 1,
parameter w14_6 = 1,
parameter w14_7 = 1,
parameter w14_8 = 1,
parameter w14_9 = 1,
parameter w14_10 = 1,
parameter w14_11 = 1,
parameter bias_14 = 15,
parameter w15_0 = 1,
parameter w15_1 = 1,
parameter w15_2 = 1,
parameter w15_3 = 1,
parameter w15_4 = 1,
parameter w15_5 = 1,
parameter w15_6 = 1,
parameter w15_7 = 1,
parameter w15_8 = 1,
parameter w15_9 = 1,
parameter w15_10 = 1,
parameter w15_11 = 1,
parameter bias_15 = 16
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
Out_3,
Out_4,
Out_5,
Out_6,
Out_7,
Out_8,
Out_9,
Out_10,
Out_11,
Out_12,
Out_13,
Out_14,
Out_15
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3,In_4,In_5,In_6,In_7,In_8,In_9,In_10,In_11;
output reg valid_out;
output reg [Datawidth-1:0] Out_0;
output reg [Datawidth-1:0] Out_1;
output reg [Datawidth-1:0] Out_2;
output reg [Datawidth-1:0] Out_3;
output reg [Datawidth-1:0] Out_4;
output reg [Datawidth-1:0] Out_5;
output reg [Datawidth-1:0] Out_6;
output reg [Datawidth-1:0] Out_7;
output reg [Datawidth-1:0] Out_8;
output reg [Datawidth-1:0] Out_9;
output reg [Datawidth-1:0] Out_10;
output reg [Datawidth-1:0] Out_11;
output reg [Datawidth-1:0] Out_12;
output reg [Datawidth-1:0] Out_13;
output reg [Datawidth-1:0] Out_14;
output reg [Datawidth-1:0] Out_15;

// local
wire 	valid_out_0,valid_out_1,valid_out_2,valid_out_3,valid_out_4,
      valid_out_5,valid_out_6,valid_out_7,valid_out_8,valid_out_9,
      valid_out_10,valid_out_11,valid_out_12,valid_out_13,valid_out_14,
      valid_out_15;

wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3,save_Out_4,save_Out_5,
                     save_Out_6,save_Out_7,save_Out_8,save_Out_9,save_Out_10,save_Out_11,
                     save_Out_12,save_Out_13,save_Out_14,save_Out_15;

// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		valid_out<=1'd0;
		Out_0<={Datawidth{1'b0}};
		Out_1<={Datawidth{1'b0}};	
		Out_2<={Datawidth{1'b0}};
		Out_3<={Datawidth{1'b0}};
		Out_4<={Datawidth{1'b0}};
		Out_5<={Datawidth{1'b0}};
		Out_6<={Datawidth{1'b0}};
		Out_7<={Datawidth{1'b0}};	
		Out_8<={Datawidth{1'b0}};
		Out_9<={Datawidth{1'b0}};
		Out_10<={Datawidth{1'b0}};
		Out_11<={Datawidth{1'b0}};
		Out_12<={Datawidth{1'b0}};
		Out_13<={Datawidth{1'b0}};	
		Out_14<={Datawidth{1'b0}};
		Out_15<={Datawidth{1'b0}};	
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1 ==1'd1 && valid_out_2 ==1'd1 && valid_out_3 ==1'd1 && valid_out_4 ==1'd1 
		&& valid_out_5 ==1'd1&& valid_out_6 ==1'd1 && valid_out_7 ==1'd1 && valid_out_8 ==1'd1 && valid_out_9 ==1'd1
		&& valid_out_10 ==1'd1 && valid_out_11 ==1'd1 && valid_out_12 ==1'd1 && valid_out_13 ==1'd1 && valid_out_14 ==1'd1
		&& valid_out_15 ==1'd1) begin
			Out_0<=save_Out_0;
			Out_1<=save_Out_1;	
			Out_2<=save_Out_2;
			Out_3<=save_Out_3;
			Out_4<=save_Out_4;
			Out_5<=save_Out_5;	
			Out_6<=save_Out_6;
			Out_7<=save_Out_7;	
			Out_8<=save_Out_8;
			Out_9<=save_Out_9;
			Out_10<=save_Out_10;
			Out_11<=save_Out_11;	
			Out_12<=save_Out_12;
			Out_13<=save_Out_13;	
			Out_14<=save_Out_14;
			Out_15<=save_Out_15;		
			valid_out<=1'd1;
		end
		else begin
		valid_out<=1'd0;
		end
	end
end

// block
 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w0_0),
.w1(w0_1),
.w2(w0_2),
.w3(w0_3),
.w4(w0_4),
.w5(w0_5),
.w6(w0_6),
.w7(w0_7),
.w8(w0_8),
.w9(w0_9),
.w10(w0_10),
.w11(w0_11),
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
.Out(Out_0),
.valid_out(valid_out_0)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w1_0),
.w1(w1_1),
.w2(w1_2),
.w3(w1_3),
.w4(w1_4),
.w5(w1_5),
.w6(w1_6),
.w7(w1_7),
.w8(w1_8),
.w9(w1_9),
.w10(w1_10),
.w11(w1_11),
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
.Out(Out_1),
.valid_out(valid_out_1)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w2_0),
.w1(w2_1),
.w2(w2_2),
.w3(w2_3),
.w4(w2_4),
.w5(w2_5),
.w6(w2_6),
.w7(w2_7),
.w8(w2_8),
.w9(w2_9),
.w10(w2_10),
.w11(w2_11),
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
.Out(Out_2),
.valid_out(valid_out_2)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w3_0),
.w1(w3_1),
.w2(w3_2),
.w3(w3_3),
.w4(w3_4),
.w5(w3_5),
.w6(w3_6),
.w7(w3_7),
.w8(w3_8),
.w9(w3_9),
.w10(w3_10),
.w11(w3_11),
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
.Out(Out_3),
.valid_out(valid_out_3)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w4_0),
.w1(w4_1),
.w2(w4_2),
.w3(w4_3),
.w4(w4_4),
.w5(w4_5),
.w6(w4_6),
.w7(w4_7),
.w8(w4_8),
.w9(w4_9),
.w10(w4_10),
.w11(w4_11),
.bias(bias_4)
) block_layer_4
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
.Out(Out_4),
.valid_out(valid_out_4)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w5_0),
.w1(w5_1),
.w2(w5_2),
.w3(w5_3),
.w4(w5_4),
.w5(w5_5),
.w6(w5_6),
.w7(w5_7),
.w8(w5_8),
.w9(w5_9),
.w10(w5_10),
.w11(w5_11),
.bias(bias_5)
) block_layer_5
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
.Out(Out_5),
.valid_out(valid_out_5)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w6_0),
.w1(w6_1),
.w2(w6_2),
.w3(w6_3),
.w4(w6_4),
.w5(w6_5),
.w6(w6_6),
.w7(w6_7),
.w8(w6_8),
.w9(w6_9),
.w10(w6_10),
.w11(w6_11),
.bias(bias_6)
) block_layer_6
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
.Out(Out_6),
.valid_out(valid_out_6)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w7_0),
.w1(w7_1),
.w2(w7_2),
.w3(w7_3),
.w4(w7_4),
.w5(w7_5),
.w6(w7_6),
.w7(w7_7),
.w8(w7_8),
.w9(w7_9),
.w10(w7_10),
.w11(w7_11),
.bias(bias_7)
) block_layer_7
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
.Out(Out_7),
.valid_out(valid_out_7)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w8_0),
.w1(w8_1),
.w2(w8_2),
.w3(w8_3),
.w4(w8_4),
.w5(w8_5),
.w6(w8_6),
.w7(w8_7),
.w8(w8_8),
.w9(w8_9),
.w10(w8_10),
.w11(w8_11),
.bias(bias_8)
) block_layer_8
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
.Out(Out_8),
.valid_out(valid_out_8)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w9_0),
.w1(w9_1),
.w2(w9_2),
.w3(w9_3),
.w4(w9_4),
.w5(w9_5),
.w6(w9_6),
.w7(w9_7),
.w8(w9_8),
.w9(w9_9),
.w10(w9_10),
.w11(w9_11),
.bias(bias_9)
) block_layer_9
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
.Out(Out_9),
.valid_out(valid_out_9)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w10_0),
.w1(w10_1),
.w2(w10_2),
.w3(w10_3),
.w4(w10_4),
.w5(w10_5),
.w6(w10_6),
.w7(w10_7),
.w8(w10_8),
.w9(w10_9),
.w10(w10_10),
.w11(w10_11),
.bias(bias_10)
) block_layer_10
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
.Out(Out_10),
.valid_out(valid_out_10)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w11_0),
.w1(w11_1),
.w2(w11_2),
.w3(w11_3),
.w4(w11_4),
.w5(w11_5),
.w6(w11_6),
.w7(w11_7),
.w8(w11_8),
.w9(w11_9),
.w10(w11_10),
.w11(w11_11),
.bias(bias_11)
) block_layer_11
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
.Out(Out_11),
.valid_out(valid_out_11)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w12_0),
.w1(w12_1),
.w2(w12_2),
.w3(w12_3),
.w4(w12_4),
.w5(w12_5),
.w6(w12_6),
.w7(w12_7),
.w8(w12_8),
.w9(w12_9),
.w10(w12_10),
.w11(w12_11),
.bias(bias_12)
) block_layer_12
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
.Out(Out_12),
.valid_out(valid_out_12)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w13_0),
.w1(w13_1),
.w2(w13_2),
.w3(w13_3),
.w4(w13_4),
.w5(w13_5),
.w6(w13_6),
.w7(w13_7),
.w8(w13_8),
.w9(w13_9),
.w10(w13_10),
.w11(w13_11),
.bias(bias_13)
) block_layer_13
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
.Out(Out_13),
.valid_out(valid_out_13)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w14_0),
.w1(w14_1),
.w2(w14_2),
.w3(w14_3),
.w4(w14_4),
.w5(w14_5),
.w6(w14_6),
.w7(w14_7),
.w8(w14_8),
.w9(w14_9),
.w10(w14_10),
.w11(w14_11),
.bias(bias_14)
) block_layer_14
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
.Out(Out_14),
.valid_out(valid_out_14)
);

 
CONV_2D_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w0(w15_0),
.w1(w15_1),
.w2(w15_2),
.w3(w15_3),
.w4(w15_4),
.w5(w15_5),
.w6(w15_6),
.w7(w15_7),
.w8(w15_8),
.w9(w15_9),
.w10(w15_10),
.w11(w15_11),
.bias(bias_15)
) block_layer_15
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
.Out(Out_15),
.valid_out(valid_out_15)
);


endmodule 