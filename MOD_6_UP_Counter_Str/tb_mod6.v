`include "mod_6.v"
module top;
	reg clk,rst;
	wire [2:0]count;
	mod_6 dut(clk,rst,count);

	always #5 clk=~clk;
	initial begin
		clk=0;
		rst=1;
		repeat(2)@(posedge clk);
		rst=0;
		#400;
		$finish;
	end

	always@(posedge clk)begin
		$display("%0d",count);
	end

endmodule
