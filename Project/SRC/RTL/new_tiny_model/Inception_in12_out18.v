module Inception_in12_out18 # (
parameter IMG_Width=5, 
parameter IMG_Height=5, 
parameter Datawidth=32,  
parameter Stride=1,
parameter ReLU=0
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
In_3,
In_4,
In_5,
In_6,
In_7,
In_8,
In_9,
In_10,
In_11,
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
Out_11,
Out_12,
Out_13,
Out_14,
Out_15,
Out_16,
Out_17
);

// port map
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,
In_1,
In_2,
In_3,
In_4,
In_5,
In_6,
In_7,
In_8,
In_9,
In_10,
In_11;
output reg valid_out;
output wire [Datawidth-1:0] Out_0,
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
Out_11,
Out_14,
Out_15,
Out_16,
Out_17;

output reg [Datawidth-1:0] 
Out_12,
Out_13;
// local
wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3,
save_Out_4,save_Out_5,save_Out_6,save_Out_7,save_Out_8,save_Out_9,
save_Out_10,save_Out_11,save_Out_12,save_Out_13,save_Out_14,save_Out_15,
save_Out_16,save_Out_17;

wire valid_out_conv_0;
wire [Datawidth-1:0] Out_conv_0_0,Out_conv_0_1,Out_conv_0_2,Out_conv_0_3,Out_conv_0_4,Out_conv_0_5;

wire valid_out_conv_1;
wire [Datawidth-1:0] Out_conv_1_0,Out_conv_1_1,Out_conv_1_2,Out_conv_1_3,
Out_conv_1_4,Out_conv_1_5,Out_conv_1_6,Out_conv_1_7,Out_conv_1_8,Out_conv_1_9,
Out_conv_1_10,Out_conv_1_11,Out_conv_1_12,Out_conv_1_13,Out_conv_1_14,Out_conv_1_15;

wire valid_out_0,valid_out_1,valid_out_2,valid_out_3;

wire [Datawidth-1:0] Out_max_0,Out_max_1,Out_max_2,Out_max_3,Out_max_4,Out_max_5,Out_max_6,Out_max_7,
Out_max_8,Out_max_9,Out_max_10,Out_max_11;

wire read;
reg done;

// clk
always @(posedge clk) begin
  if(rst) begin
    valid_out<=1'd0;
    Out_12<={Datawidth{1'd0}};
    Out_13<={Datawidth{1'd0}};
  end
  else begin
    if(read==1'd1) begin
      valid_out<=1'd1;
      Out_12<=save_Out_12;
      Out_13<=save_Out_13;
    end
    else begin
      valid_out<=1'd0;
    end
  end
end
assign read=(valid_out_2==1'd1) ? 1'd1 : 1'd0;

// block
CONV_2D_4_layer_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU))
conv_1x1_block_4layer
(
.clk(clk),.rst(rst),.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.valid_out(valid_out_0),
.Out_0(save_Out_0),
.Out_1(save_Out_1),
.Out_2(save_Out_2),
.Out_3(save_Out_3)
);

// save data
//save data
fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_0(
    .data_in(save_Out_0),
    .clk(clk),
    .write(valid_out_0),
    .read(read),
	  .rst(rst),
    .data_out(Out_0),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_1(
    .data_in(save_Out_1),
    .clk(clk),
    .write(valid_out_0),
    .read(read),
	  .rst(rst),
    .data_out(Out_1),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_2(
    .data_in(save_Out_2),
    .clk(clk),
    .write(valid_out_0),
    .read(read),
	  .rst(rst),
    .data_out(Out_2),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_3(
    .data_in(save_Out_3),
    .clk(clk),
    .write(valid_out_0),
    .read(read),
	  .rst(rst),
    .data_out(Out_3),
    .fifo_full(),
    .fifo_empty()
);

// ---------------------- 1 ---------------------
CONV_2D_6_layer_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU))
conv_1x1_block_6layer
(
.clk(clk),.rst(rst),.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.valid_out(valid_out_conv_0),
.Out_0(Out_conv_0_0),
.Out_1(Out_conv_0_1),
.Out_2(Out_conv_0_2),
.Out_3(Out_conv_0_3),
.Out_4(Out_conv_0_4),
.Out_5(Out_conv_0_5)
);

CONV_2D_8_layer_6_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU))
conv_3x3_block_8layer
(
.clk(clk),.rst(rst),.valid_in(valid_out_conv_0),
.In_0(Out_conv_0_0),
.In_1(Out_conv_0_1),
.In_2(Out_conv_0_2),
.In_3(Out_conv_0_3),
.In_4(Out_conv_0_4),
.In_5(Out_conv_0_5),
.valid_out(valid_out_1),
.Out_0(save_Out_4),
.Out_1(save_Out_5),
.Out_2(save_Out_6),
.Out_3(save_Out_7),
.Out_4(save_Out_8),
.Out_5(save_Out_9),
.Out_6(save_Out_10),
.Out_7(save_Out_11)
);

//save data
fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_4(
    .data_in(save_Out_4),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_4),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_5(
    .data_in(save_Out_5),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_5),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_6(
    .data_in(save_Out_6),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_6),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_7(
    .data_in(save_Out_7),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_7),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_8(
    .data_in(save_Out_8),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_8),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_9(
    .data_in(save_Out_9),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_9),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_10(
    .data_in(save_Out_10),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_10),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_11(
    .data_in(save_Out_11),
    .clk(clk),
    .write(valid_out_1),
    .read(read),
	  .rst(rst),
    .data_out(Out_11),
    .fifo_full(),
    .fifo_empty()
);

// ---------------------- 2 ---------------------

CONV_2D_16_layer_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU))
conv_1x1_block_16layer
(
.clk(clk),.rst(rst),.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.valid_out(valid_out_conv_1),
.Out_0(Out_conv_1_0),
.Out_1(Out_conv_1_1),
.Out_2(Out_conv_1_2),
.Out_3(Out_conv_1_3),
.Out_4(Out_conv_1_4),
.Out_5(Out_conv_1_5),
.Out_6(Out_conv_1_6),
.Out_7(Out_conv_1_7),
.Out_8(Out_conv_1_8),
.Out_9(Out_conv_1_9),
.Out_10(Out_conv_1_10),
.Out_11(Out_conv_1_11),
.Out_12(Out_conv_1_12),
.Out_13(Out_conv_1_13),
.Out_14(Out_conv_1_14),
.Out_15(Out_conv_1_15)
);

CONV_2D_2_layer_16_channel_size_5 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU))
conv_5x5_block_2layer
(
.clk(clk),.rst(rst),.valid_in(valid_out_conv_1),
.In_0(Out_conv_1_0),
.In_1(Out_conv_1_1),
.In_2(Out_conv_1_2),
.In_3(Out_conv_1_3),
.In_4(Out_conv_1_4),
.In_5(Out_conv_1_5),
.In_6(Out_conv_1_6),
.In_7(Out_conv_1_7),
.In_8(Out_conv_1_8),
.In_9(Out_conv_1_9),
.In_10(Out_conv_1_10),
.In_11(Out_conv_1_11),
.In_12(Out_conv_1_12),
.In_13(Out_conv_1_13),
.In_14(Out_conv_1_14),
.In_15(Out_conv_1_15),
.valid_out(valid_out_2),
.Out_0(save_Out_12),
.Out_1(save_Out_13)
);

// ---------------------- 3 ---------------------

MAXPOOL_12_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU))
maxpool_3x3_block_12layer
(
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.In_4(In_4),
.In_5(In_5),
.In_6(In_6),
.In_7(In_7),
.In_8(In_8),
.In_9(In_9),
.In_10(In_10),
.In_11(In_11),
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.valid_out(valid_out_maxpool),
.Out_0(Out_max_0),
.Out_1(Out_max_1),
.Out_2(Out_max_2),
.Out_3(Out_max_3),
.Out_4(Out_max_4),
.Out_5(Out_max_5),
.Out_6(Out_max_6),
.Out_7(Out_max_7),
.Out_8(Out_max_8),
.Out_9(Out_max_9),
.Out_10(Out_max_10),
.Out_11(Out_max_11)
);

CONV_2D_4_layer_12_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU))
conv_1x1_block_4layer_after_pool
(
.clk(clk),.rst(rst),.valid_in(valid_out_maxpool),
.In_0(Out_max_0),
.In_1(Out_max_1),
.In_2(Out_max_2),
.In_3(Out_max_3),
.In_4(Out_max_4),
.In_5(Out_max_5),
.In_6(Out_max_6),
.In_7(Out_max_7),
.In_8(Out_max_8),
.In_9(Out_max_9),
.In_10(Out_max_10),
.In_11(Out_max_11),
.valid_out(valid_out_3),
.Out_0(save_Out_14),
.Out_1(save_Out_15),
.Out_2(save_Out_16),
.Out_3(save_Out_17)
);

// save data
fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_14(
    .data_in(save_Out_14),
    .clk(clk),
    .write(valid_out_3),
    .read(read),
	  .rst(rst),
    .data_out(Out_14),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_15(
    .data_in(save_Out_15),
    .clk(clk),
    .write(valid_out_3),
    .read(read),
	  .rst(rst),
    .data_out(Out_15),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_16(
    .data_in(save_Out_16),
    .clk(clk),
    .write(valid_out_3),
    .read(read),
	  .rst(rst),
    .data_out(Out_16),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_17(
    .data_in(save_Out_17),
    .clk(clk),
    .write(valid_out_3),
    .read(read),
	  .rst(rst),
    .data_out(Out_17),
    .fifo_full(),
    .fifo_empty()
);



endmodule


