module carry_look_adder #(parameter N = 16)(
     input logic [N-1:0] a, b,
	 input logic cin,
	 output logic [N-1:0] sum,
	 output logic cout
	 );
	 logic [N-1:0] g, p;
     logic[N:0] c;
	 
	 assign g = a & b;
	 assign p = a ^ b;
	 assign c[0] = cin;
	 
	 genvar i;
	 generate
	     for (i=1; i<=N; i++) begin
		     assign c[i] = g[i-1] | (p[i-1] & c[i-1]);
		    end
		endgenerate
     assign sum = p ^ c;
     assign cout = c[N];
	endmodule