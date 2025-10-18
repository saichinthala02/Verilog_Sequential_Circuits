//--> Mod-n Counter.
`define VAL 4
module mod_n(clk,rst,count);
	input clk,rst;
	output reg[`VAL-1:0]count;

	always@(posedge clk) begin
		if(rst) count<=0;
		else begin
			if(count==`VAL) count<=0;
			else count<=count+1;
		end
	end
endmodule
