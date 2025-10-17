//--> Implementation of Up-Down Counter
`define VAL 3
module up_down(clk,rst,mode,count);
	input clk,rst,mode;
	output reg [`VAL-1:0]count;
	always@(posedge clk) begin
		if(rst) count<=0;
		else begin
			if(mode) count=count+1;
			else count=count-1;
		end
	end
endmodule
