module CONV_kernel_size_5_2D #(
parameter IMG_Width=5, 
parameter IMG_Height=5, 
parameter Datawidth=16, 
parameter Clock_Valid=IMG_Width*3-2, 
parameter Stride=1,
parameter ReLU=0)
(
	In, // gia tri dau vao
	CLK,CLR,Valid_IN,
	K0,K1,K2,K3,K4,
	K5,K6,K7,K8,K9,
	K10,K11,K12,K13,K14,
	K15,K16,K17,K18,K19,
	K20,K21,K22,K23,K24, // Kernel parameter
	Valid_OUT,
	Out
);

// port map
input wire [Datawidth-1:0] In;
input wire CLK,CLR;
input wire Valid_IN;
input wire [Datawidth-1:0] K0,K1,K2,K3,K4,
										K5,K6,K7,K8,K9,
										K10,K11,K12,K13,K14,
										K15,K16,K17,K18,K19,
										K20,K21,K22,K23,K24;


output reg Valid_OUT;
output reg  [Datawidth-1:0] Out;

	// local
	reg 	[Datawidth-1:0] hang,cot;
	wire 	[Datawidth-1:0] R00,R01,R02,R03,R04,
											R10,R11,R12,R13,R14,
											R20,R21,R22,R23,R24,
											R30,R31,R32,R33,R34,
											R40,R41,R42,R43,R44;
	wire right_position;
	wire [Datawidth-1:0] result;

// 3 line
Line_Buffer_Kernel_5 #(.IMG_Width(IMG_Width),.Datawidth(Datawidth),.Clock_Valid(Clock_Valid)) Main_line
(
	.R00(R00),.R01(R01),.R02(R02),.R03(R03),.R04(R04),
	.R10(R10),.R11(R11),.R12(R12),.R13(R13),.R14(R14),
	.R20(R20),.R21(R21),.R22(R22),.R23(R23),.R24(R24),
	.R30(R30),.R31(R31),.R32(R32),.R33(R33),.R34(R34),
	.R40(R40),.R41(R41),.R42(R42),.R43(R43),.R44(R44),	
	
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
wire [Datawidth-1:0] P0,P1,P2,P3,P4,P5,P6,P7,P8,P9,P10,P11,P12,P13,P14,P15,P16,P17,P18,P19,P20,P21,P22,P23,P24;
// P : pixel in matrix
// 0  1  2  3  4
// 5  6  7  8  9
// 10 11 12 13 14
// 15 16 17 18 19
// 20 21 22 23 24
assign P0= ((cot==0) |(cot==1)|(hang==1)| (hang==0)) 	? 0 : R00;
assign P1= ((cot==0) 			|(hang==1)|	(hang==0)) 	? 0 : R01;
assign P2= ( 						|(hang==1)|	(hang==0)) 	? 0 : R02;
assign P3= ((cot==IMG_Width-1)|(hang==1)| (hang==0)) 	? 0 : R03;
assign P4= ((cot==IMG_Width-1)|(cot==IMG_Width-2)|(hang==1)| (hang==0)) 	? 0 : R04;

assign P5= ((cot==0)|(cot==1) 		| 		(hang==0)) 	? 0 : R10;
assign P6= ((cot==0) 		| 					(hang==0)) 	? 0 : R11;
assign P7= ( 										(hang==0)) 	? 0 : R12;
assign P8= ((cot==IMG_Width-1)|				(hang==0))	? 0 : R13;
assign P9= ((cot==IMG_Width-1)|(cot==IMG_Width-2) | (hang==0)) ? 0 : R14;

assign P10= ((cot==0)|(cot==1) 		 					) 	? 0 : R20;
assign P11= ((cot==0) 		 								) 	? 0 : R21;
assign P12= 																R22; // Trung tam
assign P13= ((cot==IMG_Width-1) 							) 	? 0 : R23;
assign P14= ((cot==IMG_Width-1)|(cot==IMG_Width-2) ) 	? 0 : R24;

assign P15= ((cot==0)|(cot==1)|(hang==IMG_Height-1))	? 0 : R30;
assign P16= ((cot==0) 		| 	 (hang==IMG_Height-1)) 	? 0 : R31;
assign P17= (						 (hang==IMG_Height-1))	? 0 : R32;
assign P18= ((cot==IMG_Width-1)|(hang==IMG_Height-1)) ? 0 : R33;
assign P19= ((cot==IMG_Width-1)|(cot==IMG_Width-2)|(hang==IMG_Height-1)) ? 0 : R34;

assign P20= ((cot==0)|(cot==1) |(hang==IMG_Height-1)|(hang==IMG_Height-2)) ? 0 : R40;
assign P21= ((cot==0) 		| 	  (hang==IMG_Height-1)|(hang==IMG_Height-2)) ? 0 : R41;
assign P22= ( 						  (hang==IMG_Height-1)|(hang==IMG_Height-2)) ? 0 : R42;
assign P23= ((cot==IMG_Width-1)|(hang==IMG_Height-2)|(hang==IMG_Height-1)) ? 0 : R43;
assign P24= ((cot==IMG_Width-1)|(cot==IMG_Width-2)|(hang==IMG_Height-1)|(hang==IMG_Height-2)) ? 0 : R44;



// K: kernel
assign result = 	P0*K0   + P1*K1   + P2*K2   + P3*K3   + P4*K4 
					+ 	P5*K5   + P6*K6   + P7*K7   + P8*K8   + P9*K9
					+  P10*K10 + P11*K11 + P12*K12 + P13*K13 + P14*K14
					+ 	P15*K15 + P16*K16 + P17*K17 + P18*K18 + P19*K19
					+  P20*K20 + P21*K21 + P22*K22 + P23*K23 + P24*K24;
// ReLU
wire [Datawidth-1:0] _result;
assign _result = (ReLU==1) ? ((result[Datawidth-1] == 1'd0) ? result : 0) : result;

endmodule
