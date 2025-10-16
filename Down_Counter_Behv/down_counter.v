//--> Implementation of down counter.
`define VALUE 5 // here we can give 2-bit,3-bit.....etc
module down_counter(clk,rst,count);
	input clk,rst;
	output reg [`VALUE-1:0]count;
	always@(posedge clk) begin
		if(rst) count <= 0;
		else count <= count-1;
	end
endmodule
