module CONV_2D_3_channel_size_1 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter ReLU=1,
parameter w0=1,
parameter w1=1,
parameter w2=1,
parameter bias=1
)
(
	In_0,
	In_1,
	In_2,
	clk,rst,valid_in,
	valid_out,
	Out
);
// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2;
output reg [Datawidth-1:0] Out;
output reg valid_out;
wire [Datawidth-1:0] Out_0,Out_1,Out_2;
wire valid_out_0,valid_out_1,valid_out_2;
wire [Datawidth-1:0] save;

// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		Out<='d0;
		valid_out<=1'd0;
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1==1'd1 && valid_out_2==1'd1) begin
			valid_out<=1'd1;
			Out<=save;
		end
		else begin
			valid_out<=1'd0;
		end
	end

end

assign save = Out_0 + Out_1 + Out_2 + bias;
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

endmodule
