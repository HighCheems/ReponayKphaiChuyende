module CONV_2D_4_layer_4_channel_size_1 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter ReLU=1,
parameter w00=1,
parameter w10=1,
parameter w20=1,
parameter w30=1,
parameter bias_0=1,
parameter w01=1,
parameter w11=1,
parameter w21=1,
parameter w31=1,
parameter bias_1=2,
parameter w02=1,
parameter w12=1,
parameter w22=1,
parameter w32=1,
parameter bias_2=3,
parameter w03=1,
parameter w13=1,
parameter w23=1,
parameter w33=1,
parameter bias_3=4
)
(
	In_0,
	In_1,
	In_2,
	In_3,
	clk,rst,valid_in,
	valid_out,
	Out_0,
	Out_1,
	Out_2,
	Out_3
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3;
output reg valid_out;
output reg [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3;

wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3;
wire valid_out_0,valid_out_1,valid_out_2,valid_out_3;

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

CONV_2D_4_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w00),
.w1(w01),
.w2(w02),
.w3(w03),
.bias(bias_0)
)
block_0(
	.In_0(In_0),
	.In_1(In_1),
	.In_2(In_2),
	.In_3(In_3),
	.clk(clk),.rst(rst),.valid_in(valid_in),
	.valid_out(valid_out_0),
	.Out(save_Out_0)
);

CONV_2D_4_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w10),
.w1(w11),
.w2(w12),
.w3(w13),
.bias(bias_1)
)
block_1(
	.In_0(In_0),
	.In_1(In_1),
	.In_2(In_2),
	.In_3(In_3),
	.clk(clk),.rst(rst),.valid_in(valid_in),
	.valid_out(valid_out_1),
	.Out(save_Out_1)
);

CONV_2D_4_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w20),
.w1(w21),
.w2(w22),
.w3(w23),
.bias(bias_2)
)
block_2(
	.In_0(In_0),
	.In_1(In_1),
	.In_2(In_2),
	.In_3(In_3),
	.clk(clk),.rst(rst),.valid_in(valid_in),
	.valid_out(valid_out_2),
	.Out(save_Out_2)
);

CONV_2D_4_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU),
.w0(w30),
.w1(w31),
.w2(w32),
.w3(w33),
.bias(bias_3)
)
block_3(
	.In_0(In_0),
	.In_1(In_1),
	.In_2(In_2),
	.In_3(In_3),
	.clk(clk),.rst(rst),.valid_in(valid_in),
	.valid_out(valid_out_3),
	.Out(save_Out_3)
);

endmodule
