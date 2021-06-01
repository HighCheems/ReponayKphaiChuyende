`define max(A, B) ($signed(A) > $signed(B) ? (A) : (B))

module MAXPOOL_kernel_size_3_2D #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=16, 
parameter Clock_Valid=IMG_Width+2, 
parameter Stride=1,
parameter ReLU=0
)
(
	In, // gia tri dau vao
	CLK,CLR,
	Valid_IN,
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
	wire 	[Datawidth-1:0] R00,R01,R02,
								 R10,R11,R12,
								 R20,R21,R22;
	wire right_position;
	reg [Datawidth-1:0] result;

// 3 line
Line_Buffer_Kernel_3 #(.IMG_Width(IMG_Width),.Datawidth(Datawidth),.Clock_Valid(Clock_Valid)) Main_line
(
	.R00(R00),.R01(R01),.R02(R02),.R10(R10),.R11(R11),.R12(R12),.R20(R20),.R21(R21),.R22(R22),
	.Valid_OUT(right_position),
	.In(In),
	.Valid_IN(Valid_IN), .CLK(CLK), .CLR(CLR)
);
always @(posedge CLK) begin
	if(CLR) begin // reset
		hang<=0;
		cot<=0;
		Valid_OUT<=1'd0;
	end
	else begin
		if(right_position==1'd1) begin //tin hieu bat dau khi vi tri dau tien vao R11
			cot<=cot+1;
			Out<=_result;
		end
		
		if(cot==IMG_Width-1) begin // qua hang moi
			cot<=0;
			hang<=hang+1;
		end
		// ------------------------------ Stride -------------------------
		if(right_position==1'd1 && cot<IMG_Width && hang<IMG_Height && (cot % Stride ==0) && (hang % Stride ==0)) begin // khi gap tin hieu nay thi thuc hien ghi vao fifo out
			Valid_OUT<=1'd1;
		end
		else begin
			Valid_OUT<=1'd0;
		end
			
	end

end
// Padding 
wire [Datawidth-1:0] P0,P1,P2,P3,P4,P5,P6,P7,P8;
// P : pixel in matrix
assign P0= ((cot==0) 		| 					(hang==0)) 	? 0 : R00;
assign P1= ( 			  							(hang==0)) 	? 0 : R01;
assign P2= ((cot==IMG_Width-1) | 			(hang==0)) 	? 0 : R02;
assign P3= ((cot==0) 										) 	? 0 : R10;
assign P4= 													  				R11;
assign P5= ((cot==IMG_Width-1) 							) 	? 0 : R12;
assign P6= ((cot==0)|			 (hang==IMG_Height-1)) 	? 0 : R20;
assign P7= (						 (hang==IMG_Height-1)) 	? 0 : R21;
assign P8= ((cot==IMG_Width-1)|(hang==IMG_Height-1)) 	? 0 : R22;
// K: kernel
always @(P0 or P1 or P2 or P3 or P4 or P5 or P6 or P7 or P8) begin
	result = `max(`max(`max(`max(`max(`max(`max(`max(P0,P1),P2),P3),P4),P5),P6),P7),P8);
end

// ReLU
wire [Datawidth-1:0] _result;
assign _result = (ReLU==1) ? ((result[Datawidth-1] == 1'd0) ? result : 0) : result;

endmodule
