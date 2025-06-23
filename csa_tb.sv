module tb;
     parameter N = 6;
	 logic [N-1:0] a, b, cin;
	 logic [N-1:0] sum, cout;
	 
	 carry_save_adder #(N) dut (
	     .a(a),
		 .b(b),
		 .cin(cin),
		 .sum(sum),
		 .cout(cout)
		 );
	 initial begin
	   $monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | cout=%b", $time, a, b, cin, sum, cout);
	     for (int i=0; i<2**N; i++) begin
		     for (int j=0; j<2**N; j++) begin
			     for (int k=0; k<2**N; k++) begin
				     a=i; b=j; cin=k;
					 #10;
					end
				end
			end
		end
	endmodule