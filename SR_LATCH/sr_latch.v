//--> Implementation of SR Latch.
//--> Behaviroal Model
module sr_latch(s,r,q,qbar);
	input s,r;
	output reg q,qbar;
	
	always@(s or r)begin
		case({s,r})
			2'b00 :
			begin
				q=q;qbar=~q;
			end
			2'b01 :
			begin
				q=0;qbar=1;
			end
			2'b10 :
			begin 
				q=1;qbar=0;
			end
			default :
			begin
				q=1'bx;
				qbar=1'bx;
			end
		endcase
	end
endmodule


//--> Structural Model
/*
module sr_latch(s,r,q,qbar);
	input s,r;
	output q,qbar;
	nor g1(q,r,qbar);
	nor g2(qbar,s,q);
endmodule
*/
