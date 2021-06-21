`timescale 1ns/1ps

module testbench();
parameter IMG_Width=14; 
parameter IMG_Height=14;
parameter Datawidth=32; 
parameter Channel=3;
parameter Stride=2;
parameter ReLU=0;

reg clk,rst,valid_in;
reg [Datawidth-1:0] In_0,In_1,In_2;
wire [Datawidth-1:0] Out_0,Out_1,Out_2,Out_3;
wire valid_out;

always #20 clk = ~clk;

integer i;

initial begin
  clk=1'd0;
  rst=1'd0;
  #10
  rst=1'd1;
  
  #20
  rst=1'd0;
  valid_in=1'd1;
  for (i=1;i<=IMG_Width*IMG_Height*Channel;i=i+1) begin
    In_0=i;
    In_1=i;
    In_2=i;
    #40;
  end
end


Layer1_conv7x7_maxpool3x3_stride2_depth4 # (
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
)
stage1(
clk,
rst,
valid_in,
In_0,
In_1,
In_2,
valid_out,
Out_0,
Out_1,
Out_2,
Out_3
);

endmodule
