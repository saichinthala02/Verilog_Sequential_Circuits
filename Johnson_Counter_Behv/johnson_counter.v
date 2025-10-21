//--> Implementation of Johnson Counter.
`define VAL 4
module johnson(clk,rst,count);
	input clk,rst;
	output reg [`VAL-1:0]count;

	always@(posedge clk)begin
		if(rst) count<=4'b0000;
		else count<={~count[0],count[`VAL-1:1]};
	end
endmodule
