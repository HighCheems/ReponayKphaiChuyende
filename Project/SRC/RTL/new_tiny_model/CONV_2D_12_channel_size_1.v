module CONV_2D_12_channel_size_1 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter ReLU=1,
parameter w0=1,
parameter w1=1,
parameter w2=1,
parameter w3=1,
parameter w4=1,
parameter w5=1,
parameter w6=1,
parameter w7=1,
parameter w8=1,
parameter w9=1,
parameter w10=1,
parameter w11=1,
parameter bias=1
)
(
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
	clk,rst,valid_in,
	valid_out,
	Out
);
// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3,In_4,In_5,In_6,In_7,In_8,In_9,In_10,In_11;
output reg [Datawidth-1:0] Out;
output reg valid_out;
wire [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3,Out_4,Out_5,Out_6,Out_7,Out_8,Out_9,Out_10,Out_11;
wire valid_out_0,valid_out_1,valid_out_2,valid_out_3,
     valid_out_4,valid_out_5,valid_out_6,valid_out_7,
     valid_out_8,valid_out_9,valid_out_10,valid_out_11;
wire [Datawidth-1:0] save;

// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		Out<='d0;
		valid_out<=1'd0;
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1 ==1'd1 && valid_out_2 ==1'd1 && valid_out_3 ==1'd1
		  && valid_out_4 ==1'd1 && valid_out_5 ==1'd1 && valid_out_6 ==1'd1 && valid_out_7 ==1'd1
		  && valid_out_8 ==1'd1 && valid_out_9 ==1'd1 && valid_out_10 ==1'd1 && valid_out_11 ==1'd1) begin
			valid_out<=1'd1;
			Out<=save;
		end
		else begin
			valid_out<=1'd0;
		end
	end

end

assign save = Out_0 + Out_1 + Out_2 + Out_3 + Out_4 + Out_5 + Out_6 + Out_7 + Out_8 + Out_9 + Out_10 + Out_11  + bias;
CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w0)
)
channel_0(
	.In(In_0),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_0),
	.Out(Out_0)
);


CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w1)
)
channel_1(
	.In(In_1),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_1),
	.Out(Out_1)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w2)
)
channel_2(
	.In(In_2),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_2),
	.Out(Out_2)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w3)
)
channel_3(
	.In(In_3),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_3),
	.Out(Out_3)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w4)
)
channel_4(
	.In(In_4),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_4),
	.Out(Out_4)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w5)
)
channel_5(
	.In(In_5),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_5),
	.Out(Out_5)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w6)
)
channel_6(
	.In(In_6),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_6),
	.Out(Out_6)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w7)
)
channel_7(
	.In(In_3),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_7),
	.Out(Out_7)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w8)
)
channel_8(
	.In(In_3),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_8),
	.Out(Out_8)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w9)
)
channel_9(
	.In(In_3),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_9),
	.Out(Out_9)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w10)
)
channel_10(
	.In(In_3),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_10),
	.Out(Out_10)
);

CONV_kernel_size_1_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w(w11)
)
channel_11(
	.In(In_11),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_11),
	.Out(Out_11)
);
endmodule

