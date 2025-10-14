//--------------
// JK FLIP-FLOP
//--------------
/*module jk_master_slave(clk,j,k,q,qbar);
    input clk,j,k;
    output q,qbar;
    wire w1,w2;
   // buf n5(q,0);
  //  buf n6(qbar,0);
    nand n1(w1,j,clk,qbar); 
    nand n2(w2,k,clk,q);   
    nand n3(q,w1,qbar);       
    nand n4(qbar,w2,q);

endmodule
*/
module jk(clk,j,k,q,qbar);
    input  clk,j,k;
    output q, qbar;
    nand w1(n1, j,~clk, qbar);       
	nand w2(n2, k,~clk,q);
	nand w3(n3,n1,n4);        
    nand w4(n4,n2,n3);
    nand w5(n5,n3,clk);   
    nand w6(n6,n4,clk); 
	nand w7(q,n5,qbar);        
    nand w8(qbar,n6,q);
endmodule
//--> Test_Bench
module top;
	reg clk,j,k;
	wire q,qbar;
	jk dut(clk,j,k,q,qbar);
	initial begin
    	clk=0;
		forever #5 clk=~clk;
	end
	initial begin
	repeat(50) begin
		{j,k}=$random;
		#7;
	end
	end
	initial begin
		#500;
		$finish;
	end
endmodule
