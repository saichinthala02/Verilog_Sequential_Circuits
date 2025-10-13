`include "t_latch.v"
module top;
	reg t;
	wire q,qbar;

	jk_latch dut(t,q,qbar);
	initial begin
		repeat(10)begin
			t=$random;
			#2;
		end
	end
endmodule
