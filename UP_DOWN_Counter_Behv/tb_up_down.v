`include "up_down.v"
module top;
	reg clk,rst,mode;
	wire [`VAL-1:0]count;
	up_down dut(clk,rst,mode,count);

	initial begin
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		mode=1;
		#200;
		mode=0;
		#200;
	end
	always #5 clk=~clk;

	initial begin
		#400;
		$finish;
	end
endmodule
