`timescale 1ns/1ps
module testbench();
reg [31:0] R,G,B;
wire [31:0] GRAY;
reg WE,CLK;

RGB2GRAY md(.R(R),.G(G),.B(B),.GRAY(GRAY),.CLK(CLK),.WE(WE));

always #1 CLK = ~CLK;

integer i,numb;
reg[31:0] inR [0:40000];
reg[31:0] inG [0:40000];
reg[31:0] inB [0:40000];
//reg[31:0] outGray[0:40000];
//integer inR,inG,inB,outGray;
integer outGray;
initial begin

	WE=1'd0;
	CLK=1'd0;

	fork 
		#0.5;
		WE=1'd1;
	join
	//outGray=$fopen("Gray_RTL.txt","w");
	for (numb=0; numb<=51;numb=numb+1) begin
		//inR=$fopen($sformatf("home/baotran/Documents/week2/video/file/red_%0d.txt",numb),"r");
		//inG=$fopen($sformatf("home/baotran/Documents/week2/video/file/green_%0d.txt",numb),"r");
		//inB=$fopen($sformatf("home/baotran/Documents/week2/video/file/blue_%0d.txt",numb),"r");
		outGray=$fopen($sformatf("Gray_RTL_%0d.txt",numb),"w");

		$readmemb($sformatf("red_%0d.txt",numb),inR);
		$readmemb($sformatf("green_%0d.txt",numb),inG);
		$readmemb($sformatf("blue_%0d.txt",numb),inB);
		for(i=0; i<= 40000; i=i+1) 
			begin
			//$fscanf(inR, "%b\n", R);
			//$fscanf(inG, "%b\n", G);
			//$fscanf(inB, "%b\n", B);
			R=inR[i];
			G=inG[i];
			B=inB[i];
			#1;
			$fdisplay(outGray,"%b",GRAY);
			#1;
			end
		
		$fclose(inR);
		$fclose(inG);
		$fclose(inB);
		if(numb==51) $finish;
		$fclose(outGray);
	end
end


endmodule
