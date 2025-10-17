`include "up_down.v"
module top;
	reg clk,rst,mode;
	wire [2:0]count;
	up_down dut(clk,rst,mode,count);
	real delay1,delay2,d3,d4;

	initial begin
		clk=0;
		repeat(6) begin
			delay1=$urandom_range(100,200);
			delay2=$urandom_range(100,200);
			rst=1;
			#delay1;
			rst=0;
			#delay2;
		end
	end
	initial begin
		repeat(6) begin
			d3=$urandom_range(50,100);
			d4=$urandom_range(50,100);
			mode=1;
			#d3;
			mode=0;
			#d4;
		end
	end
	always #5 clk=~clk;

	initial begin
		#900;
		$finish;
	end
endmodule
