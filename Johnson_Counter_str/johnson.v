//--> Implementation of 3-Bit Johnson counter.
`include "d_ff.v"
module johnson(clk,rst,count);
	input clk,rst;
	output [2:0]count;

	d_ff d1(clk,rst,~count[0],count[2]);
	d_ff d2(clk,rst,count[2],count[1]);
	d_ff d3(clk,rst,count[1],count[0]);
	
endmodule
