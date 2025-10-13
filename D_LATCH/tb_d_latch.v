//--> TB
`include "d_latch.v"
module top;
	reg d,en;
	wire q,qbar;
	d_latch dut(d,en,q,qbar);
	initial begin
        en = 0; d = 0;
        #5  en = 1; d = 0;   
        #5  d = 1;          
        #5  en = 0; d = 0;   
        #5  d = 1;         
        #5  en = 1;       
        #5  d = 0;           
        #5  en = 0;          
        #10 $finish;	
	end
endmodule
