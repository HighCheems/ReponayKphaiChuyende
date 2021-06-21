module CONV_kernel_size_1_2D #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=16, 
parameter ReLU=0,
parameter w=1
)
(
	In, // gia tri dau vao
	CLK,CLR,Valid_IN,
	Valid_OUT,
	Out
);

// port map
input wire [Datawidth-1:0] In;
input wire CLK,CLR;
input wire Valid_IN;

output reg Valid_OUT;
output reg  [Datawidth-1:0] Out;

	// local
	reg 	[Datawidth-1:0] hang,cot;
	wire 	[Datawidth-1:0] R0;
	wire [Datawidth-1:0] result;
  wire [Datawidth-1:0] _result;

always @(posedge CLK) begin
	if(CLR) begin // reset
		Valid_OUT<=1'd0;
	end
	
	else begin
		if(Valid_IN==1'd1) begin
			Out<=_result;
			Valid_OUT<=1'd1;
		end
		else begin
			Valid_OUT<=1'd0;
		end
	end	
end
// conv
assign result = In * w;	
// ReLU

assign _result = (ReLU==1) ? ((result[Datawidth-1] == 1'd0) ? result : 'd0) : result;

endmodule
