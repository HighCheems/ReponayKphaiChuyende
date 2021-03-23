module REG_32BIT(Dout,Din,CLK,WE);

input wire [31:0] Din;
output wire [31:0] Dout;
input wire CLK,WE;

reg [31:0] A;

always @(posedge CLK) begin
	if(WE) begin
	A<=Din;
	end
end

assign Dout=A;

endmodule
