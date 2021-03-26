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
integer i,j,count;
integer outGray,f_R,f_G,f_B;
reg [7:0] inR [0:oneframe];
reg [7:0] inG [0:oneframe];
reg [7:0] inB [0:oneframe];
// do
    initial begin
    CLK=1'd0;
    In_Valid=1'd0;
    i=0;
    fork 
    #5 In_Valid=1'd1;   
    #55 In_Valid=1'd0;
    #200 $finish;
    join
    
    
    /*f_R=$fopen("/home/baotran/Documents/week2/video/new_test/red.txt","r");
    f_G=$fopen("/home/baotran/Documents/week2/video/new_test/green.txt","r");
    f_B=$fopen("/home/baotran/Documents/week2/video/new_test/blue.txt","r");    */
    for(count=0; count<=frames-1;count=count+1) begin
    $readmemb($sformatf("/home/baotran/Documents/week2/video/new_test/red_%0d.txt",count),inR);
    $readmemb($sformatf("/home/baotran/Documents/week2/video/new_test/green_%0d.txt",count),inG);
    $readmemb($sformatf("/home/baotran/Documents/week2/video/new_test/blue_%0d.txt",count),inB);   
    outGray=$fopen($sformatf("/home/baotran/Documents/week2/video/new_test/Gray_RTL_%0d.txt",count),"w");
    
    while(i<=oneframe) begin  
        if(In_Valid==1'd1) begin
            R=inR[i];
            G=inG[i];
            B=inB[i];
            #10;
            i=i+1;
        end
    end
    
    $fclose(inR);
    $fclose(inG);
    $fclose(inB);
    $fclose(outGray);
    if(count==frames-1) begin
        $finish;
        end
    end
end        
/*    while(In_Valid==1'd1) begin
            R=$fscanf(f_R,"%b\n");
            G=$fscanf(f_G,"%b\n");
            B=$fscanf(f_B,"%b\n");
            #10; 
    end
    $fclose(f_R);
    $fclose(f_G);
    $fclose(f_B);
    $fclose(outGray);  */    

always @(posedge CLK) begin
         if(Out_Valid==1'd1) begin
              $fdisplay(outGray,"%b",Gray);
         end
end

endmodule
