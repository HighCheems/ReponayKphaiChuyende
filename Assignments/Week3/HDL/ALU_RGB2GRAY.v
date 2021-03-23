module ALU_RGB2GRAY(GRAY,R,G,B);
input wire [31:0] R,G,B;
output wire [31:0] GRAY;

wire [31:0] OR,OG,OB;

Multiplication M_R(.a_operand(R),.b_operand(32'h3e991687),.Exception(),.Overflow(),.Underflow(),.result(OR));
Multiplication M_G(.a_operand(G),.b_operand(32'h3f1645a2),.Exception(),.Overflow(),.Underflow(),.result(OG));
Multiplication M_B(.a_operand(B),.b_operand(32'h3de978d5),.Exception(),.Overflow(),.Underflow(),.result(OB));

wire [31:0] A1;
Addition_Subtraction S1(.a_operand(OR),.b_operand(OG),.AddBar_Sub(1'd0),.Exception(),.result(A1));
Addition_Subtraction S2(.a_operand(A1),.b_operand(OB),.AddBar_Sub(1'd0),.Exception(),.result(GRAY));
endmodule