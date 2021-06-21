module CONV_2D_1_layer_4_channel_size_3 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0,
parameter w00 = 1,
parameter w10 = 1,
parameter w20 = 1,
parameter w30 = 1,
parameter w01 = 1,
parameter w11 = 1,
parameter w21 = 1,
parameter w31 = 1,
parameter w02 = 1,
parameter w12 = 1,
parameter w22 = 1,
parameter w32 = 1,
parameter w03 = 1,
parameter w13 = 1,
parameter w23 = 1,
parameter w33 = 1,
parameter w04 = 1,
parameter w14 = 1,
parameter w24 = 1,
parameter w34 = 1,
parameter w05 = 1,
parameter w15 = 1,
parameter w25 = 1,
parameter w35 = 1,
parameter w06 = 1,
parameter w16 = 1,
parameter w26 = 1,
parameter w36 = 1,
parameter w07 = 1,
parameter w17 = 1,
parameter w27 = 1,
parameter w37 = 1,
parameter w08 = 1,
parameter w18 = 1,
parameter w28 = 1,
parameter w38 = 1,
parameter bias = 1
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
In_3,
Out,
valid_out
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3;
output reg [Datawidth-1:0] Out;
output reg valid_out;
wire [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3;
wire valid_out_0,valid_out_1,valid_out_2,valid_out_3;
wire [Datawidth-1:0] save;

// clk
// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		Out<='d0;
		valid_out<=1'd0;
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1==1'd1 && valid_out_2==1'd1 && valid_out_3==1'd1) begin
			valid_out<=1'd1;
			Out<=save;
		end
		else begin
			valid_out<=1'd0;
		end
	end

end

// save value

assign save = Out_0 + Out_1 + Out_2 + Out_3 + bias;

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_0
(
	.In(In_0),
	.CLK(clk),.CLR(rst),
	.K0(w00),.K1(w01),.K2(w00),.K3(w03),.K4(w04),.K5(w05),.K6(w06),
    .K7(w07),.K8(w08),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_0),
	.Out(Out_0)
);

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_1
(
	.In(In_1),
	.CLK(clk),.CLR(rst),
	.K0(w10),.K1(w11),.K2(w10),.K3(w13),.K4(w14),.K5(w15),.K6(w16),
    .K7(w17),.K8(w18),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_1),
	.Out(Out_1)
);

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_2
(
	.In(In_2),
	.CLK(clk),.CLR(rst),
	.K0(w20),.K1(w21),.K2(w20),.K3(w23),.K4(w24),.K5(w25),.K6(w26),
    .K7(w27),.K8(w28),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_2),
	.Out(Out_2)
);

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_3
(
	.In(In_3),
	.CLK(clk),.CLR(rst),
	.K0(w30),.K1(w31),.K2(w30),.K3(w33),.K4(w34),.K5(w35),.K6(w36),
    .K7(w37),.K8(w38),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_3),
	.Out(Out_3)
);
endmodule 