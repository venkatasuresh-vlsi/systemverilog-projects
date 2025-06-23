module tb;
     parameter N = 16;
	 logic [N-1:0] a, b;
	 logic cin;
	 logic [N-1:0] sum;
	 logic cout;
	 
	 carry_look_adder #(N) dut (
	     .a(a),
		 .b(b),
		 .cin(cin),
		 .sum(sum),
		 .cout(cout)
		 );
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | cin=%b | sum=%b | cout=%b", $time, a, b, cin, sum, cout);
		     cin=0;
		     for (int i=0; i<2**N; i++) begin
			     for(int j=0; j<2**N; j++) begin
				     a=i; b=j;
                     #10;
					end
				end
			 cin=1;
		     for (int i=0; i<2**N; i++) begin
			     for(int j=0; j<2**N; j++) begin
				     a=i; b=j;
                     #10;
					end
				end
			$finish;
		end
	endmodule
					 