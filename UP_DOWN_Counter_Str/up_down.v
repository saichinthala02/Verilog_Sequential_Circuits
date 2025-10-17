//--> Implementation 3-Bit of Up-Down Counter in Structural model.
`include "d_ff.v"
module up_down(clk,rst,mode,count);
	input clk,rst,mode;
	output [2:0]count;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;

	and g1(w1,~mode,count[2],~count[1]);
	and g2(w2,mode,count[2],count[0]);
	and g3(w3,count[2],count[1],~count[0]);
	and g4(w4,~count[2],~count[1],~count[0],mode);
	and g5(w5,~count[2],count[1],count[0],~mode);
	or g6(w6,w1,w2,w3,w4,w5);//-->D2
//	and g7(w7,count[1],~count[0],~mode);
//	and g8(w8,~count[1],~count[0],mode);
//	and g9(w9,count[1],count[0],mode);
//	and g10(w10,~count[1],count[0],~mode);
//	or g11(w11,w7,w8,w9,w10);//-->D1
	xor(w11,count[1],count[0],mode);
	not g12(w12,count[0]);//-->D0
	
	d_ff df1(clk,rst,w6,count[2]);
	d_ff df2(clk,rst,w11,count[1]);
	d_ff df3(clk,rst,w12,count[0]);	
endmodule
