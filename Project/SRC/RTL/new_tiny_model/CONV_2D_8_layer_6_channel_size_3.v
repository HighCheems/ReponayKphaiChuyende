
module CONV_2D_8_layer_6_channel_size_3 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0,
parameter w000 = 1,
parameter w010 = 1,
parameter w020 = 1,
parameter w030 = 1,
parameter w040 = 1,
parameter w050 = 1,
parameter w001 = 1,
parameter w011 = 1,
parameter w021 = 1,
parameter w031 = 1,
parameter w041 = 1,
parameter w051 = 1,
parameter w002 = 1,
parameter w012 = 1,
parameter w022 = 1,
parameter w032 = 1,
parameter w042 = 1,
parameter w052 = 1,
parameter w003 = 1,
parameter w013 = 1,
parameter w023 = 1,
parameter w033 = 1,
parameter w043 = 1,
parameter w053 = 1,
parameter w004 = 1,
parameter w014 = 1,
parameter w024 = 1,
parameter w034 = 1,
parameter w044 = 1,
parameter w054 = 1,
parameter w005 = 1,
parameter w015 = 1,
parameter w025 = 1,
parameter w035 = 1,
parameter w045 = 1,
parameter w055 = 1,
parameter w006 = 1,
parameter w016 = 1,
parameter w026 = 1,
parameter w036 = 1,
parameter w046 = 1,
parameter w056 = 1,
parameter w007 = 1,
parameter w017 = 1,
parameter w027 = 1,
parameter w037 = 1,
parameter w047 = 1,
parameter w057 = 1,
parameter w008 = 1,
parameter w018 = 1,
parameter w028 = 1,
parameter w038 = 1,
parameter w048 = 1,
parameter w058 = 1,
parameter bias_0 = 1,
parameter w100 = 1,
parameter w110 = 1,
parameter w120 = 1,
parameter w130 = 1,
parameter w140 = 1,
parameter w150 = 1,
parameter w101 = 1,
parameter w111 = 1,
parameter w121 = 1,
parameter w131 = 1,
parameter w141 = 1,
parameter w151 = 1,
parameter w102 = 1,
parameter w112 = 1,
parameter w122 = 1,
parameter w132 = 1,
parameter w142 = 1,
parameter w152 = 1,
parameter w103 = 1,
parameter w113 = 1,
parameter w123 = 1,
parameter w133 = 1,
parameter w143 = 1,
parameter w153 = 1,
parameter w104 = 1,
parameter w114 = 1,
parameter w124 = 1,
parameter w134 = 1,
parameter w144 = 1,
parameter w154 = 1,
parameter w105 = 1,
parameter w115 = 1,
parameter w125 = 1,
parameter w135 = 1,
parameter w145 = 1,
parameter w155 = 1,
parameter w106 = 1,
parameter w116 = 1,
parameter w126 = 1,
parameter w136 = 1,
parameter w146 = 1,
parameter w156 = 1,
parameter w107 = 1,
parameter w117 = 1,
parameter w127 = 1,
parameter w137 = 1,
parameter w147 = 1,
parameter w157 = 1,
parameter w108 = 1,
parameter w118 = 1,
parameter w128 = 1,
parameter w138 = 1,
parameter w148 = 1,
parameter w158 = 1,
parameter bias_1 = 2,
parameter w200 = 1,
parameter w210 = 1,
parameter w220 = 1,
parameter w230 = 1,
parameter w240 = 1,
parameter w250 = 1,
parameter w201 = 1,
parameter w211 = 1,
parameter w221 = 1,
parameter w231 = 1,
parameter w241 = 1,
parameter w251 = 1,
parameter w202 = 1,
parameter w212 = 1,
parameter w222 = 1,
parameter w232 = 1,
parameter w242 = 1,
parameter w252 = 1,
parameter w203 = 1,
parameter w213 = 1,
parameter w223 = 1,
parameter w233 = 1,
parameter w243 = 1,
parameter w253 = 1,
parameter w204 = 1,
parameter w214 = 1,
parameter w224 = 1,
parameter w234 = 1,
parameter w244 = 1,
parameter w254 = 1,
parameter w205 = 1,
parameter w215 = 1,
parameter w225 = 1,
parameter w235 = 1,
parameter w245 = 1,
parameter w255 = 1,
parameter w206 = 1,
parameter w216 = 1,
parameter w226 = 1,
parameter w236 = 1,
parameter w246 = 1,
parameter w256 = 1,
parameter w207 = 1,
parameter w217 = 1,
parameter w227 = 1,
parameter w237 = 1,
parameter w247 = 1,
parameter w257 = 1,
parameter w208 = 1,
parameter w218 = 1,
parameter w228 = 1,
parameter w238 = 1,
parameter w248 = 1,
parameter w258 = 1,
parameter bias_2 = 3,
parameter w300 = 1,
parameter w310 = 1,
parameter w320 = 1,
parameter w330 = 1,
parameter w340 = 1,
parameter w350 = 1,
parameter w301 = 1,
parameter w311 = 1,
parameter w321 = 1,
parameter w331 = 1,
parameter w341 = 1,
parameter w351 = 1,
parameter w302 = 1,
parameter w312 = 1,
parameter w322 = 1,
parameter w332 = 1,
parameter w342 = 1,
parameter w352 = 1,
parameter w303 = 1,
parameter w313 = 1,
parameter w323 = 1,
parameter w333 = 1,
parameter w343 = 1,
parameter w353 = 1,
parameter w304 = 1,
parameter w314 = 1,
parameter w324 = 1,
parameter w334 = 1,
parameter w344 = 1,
parameter w354 = 1,
parameter w305 = 1,
parameter w315 = 1,
parameter w325 = 1,
parameter w335 = 1,
parameter w345 = 1,
parameter w355 = 1,
parameter w306 = 1,
parameter w316 = 1,
parameter w326 = 1,
parameter w336 = 1,
parameter w346 = 1,
parameter w356 = 1,
parameter w307 = 1,
parameter w317 = 1,
parameter w327 = 1,
parameter w337 = 1,
parameter w347 = 1,
parameter w357 = 1,
parameter w308 = 1,
parameter w318 = 1,
parameter w328 = 1,
parameter w338 = 1,
parameter w348 = 1,
parameter w358 = 1,
parameter bias_3 = 4,
parameter w400 = 1,
parameter w410 = 1,
parameter w420 = 1,
parameter w430 = 1,
parameter w440 = 1,
parameter w450 = 1,
parameter w401 = 1,
parameter w411 = 1,
parameter w421 = 1,
parameter w431 = 1,
parameter w441 = 1,
parameter w451 = 1,
parameter w402 = 1,
parameter w412 = 1,
parameter w422 = 1,
parameter w432 = 1,
parameter w442 = 1,
parameter w452 = 1,
parameter w403 = 1,
parameter w413 = 1,
parameter w423 = 1,
parameter w433 = 1,
parameter w443 = 1,
parameter w453 = 1,
parameter w404 = 1,
parameter w414 = 1,
parameter w424 = 1,
parameter w434 = 1,
parameter w444 = 1,
parameter w454 = 1,
parameter w405 = 1,
parameter w415 = 1,
parameter w425 = 1,
parameter w435 = 1,
parameter w445 = 1,
parameter w455 = 1,
parameter w406 = 1,
parameter w416 = 1,
parameter w426 = 1,
parameter w436 = 1,
parameter w446 = 1,
parameter w456 = 1,
parameter w407 = 1,
parameter w417 = 1,
parameter w427 = 1,
parameter w437 = 1,
parameter w447 = 1,
parameter w457 = 1,
parameter w408 = 1,
parameter w418 = 1,
parameter w428 = 1,
parameter w438 = 1,
parameter w448 = 1,
parameter w458 = 1,
parameter bias_4 = 5,
parameter w500 = 1,
parameter w510 = 1,
parameter w520 = 1,
parameter w530 = 1,
parameter w540 = 1,
parameter w550 = 1,
parameter w501 = 1,
parameter w511 = 1,
parameter w521 = 1,
parameter w531 = 1,
parameter w541 = 1,
parameter w551 = 1,
parameter w502 = 1,
parameter w512 = 1,
parameter w522 = 1,
parameter w532 = 1,
parameter w542 = 1,
parameter w552 = 1,
parameter w503 = 1,
parameter w513 = 1,
parameter w523 = 1,
parameter w533 = 1,
parameter w543 = 1,
parameter w553 = 1,
parameter w504 = 1,
parameter w514 = 1,
parameter w524 = 1,
parameter w534 = 1,
parameter w544 = 1,
parameter w554 = 1,
parameter w505 = 1,
parameter w515 = 1,
parameter w525 = 1,
parameter w535 = 1,
parameter w545 = 1,
parameter w555 = 1,
parameter w506 = 1,
parameter w516 = 1,
parameter w526 = 1,
parameter w536 = 1,
parameter w546 = 1,
parameter w556 = 1,
parameter w507 = 1,
parameter w517 = 1,
parameter w527 = 1,
parameter w537 = 1,
parameter w547 = 1,
parameter w557 = 1,
parameter w508 = 1,
parameter w518 = 1,
parameter w528 = 1,
parameter w538 = 1,
parameter w548 = 1,
parameter w558 = 1,
parameter bias_5 = 6,
parameter w600 = 1,
parameter w610 = 1,
parameter w620 = 1,
parameter w630 = 1,
parameter w640 = 1,
parameter w650 = 1,
parameter w601 = 1,
parameter w611 = 1,
parameter w621 = 1,
parameter w631 = 1,
parameter w641 = 1,
parameter w651 = 1,
parameter w602 = 1,
parameter w612 = 1,
parameter w622 = 1,
parameter w632 = 1,
parameter w642 = 1,
parameter w652 = 1,
parameter w603 = 1,
parameter w613 = 1,
parameter w623 = 1,
parameter w633 = 1,
parameter w643 = 1,
parameter w653 = 1,
parameter w604 = 1,
parameter w614 = 1,
parameter w624 = 1,
parameter w634 = 1,
parameter w644 = 1,
parameter w654 = 1,
parameter w605 = 1,
parameter w615 = 1,
parameter w625 = 1,
parameter w635 = 1,
parameter w645 = 1,
parameter w655 = 1,
parameter w606 = 1,
parameter w616 = 1,
parameter w626 = 1,
parameter w636 = 1,
parameter w646 = 1,
parameter w656 = 1,
parameter w607 = 1,
parameter w617 = 1,
parameter w627 = 1,
parameter w637 = 1,
parameter w647 = 1,
parameter w657 = 1,
parameter w608 = 1,
parameter w618 = 1,
parameter w628 = 1,
parameter w638 = 1,
parameter w648 = 1,
parameter w658 = 1,
parameter bias_6 = 7,
parameter w700 = 1,
parameter w710 = 1,
parameter w720 = 1,
parameter w730 = 1,
parameter w740 = 1,
parameter w750 = 1,
parameter w701 = 1,
parameter w711 = 1,
parameter w721 = 1,
parameter w731 = 1,
parameter w741 = 1,
parameter w751 = 1,
parameter w702 = 1,
parameter w712 = 1,
parameter w722 = 1,
parameter w732 = 1,
parameter w742 = 1,
parameter w752 = 1,
parameter w703 = 1,
parameter w713 = 1,
parameter w723 = 1,
parameter w733 = 1,
parameter w743 = 1,
parameter w753 = 1,
parameter w704 = 1,
parameter w714 = 1,
parameter w724 = 1,
parameter w734 = 1,
parameter w744 = 1,
parameter w754 = 1,
parameter w705 = 1,
parameter w715 = 1,
parameter w725 = 1,
parameter w735 = 1,
parameter w745 = 1,
parameter w755 = 1,
parameter w706 = 1,
parameter w716 = 1,
parameter w726 = 1,
parameter w736 = 1,
parameter w746 = 1,
parameter w756 = 1,
parameter w707 = 1,
parameter w717 = 1,
parameter w727 = 1,
parameter w737 = 1,
parameter w747 = 1,
parameter w757 = 1,
parameter w708 = 1,
parameter w718 = 1,
parameter w728 = 1,
parameter w738 = 1,
parameter w748 = 1,
parameter w758 = 1,
parameter bias_7 = 8
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
In_3,
In_4,
In_5,
valid_out,
Out_0,
Out_1,
Out_2,
Out_3,
Out_4,
Out_5,
Out_6,
Out_7
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3,In_4,In_5;
output reg valid_out;
output reg [Datawidth-1:0] Out_0;
output reg [Datawidth-1:0] Out_1;
output reg [Datawidth-1:0] Out_2;
output reg [Datawidth-1:0] Out_3;
output reg [Datawidth-1:0] Out_4;
output reg [Datawidth-1:0] Out_5;
output reg [Datawidth-1:0] Out_6;
output reg [Datawidth-1:0] Out_7;

wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3,save_Out_4,save_Out_5,
							save_Out_6,save_Out_7;
							
wire 	valid_out_0,valid_out_1,valid_out_2,valid_out_3,
		valid_out_4,valid_out_5,valid_out_6,valid_out_7;

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
	end
	else begin
		if(valid_out_0 ==1'd1 && valid_out_1 ==1'd1 && valid_out_2 ==1'd1 && valid_out_3 ==1'd1
		&& valid_out_4 ==1'd1 && valid_out_5 ==1'd1 && valid_out_6 ==1'd1 && valid_out_7 ==1'd1) begin
			Out_0<=save_Out_0;
			Out_1<=save_Out_1;	
			Out_2<=save_Out_2;
			Out_3<=save_Out_3;
			Out_4<=save_Out_4;
			Out_5<=save_Out_5;	
			Out_6<=save_Out_6;
			Out_7<=save_Out_7;
			valid_out<=1'd1;
		end
		else begin
		valid_out<=1'd0;
		end
	end
end

// block
 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w040),
.w41(w041),
.w42(w042),
.w43(w043),
.w44(w044),
.w45(w045),
.w46(w046),
.w47(w047),
.w48(w048),
.w50(w050),
.w51(w051),
.w52(w052),
.w53(w053),
.w54(w054),
.w55(w055),
.w56(w056),
.w57(w057),
.w58(w058),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_0),
.valid_out(valid_out_0)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w140),
.w41(w141),
.w42(w142),
.w43(w143),
.w44(w144),
.w45(w145),
.w46(w146),
.w47(w147),
.w48(w148),
.w50(w150),
.w51(w151),
.w52(w152),
.w53(w153),
.w54(w154),
.w55(w155),
.w56(w156),
.w57(w157),
.w58(w158),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_1),
.valid_out(valid_out_1)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w240),
.w41(w241),
.w42(w242),
.w43(w243),
.w44(w244),
.w45(w245),
.w46(w246),
.w47(w247),
.w48(w248),
.w50(w250),
.w51(w251),
.w52(w252),
.w53(w253),
.w54(w254),
.w55(w255),
.w56(w256),
.w57(w257),
.w58(w258),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_2),
.valid_out(valid_out_2)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w340),
.w41(w341),
.w42(w342),
.w43(w343),
.w44(w344),
.w45(w345),
.w46(w346),
.w47(w347),
.w48(w348),
.w50(w350),
.w51(w351),
.w52(w352),
.w53(w353),
.w54(w354),
.w55(w355),
.w56(w356),
.w57(w357),
.w58(w358),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_3),
.valid_out(valid_out_3)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w440),
.w41(w441),
.w42(w442),
.w43(w443),
.w44(w444),
.w45(w445),
.w46(w446),
.w47(w447),
.w48(w448),
.w50(w450),
.w51(w451),
.w52(w452),
.w53(w453),
.w54(w454),
.w55(w455),
.w56(w456),
.w57(w457),
.w58(w458),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_4),
.valid_out(valid_out_4)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w540),
.w41(w541),
.w42(w542),
.w43(w543),
.w44(w544),
.w45(w545),
.w46(w546),
.w47(w547),
.w48(w548),
.w50(w550),
.w51(w551),
.w52(w552),
.w53(w553),
.w54(w554),
.w55(w555),
.w56(w556),
.w57(w557),
.w58(w558),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_5),
.valid_out(valid_out_5)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w640),
.w41(w641),
.w42(w642),
.w43(w643),
.w44(w644),
.w45(w645),
.w46(w646),
.w47(w647),
.w48(w648),
.w50(w650),
.w51(w651),
.w52(w652),
.w53(w653),
.w54(w654),
.w55(w655),
.w56(w656),
.w57(w657),
.w58(w658),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_6),
.valid_out(valid_out_6)
);

 
CONV_2D_1_layer_6_channel_size_3 #(
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
.w40(w740),
.w41(w741),
.w42(w742),
.w43(w743),
.w44(w744),
.w45(w745),
.w46(w746),
.w47(w747),
.w48(w748),
.w50(w750),
.w51(w751),
.w52(w752),
.w53(w753),
.w54(w754),
.w55(w755),
.w56(w756),
.w57(w757),
.w58(w758),
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
.In_4(In_4),
.In_5(In_5),
.Out(save_Out_7),
.valid_out(valid_out_7)
);


endmodule 