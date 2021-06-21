module MAXPOOL_12_kernel_size_3_2D #(
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
	In_4,
	In_5,
	In_6,	
	In_7,
	In_8,
	In_9,
	In_10,	
	In_11,
	clk,rst,
	valid_in,
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
	Out_11		
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3,In_4,In_5,In_6,In_7,In_8,In_9,In_10,In_11;
output reg valid_out;
output reg [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3,Out_4,Out_5,Out_6,Out_7,Out_8,Out_9,Out_10,Out_11;

wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3,
                     save_Out_4,save_Out_5,save_Out_6,save_Out_7,
                     save_Out_8,save_Out_9,save_Out_10,save_Out_11;
                     
wire valid_out_0,valid_out_1,valid_out_2,valid_out_3,
     valid_out_4,valid_out_5,valid_out_6,valid_out_7,
     valid_out_8,valid_out_9,valid_out_10,valid_out_11;

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
		
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1 ==1'd1 && valid_out_2 ==1'd1 && valid_out_3 ==1'd1
		  && valid_out_4 ==1'd1 && valid_out_5 ==1'd1 && valid_out_6 ==1'd1 && valid_out_7 ==1'd1
		  && valid_out_8 ==1'd1 && valid_out_9 ==1'd1 && valid_out_10 ==1'd1 && valid_out_11 ==1'd1) begin
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

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_4(
	.In(In_4),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_4),
	.Out(save_Out_4)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_5(
	.In(In_5),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_5),
	.Out(save_Out_5)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_6(
	.In(In_6),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_6),
	.Out(save_Out_6)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_7(
	.In(In_7),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_7),
	.Out(save_Out_7)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_8(
	.In(In_8),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_8),
	.Out(save_Out_8)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_9(
	.In(In_9),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_9),
	.Out(save_Out_9)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_10(
	.In(In_10),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_10),
	.Out(save_Out_10)
);

MAXPOOL_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
) 
block_11(
	.In(In_11),
	.CLK(clk),
	.CLR(rst),
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_11),
	.Out(save_Out_11)
);


endmodule

