//--> Implementation of D Latch
module d_latch(d,en,q,qbar);
	input d,en;
	output q,qbar;
	
	not n(dbar,d);
	and a1(s,d,en);
	and a2(r,dbar,en);

	nor n1(q,r,qbar);
	nor n2(qbar,s,q);
	
endmodule
