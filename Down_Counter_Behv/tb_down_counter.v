//--> TestBench for Down_Counter

`include "down_counter.v"
module top;
	reg clk,rst;
	wire [`VALUE-1:0]count;
	down_counter dut(clk,rst,count);

	always #5 clk=~clk;

	initial begin
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
	end
	initial begin
		#400;
		$finish;
	end

endmodule
