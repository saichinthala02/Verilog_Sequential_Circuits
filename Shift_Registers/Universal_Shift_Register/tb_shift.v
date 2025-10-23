`include "universal_shift_reg.v"
module top;
	reg clk, rst;
    reg [1:0] select_line;
    reg s_left_din, s_right_din;
    reg [3:0] parallel_din;
    wire [3:0] parallel_dout;
	integer seed = 455562;

	shift_reg dut(
				.clk(clk),
				.rst(rst),
				.select_line(select_line),
				.s_left_din(s_left_din),
				.s_right_din(s_right_din),
				.parallel_din(parallel_din),
				.parallel_dout(parallel_dout));

	initial begin
		clk=0;
		forever #5 clk=~clk;
	end

	initial begin
		rst=1;
		select_line=0;
		s_left_din=0;
		s_right_din=0;
		parallel_din=0;
		repeat(2)@(posedge clk);
		rst=0;
		repeat(5)begin
			@(posedge clk);
			select_line=$random(seed);
			{s_left_din,s_right_din}=$random;
			parallel_din=$random;
			#10;
			$strobe("Time=%0t | rst=%b | select=%b | sL=%b | sR=%b | p_din=%b | p_dout=%b",$time, rst, select_line, s_left_din, s_right_din, parallel_din, parallel_dout);
		end
		#100;
		$finish;
	end
endmodule
