module Line_Buffer_Kernel_3 #(parameter IMG_Width=5, parameter Datawidth=8, parameter Clock_Valid=16)
(
	output wire [Datawidth-1:0] R00,R01,R02,R10,R11,R12,R20,R21,R22,
	output wire Valid_OUT,
	input wire [Datawidth-1:0] In,
	input wire Valid_IN, CLK, CLR
);

	Line_Buffer #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line1
	(
	.Out0(R20),.Out1(R21),.Out2(R22),
	.In(In),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);

	Line_Buffer #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line2
	(
	.Out0(R10),.Out1(R11),.Out2(R12),
	.In(R20),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);	
	
	Line_Buffer #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line3
	(
	.Out0(R00),.Out1(R01),.Out2(R02),
	.In(R10),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	
/* test--------------------
	assign R22 = In;

	REG #(Datawidth) save1
	(.CLK(CLK),
	.CLR(CLR),
	.DATA(R22),
	.WE(Valid_IN),
	.DATA_OUT(R21));

	
	REG #(Datawidth) save2
	(.CLK(CLK),
	.CLR(CLR),
	.DATA(R21),
	.WE(Valid_IN),
	.DATA_OUT(R20));
	
	Line_Buffer #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line2
	(
	.Out(R12),
	.In(R22),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);	
	
	REG #(Datawidth) save3
	(.CLK(CLK),
	.CLR(CLR),
	.DATA(R12),
	.WE(Valid_IN),
	.DATA_OUT(R11));

	
	REG #(Datawidth) save4
	(.CLK(CLK),
	.CLR(CLR),
	.DATA(R11),
	.WE(Valid_IN),
	.DATA_OUT(R10));
	
	Line_Buffer #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line3
	(
	.Out(R02),
	.In(R12),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	REG #(Datawidth) save5
	(.CLK(CLK),
	.CLR(CLR),
	.DATA(R02),
	.WE(Valid_IN),
	.DATA_OUT(R01));
	
	REG #(Datawidth) save6
	(.CLK(CLK),
	.CLR(CLR),
	.DATA(R01),
	.WE(Valid_IN),
	.DATA_OUT(R00));
*/	
	ValidInOut #(.n(Clock_Valid)) rere
	(
	.CLK(CLK),.CLR(CLR),.Valid_IN(Valid_IN),
	.Valid_OUT(Valid_OUT)
	);

endmodule
