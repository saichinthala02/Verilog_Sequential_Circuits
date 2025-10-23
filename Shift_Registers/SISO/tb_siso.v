`include "siso.v"
module top;
	reg clk,rst,preset,sin;
	wire [3:0] pout;
	wire sout;
	siso dut(clk,rst,preset,sin,pout,sout);
	
	always #5 clk=~clk;
	initial begin
		clk=0;
		rst=1;
		sin=0;
		preset=0;
		repeat(2)@(posedge clk);
		rst=0;
		repeat(200)begin
			@(posedge clk);
			sin=$random;
		end
		#100;
		$finish;
	end
	initial begin
		#100;
		repeat(3)begin
			preset=1;
			#10;
			preset=0;
			#100;
		end
	end
	initial begin
		$monitor("Time:- %0t | Sin: %b | Pout: %b | Sout: %b",$time,sin,pout,sout);
	end
endmodule
