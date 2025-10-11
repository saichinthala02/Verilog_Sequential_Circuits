//--> jitter.
`timescale 1ns/1ps
module top;
	reg clk;
	real freq,tp,duty,ton,toff,jitter,var_freq;

	initial begin
		$value$plusargs("freq=%0f",freq);	
		$value$plusargs("duty=%0f",duty);
		$value$plusargs("gitter=%0f",jitter);
	end

	initial begin
		clk=0;
		forever begin
			var_freq=freq*($urandom_range(100-jitter,100+jitter)/100.0);
			tp=1000/var_freq;
			ton=(tp*duty)/100;
			toff=(tp*(100-duty))/100;
			clk=~clk;
			#ton;
			clk=~clk;
			#toff;
		end
	end

	initial begin
		#500;
		$finish;
	end
endmodule
