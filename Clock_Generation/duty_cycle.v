//--> Duty Cycle;
module top;
	reg clk;
	real freq,tp,duty,ton,toff;

	initial begin
		$value$plusargs("freq=%0f",freq);	
		$value$plusargs("duty=%0f",duty);
		tp=1000/freq;
		ton=(tp*duty)/100;
		toff=(tp*(100-duty))/100;
	end
	initial begin
		clk=0;
		forever begin
			clk=~clk;
			#ton;
			clk=~clk;
			#toff;
		end
	end
//	always #4 clk =~clk;   //8ns

	initial begin
		#500;
		$finish;
	end
endmodule
