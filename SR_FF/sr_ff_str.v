module sr_ff(clk,r,s,q,qbar);

	input clk,r,s;
	output  q,qbar;
	nand n1(w1,s,clk);
	nand n2(w2,r,clk);
	nand n3(q,w1,qbar);
	nand n4(qbar,w2,q);
endmodule

module top;
	reg clk,r,s;
	wire q,qbar;
	sr_ff dut(clk,r,s,q,qbar);
	initial begin
		clk=0;
		forever #5 clk=~clk;
	end
	initial begin
		s=0;r=0;#10;
		s=0;r=1;#10;
		s=1;r=0;#10;
		s=1;r=1;#10;
	end
	initial begin
		#130;
		$finish;
	end
endmodule
