`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2021 03:06:54 PM
// Design Name: 
// Module Name: RGB_to_Gray_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
parameter width = 200;
parameter height = 200;
parameter pixel = width*height;
parameter frame = 52;

module RGB_to_Gray_tb();
    reg CLK,In_Valid;
    reg [7:0] R;
    reg [7:0] G;
    reg [7:0] B;
    wire Out_Valid;
    wire [7:0] Gray;
    

    RGB_to_Gray getGray(
        .CLK(CLK),
        .R(R),
        .G(G),
        .B(B),
        .In_Valid(In_Valid),
        .Gray(Gray),
        .Out_Valid(Out_Valid));


    always #10 CLK<=~CLK;

//Var
    integer i,j;
    integer numb_r,numb_w;
    reg get_in;
    integer outGray,f_R,f_G,f_B;


//Wave
    initial begin
        CLK=1'd0;
        In_Valid=1'd0;
        i=0; 
        j=0;
        numb_r=0;
        numb_w=0;
        fork
           #5 In_Valid=1'd1; 
	       #10000 In_Valid=1'd0; 
	       #10050 In_Valid=1'd1;
	       #15000 In_Valid=1'd0;
	       #15500 In_Valid=1'd1;
        join
	end

//Read input
always @(numb_r) begin
    if(numb_r != frame) begin
	   f_R=$fopen($sformatf("/home/cheems/Assignments/Week4/Datasets/Text/frame%0d_R.txt",numb_r),"r");
	   f_G=$fopen($sformatf("/home/cheems/Assignments/Week4/Datasets/Text/frame%0d_G.txt",numb_r),"r");
	   f_B=$fopen($sformatf("/home/cheems/Assignments/Week4/Datasets/Text/frame%0d_B.txt",numb_r),"r");
	end
end

//Write output
always @(numb_w) begin
	if (numb_w != frame) begin
	   outGray=$fopen($sformatf("/home/cheems/Assignments/Week4/Result/Text/Text1/Gray_RTL_frame%0d.txt",numb_w),"w");
	end
end

//
always @(posedge CLK) begin
	if(numb_w==frame) begin
	$finish;
	end
	
	if(In_Valid) begin
	 get_in<=1'd1;
	end else begin
	 get_in<=1'd0;
	end
	
	if(get_in) begin
	$fscanf(f_R,"%d\n",R);
	$fscanf(f_G,"%d\n",G);
	$fscanf(f_B,"%d\n",B);
    i=i+1;
	end
	
	if(Out_Valid) begin
	$fwrite(outGray,"%d\n",Gray);
    j=j+1;
	end 
	
	if(i==pixel && numb_r!=frame) begin
    i=0;
	numb_r=numb_r+1;
	end 

	if(j==pixel) begin
	j=0;
	numb_w=numb_w+1;
	end	
	
	if(numb_r==frame) begin 
	   In_Valid<=1'd0;
	   get_in<=1'd0;
	   i=0;
	end
	
end

endmodule