`include "mod_n.v"
module top;
	reg clk,rst;
	wire [`VAL-1:0]count;
	mod_n dut(clk,rst,count);

	always #5 clk=~clk;
	initial begin
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		#400;
		$finish;
	end

endmodule
