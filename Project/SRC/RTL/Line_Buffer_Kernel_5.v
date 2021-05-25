module Line_Buffer_Kernel_5 #(parameter IMG_Width=5, parameter Datawidth=8, parameter Clock_Valid=IMG_Width*3-2)
(
	output wire [Datawidth-1:0] 	R00,R01,R02,R03,R04,
											R10,R11,R12,R13,R14,
											R20,R21,R22,R23,R24,
											R30,R31,R32,R33,R34,
											R40,R41,R42,R43,R44,
	output wire Valid_OUT,
	input wire [Datawidth-1:0] In,
	input wire Valid_IN, CLK, CLR
);

	Line_Buffer_5 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line1
	(
	.Out0(R40),.Out1(R41),.Out2(R42),.Out3(R43),.Out4(R44),
	.In(In),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	// ---------------------------------------------------------

	Line_Buffer_5 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line2
	(
	.Out0(R30),.Out1(R31),.Out2(R32),.Out3(R33),.Out4(R34),
	.In(R40),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	
	// ---------------------------------------------------------
	
	Line_Buffer_5 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line3
	(
	.Out0(R20),.Out1(R21),.Out2(R22),.Out3(R23),.Out4(R24),
	.In(R30),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	
	// ---------------------------------------------------------

	Line_Buffer_5 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line4
	(
	.Out0(R10),.Out1(R11),.Out2(R12),.Out3(R13),.Out4(R14),
	.In(R20),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	
	// ---------------------------------------------------------
	
	Line_Buffer_5 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line5
	(
	.Out0(R00),.Out1(R01),.Out2(R02),.Out3(R03),.Out4(R04),
	.In(R10),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	
	// ---------------------------------------------------------
	
	
	ValidInOut #(.n(Clock_Valid)) rere
	(
	.CLK(CLK),.CLR(CLR),.Valid_IN(Valid_IN),
	.Valid_OUT(Valid_OUT)
	);

endmodule
