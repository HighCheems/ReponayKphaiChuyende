
module CONV_2D_1_layer_16_channel_size_5 #(
parameter IMG_Width=5, 
parameter IMG_Height=5, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0,
parameter w0_0 = 1,
parameter w1_0 = 1,
parameter w2_0 = 1,
parameter w3_0 = 1,
parameter w4_0 = 1,
parameter w5_0 = 1,
parameter w6_0 = 1,
parameter w7_0 = 1,
parameter w8_0 = 1,
parameter w9_0 = 1,
parameter w10_0 = 1,
parameter w11_0 = 1,
parameter w12_0 = 1,
parameter w13_0 = 1,
parameter w14_0 = 1,
parameter w15_0 = 1,
parameter w0_1 = 1,
parameter w1_1 = 1,
parameter w2_1 = 1,
parameter w3_1 = 1,
parameter w4_1 = 1,
parameter w5_1 = 1,
parameter w6_1 = 1,
parameter w7_1 = 1,
parameter w8_1 = 1,
parameter w9_1 = 1,
parameter w10_1 = 1,
parameter w11_1 = 1,
parameter w12_1 = 1,
parameter w13_1 = 1,
parameter w14_1 = 1,
parameter w15_1 = 1,
parameter w0_2 = 1,
parameter w1_2 = 1,
parameter w2_2 = 1,
parameter w3_2 = 1,
parameter w4_2 = 1,
parameter w5_2 = 1,
parameter w6_2 = 1,
parameter w7_2 = 1,
parameter w8_2 = 1,
parameter w9_2 = 1,
parameter w10_2 = 1,
parameter w11_2 = 1,
parameter w12_2 = 1,
parameter w13_2 = 1,
parameter w14_2 = 1,
parameter w15_2 = 1,
parameter w0_3 = 1,
parameter w1_3 = 1,
parameter w2_3 = 1,
parameter w3_3 = 1,
parameter w4_3 = 1,
parameter w5_3 = 1,
parameter w6_3 = 1,
parameter w7_3 = 1,
parameter w8_3 = 1,
parameter w9_3 = 1,
parameter w10_3 = 1,
parameter w11_3 = 1,
parameter w12_3 = 1,
parameter w13_3 = 1,
parameter w14_3 = 1,
parameter w15_3 = 1,
parameter w0_4 = 1,
parameter w1_4 = 1,
parameter w2_4 = 1,
parameter w3_4 = 1,
parameter w4_4 = 1,
parameter w5_4 = 1,
parameter w6_4 = 1,
parameter w7_4 = 1,
parameter w8_4 = 1,
parameter w9_4 = 1,
parameter w10_4 = 1,
parameter w11_4 = 1,
parameter w12_4 = 1,
parameter w13_4 = 1,
parameter w14_4 = 1,
parameter w15_4 = 1,
parameter w0_5 = 1,
parameter w1_5 = 1,
parameter w2_5 = 1,
parameter w3_5 = 1,
parameter w4_5 = 1,
parameter w5_5 = 1,
parameter w6_5 = 1,
parameter w7_5 = 1,
parameter w8_5 = 1,
parameter w9_5 = 1,
parameter w10_5 = 1,
parameter w11_5 = 1,
parameter w12_5 = 1,
parameter w13_5 = 1,
parameter w14_5 = 1,
parameter w15_5 = 1,
parameter w0_6 = 1,
parameter w1_6 = 1,
parameter w2_6 = 1,
parameter w3_6 = 1,
parameter w4_6 = 1,
parameter w5_6 = 1,
parameter w6_6 = 1,
parameter w7_6 = 1,
parameter w8_6 = 1,
parameter w9_6 = 1,
parameter w10_6 = 1,
parameter w11_6 = 1,
parameter w12_6 = 1,
parameter w13_6 = 1,
parameter w14_6 = 1,
parameter w15_6 = 1,
parameter w0_7 = 1,
parameter w1_7 = 1,
parameter w2_7 = 1,
parameter w3_7 = 1,
parameter w4_7 = 1,
parameter w5_7 = 1,
parameter w6_7 = 1,
parameter w7_7 = 1,
parameter w8_7 = 1,
parameter w9_7 = 1,
parameter w10_7 = 1,
parameter w11_7 = 1,
parameter w12_7 = 1,
parameter w13_7 = 1,
parameter w14_7 = 1,
parameter w15_7 = 1,
parameter w0_8 = 1,
parameter w1_8 = 1,
parameter w2_8 = 1,
parameter w3_8 = 1,
parameter w4_8 = 1,
parameter w5_8 = 1,
parameter w6_8 = 1,
parameter w7_8 = 1,
parameter w8_8 = 1,
parameter w9_8 = 1,
parameter w10_8 = 1,
parameter w11_8 = 1,
parameter w12_8 = 1,
parameter w13_8 = 1,
parameter w14_8 = 1,
parameter w15_8 = 1,
parameter w0_9 = 1,
parameter w1_9 = 1,
parameter w2_9 = 1,
parameter w3_9 = 1,
parameter w4_9 = 1,
parameter w5_9 = 1,
parameter w6_9 = 1,
parameter w7_9 = 1,
parameter w8_9 = 1,
parameter w9_9 = 1,
parameter w10_9 = 1,
parameter w11_9 = 1,
parameter w12_9 = 1,
parameter w13_9 = 1,
parameter w14_9 = 1,
parameter w15_9 = 1,
parameter w0_10 = 1,
parameter w1_10 = 1,
parameter w2_10 = 1,
parameter w3_10 = 1,
parameter w4_10 = 1,
parameter w5_10 = 1,
parameter w6_10 = 1,
parameter w7_10 = 1,
parameter w8_10 = 1,
parameter w9_10 = 1,
parameter w10_10 = 1,
parameter w11_10 = 1,
parameter w12_10 = 1,
parameter w13_10 = 1,
parameter w14_10 = 1,
parameter w15_10 = 1,
parameter w0_11 = 1,
parameter w1_11 = 1,
parameter w2_11 = 1,
parameter w3_11 = 1,
parameter w4_11 = 1,
parameter w5_11 = 1,
parameter w6_11 = 1,
parameter w7_11 = 1,
parameter w8_11 = 1,
parameter w9_11 = 1,
parameter w10_11 = 1,
parameter w11_11 = 1,
parameter w12_11 = 1,
parameter w13_11 = 1,
parameter w14_11 = 1,
parameter w15_11 = 1,
parameter w0_12 = 1,
parameter w1_12 = 1,
parameter w2_12 = 1,
parameter w3_12 = 1,
parameter w4_12 = 1,
parameter w5_12 = 1,
parameter w6_12 = 1,
parameter w7_12 = 1,
parameter w8_12 = 1,
parameter w9_12 = 1,
parameter w10_12 = 1,
parameter w11_12 = 1,
parameter w12_12 = 1,
parameter w13_12 = 1,
parameter w14_12 = 1,
parameter w15_12 = 1,
parameter w0_13 = 1,
parameter w1_13 = 1,
parameter w2_13 = 1,
parameter w3_13 = 1,
parameter w4_13 = 1,
parameter w5_13 = 1,
parameter w6_13 = 1,
parameter w7_13 = 1,
parameter w8_13 = 1,
parameter w9_13 = 1,
parameter w10_13 = 1,
parameter w11_13 = 1,
parameter w12_13 = 1,
parameter w13_13 = 1,
parameter w14_13 = 1,
parameter w15_13 = 1,
parameter w0_14 = 1,
parameter w1_14 = 1,
parameter w2_14 = 1,
parameter w3_14 = 1,
parameter w4_14 = 1,
parameter w5_14 = 1,
parameter w6_14 = 1,
parameter w7_14 = 1,
parameter w8_14 = 1,
parameter w9_14 = 1,
parameter w10_14 = 1,
parameter w11_14 = 1,
parameter w12_14 = 1,
parameter w13_14 = 1,
parameter w14_14 = 1,
parameter w15_14 = 1,
parameter w0_15 = 1,
parameter w1_15 = 1,
parameter w2_15 = 1,
parameter w3_15 = 1,
parameter w4_15 = 1,
parameter w5_15 = 1,
parameter w6_15 = 1,
parameter w7_15 = 1,
parameter w8_15 = 1,
parameter w9_15 = 1,
parameter w10_15 = 1,
parameter w11_15 = 1,
parameter w12_15 = 1,
parameter w13_15 = 1,
parameter w14_15 = 1,
parameter w15_15 = 1,
parameter w0_16 = 1,
parameter w1_16 = 1,
parameter w2_16 = 1,
parameter w3_16 = 1,
parameter w4_16 = 1,
parameter w5_16 = 1,
parameter w6_16 = 1,
parameter w7_16 = 1,
parameter w8_16 = 1,
parameter w9_16 = 1,
parameter w10_16 = 1,
parameter w11_16 = 1,
parameter w12_16 = 1,
parameter w13_16 = 1,
parameter w14_16 = 1,
parameter w15_16 = 1,
parameter w0_17 = 1,
parameter w1_17 = 1,
parameter w2_17 = 1,
parameter w3_17 = 1,
parameter w4_17 = 1,
parameter w5_17 = 1,
parameter w6_17 = 1,
parameter w7_17 = 1,
parameter w8_17 = 1,
parameter w9_17 = 1,
parameter w10_17 = 1,
parameter w11_17 = 1,
parameter w12_17 = 1,
parameter w13_17 = 1,
parameter w14_17 = 1,
parameter w15_17 = 1,
parameter w0_18 = 1,
parameter w1_18 = 1,
parameter w2_18 = 1,
parameter w3_18 = 1,
parameter w4_18 = 1,
parameter w5_18 = 1,
parameter w6_18 = 1,
parameter w7_18 = 1,
parameter w8_18 = 1,
parameter w9_18 = 1,
parameter w10_18 = 1,
parameter w11_18 = 1,
parameter w12_18 = 1,
parameter w13_18 = 1,
parameter w14_18 = 1,
parameter w15_18 = 1,
parameter w0_19 = 1,
parameter w1_19 = 1,
parameter w2_19 = 1,
parameter w3_19 = 1,
parameter w4_19 = 1,
parameter w5_19 = 1,
parameter w6_19 = 1,
parameter w7_19 = 1,
parameter w8_19 = 1,
parameter w9_19 = 1,
parameter w10_19 = 1,
parameter w11_19 = 1,
parameter w12_19 = 1,
parameter w13_19 = 1,
parameter w14_19 = 1,
parameter w15_19 = 1,
parameter w0_20 = 1,
parameter w1_20 = 1,
parameter w2_20 = 1,
parameter w3_20 = 1,
parameter w4_20 = 1,
parameter w5_20 = 1,
parameter w6_20 = 1,
parameter w7_20 = 1,
parameter w8_20 = 1,
parameter w9_20 = 1,
parameter w10_20 = 1,
parameter w11_20 = 1,
parameter w12_20 = 1,
parameter w13_20 = 1,
parameter w14_20 = 1,
parameter w15_20 = 1,
parameter w0_21 = 1,
parameter w1_21 = 1,
parameter w2_21 = 1,
parameter w3_21 = 1,
parameter w4_21 = 1,
parameter w5_21 = 1,
parameter w6_21 = 1,
parameter w7_21 = 1,
parameter w8_21 = 1,
parameter w9_21 = 1,
parameter w10_21 = 1,
parameter w11_21 = 1,
parameter w12_21 = 1,
parameter w13_21 = 1,
parameter w14_21 = 1,
parameter w15_21 = 1,
parameter w0_22 = 1,
parameter w1_22 = 1,
parameter w2_22 = 1,
parameter w3_22 = 1,
parameter w4_22 = 1,
parameter w5_22 = 1,
parameter w6_22 = 1,
parameter w7_22 = 1,
parameter w8_22 = 1,
parameter w9_22 = 1,
parameter w10_22 = 1,
parameter w11_22 = 1,
parameter w12_22 = 1,
parameter w13_22 = 1,
parameter w14_22 = 1,
parameter w15_22 = 1,
parameter w0_23 = 1,
parameter w1_23 = 1,
parameter w2_23 = 1,
parameter w3_23 = 1,
parameter w4_23 = 1,
parameter w5_23 = 1,
parameter w6_23 = 1,
parameter w7_23 = 1,
parameter w8_23 = 1,
parameter w9_23 = 1,
parameter w10_23 = 1,
parameter w11_23 = 1,
parameter w12_23 = 1,
parameter w13_23 = 1,
parameter w14_23 = 1,
parameter w15_23 = 1,
parameter w0_24 = 1,
parameter w1_24 = 1,
parameter w2_24 = 1,
parameter w3_24 = 1,
parameter w4_24 = 1,
parameter w5_24 = 1,
parameter w6_24 = 1,
parameter w7_24 = 1,
parameter w8_24 = 1,
parameter w9_24 = 1,
parameter w10_24 = 1,
parameter w11_24 = 1,
parameter w12_24 = 1,
parameter w13_24 = 1,
parameter w14_24 = 1,
parameter w15_24 = 1,
parameter bias = 1
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
In_12,
In_13,
In_14,
In_15,
Out,
valid_out
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,
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
In_12,
In_13,
In_14,
In_15;
output reg [Datawidth-1:0] Out;
output reg valid_out;

wire [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3,Out_4,
Out_5,Out_6,Out_7,Out_8,Out_9,
Out_10,Out_11,Out_12,Out_13,Out_14,Out_15;

wire valid_out_0,valid_out_1,valid_out_2,valid_out_3,
valid_out_4,valid_out_5,valid_out_6,valid_out_7,
valid_out_8,valid_out_9,valid_out_10,valid_out_11,
valid_out_12,valid_out_13,valid_out_14,valid_out_15;

wire [Datawidth-1:0] save;

// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		Out<='d0;
		valid_out<=1'd0;
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1==1'd1 && valid_out_2==1'd1 && valid_out_3==1'd1
		&& valid_out_4 ==1'd1 && valid_out_5==1'd1 && valid_out_6==1'd1 && valid_out_7==1'd1
		&& valid_out_8 ==1'd1 && valid_out_9==1'd1 && valid_out_10==1'd1 && valid_out_11==1'd1
		&& valid_out_12 ==1'd1 && valid_out_13==1'd1 && valid_out_14==1'd1 && valid_out_15==1'd1) begin
			valid_out<=1'd1;
			Out<=save;
		end
		else begin
			valid_out<=1'd0;
		end
	end

end

// save value
assign save = Out_0 + Out_1 + Out_2 + Out_3 +
Out_4 + Out_5 + Out_6 + Out_7 +
Out_8 + Out_9 + Out_10 + Out_11 +
Out_12 + Out_13 + Out_14 + Out_15 + bias;

// block

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_0
(
	.In(In_0),
	.CLK(clk),.CLR(rst),
	.K0(w0_0),.K1(w0_1),.K2(w0_0),.K3(w0_3),.K4(w0_4),.K5(w0_5),.K6(w0_6),
    .K7(w0_7),.K8(w0_8),.K9(w0_9),.K10(w0_10),.K11(w0_11),.K12(w0_12),.K13(w0_13),
    .K14(w0_14),.K15(w0_15),.K16(w0_16),.K17(w0_17),.K18(w0_18),.K19(w0_19),.K20(w0_20),
    .K21(w0_21),.K22(w0_22),.K23(w0_23),.K24(w0_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_0),
	.Out(Out_0)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_1
(
	.In(In_1),
	.CLK(clk),.CLR(rst),
	.K0(w1_0),.K1(w1_1),.K2(w1_0),.K3(w1_3),.K4(w1_4),.K5(w1_5),.K6(w1_6),
    .K7(w1_7),.K8(w1_8),.K9(w1_9),.K10(w1_10),.K11(w1_11),.K12(w1_12),.K13(w1_13),
    .K14(w1_14),.K15(w1_15),.K16(w1_16),.K17(w1_17),.K18(w1_18),.K19(w1_19),.K20(w1_20),
    .K21(w1_21),.K22(w1_22),.K23(w1_23),.K24(w1_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_1),
	.Out(Out_1)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_2
(
	.In(In_2),
	.CLK(clk),.CLR(rst),
	.K0(w2_0),.K1(w2_1),.K2(w2_0),.K3(w2_3),.K4(w2_4),.K5(w2_5),.K6(w2_6),
    .K7(w2_7),.K8(w2_8),.K9(w2_9),.K10(w2_10),.K11(w2_11),.K12(w2_12),.K13(w2_13),
    .K14(w2_14),.K15(w2_15),.K16(w2_16),.K17(w2_17),.K18(w2_18),.K19(w2_19),.K20(w2_20),
    .K21(w2_21),.K22(w2_22),.K23(w2_23),.K24(w2_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_2),
	.Out(Out_2)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_3
(
	.In(In_3),
	.CLK(clk),.CLR(rst),
	.K0(w3_0),.K1(w3_1),.K2(w3_0),.K3(w3_3),.K4(w3_4),.K5(w3_5),.K6(w3_6),
    .K7(w3_7),.K8(w3_8),.K9(w3_9),.K10(w3_10),.K11(w3_11),.K12(w3_12),.K13(w3_13),
    .K14(w3_14),.K15(w3_15),.K16(w3_16),.K17(w3_17),.K18(w3_18),.K19(w3_19),.K20(w3_20),
    .K21(w3_21),.K22(w3_22),.K23(w3_23),.K24(w3_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_3),
	.Out(Out_3)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_4
(
	.In(In_4),
	.CLK(clk),.CLR(rst),
	.K0(w4_0),.K1(w4_1),.K2(w4_0),.K3(w4_3),.K4(w4_4),.K5(w4_5),.K6(w4_6),
    .K7(w4_7),.K8(w4_8),.K9(w4_9),.K10(w4_10),.K11(w4_11),.K12(w4_12),.K13(w4_13),
    .K14(w4_14),.K15(w4_15),.K16(w4_16),.K17(w4_17),.K18(w4_18),.K19(w4_19),.K20(w4_20),
    .K21(w4_21),.K22(w4_22),.K23(w4_23),.K24(w4_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_4),
	.Out(Out_4)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_5
(
	.In(In_5),
	.CLK(clk),.CLR(rst),
	.K0(w5_0),.K1(w5_1),.K2(w5_0),.K3(w5_3),.K4(w5_4),.K5(w5_5),.K6(w5_6),
    .K7(w5_7),.K8(w5_8),.K9(w5_9),.K10(w5_10),.K11(w5_11),.K12(w5_12),.K13(w5_13),
    .K14(w5_14),.K15(w5_15),.K16(w5_16),.K17(w5_17),.K18(w5_18),.K19(w5_19),.K20(w5_20),
    .K21(w5_21),.K22(w5_22),.K23(w5_23),.K24(w5_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_5),
	.Out(Out_5)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_6
(
	.In(In_6),
	.CLK(clk),.CLR(rst),
	.K0(w6_0),.K1(w6_1),.K2(w6_0),.K3(w6_3),.K4(w6_4),.K5(w6_5),.K6(w6_6),
    .K7(w6_7),.K8(w6_8),.K9(w6_9),.K10(w6_10),.K11(w6_11),.K12(w6_12),.K13(w6_13),
    .K14(w6_14),.K15(w6_15),.K16(w6_16),.K17(w6_17),.K18(w6_18),.K19(w6_19),.K20(w6_20),
    .K21(w6_21),.K22(w6_22),.K23(w6_23),.K24(w6_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_6),
	.Out(Out_6)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_7
(
	.In(In_7),
	.CLK(clk),.CLR(rst),
	.K0(w7_0),.K1(w7_1),.K2(w7_0),.K3(w7_3),.K4(w7_4),.K5(w7_5),.K6(w7_6),
    .K7(w7_7),.K8(w7_8),.K9(w7_9),.K10(w7_10),.K11(w7_11),.K12(w7_12),.K13(w7_13),
    .K14(w7_14),.K15(w7_15),.K16(w7_16),.K17(w7_17),.K18(w7_18),.K19(w7_19),.K20(w7_20),
    .K21(w7_21),.K22(w7_22),.K23(w7_23),.K24(w7_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_7),
	.Out(Out_7)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_8
(
	.In(In_8),
	.CLK(clk),.CLR(rst),
	.K0(w8_0),.K1(w8_1),.K2(w8_0),.K3(w8_3),.K4(w8_4),.K5(w8_5),.K6(w8_6),
    .K7(w8_7),.K8(w8_8),.K9(w8_9),.K10(w8_10),.K11(w8_11),.K12(w8_12),.K13(w8_13),
    .K14(w8_14),.K15(w8_15),.K16(w8_16),.K17(w8_17),.K18(w8_18),.K19(w8_19),.K20(w8_20),
    .K21(w8_21),.K22(w8_22),.K23(w8_23),.K24(w8_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_8),
	.Out(Out_8)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_9
(
	.In(In_9),
	.CLK(clk),.CLR(rst),
	.K0(w9_0),.K1(w9_1),.K2(w9_0),.K3(w9_3),.K4(w9_4),.K5(w9_5),.K6(w9_6),
    .K7(w9_7),.K8(w9_8),.K9(w9_9),.K10(w9_10),.K11(w9_11),.K12(w9_12),.K13(w9_13),
    .K14(w9_14),.K15(w9_15),.K16(w9_16),.K17(w9_17),.K18(w9_18),.K19(w9_19),.K20(w9_20),
    .K21(w9_21),.K22(w9_22),.K23(w9_23),.K24(w9_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_9),
	.Out(Out_9)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_10
(
	.In(In_10),
	.CLK(clk),.CLR(rst),
	.K0(w10_0),.K1(w10_1),.K2(w10_0),.K3(w10_3),.K4(w10_4),.K5(w10_5),.K6(w10_6),
    .K7(w10_7),.K8(w10_8),.K9(w10_9),.K10(w10_10),.K11(w10_11),.K12(w10_12),.K13(w10_13),
    .K14(w10_14),.K15(w10_15),.K16(w10_16),.K17(w10_17),.K18(w10_18),.K19(w10_19),.K20(w10_20),
    .K21(w10_21),.K22(w10_22),.K23(w10_23),.K24(w10_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_10),
	.Out(Out_10)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_11
(
	.In(In_11),
	.CLK(clk),.CLR(rst),
	.K0(w11_0),.K1(w11_1),.K2(w11_0),.K3(w11_3),.K4(w11_4),.K5(w11_5),.K6(w11_6),
    .K7(w11_7),.K8(w11_8),.K9(w11_9),.K10(w11_10),.K11(w11_11),.K12(w11_12),.K13(w11_13),
    .K14(w11_14),.K15(w11_15),.K16(w11_16),.K17(w11_17),.K18(w11_18),.K19(w11_19),.K20(w11_20),
    .K21(w11_21),.K22(w11_22),.K23(w11_23),.K24(w11_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_11),
	.Out(Out_11)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_12
(
	.In(In_12),
	.CLK(clk),.CLR(rst),
	.K0(w12_0),.K1(w12_1),.K2(w12_0),.K3(w12_3),.K4(w12_4),.K5(w12_5),.K6(w12_6),
    .K7(w12_7),.K8(w12_8),.K9(w12_9),.K10(w12_10),.K11(w12_11),.K12(w12_12),.K13(w12_13),
    .K14(w12_14),.K15(w12_15),.K16(w12_16),.K17(w12_17),.K18(w12_18),.K19(w12_19),.K20(w12_20),
    .K21(w12_21),.K22(w12_22),.K23(w12_23),.K24(w12_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_12),
	.Out(Out_12)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_13
(
	.In(In_13),
	.CLK(clk),.CLR(rst),
	.K0(w13_0),.K1(w13_1),.K2(w13_0),.K3(w13_3),.K4(w13_4),.K5(w13_5),.K6(w13_6),
    .K7(w13_7),.K8(w13_8),.K9(w13_9),.K10(w13_10),.K11(w13_11),.K12(w13_12),.K13(w13_13),
    .K14(w13_14),.K15(w13_15),.K16(w13_16),.K17(w13_17),.K18(w13_18),.K19(w13_19),.K20(w13_20),
    .K21(w13_21),.K22(w13_22),.K23(w13_23),.K24(w13_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_13),
	.Out(Out_13)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_14
(
	.In(In_14),
	.CLK(clk),.CLR(rst),
	.K0(w14_0),.K1(w14_1),.K2(w14_0),.K3(w14_3),.K4(w14_4),.K5(w14_5),.K6(w14_6),
    .K7(w14_7),.K8(w14_8),.K9(w14_9),.K10(w14_10),.K11(w14_11),.K12(w14_12),.K13(w14_13),
    .K14(w14_14),.K15(w14_15),.K16(w14_16),.K17(w14_17),.K18(w14_18),.K19(w14_19),.K20(w14_20),
    .K21(w14_21),.K22(w14_22),.K23(w14_23),.K24(w14_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_14),
	.Out(Out_14)
);

CONV_kernel_size_5_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_15
(
	.In(In_15),
	.CLK(clk),.CLR(rst),
	.K0(w15_0),.K1(w15_1),.K2(w15_0),.K3(w15_3),.K4(w15_4),.K5(w15_5),.K6(w15_6),
    .K7(w15_7),.K8(w15_8),.K9(w15_9),.K10(w15_10),.K11(w15_11),.K12(w15_12),.K13(w15_13),
    .K14(w15_14),.K15(w15_15),.K16(w15_16),.K17(w15_17),.K18(w15_18),.K19(w15_19),.K20(w15_20),
    .K21(w15_21),.K22(w15_22),.K23(w15_23),.K24(w15_24),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_15),
	.Out(Out_15)
);
endmodule 