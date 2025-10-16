`include "up_counter.v"
module top;
	reg clk,rst;
	wire [2:0]count;
	integer seed=425457524;
	up_counter dut(clk,rst,count);

	always #5 clk=~clk;
	initial begin
		clk=0;
		repeat(6) begin
			rst=$random(seed);
			#100;
		end
		rst=0;
	end
	initial begin
		#700;
		$finish;
	end
endmodule 
