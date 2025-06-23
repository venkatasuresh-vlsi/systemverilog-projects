module tb;
     parameter N = 8;
     logic [N-1:0] a, b;
	 logic carry_in;
	 logic [N-1:0] sum;
	 logic cout;
	 
	 carry_select_adder #(N) dut(
	     .a(a), .b(b),
		 .carry_in(carry_in),
		 .sum(sum),
		 .cout(cout)
		 );
		 
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | carry_in=%b | sum=%b | cout=%b", $time, a, b, carry_in, sum, cout);
		     carry_in=0;
			 for (int i=0; i<2**N; i++) begin
			     for(int j=0; j<2**N; j++) begin
				     a=i; b=j;
                     #1;
					end
				end
			 carry_in=1;
			 for (int i=0; i<2**N; i++) begin
			     for(int j=0; j<2**N; j++) begin
				     a=i; b=j;
                     #1;
					end
				end
			$finish;
		end
	endmodule