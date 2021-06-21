module Stage2_conv1_conv3_max3x3_in4_out12 # (
parameter IMG_Width=14, 
parameter IMG_Height=14, 
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
localparam IMG_Width_after=IMG_Width/2;
localparam IMG_Height_after=IMG_Height/2;
localparam Stride_Max=Stride*2;

input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2,In_3;
output reg valid_out;
output reg [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3,Out_4,Out_5,Out_6,Out_7,Out_8,Out_9,Out_10,Out_11;

// local
wire [Datawidth-1:0] Out_conv_0,Out_conv_1,Out_conv_2,Out_conv_3;
wire valid_out_block0;
wire valid_out_block1;
wire [Datawidth-1:0] Out_conv1_0,Out_conv1_1,Out_conv1_2,Out_conv1_3,
                     Out_conv1_4,Out_conv1_5,Out_conv1_6,Out_conv1_7,
                     Out_conv1_8,Out_conv1_9,Out_conv1_10,Out_conv1_11;
wire [Datawidth-1:0] outff_0,outff_1,outff_2,outff_3,
outff_4,outff_5,outff_6,outff_7,
outff_8,outff_9,outff_10,outff_11;

reg [Datawidth-1:0] counter;
reg [Datawidth-1:0] counterfifo;
reg read;
reg readdone;

reg valid_in_maxpool;
wire save_valid_out;

wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3,
save_Out_4,save_Out_5,save_Out_6,save_Out_7,
save_Out_8,save_Out_9,save_Out_10,save_Out_11;

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
		counter<=0;
		read<=1'd0;
		readdone<=1'd0;
		counterfifo<=0;
	end
	else begin
		if(valid_out_block1==1'd1) begin
			counter<=counter+1;
		end
		else begin
			counter<=counter;
		end
		if(save_valid_out==1'd1) begin
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
		// read data from fifo
		if(counter==IMG_Width*IMG_Height-1)
		  read<=1'd1;
	  end
	  // counter help count the position in matrix
	  if(read==1'd1)
	    counterfifo <= counterfifo+1;
	  // if read done => readdone =1
	  if(counterfifo==IMG_Width*IMG_Height-1)
	    readdone<=1'd1;
	  
	  // when read, valid  in with data to maxpool
	  if(read==1'd1)
	    valid_in_maxpool<=1'd1;
	  else
	    valid_in_maxpool<=1'd0;
end
//----------------------------------------------


CONV_2D_4_layer_4_channel_size_1 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.ReLU(ReLU)
)
block0
(
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.In_3(In_3),
.clk(clk),
.rst(rst),
.valid_in(valid_in),
.valid_out(valid_out_block0),
.Out_0(Out_conv_0),
.Out_1(Out_conv_1),
.Out_2(Out_conv_2),
.Out_3(Out_conv_3)
);

CONV_2D_12_layer_4_channel_size_3 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU)
)
block1
(
.clk(clk),
.rst(rst),
.valid_in(valid_out_block0),
.In_0(Out_conv_0),
.In_1(Out_conv_1),
.In_2(Out_conv_2),
.In_3(Out_conv_3),
.valid_out(valid_out_block1),
.Out_0(Out_conv1_0),
.Out_1(Out_conv1_1),
.Out_2(Out_conv1_2),
.Out_3(Out_conv1_3),
.Out_4(Out_conv1_4),
.Out_5(Out_conv1_5),
.Out_6(Out_conv1_6),
.Out_7(Out_conv1_7),
.Out_8(Out_conv1_8),
.Out_9(Out_conv1_9),
.Out_10(Out_conv1_10),
.Out_11(Out_conv1_11)
);
//save data
fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_0(
    .data_in(Out_conv1_0),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_0),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_1(
    .data_in(Out_conv1_1),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_1),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_2(
    .data_in(Out_conv1_2),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_2),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_3(
    .data_in(Out_conv1_3),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_3),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_4(
    .data_in(Out_conv1_4),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_4),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_5(
    .data_in(Out_conv1_5),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_5),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_6(
    .data_in(Out_conv1_6),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_6),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_7(
    .data_in(Out_conv1_7),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_7),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_8(
    .data_in(Out_conv1_8),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_8),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_9(
    .data_in(Out_conv1_9),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_9),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_10(
    .data_in(Out_conv1_10),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_10),
    .fifo_full(),
    .fifo_empty()
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_11(
    .data_in(Out_conv1_11),
    .clk(clk),
    .write(valid_out_block1),
    .read(read),
	  .rst(rst),
    .data_out(outff_11),
    .fifo_full(),
    .fifo_empty()
);

//----------------



MAXPOOL_12_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Stride(Stride_Max),
.ReLU(ReLU)
)
block2
(
.In_0((readdone==1'd0)? outff_0:  32'd0),
.In_1((readdone==1'd0)? outff_1:  32'd0),
.In_2((readdone==1'd0)? outff_2:  32'd0),	
.In_3((readdone==1'd0)? outff_3:  32'd0),	
.In_4((readdone==1'd0)? outff_4:  32'd0),
.In_5((readdone==1'd0)? outff_5:  32'd0),
.In_6((readdone==1'd0)? outff_6:  32'd0),	
.In_7((readdone==1'd0)? outff_7:  32'd0),
.In_8((readdone==1'd0)? outff_8:  32'd0),
.In_9((readdone==1'd0)? outff_9:  32'd0),
.In_10((readdone==1'd0)? outff_10:  32'd0),	
.In_11((readdone==1'd0)? outff_11:  32'd0),
.clk(clk),
.rst(rst),
.valid_in(valid_in_maxpool),
.valid_out(save_valid_out),
.Out_0(save_Out_0),
.Out_1(save_Out_1),
.Out_2(save_Out_2),
.Out_3(save_Out_3),
.Out_4(save_Out_4),
.Out_5(save_Out_5),
.Out_6(save_Out_6),
.Out_7(save_Out_7),
.Out_8(save_Out_8),
.Out_9(save_Out_9),
.Out_10(save_Out_10),
.Out_11(save_Out_11)		
);

endmodule