//--> Implementation of JK Latch.
//--> Behaviroal Model
/*
module jk_latch(t,q,qbar);
	input t;
	output reg q,qbar;
	reg j,k;
	
	initial begin
        q = 0;
        qbar = 1;
		    end
	
	always@(*)begin
			j=t;
		k=t;

		case({j,k})
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
				q=~q;
				qbar=~qbar;
			end
		endcase
	end
endmodule
*/

//--> Structural Model

module sr_latch(t,q,qbar);
    input t;
    output q,qbar;
    wire s,r;

    and a0(s,t,qbar);   
    and a1(r,t,q);      

    nor g0(q,r,qbar);   
    nor g1(qbar,s,q);   
endmodule



