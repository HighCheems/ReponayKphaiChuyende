module CONV_kernel_size_7_2D #(
parameter IMG_Width=7, 
parameter IMG_Height=7, 
parameter Datawidth=16,  
parameter Stride=1,
parameter ReLU=1)
(
	In,
	CLK,CLR,
	Valid_IN,
	K0,	K1,	K2,	K3,	K4,	K5,	K6,
	K7,	K8,	K9,	K10,	K11,	K12,	K13,
	K14,	K15,	K16,	K17,	K18,	K19,	K20,
	K21,	K22,	K23,	K24,	K25,	K26,	K27,
	K28,	K29,	K30,	K31,	K32,	K33,	K34,
	K35,	K36,	K37,	K38,	K39,	K40,	K41,
	K42,	K43,	K44,	K45,	K46,	K47,	K48,
	Valid_OUT,
	Out
);
// port map
localparam Clock_Valid=IMG_Width*3+4;
input wire [Datawidth-1:0] In;
input wire CLK,CLR;
input wire Valid_IN;
input wire [Datawidth-1:0] K0,	K1,	K2,	K3,	K4,	K5,	K6,
									K7,	K8,	K9,	K10,	K11,	K12,	K13,
									K14,	K15,	K16,	K17,	K18,	K19,	K20,
									K21,	K22,	K23,	K24,	K25,	K26,	K27,
									K28,	K29,	K30,	K31,	K32,	K33,	K34,
									K35,	K36,	K37,	K38,	K39,	K40,	K41,
									K42,	K43,	K44,	K45,	K46,	K47,	K48;

output reg Valid_OUT;
output reg  [Datawidth-1:0] Out;

	// local
	localparam delay=3;
	reg 	[Datawidth-1:0] hang,cot;
	wire [Datawidth-1:0] 			R00,R01,R02,R03,R04,R05,R06,
											R10,R11,R12,R13,R14,R15,R16,
											R20,R21,R22,R23,R24,R25,R26,
											R30,R31,R32,R33,R34,R35,R36,
											R40,R41,R42,R43,R44,R45,R46,
											R50,R51,R52,R53,R54,R55,R56,
											R60,R61,R62,R63,R64,R65,R66;
	wire right_position;
	wire [Datawidth-1:0] result;
	wire [Datawidth-1:0] _result;


// 3 line
Line_Buffer_Kernel_7 #(.IMG_Width(IMG_Width),.Datawidth(Datawidth),.Clock_Valid(Clock_Valid)) Main_line
(
	.R00(R00),.R01(R01),.R02(R02),.R03(R03),.R04(R04),.R05(R05),.R06(R06),
	.R10(R10),.R11(R11),.R12(R12),.R13(R13),.R14(R14),.R15(R15),.R16(R16),
	.R20(R20),.R21(R21),.R22(R22),.R23(R23),.R24(R24),.R25(R25),.R26(R26),
	.R30(R30),.R31(R31),.R32(R32),.R33(R33),.R34(R34),.R35(R35),.R36(R36),
	.R40(R40),.R41(R41),.R42(R42),.R43(R43),.R44(R44),.R45(R45),.R46(R46),
	.R50(R50),.R51(R51),.R52(R52),.R53(R53),.R54(R54),.R55(R55),.R56(R56),
	.R60(R60),.R61(R61),.R62(R62),.R63(R63),.R64(R64),.R65(R65),.R66(R66),
	
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
wire [Datawidth-1:0] P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24,P25,P26,P27,P28,P29,P30,P31,
						P32,P33,P34,P35,P36,P37,P38,P39,P40,P41,P42,P43,P44,P45,P46,P47,P48;
// P : pixel in matrix
// 0  1  2  3  4 	5 	6
// 7	8	9	10	11	12	13
// 14	15	16	17	18	19	20
// 21	22	23	24	25	26	27     // 24 trung tam
// 28	29	30	31	32	33	34
// 35	36	37	38	39	40	41
// 42 43	44	45	46	47	48
assign P0=	(cot==0|cot==1|cot==2|											hang==0|hang==1|hang==2) ? 0 : R00;
assign P1=	(cot==0|cot==1|													hang==0|hang==1|hang==2) ? 0 : R01;
assign P2=	(cot==0|																hang==0|hang==1|hang==2) ? 0 : R02;
assign P3=	(																		hang==0|hang==1|hang==2) ? 0 : R03;
assign P4=	(cot==IMG_Width-1|												hang==0|hang==1|hang==2) ? 0 : R04;
assign P5=	(cot==IMG_Width-1|cot==IMG_Width-2|							hang==0|hang==1|hang==2) ? 0 : R05;
assign P6=	(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3|	hang==0|hang==1|hang==2) ? 0 : R06;

assign P7=	(cot==0|cot==1|cot==2|											hang==0|hang==1) ? 0 : R10;
assign P8=	(cot==0|cot==1|													hang==0|hang==1) ? 0 : R11;
assign P9=	(cot==0|																hang==0|hang==1) ? 0 : R12;
assign P10=	(																		hang==0|hang==1) ? 0 : R13;
assign P11=	(cot==IMG_Width-1|												hang==0|hang==1) ? 0 : R14;
assign P12=	(cot==IMG_Width-1|cot==IMG_Width-2|							hang==0|hang==1) ? 0 : R15;
assign P13=	(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3|	hang==0|hang==1) ? 0 : R16;

assign P14=	(cot==0|cot==1|cot==2|											hang==0) ? 0 : R20;
assign P15=	(cot==0|cot==1|													hang==0) ? 0 : R21;
assign P16=	(cot==0|																hang==0) ? 0 : R22;
assign P17=	(																		hang==0) ? 0 : R23;
assign P18=	(cot==IMG_Width-1|												hang==0) ? 0 : R24;
assign P19=	(cot==IMG_Width-1|cot==IMG_Width-2|							hang==0) ? 0 : R25;
assign P20=	(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3|	hang==0) ? 0 : R26;

assign P21=	(cot==0|cot==1|cot==2											) ? 0 : R30;
assign P22=	(cot==0|cot==1														) ? 0 : R31;
assign P23=	(cot==0																) ? 0 : R32;
assign P24=																					  R33;
assign P25=	(cot==IMG_Width-1													) ? 0 : R34;
assign P26=	(cot==IMG_Width-1|cot==IMG_Width-2							) ? 0 : R35;
assign P27=	(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3	) ? 0 : R36;

assign P28=(cot==0|cot==1|cot==2|											hang==IMG_Height-1) ? 0 : R40;
assign P29=(cot==0|cot==1|														hang==IMG_Height-1) ? 0 : R41;
assign P30=(cot==0|																hang==IMG_Height-1) ? 0 : R42;
assign P31=(																		hang==IMG_Height-1) ? 0 : R43;
assign P32=(cot==IMG_Width-1|													hang==IMG_Height-1) ? 0 : R44;
assign P33=(cot==IMG_Width-1|cot==IMG_Width-2|							hang==IMG_Height-1) ? 0 : R45;
assign P34=(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3|	hang==IMG_Height-1) ? 0 : R46;

assign P35=(cot==0|cot==1|cot==2|											hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R50;
assign P36=(cot==0|cot==1|														hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R51;
assign P37=(cot==0|																hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R52;
assign P38=(																		hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R53;
assign P39=(cot==IMG_Width-1|													hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R54;
assign P40=(cot==IMG_Width-1|cot==IMG_Width-2|							hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R55;
assign P41=(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3|	hang==IMG_Height-1|hang==IMG_Height-2) ? 0 : R56;

assign P42=(cot==0|cot==1|cot==2|											hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R60;
assign P43=(cot==0|cot==1|														hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R61;
assign P44=(cot==0|																hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R62;
assign P45=(																		hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R63;
assign P46=(cot==IMG_Width-1|													hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R64;
assign P47=(cot==IMG_Width-1|cot==IMG_Width-2|							hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R65;
assign P48=(cot==IMG_Width-1|cot==IMG_Width-2|cot==IMG_Width-3|	hang==IMG_Height-1|hang==IMG_Height-2|hang==IMG_Height-3) ? 0 : R66;

// K: kernel
assign result = 	  P0*K0   + P1*K1   	+ P2*K2   	+ P3*K3   	+ P4*K4   	+ P5*K5   	+ P6*K6   
						+ P7*K7   + P8*K8   	+ P9*K9 		+ P10*K10 	+ P11*K11 	+ P12*K12 	+ P13*K13 
						+ P14*K14 + P15*K15 	+ P16*K16 	+ P17*K17 	+ P18*K18 	+ P19*K19 	+  P20*K20 
						+ P21*K21 + P22*K22 	+ P23*K23 	+ P24*K24 	+ P25*K25 	+ P26*K26 	+ P27*K27 
						+ P28*K28 + P29*K29 	+  P30*K30 	+ P31*K31 	+ P32*K32 	+ P33*K33 	+ P34*K34
						+ P35*K35 + P36*K36 	+ P37*K37 	+ P38*K38 	+ P39*K39	+ P40*K40 	+ P41*K41 
						+ P42*K42 + P43*K43 	+ P44*K44	+  P45*K45 	+ P46*K46 	+ P47*K47 	+ P48*K48;
// ReLU

assign _result = (ReLU==1) ? ((result[Datawidth-1] == 1'd0) ? result : 0) : result;




endmodule
