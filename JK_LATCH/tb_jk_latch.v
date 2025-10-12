//--> TB
`include "jk_latch.v"
module top;
	reg j,k;
	wire q,qbar;
	jk_latch dut(j,k,q,qbar);

	initial begin
		j=0;k=0;
		$display("--------------------------");
		$display("-------> JK LATCH <-------");
		$display("--------------------------");
		$display("|  J  |  k  |  Q  | Qbar |");
		$display("--------------------------");
		
		j=0; k=0; #5;  
		$display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
        j=0; k=1; #5;
        $display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
        j=1; k=0; #5;
        $display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
        j=1; k=1; #5;
        $display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
        j=0; k=0; #5;
        $display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
        j=1; k=1; #5;
        $display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
        j=1; k=1; #5;
        $display("|  %b  |  %b  |  %b  |   %b  |", j, k, q, qbar);
		$display("--------------------------");
	end

endmodule 

/* Output:-
# Start time: 08:43:37 on Oct 04,2025
# Loading work.top
# Loading work.jk_latch
# --------------------------
# -------> JK LATCH <-------
# --------------------------
# |  J  |  k  |  Q  | Qbar |
# --------------------------
# |  0  |  0  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  1  |  1  |  1  |   0  |
# |  0  |  1  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  1  |  0  |  1  |   0  |
# |  0  |  1  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  1  |  0  |  1  |   0  |
# |  0  |  1  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  0  |  0  |  0  |   1  |
# |  0  |  1  |  0  |   1  |
# |  1  |  0  |  1  |   0  |
# |  0  |  1  |  0  |   1  |
# |  1  |  0  |  1  |   0  |
# |  0  |  1  |  0  |   1  |
# |  1  |  1  |  1  |   0  |
# --------------------------
*/
