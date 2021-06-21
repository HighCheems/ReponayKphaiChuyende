module Layer1_conv7x7_maxpool3x3_stride2_depth4 # (
parameter IMG_Width=14, 
parameter IMG_Height=14, 
parameter Datawidth=16,  
parameter Stride=2,
parameter ReLU=0
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
valid_out,
Out_0,
Out_1,
Out_2,
Out_3
);

// port map
localparam IMG_Width_after=IMG_Width/2;
localparam IMG_Height_after=IMG_Height/2;

input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2;
output reg valid_out;
output reg [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3;

//local
wire valid_out_conv;
wire [Datawidth-1:0] conv_out_0,conv_out_1,conv_out_2,conv_out_3;
wire [Datawidth-1:0] save_Out_0,save_Out_1,save_Out_2,save_Out_3;
wire save_valid_out;

wire [Datawidth-1:0] outff_0,outff_1,outff_2,outff_3;
reg [Datawidth-1:0] counter;
reg read;
reg valid_in_maxpool;
reg [Datawidth-1:0] counterfifo;
reg readdone;
// clk
always @(posedge clk) begin
	if(rst==1'd1) begin
		valid_out<=1'd0;
		Out_0<={Datawidth{1'b0}};
		Out_1<={Datawidth{1'b0}};	
		Out_2<={Datawidth{1'b0}};
		Out_3<={Datawidth{1'b0}};
		counter<=0;
		read<=1'd0;
		readdone<=1'd0;
		counterfifo<=0;
	end
	else begin
		if(valid_out_conv==1'd1) begin
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
			valid_out<=1'd1;
		end
		else begin
		valid_out<=1'd0;
		end
		// read data from fifo
		if(counter==IMG_Width_after*IMG_Height_after-1)
		  read<=1'd1;
	  end
	  // counter help count the position in matrix
	  if(read==1'd1)
	    counterfifo <= counterfifo+1;
	  // if read done => readdone =1
	  if(counterfifo==IMG_Width_after*IMG_Height_after-1)
	    readdone<=1'd1;
	  
	  // when read, valid  in with data to maxpool
	  if(read==1'd1)
	    valid_in_maxpool<=1'd1;
	  else
	    valid_in_maxpool<=1'd0;
end


CONV_2D_4_Kernel_3_Channel_7 #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Width), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU))
layer_1(
.clk(clk),.rst(rst),.valid_in(valid_in),
.In_0(In_0),
.In_1(In_1),
.In_2(In_2),
.valid_out(valid_out_conv),
.Out_0(conv_out_0),
.Out_1(conv_out_1),
.Out_2(conv_out_2),
.Out_3(conv_out_3)
);

fifo #(
    .Datawidth(Datawidth),
    .DEPTH(64)
)
fifo_0(
    .data_in(conv_out_0),
    .clk(clk),
    .write(valid_out_conv),
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
    .data_in(conv_out_1),
    .clk(clk),
    .write(valid_out_conv),
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
    .data_in(conv_out_2),
    .clk(clk),
    .write(valid_out_conv),
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
    .data_in(conv_out_3),
    .clk(clk),
    .write(valid_out_conv),
    .read(read),
	  .rst(rst),
    .data_out(outff_3),
    .fifo_full(),
    .fifo_empty()
);

MAXPOOL_4_kernel_size_3_2D #(
.IMG_Width(IMG_Width_after), 
.IMG_Height(IMG_Width_after), 
.Datawidth(Datawidth), 
.Stride(Stride),
.ReLU(ReLU))
block_max(
.In_0((readdone==1'd0)? outff_0:  32'd0),
.In_1((readdone==1'd0)? outff_1:  32'd0),
.In_2((readdone==1'd0)? outff_2:  32'd0),	
.In_3((readdone==1'd0)? outff_3:  32'd0),
//.In_0(conv_out_0),
//.In_1(conv_out_1),
//.In_2(conv_out_2),	
//.In_3(conv_out_3),
.clk(clk),
.rst(rst),
.valid_in(valid_in_maxpool),
.valid_out(save_valid_out),
.Out_0(save_Out_0),
.Out_1(save_Out_1),
.Out_2(save_Out_2),
.Out_3(save_Out_3)	
);




endmodule
