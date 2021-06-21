
module CONV_2D_1_Kernel_3_Channel_7 #(
parameter IMG_Width=7, 
parameter IMG_Height=7, 
parameter Datawidth=16, 
parameter Stride=2,
parameter ReLU=0,
parameter w00 = 1,
parameter w10 = 1,
parameter w20 = 1,
parameter w01 = 1,
parameter w11 = 1,
parameter w21 = 1,
parameter w02 = 1,
parameter w12 = 1,
parameter w22 = 1,
parameter w03 = 1,
parameter w13 = 1,
parameter w23 = 1,
parameter w04 = 1,
parameter w14 = 1,
parameter w24 = 1,
parameter w05 = 1,
parameter w15 = 1,
parameter w25 = 1,
parameter w06 = 1,
parameter w16 = 1,
parameter w26 = 1,
parameter w07 = 1,
parameter w17 = 1,
parameter w27 = 1,
parameter w08 = 1,
parameter w18 = 1,
parameter w28 = 1,
parameter w09 = 1,
parameter w19 = 1,
parameter w29 = 1,
parameter w010 = 1,
parameter w110 = 1,
parameter w210 = 1,
parameter w011 = 1,
parameter w111 = 1,
parameter w211 = 1,
parameter w012 = 1,
parameter w112 = 1,
parameter w212 = 1,
parameter w013 = 1,
parameter w113 = 1,
parameter w213 = 1,
parameter w014 = 1,
parameter w114 = 1,
parameter w214 = 1,
parameter w015 = 1,
parameter w115 = 1,
parameter w215 = 1,
parameter w016 = 1,
parameter w116 = 1,
parameter w216 = 1,
parameter w017 = 1,
parameter w117 = 1,
parameter w217 = 1,
parameter w018 = 1,
parameter w118 = 1,
parameter w218 = 1,
parameter w019 = 1,
parameter w119 = 1,
parameter w219 = 1,
parameter w020 = 1,
parameter w120 = 1,
parameter w220 = 1,
parameter w021 = 1,
parameter w121 = 1,
parameter w221 = 1,
parameter w022 = 1,
parameter w122 = 1,
parameter w222 = 1,
parameter w023 = 1,
parameter w123 = 1,
parameter w223 = 1,
parameter w024 = 1,
parameter w124 = 1,
parameter w224 = 1,
parameter w025 = 1,
parameter w125 = 1,
parameter w225 = 1,
parameter w026 = 1,
parameter w126 = 1,
parameter w226 = 1,
parameter w027 = 1,
parameter w127 = 1,
parameter w227 = 1,
parameter w028 = 1,
parameter w128 = 1,
parameter w228 = 1,
parameter w029 = 1,
parameter w129 = 1,
parameter w229 = 1,
parameter w030 = 1,
parameter w130 = 1,
parameter w230 = 1,
parameter w031 = 1,
parameter w131 = 1,
parameter w231 = 1,
parameter w032 = 1,
parameter w132 = 1,
parameter w232 = 1,
parameter w033 = 1,
parameter w133 = 1,
parameter w233 = 1,
parameter w034 = 1,
parameter w134 = 1,
parameter w234 = 1,
parameter w035 = 1,
parameter w135 = 1,
parameter w235 = 1,
parameter w036 = 1,
parameter w136 = 1,
parameter w236 = 1,
parameter w037 = 1,
parameter w137 = 1,
parameter w237 = 1,
parameter w038 = 1,
parameter w138 = 1,
parameter w238 = 1,
parameter w039 = 1,
parameter w139 = 1,
parameter w239 = 1,
parameter w040 = 1,
parameter w140 = 1,
parameter w240 = 1,
parameter w041 = 1,
parameter w141 = 1,
parameter w241 = 1,
parameter w042 = 1,
parameter w142 = 1,
parameter w242 = 1,
parameter w043 = 1,
parameter w143 = 1,
parameter w243 = 1,
parameter w044 = 1,
parameter w144 = 1,
parameter w244 = 1,
parameter w045 = 1,
parameter w145 = 1,
parameter w245 = 1,
parameter w046 = 1,
parameter w146 = 1,
parameter w246 = 1,
parameter w047 = 1,
parameter w147 = 1,
parameter w247 = 1,
parameter w048 = 1,
parameter w148 = 1,
parameter w248 = 1,
parameter bias = 1
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
Out,
valid_out
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

// save value

assign save = Out_0 + Out_1 + Out_2 + bias;
CONV_kernel_size_7_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_0
(
	.In(In_0),
	.CLK(clk),.CLR(rst),
	.K0(w00),.K1(w01),.K2(w00),.K3(w03),.K4(w04),.K5(w05),.K6(w06),
    .K7(w07),.K8(w08),.K9(w09),.K10(w010),.K11(w011),.K12(w012),.K13(w013),
    .K14(w014),.K15(w015),.K16(w016),.K17(w017),.K18(w018),.K19(w019),.K20(w020),
    .K21(w021),.K22(w022),.K23(w023),.K24(w024),.K25(w025),.K26(w026),.K27(w027),
    .K28(w028),.K29(w029),.K30(w030),.K31(w031),.K32(w032),.K33(w033),.K34(w034),
    .K35(w035),.K36(w036),.K37(w037),.K38(w038),.K39(w039),.K40(w040),.K41(w041),
    .K42(w042),.K43(w043),.K44(w044),.K45(w045),.K46(w046),.K47(w047),.K48(w048),
     // Kernel parameter
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_0),
	.Out(Out_0)
);

CONV_kernel_size_7_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_1
(
	.In(In_1),
	.CLK(clk),.CLR(rst),
	.K0(w10),.K1(w11),.K2(w10),.K3(w13),.K4(w14),.K5(w15),.K6(w16),
    .K7(w17),.K8(w18),.K9(w19),.K10(w110),.K11(w111),.K12(w112),.K13(w113),
    .K14(w114),.K15(w115),.K16(w116),.K17(w117),.K18(w118),.K19(w119),.K20(w120),
    .K21(w121),.K22(w122),.K23(w123),.K24(w124),.K25(w125),.K26(w126),.K27(w127),
    .K28(w128),.K29(w129),.K30(w130),.K31(w131),.K32(w132),.K33(w133),.K34(w134),
    .K35(w135),.K36(w136),.K37(w137),.K38(w138),.K39(w139),.K40(w140),.K41(w141),
    .K42(w142),.K43(w143),.K44(w144),.K45(w145),.K46(w146),.K47(w147),.K48(w148),
     // Kernel parameter
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_1),
	.Out(Out_1)
);

CONV_kernel_size_7_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height),
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
) block_2
(
	.In(In_2),
	.CLK(clk),.CLR(rst),
	.K0(w20),.K1(w21),.K2(w20),.K3(w23),.K4(w24),.K5(w25),.K6(w26),
    .K7(w27),.K8(w28),.K9(w29),.K10(w210),.K11(w211),.K12(w212),.K13(w213),
    .K14(w214),.K15(w215),.K16(w216),.K17(w217),.K18(w218),.K19(w219),.K20(w220),
    .K21(w221),.K22(w222),.K23(w223),.K24(w224),.K25(w225),.K26(w226),.K27(w227),
    .K28(w228),.K29(w229),.K30(w230),.K31(w231),.K32(w232),.K33(w233),.K34(w234),
    .K35(w235),.K36(w236),.K37(w237),.K38(w238),.K39(w239),.K40(w240),.K41(w241),
    .K42(w242),.K43(w243),.K44(w244),.K45(w245),.K46(w246),.K47(w247),.K48(w248),
     // Kernel parameter
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_2),
	.Out(Out_2)
);
endmodule 