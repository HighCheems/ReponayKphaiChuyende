
module CONV_2D_12_layer_4_channel_size_3 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0,
parameter w000 = 1,
parameter w010 = 1,
parameter w020 = 1,
parameter w030 = 1,
parameter w001 = 1,
parameter w011 = 1,
parameter w021 = 1,
parameter w031 = 1,
parameter w002 = 1,
parameter w012 = 1,
parameter w022 = 1,
parameter w032 = 1,
parameter w003 = 1,
parameter w013 = 1,
parameter w023 = 1,
parameter w033 = 1,
parameter w004 = 1,
parameter w014 = 1,
parameter w024 = 1,
parameter w034 = 1,
parameter w005 = 1,
parameter w015 = 1,
parameter w025 = 1,
parameter w035 = 1,
parameter w006 = 1,
parameter w016 = 1,
parameter w026 = 1,
parameter w036 = 1,
parameter w007 = 1,
parameter w017 = 1,
parameter w027 = 1,
parameter w037 = 1,
parameter w008 = 1,
parameter w018 = 1,
parameter w028 = 1,
parameter w038 = 1,
parameter bias_0 = 1,
parameter w100 = 1,
parameter w110 = 1,
parameter w120 = 1,
parameter w130 = 1,
parameter w101 = 1,
parameter w111 = 1,
parameter w121 = 1,
parameter w131 = 1,
parameter w102 = 1,
parameter w112 = 1,
parameter w122 = 1,
parameter w132 = 1,
parameter w103 = 1,
parameter w113 = 1,
parameter w123 = 1,
parameter w133 = 1,
parameter w104 = 1,
parameter w114 = 1,
parameter w124 = 1,
parameter w134 = 1,
parameter w105 = 1,
parameter w115 = 1,
parameter w125 = 1,
parameter w135 = 1,
parameter w106 = 1,
parameter w116 = 1,
parameter w126 = 1,
parameter w136 = 1,
parameter w107 = 1,
parameter w117 = 1,
parameter w127 = 1,
parameter w137 = 1,
parameter w108 = 1,
parameter w118 = 1,
parameter w128 = 1,
parameter w138 = 1,
parameter bias_1 = 1,
parameter w200 = 1,
parameter w210 = 1,
parameter w220 = 1,
parameter w230 = 1,
parameter w201 = 1,
parameter w211 = 1,
parameter w221 = 1,
parameter w231 = 1,
parameter w202 = 1,
parameter w212 = 1,
parameter w222 = 1,
parameter w232 = 1,
parameter w203 = 1,
parameter w213 = 1,
parameter w223 = 1,
parameter w233 = 1,
parameter w204 = 1,
parameter w214 = 1,
parameter w224 = 1,
parameter w234 = 1,
parameter w205 = 1,
parameter w215 = 1,
parameter w225 = 1,
parameter w235 = 1,
parameter w206 = 1,
parameter w216 = 1,
parameter w226 = 1,
parameter w236 = 1,
parameter w207 = 1,
parameter w217 = 1,
parameter w227 = 1,
parameter w237 = 1,
parameter w208 = 1,
parameter w218 = 1,
parameter w228 = 1,
parameter w238 = 1,
parameter bias_2 = 1,
parameter w300 = 1,
parameter w310 = 1,
parameter w320 = 1,
parameter w330 = 1,
parameter w301 = 1,
parameter w311 = 1,
parameter w321 = 1,
parameter w331 = 1,
parameter w302 = 1,
parameter w312 = 1,
parameter w322 = 1,
parameter w332 = 1,
parameter w303 = 1,
parameter w313 = 1,
parameter w323 = 1,
parameter w333 = 1,
parameter w304 = 1,
parameter w314 = 1,
parameter w324 = 1,
parameter w334 = 1,
parameter w305 = 1,
parameter w315 = 1,
parameter w325 = 1,
parameter w335 = 1,
parameter w306 = 1,
parameter w316 = 1,
parameter w326 = 1,
parameter w336 = 1,
parameter w307 = 1,
parameter w317 = 1,
parameter w327 = 1,
parameter w337 = 1,
parameter w308 = 1,
parameter w318 = 1,
parameter w328 = 1,
parameter w338 = 1,
parameter bias_3 = 1,
parameter w400 = 1,
parameter w410 = 1,
parameter w420 = 1,
parameter w430 = 1,
parameter w401 = 1,
parameter w411 = 1,
parameter w421 = 1,
parameter w431 = 1,
parameter w402 = 1,
parameter w412 = 1,
parameter w422 = 1,
parameter w432 = 1,
parameter w403 = 1,
parameter w413 = 1,
parameter w423 = 1,
parameter w433 = 1,
parameter w404 = 1,
parameter w414 = 1,
parameter w424 = 1,
parameter w434 = 1,
parameter w405 = 1,
parameter w415 = 1,
parameter w425 = 1,
parameter w435 = 1,
parameter w406 = 1,
parameter w416 = 1,
parameter w426 = 1,
parameter w436 = 1,
parameter w407 = 1,
parameter w417 = 1,
parameter w427 = 1,
parameter w437 = 1,
parameter w408 = 1,
parameter w418 = 1,
parameter w428 = 1,
parameter w438 = 1,
parameter bias_4 = 1,
parameter w500 = 1,
parameter w510 = 1,
parameter w520 = 1,
parameter w530 = 1,
parameter w501 = 1,
parameter w511 = 1,
parameter w521 = 1,
parameter w531 = 1,
parameter w502 = 1,
parameter w512 = 1,
parameter w522 = 1,
parameter w532 = 1,
parameter w503 = 1,
parameter w513 = 1,
parameter w523 = 1,
parameter w533 = 1,
parameter w504 = 1,
parameter w514 = 1,
parameter w524 = 1,
parameter w534 = 1,
parameter w505 = 1,
parameter w515 = 1,
parameter w525 = 1,
parameter w535 = 1,
parameter w506 = 1,
parameter w516 = 1,
parameter w526 = 1,
parameter w536 = 1,
parameter w507 = 1,
parameter w517 = 1,
parameter w527 = 1,
parameter w537 = 1,
parameter w508 = 1,
parameter w518 = 1,
parameter w528 = 1,
parameter w538 = 1,
parameter bias_5 = 1,
parameter w600 = 1,
parameter w610 = 1,
parameter w620 = 1,
parameter w630 = 1,
parameter w601 = 1,
parameter w611 = 1,
parameter w621 = 1,
parameter w631 = 1,
parameter w602 = 1,
parameter w612 = 1,
parameter w622 = 1,
parameter w632 = 1,
parameter w603 = 1,
parameter w613 = 1,
parameter w623 = 1,
parameter w633 = 1,
parameter w604 = 1,
parameter w614 = 1,
parameter w624 = 1,
parameter w634 = 1,
parameter w605 = 1,
parameter w615 = 1,
parameter w625 = 1,
parameter w635 = 1,
parameter w606 = 1,
parameter w616 = 1,
parameter w626 = 1,
parameter w636 = 1,
parameter w607 = 1,
parameter w617 = 1,
parameter w627 = 1,
parameter w637 = 1,
parameter w608 = 1,
parameter w618 = 1,
parameter w628 = 1,
parameter w638 = 1,
parameter bias_6 = 1,
parameter w700 = 1,
parameter w710 = 1,
parameter w720 = 1,
parameter w730 = 1,
parameter w701 = 1,
parameter w711 = 1,
parameter w721 = 1,
parameter w731 = 1,
parameter w702 = 1,
parameter w712 = 1,
parameter w722 = 1,
parameter w732 = 1,
parameter w703 = 1,
parameter w713 = 1,
parameter w723 = 1,
parameter w733 = 1,
parameter w704 = 1,
parameter w714 = 1,
parameter w724 = 1,
parameter w734 = 1,
parameter w705 = 1,
parameter w715 = 1,
parameter w725 = 1,
parameter w735 = 1,
parameter w706 = 1,
parameter w716 = 1,
parameter w726 = 1,
parameter w736 = 1,
parameter w707 = 1,
parameter w717 = 1,
parameter w727 = 1,
parameter w737 = 1,
parameter w708 = 1,
parameter w718 = 1,
parameter w728 = 1,
parameter w738 = 1,
parameter bias_7 = 1,
parameter w800 = 1,
parameter w810 = 1,
parameter w820 = 1,
parameter w830 = 1,
parameter w801 = 1,
parameter w811 = 1,
parameter w821 = 1,
parameter w831 = 1,
parameter w802 = 1,
parameter w812 = 1,
parameter w822 = 1,
parameter w832 = 1,
parameter w803 = 1,
parameter w813 = 1,
parameter w823 = 1,
parameter w833 = 1,
parameter w804 = 1,
parameter w814 = 1,
parameter w824 = 1,
parameter w834 = 1,
parameter w805 = 1,
parameter w815 = 1,
parameter w825 = 1,
parameter w835 = 1,
parameter w806 = 1,
parameter w816 = 1,
parameter w826 = 1,
parameter w836 = 1,
parameter w807 = 1,
parameter w817 = 1,
parameter w827 = 1,
parameter w837 = 1,
parameter w808 = 1,
parameter w818 = 1,
parameter w828 = 1,
parameter w838 = 1,
parameter bias_8 = 1,
parameter w900 = 1,
parameter w910 = 1,
parameter w920 = 1,
parameter w930 = 1,
parameter w901 = 1,
parameter w911 = 1,
parameter w921 = 1,
parameter w931 = 1,
parameter w902 = 1,
parameter w912 = 1,
parameter w922 = 1,
parameter w932 = 1,
parameter w903 = 1,
parameter w913 = 1,
parameter w923 = 1,
parameter w933 = 1,
parameter w904 = 1,
parameter w914 = 1,
parameter w924 = 1,
parameter w934 = 1,
parameter w905 = 1,
parameter w915 = 1,
parameter w925 = 1,
parameter w935 = 1,
parameter w906 = 1,
parameter w916 = 1,
parameter w926 = 1,
parameter w936 = 1,
parameter w907 = 1,
parameter w917 = 1,
parameter w927 = 1,
parameter w937 = 1,
parameter w908 = 1,
parameter w918 = 1,
parameter w928 = 1,
parameter w938 = 1,
parameter bias_9 = 1,
parameter w1000 = 1,
parameter w1010 = 1,
parameter w1020 = 1,
parameter w1030 = 1,
parameter w1001 = 1,
parameter w1011 = 1,
parameter w1021 = 1,
parameter w1031 = 1,
parameter w1002 = 1,
parameter w1012 = 1,
parameter w1022 = 1,
parameter w1032 = 1,
parameter w1003 = 1,
parameter w1013 = 1,
parameter w1023 = 1,
parameter w1033 = 1,
parameter w1004 = 1,
parameter w1014 = 1,
parameter w1024 = 1,
parameter w1034 = 1,
parameter w1005 = 1,
parameter w1015 = 1,
parameter w1025 = 1,
parameter w1035 = 1,
parameter w1006 = 1,
parameter w1016 = 1,
parameter w1026 = 1,
parameter w1036 = 1,
parameter w1007 = 1,
parameter w1017 = 1,
parameter w1027 = 1,
parameter w1037 = 1,
parameter w1008 = 1,
parameter w1018 = 1,
parameter w1028 = 1,
parameter w1038 = 1,
parameter bias_10 = 1,
parameter w1100 = 1,
parameter w1110 = 1,
parameter w1120 = 1,
parameter w1130 = 1,
parameter w1101 = 1,
parameter w1111 = 1,
parameter w1121 = 1,
parameter w1131 = 1,
parameter w1102 = 1,
parameter w1112 = 1,
parameter w1122 = 1,
parameter w1132 = 1,
parameter w1103 = 1,
parameter w1113 = 1,
parameter w1123 = 1,
parameter w1133 = 1,
parameter w1104 = 1,
parameter w1114 = 1,
parameter w1124 = 1,
parameter w1134 = 1,
parameter w1105 = 1,
parameter w1115 = 1,
parameter w1125 = 1,
parameter w1135 = 1,
parameter w1106 = 1,
parameter w1116 = 1,
parameter w1126 = 1,
parameter w1136 = 1,
parameter w1107 = 1,
parameter w1117 = 1,
parameter w1127 = 1,
parameter w1137 = 1,
parameter w1108 = 1,
parameter w1118 = 1,
parameter w1128 = 1,
parameter w1138 = 1,
parameter bias_11 = 1

)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
In_3,
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
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3;
output reg valid_out;
output reg [Datawidth-1:0] Out_0;
output reg [Datawidth-1:0] Out_1;
output reg [Datawidth-1:0] Out_2;
output reg [Datawidth-1:0] Out_3;
output reg [Datawidth-1:0] Out_4;
output reg [Datawidth-1:0] Out_5;
output reg [Datawidth-1:0] Out_6;
output reg [Datawidth-1:0] Out_7;
output reg [Datawidth-1:0] Out_8;
output reg [Datawidth-1:0] Out_9;
output reg [Datawidth-1:0] Out_10;
output reg [Datawidth-1:0] Out_11;

wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3,save_Out_4,save_Out_5,
							save_Out_6,save_Out_7,save_Out_8,save_Out_9,save_Out_10,save_Out_11;
							
wire 	valid_out_0,valid_out_1,valid_out_2,valid_out_3,
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
 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w000),
.w01(w001),
.w02(w002),
.w03(w003),
.w04(w004),
.w05(w005),
.w06(w006),
.w07(w007),
.w08(w008),
.w10(w010),
.w11(w011),
.w12(w012),
.w13(w013),
.w14(w014),
.w15(w015),
.w16(w016),
.w17(w017),
.w18(w018),
.w20(w020),
.w21(w021),
.w22(w022),
.w23(w023),
.w24(w024),
.w25(w025),
.w26(w026),
.w27(w027),
.w28(w028),
.w30(w030),
.w31(w031),
.w32(w032),
.w33(w033),
.w34(w034),
.w35(w035),
.w36(w036),
.w37(w037),
.w38(w038),
.bias(bias_0)
) block_layer_0
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_0),
.valid_out(valid_out_0)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w100),
.w01(w101),
.w02(w102),
.w03(w103),
.w04(w104),
.w05(w105),
.w06(w106),
.w07(w107),
.w08(w108),
.w10(w110),
.w11(w111),
.w12(w112),
.w13(w113),
.w14(w114),
.w15(w115),
.w16(w116),
.w17(w117),
.w18(w118),
.w20(w120),
.w21(w121),
.w22(w122),
.w23(w123),
.w24(w124),
.w25(w125),
.w26(w126),
.w27(w127),
.w28(w128),
.w30(w130),
.w31(w131),
.w32(w132),
.w33(w133),
.w34(w134),
.w35(w135),
.w36(w136),
.w37(w137),
.w38(w138),
.bias(bias_1)
) block_layer_1
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_1),
.valid_out(valid_out_1)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w200),
.w01(w201),
.w02(w202),
.w03(w203),
.w04(w204),
.w05(w205),
.w06(w206),
.w07(w207),
.w08(w208),
.w10(w210),
.w11(w211),
.w12(w212),
.w13(w213),
.w14(w214),
.w15(w215),
.w16(w216),
.w17(w217),
.w18(w218),
.w20(w220),
.w21(w221),
.w22(w222),
.w23(w223),
.w24(w224),
.w25(w225),
.w26(w226),
.w27(w227),
.w28(w228),
.w30(w230),
.w31(w231),
.w32(w232),
.w33(w233),
.w34(w234),
.w35(w235),
.w36(w236),
.w37(w237),
.w38(w238),
.bias(bias_2)
) block_layer_2
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_2),
.valid_out(valid_out_2)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w300),
.w01(w301),
.w02(w302),
.w03(w303),
.w04(w304),
.w05(w305),
.w06(w306),
.w07(w307),
.w08(w308),
.w10(w310),
.w11(w311),
.w12(w312),
.w13(w313),
.w14(w314),
.w15(w315),
.w16(w316),
.w17(w317),
.w18(w318),
.w20(w320),
.w21(w321),
.w22(w322),
.w23(w323),
.w24(w324),
.w25(w325),
.w26(w326),
.w27(w327),
.w28(w328),
.w30(w330),
.w31(w331),
.w32(w332),
.w33(w333),
.w34(w334),
.w35(w335),
.w36(w336),
.w37(w337),
.w38(w338),
.bias(bias_3)
) block_layer_3
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_3),
.valid_out(valid_out_3)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w400),
.w01(w401),
.w02(w402),
.w03(w403),
.w04(w404),
.w05(w405),
.w06(w406),
.w07(w407),
.w08(w408),
.w10(w410),
.w11(w411),
.w12(w412),
.w13(w413),
.w14(w414),
.w15(w415),
.w16(w416),
.w17(w417),
.w18(w418),
.w20(w420),
.w21(w421),
.w22(w422),
.w23(w423),
.w24(w424),
.w25(w425),
.w26(w426),
.w27(w427),
.w28(w428),
.w30(w430),
.w31(w431),
.w32(w432),
.w33(w433),
.w34(w434),
.w35(w435),
.w36(w436),
.w37(w437),
.w38(w438),
.bias(bias_4)
) block_layer_4
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_4),
.valid_out(valid_out_4)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w500),
.w01(w501),
.w02(w502),
.w03(w503),
.w04(w504),
.w05(w505),
.w06(w506),
.w07(w507),
.w08(w508),
.w10(w510),
.w11(w511),
.w12(w512),
.w13(w513),
.w14(w514),
.w15(w515),
.w16(w516),
.w17(w517),
.w18(w518),
.w20(w520),
.w21(w521),
.w22(w522),
.w23(w523),
.w24(w524),
.w25(w525),
.w26(w526),
.w27(w527),
.w28(w528),
.w30(w530),
.w31(w531),
.w32(w532),
.w33(w533),
.w34(w534),
.w35(w535),
.w36(w536),
.w37(w537),
.w38(w538),
.bias(bias_5)
) block_layer_5
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_5),
.valid_out(valid_out_5)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w600),
.w01(w601),
.w02(w602),
.w03(w603),
.w04(w604),
.w05(w605),
.w06(w606),
.w07(w607),
.w08(w608),
.w10(w610),
.w11(w611),
.w12(w612),
.w13(w613),
.w14(w614),
.w15(w615),
.w16(w616),
.w17(w617),
.w18(w618),
.w20(w620),
.w21(w621),
.w22(w622),
.w23(w623),
.w24(w624),
.w25(w625),
.w26(w626),
.w27(w627),
.w28(w628),
.w30(w630),
.w31(w631),
.w32(w632),
.w33(w633),
.w34(w634),
.w35(w635),
.w36(w636),
.w37(w637),
.w38(w638),
.bias(bias_6)
) block_layer_6
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_6),
.valid_out(valid_out_6)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w700),
.w01(w701),
.w02(w702),
.w03(w703),
.w04(w704),
.w05(w705),
.w06(w706),
.w07(w707),
.w08(w708),
.w10(w710),
.w11(w711),
.w12(w712),
.w13(w713),
.w14(w714),
.w15(w715),
.w16(w716),
.w17(w717),
.w18(w718),
.w20(w720),
.w21(w721),
.w22(w722),
.w23(w723),
.w24(w724),
.w25(w725),
.w26(w726),
.w27(w727),
.w28(w728),
.w30(w730),
.w31(w731),
.w32(w732),
.w33(w733),
.w34(w734),
.w35(w735),
.w36(w736),
.w37(w737),
.w38(w738),
.bias(bias_7)
) block_layer_7
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_7),
.valid_out(valid_out_7)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w800),
.w01(w801),
.w02(w802),
.w03(w803),
.w04(w804),
.w05(w805),
.w06(w806),
.w07(w807),
.w08(w808),
.w10(w810),
.w11(w811),
.w12(w812),
.w13(w813),
.w14(w814),
.w15(w815),
.w16(w816),
.w17(w817),
.w18(w818),
.w20(w820),
.w21(w821),
.w22(w822),
.w23(w823),
.w24(w824),
.w25(w825),
.w26(w826),
.w27(w827),
.w28(w828),
.w30(w830),
.w31(w831),
.w32(w832),
.w33(w833),
.w34(w834),
.w35(w835),
.w36(w836),
.w37(w837),
.w38(w838),
.bias(bias_8)
) block_layer_8
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_8),
.valid_out(valid_out_8)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w900),
.w01(w901),
.w02(w902),
.w03(w903),
.w04(w904),
.w05(w905),
.w06(w906),
.w07(w907),
.w08(w908),
.w10(w910),
.w11(w911),
.w12(w912),
.w13(w913),
.w14(w914),
.w15(w915),
.w16(w916),
.w17(w917),
.w18(w918),
.w20(w920),
.w21(w921),
.w22(w922),
.w23(w923),
.w24(w924),
.w25(w925),
.w26(w926),
.w27(w927),
.w28(w928),
.w30(w930),
.w31(w931),
.w32(w932),
.w33(w933),
.w34(w934),
.w35(w935),
.w36(w936),
.w37(w937),
.w38(w938),
.bias(bias_9)
) block_layer_9
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_9),
.valid_out(valid_out_9)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w1000),
.w01(w1001),
.w02(w1002),
.w03(w1003),
.w04(w1004),
.w05(w1005),
.w06(w1006),
.w07(w1007),
.w08(w1008),
.w10(w1010),
.w11(w1011),
.w12(w1012),
.w13(w1013),
.w14(w1014),
.w15(w1015),
.w16(w1016),
.w17(w1017),
.w18(w1018),
.w20(w1020),
.w21(w1021),
.w22(w1022),
.w23(w1023),
.w24(w1024),
.w25(w1025),
.w26(w1026),
.w27(w1027),
.w28(w1028),
.w30(w1030),
.w31(w1031),
.w32(w1032),
.w33(w1033),
.w34(w1034),
.w35(w1035),
.w36(w1036),
.w37(w1037),
.w38(w1038),
.bias(bias_10)
) block_layer_10
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_10),
.valid_out(valid_out_10)
);

 
CONV_2D_1_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU),
.w00(w1100),
.w01(w1101),
.w02(w1102),
.w03(w1103),
.w04(w1104),
.w05(w1105),
.w06(w1106),
.w07(w1107),
.w08(w1108),
.w10(w1110),
.w11(w1111),
.w12(w1112),
.w13(w1113),
.w14(w1114),
.w15(w1115),
.w16(w1116),
.w17(w1117),
.w18(w1118),
.w20(w1120),
.w21(w1121),
.w22(w1122),
.w23(w1123),
.w24(w1124),
.w25(w1125),
.w26(w1126),
.w27(w1127),
.w28(w1128),
.w30(w1130),
.w31(w1131),
.w32(w1132),
.w33(w1133),
.w34(w1134),
.w35(w1135),
.w36(w1136),
.w37(w1137),
.w38(w1138),
.bias(bias_11)
) block_layer_11
(
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.Out(save_Out_11),
.valid_out(valid_out_11)
);


endmodule 