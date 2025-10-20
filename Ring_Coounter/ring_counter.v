//--> Implementation of Ring Counter.
`define VAL 4
module ring(clk,rst,count);
	input clk,rst;
	output reg [`VAL-1:0]count;

	always@(posedge clk)begin
		if(rst) count<=4'b0001;
		else count<={count[0],count[`VAL-1:1]};
	end
endmodule
