module fifo #(
    parameter WIDTH = 8,
    parameter DEPTH = 256
)(
    input [WIDTH-1:0] data_in,
    input wire CLK,
    input wire write,
    input wire read,
	 input wire CLR,
    output reg [WIDTH-1:0] data_out,
    output wire fifo_full,
    output wire fifo_empty
);

    // memory will contain the FIFO data.
    reg [WIDTH-1:0] memory [0:DEPTH-1];
    // $clog2(DEPTH+1)-2 to count from 0 to DEPTH
    reg [$clog2(DEPTH)-1:0] write_ptr;
    reg [$clog2(DEPTH)-1:0] read_ptr;

    assign fifo_empty   = ( write_ptr == read_ptr ) ? 1'b1 : 1'b0;
    assign fifo_full    = ( write_ptr == (DEPTH-1)) ? 1'b1 : 1'b0;


    always @ ( posedge CLK ) begin
	 	 if(CLR) begin
		 
				write_ptr<=0;
				read_ptr<=0;
				
		 end else begin
		 
        if ( write) begin
		  		memory[write_ptr] <= data_in;
            write_ptr <= write_ptr + 1;
        end

        if ( read ) begin
		      data_out <= memory[read_ptr];
            read_ptr <= read_ptr + 1;
        end
		  
		  if(write_ptr == DEPTH-1) begin
				write_ptr <= 0;
		  end
		  if(read_ptr == DEPTH-1) begin
				read_ptr <= 0;
		  end
		  
		 end
    end

endmodule