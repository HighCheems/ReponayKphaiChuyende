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


module RGB_to_Gray_tb();
    reg CLK,In_Valid;
    wire Out_Valid;
    reg [7:0] R;
    reg [7:0] G;
    reg [7:0] B;
    wire [7:0] Gray;

RGB_to_Gray A(
    .CLK(CLK),
    .R(R),
    .G(G),
    .B(B),
    .In_Valid(In_Valid),
    .Gray(Gray),
    .Out_Valid(Out_Valid));
// para
parameter oneframe=40000,frames=52;
// CLK
always #10 CLK<=~CLK;

// variables
integer numb,i,count;
integer outGray,f_R,f_G,f_B;
reg [7:0] inR [0:oneframe];
reg [7:0] inG [0:oneframe];
reg [7:0] inB [0:oneframe];

// do
    initial begin
    CLK=1'd0;
    In_Valid=1'd0;
    i=0; 
    numb=0;
	outGray=$fopen($sformatf("/home/baotran/Documents/week4/Gray_RTL_%0d.txt",numb),"w");
	f_R=$fopen($sformatf("/home/baotran/Documents/week4/red_%0d.txt",numb),"r");
	//$readmemb($sformatf("green_%0d.txt",numb),inG)
	f_G=$fopen($sformatf("/home/baotran/Documents/week4/green_%0d.txt",numb),"r");
	//$readmemb($sformatf("blue_%0d.txt",numb),inB);
	f_B=$fopen($sformatf("/home/baotran/Documents/week4/blue_%0d.txt",numb),"r");
    fork
	#5 In_Valid=1'd1;
	begin
	#10000 In_Valid=1'd0;
	end
    join

        //G=inG[i];
        //B=inB[i];
    	#20000 $finish;
	end



always @(posedge CLK) begin
	if(Out_Valid && Gray>=8'd0 && Gray <=8'd255) begin
	$fwrite(outGray,"%b\n",Gray);
	end
	if(In_Valid) begin
	$fscanf(f_R,"%b\n",R);
	$fscanf(f_G,"%b\n",G);
	$fscanf(f_B,"%b\n",B);
	end
end

endmodule