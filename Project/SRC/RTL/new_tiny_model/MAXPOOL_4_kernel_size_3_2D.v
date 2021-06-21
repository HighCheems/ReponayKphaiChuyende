module MAXPOOL_4_kernel_size_3_2D #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=16,  
parameter Stride=2,
parameter ReLU=0
)
(
	In_0,
	In_1,
	In_2,	
	In_3,
	clk,rst,
	valid_in,
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

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_0(
	.In(In_0),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_0),
	.Out(save_Out_0)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_1(
	.In(In_1),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_1),
	.Out(save_Out_1)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_2(
	.In(In_2),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_2),
	.Out(save_Out_2)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_3(
	.In(In_3),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_3),
	.Out(save_Out_3)
);


endmodule
