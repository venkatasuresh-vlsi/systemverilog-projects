module carry_save_adder #(parameter N = 6)(
     input logic [N-1:0] a, b, cin,
	 output logic [N-1:0] sum, cout
	 );
	 always_comb begin
	     for(int i=0; i<N; i++) begin
		     sum[i] = a[i] ^ b[i] ^ cin[i];
			 cout[i] = (a[i] & b[i]) | (b[i] & cin[i]) | (a[i] & cin[i]);
			end
		end
	endmodule