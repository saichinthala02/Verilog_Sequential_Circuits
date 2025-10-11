//--> Generation of Clock.
`timescale 1ns/1ns
module top;
	reg clk;
	real freq,tp;

	//--> Clock generation
	initial begin
		clk=0;
		forever #(tp/2) clk=~clk;
	end
	
	initial begin
		freq=100;
		tp=1000/freq;
	end
	initial begin
		#200;
		$finish;
	end
endmodule
