module CONV_3D_1_kernel_size_3_channel_3 #(
parameter IMG_Width=3, 
parameter IMG_Height=3, 
parameter Datawidth=32, 
parameter Stride=1,
parameter ReLU=0
)
(
clk,rst,valid_in,
In_0,
In_1,
In_2,
k0,k1,k2,k3,k4,k5,k6,k7,k8,
load_kernel,
load_kernel_done,
Out,
Out_0,Out_1,Out_2,
valid_out,
counter_kernel,
valid_out_0,valid_out_1,valid_out_2
);
localparam Clock_Valid=IMG_Width+2;
// port 
input wire clk,rst,valid_in;
input wire [Datawidth-1:0] In_0,In_1,In_2;
input wire [Datawidth-1:0] k0,k1,k2,k3,k4,k5,k6,k7,k8;

input wire load_kernel;

output reg load_kernel_done;
output reg [Datawidth-1:0] Out;
output wire [Datawidth-1:0] Out_0,Out_1,Out_2;
output reg valid_out;
output reg [2:0] counter_kernel;
output valid_out_0,valid_out_1,valid_out_2;
	//local
	reg [Datawidth-1:0] rk0,rk1,rk2,rk3,rk4,rk5,rk6,rk7,rk8; //kernel conv 0
	reg [Datawidth-1:0] gk0,gk1,gk2,gk3,gk4,gk5,gk6,gk7,gk8; //kernel conv 1
	reg [Datawidth-1:0] bk0,bk1,bk2,bk3,bk4,bk5,bk6,bk7,bk8; //kernel conv 2

	wire valid_out_0;
	wire valid_out_1;
	wire valid_out_2;
	
	//wire [Datawidth-1:0] Out_0,Out_1,Out_2;
	//reg [1:0] counter_kernel;
// code
	always @(posedge clk) begin
	//clr
		if(rst) begin
			load_kernel_done<=1'd0;
			valid_out<=1'd0;
			counter_kernel<='d0;
			Out <='b0;
			
				rk0 <= 0;
				rk1 <= 0;
				rk2 <= 0;
				rk3 <= 0;
				rk4 <= 0;
				rk5 <= 0;
				rk6 <= 0;
				rk7 <= 0;
				rk8 <= 0;
				
				gk0 <= 0;
				gk1 <= 0;
				gk2 <= 0;
				gk3 <= 0;
				gk4 <= 0;
				gk5 <= 0;
				gk6 <= 0;
				gk7 <= 0;
				gk8 <= 0;

				bk0 <= 0;
				bk1 <= 0;
				bk2 <= 0;
				bk3 <= 0;
				bk4 <= 0;
				bk5 <= 0;
				bk6 <= 0;
				bk7 <= 0;
				bk8 <= 0;				
			
		end
		else begin
			if(load_kernel==1'd1) begin
				counter_kernel <=counter_kernel+1;
			end else begin counter_kernel <= 'd0; end
			
			if(counter_kernel==3) begin
				load_kernel_done<=1'd1;
				counter_kernel<=counter_kernel;
			end
			
			if(counter_kernel==0) begin
				rk0 <= k0;
				rk1 <= k1;
				rk2 <= k2;
				rk3 <= k3;
				rk4 <= k4;
				rk5 <= k5;
				rk6 <= k6;
				rk7 <= k7;
				rk8 <= k8;
			end
			
			if(counter_kernel==1) begin
				gk0 <= k0;
				gk1 <= k1;
				gk2 <= k2;
				gk3 <= k3;
				gk4 <= k4;
				gk5 <= k5;
				gk6 <= k6;
				gk7 <= k7;
				gk8 <= k8;
			end
			
			if(counter_kernel==2) begin
				bk0 <= k0;
				bk1 <= k1;
				bk2 <= k2;
				bk3 <= k3;
				bk4 <= k4;
				bk5 <= k5;
				bk6 <= k6;
				bk7 <= k7;
				bk8 <= k8;
			end
			
			if(valid_out_0==1'd1 && valid_out_1==1'd1 && valid_out_2==1'd1) begin
				valid_out<=1'd1;
				Out<=_Out;
			end
			else begin valid_out<=1'd0; end
		end
	end
	

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Clock_Valid(Clock_Valid), 
.Stride(Stride),
.ReLU(ReLU)
) conv_block_0
(
	.In(In_0),
	.CLK(clk),.CLR(rst),
	.K0(rk0),.K1(rk1),.K2(rk2),.K3(rk3),.K4(rk4),.K5(rk5),.K6(rk6),.K7(rk7),.K8(rk8), // Kernel parameter
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_0),
	.Out(Out_0)
);

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Clock_Valid(Clock_Valid), 
.Stride(Stride),
.ReLU(ReLU)
) conv_block_1
(
	.In(In_1),
	.CLK(clk),.CLR(rst),
	.K0(gk0),.K1(gk1),.K2(gk2),.K3(gk3),.K4(gk4),.K5(gk5),.K6(gk6),.K7(gk7),.K8(gk8), // Kernel parameter
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_1),
	.Out(Out_1)
);

CONV_kernel_size_3_2D #(
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth), 
.Clock_Valid(Clock_Valid), 
.Stride(Stride),
.ReLU(ReLU)
) conv_block_2
(
	.In(In_2),
	.CLK(clk),.CLR(rst),
	.K0(bk0),.K1(bk1),.K2(bk2),.K3(bk3),.K4(bk4),.K5(bk5),.K6(bk6),.K7(bk7),.K8(bk8), // Kernel parameter
	.Valid_IN(valid_in),
	.Valid_OUT(valid_out_2),
	.Out(Out_2)
);

// have 3 valid
wire [Datawidth-1:0] _Out;
assign _Out=Out_0+Out_1+Out_2;

	
endmodule
