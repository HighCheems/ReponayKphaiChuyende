module Line_Buffer_Kernel_7 #(parameter IMG_Width=8, parameter Datawidth=8, parameter Clock_Valid=IMG_Width*4-3)
(
	output wire [Datawidth-1:0] 	R00,R01,R02,R03,R04,R05,R06,
											R10,R11,R12,R13,R14,R15,R16,
											R20,R21,R22,R23,R24,R25,R26,
											R30,R31,R32,R33,R34,R35,R36,
											R40,R41,R42,R43,R44,R45,R46,
											R50,R51,R52,R53,R54,R55,R56,
											R60,R61,R62,R63,R64,R65,R66,
	output wire Valid_OUT,
	input wire [Datawidth-1:0] In,
	input wire Valid_IN, CLK, CLR
);

	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line1
	(
	.Out0(R60),.Out1(R61),.Out2(R62),.Out3(R63),.Out4(R64),.Out5(R65),.Out6(R66),
	.In(In),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	// ---------------------------------------------------------
	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line2
	(
	.Out0(R50),.Out1(R51),.Out2(R52),.Out3(R53),.Out4(R54),.Out5(R55),.Out6(R56),
	.In(R60),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	// ---------------------------------------------------------
	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line3
	(
	.Out0(R40),.Out1(R41),.Out2(R42),.Out3(R43),.Out4(R44),.Out5(R45),.Out6(R46),
	.In(R50),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	// ---------------------------------------------------------
	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line4
	(
	.Out0(R30),.Out1(R31),.Out2(R32),.Out3(R33),.Out4(R34),.Out5(R35),.Out6(R36),
	.In(R40),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);

	// ---------------------------------------------------------
	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line5
	(
	.Out0(R20),.Out1(R21),.Out2(R22),.Out3(R23),.Out4(R24),.Out5(R25),.Out6(R26),
	.In(R30),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);	
	
	// ---------------------------------------------------------
	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line6
	(
	.Out0(R10),.Out1(R11),.Out2(R12),.Out3(R13),.Out4(R14),.Out5(R15),.Out6(R16),
	.In(R20),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	// ---------------------------------------------------------
	Line_Buffer_7 #(.IMG_Width(IMG_Width), .Datawidth(Datawidth)) Line7
	(
	.Out0(R00),.Out1(R01),.Out2(R02),.Out3(R03),.Out4(R04),.Out5(R05),.Out6(R06),
	.In(R10),
	.CLK(CLK), .CLR(CLR), .WE(Valid_IN)
	);
	
	ValidInOut #(.n(Clock_Valid)) rere
	(
	.CLK(CLK),.CLR(CLR),.Valid_IN(Valid_IN),
	.Valid_OUT(Valid_OUT)
	);

endmodule
