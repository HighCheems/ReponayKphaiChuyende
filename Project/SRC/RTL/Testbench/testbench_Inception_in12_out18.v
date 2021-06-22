`timescale 1ns/1ps

module testbench();
parameter IMG_Width=5; 
parameter IMG_Height=5;
parameter Datawidth=32; 
parameter Channel=12;
parameter Stride=1;
parameter ReLU=0;

reg clk,rst,valid_in;
reg [Datawidth-1:0] In_0,
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
wire [Datawidth-1:0] Out_0,
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
Out_17;
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
    In_3=i;
    In_4=i;
    In_5=i;
    In_6=i;
    In_7=i;
    In_8=i;
    In_9=i;
    In_10=i;
    In_11=i;
    #40;
  end
end


Inception_in12_out18 # (
.IMG_Width(IMG_Width), 
.IMG_Height(IMG_Height), 
.Datawidth(Datawidth),  
.Stride(Stride),
.ReLU(ReLU)
)
inception_1(
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

endmodule


