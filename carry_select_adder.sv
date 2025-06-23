module full_adder (
     input logic a, b, cin,
     output logic sum, cout
     );
     assign sum = a ^ b ^ cin;
     assign cout = (a & b) | (b & cin) | (a & cin);
    endmodule
module ripple_carry_adder #(parameter N = 8)(
     input logic [N-1:0] a, b,
	 input logic cin,
	 output logic [N-1:0] sum,
	 output logic cout
	 );
	 logic [N:0] c;
	 assign c[0] = cin;
	 
	 genvar i;
	 generate
	     for (i=0; i<N; i++) begin
		     full_adder fa(
			     .a(a[i]),
				 .b(b[i]),
				 .cin(c[i]),
				 .sum(sum[i]),
				 .cout(c[i+1])
				 );
			end
		endgenerate
	 assign cout = c[N];
	endmodule
module carry_select_adder #(parameter N = 8)(
     input logic [N-1:0] a, b,
	 input logic carry_in,
	 output [N-1:0] sum,
	 output cout
	 );
	 logic c0, c1;
	 logic [N-1:0] sum0, sum1;
	 
	 ripple_carry_adder #(N) rca0 (.a(a), .b(b), .cin(1'b0), .sum(sum0), .cout(c0));
	 ripple_carry_adder #(N) rca1 (.a(a), .b(b), .cin(1'b1), .sum(sum1), .cout(c1));
	 
	 assign sum = (carry_in) ? sum1 : sum0;
	 assign cout = (carry_in) ? c1 : c0;
	endmodule
	 