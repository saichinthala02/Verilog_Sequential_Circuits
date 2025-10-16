//--> TestBench for Up_Counter
`include "up_counter.v"
module top;
	reg clk,rst;
	wire [2:0]count;
	up_counter dut(clk,rst,count);

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
