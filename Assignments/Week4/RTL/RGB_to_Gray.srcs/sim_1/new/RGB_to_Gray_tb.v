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
integer numb,i,numb_write,j;
reg get_in;
integer outGray,f_R,f_G,f_B;
/*reg [7:0] inR [0:oneframe];
reg [7:0] inG [0:oneframe];
reg [7:0] inB [0:oneframe];*/

// --------------------- wave -----------------------------
    initial begin
    CLK=1'd0;
    In_Valid=1'd0;
    i=0; 
    j=0;
    numb=0;
    numb_write=0;
	/*outGray=$fopen($sformatf("/home/baotran/Documents/week4/Gray_RTL_%0d.txt",numb),"w");
	f_R=$fopen($sformatf("/home/baotran/Documents/week4/red_%0d.txt",numb),"r");
	//$readmemb($sformatf("green_%0d.txt",numb),inG)
	f_G=$fopen($sformatf("/home/baotran/Documents/week4/green_%0d.txt",numb),"r");
	//$readmemb($sformatf("blue_%0d.txt",numb),inB);
	f_B=$fopen($sformatf("/home/baotran/Documents/week4/blue_%0d.txt",numb),"r");*/
    fork
    #5 In_Valid=1'd1;
    begin
	#10000 In_Valid=1'd0;
	end
	#10050 In_Valid=1'd1;
	begin
	#15000 In_Valid=1'd0;
	end 
	#15500 In_Valid=1'd1;
    join

        //G=inG[i];
        //B=inB[i];
//    	#20000 $finish;
   	//#20000 $finish;

	end
// --------------------- write -----------------------------
always @(numb_write) begin
    if(numb_write!=frames) begin
	outGray=$fopen($sformatf("/home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/Datasets/Text/frame%0d_Gray_RTL.txt",numb_write),"w");
    end
end
// --------------------- read ------------------------------
always @(numb) begin
    if(numb!=frames) begin
	f_R=$fopen($sformatf("/home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/Datasets/Text/frame%0d_R.txt",numb),"r");
	//$readmemb($sformatf("green_%0d.txt",numb),inG)
	f_G=$fopen($sformatf("/home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/Datasets/Text/frame%0d_G.txt",numb),"r");
	//$readmemb($sformatf("blue_%0d.txt",numb),inB);
	f_B=$fopen($sformatf("/home/baotran/Desktop/ReponayKphaiChuyende/Assignments/Week4/Datasets/Text/frame%0d_B.txt",numb),"r");
	end
end

// --------------------- repeat to finish, frames: 52, pixels of one frame: 200*200=40000 -----------------------------
always @(posedge CLK) begin

	if(numb_write==frames) begin
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
	
	if(i==oneframe && (numb!=frames)) begin
    i=0;
	numb=numb+1;
	end 

	if(j==oneframe) begin
	j=0;
	numb_write=numb_write+1;
	end	
	
	if(numb==frames) begin 
	   In_Valid<=1'd0;
	   get_in<=1'd0;
	   i=0;
	end
	
	
end

endmodule
