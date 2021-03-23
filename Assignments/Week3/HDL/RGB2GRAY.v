module RGB2GRAY(R,G,B,GRAY,CLK,WE);

input wire [31:0] R,G,B;
output wire [31:0] GRAY;
input wire CLK,WE;

wire [31:0] OR,OG,OB;

REG_32BIT M_R(.Dout(OR),.Din(R),.CLK(CLK),.WE(WE));
REG_32BIT M_G(.Dout(OG),.Din(G),.CLK(CLK),.WE(WE));
REG_32BIT M_B(.Dout(OB),.Din(B),.CLK(CLK),.WE(WE));

ALU_RGB2GRAY ALU(.GRAY(GRAY),.R(OR),.G(OG),.B(OB));

endmodule

