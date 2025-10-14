//--> TB JK FF.
`include "jk_ff.v"
module top;
	reg clk_i,rst_i,j,k;
	wire q;

	jk_ff dut(clk_i,rst_i,j,k,q);

	//clk
	initial begin
		clk_i=0;
		forever #5 clk_i=~clk_i;
	end

	//rst
	initial begin
		rst_i=1;
		j=0;k=0;
		repeat(2)@(posedge clk_i) rst_i=1;
		rst_i=0;
	end

	//randomization
	initial begin
		repeat(15)begin
			{j,k}=$random;
			#10;
		end
	end
	initial begin
		#200;
		$finish;
	end

endmodule
