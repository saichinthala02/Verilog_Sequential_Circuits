//--> Implementation of Gray Counter.
`define VAL 4
module gray(clk,rst,count);
	input clk,rst;
	output reg [`VAL-1:0]count;

	reg [`VAL-1:0]binary;
	always@(posedge clk)begin
		if(rst) begin
			binary<=0;
			count<=0;
		end
		else begin
			binary<=binary+1;
			count<=(binary>>1)^binary;
		end
	end
endmodule
