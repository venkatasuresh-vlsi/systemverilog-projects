module full_adder (
     input logic a, b, cin,
     output logic sum, cout
     );
     assign sum = a ^ b ^ cin;
     assign cout = (a & b) | (b & cin) | (a & cin);
    endmodule

module ripple_carry_adder #(parameter N = 16)(
     input logic [N-1:0] a, b,
	 input logic cin,
	 output logic [N-1:0] sum,
	 output logic cout
	 );
	 logic [N:0] carry;
	 assign carry[0] = cin;
	 genvar i;
	 generate
	     for (i=0; i<N; i++) begin
	         full_adder fa(
		         .a(a[i]),
			     .b(b[i]),
			     .cin(carry[i]),
			     .sum(sum[i]),
			     .cout(carry[i+1])
			     );
		    end
		endgenerate
	 assign cout = carry[4];
	endmodule
	
