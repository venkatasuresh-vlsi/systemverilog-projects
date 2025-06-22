module tb;
     parameter N = 16;
	 logic [N-1:0] a, b;
	 logic eq, lt, gt;
	 
	 comparator #(N) dut (
	     .a(a),
		 .b(b),
		 .eq(eq),
		 .lt(lt),
		 .gt(gt)
		 );
	 initial begin
	     $monitor("Time=%0t | a=%b | b=%b | eq=%b | lt=%b | gt=%b", $time, a, b, eq, lt, gt);
		     for (int i=0; i<2**N; i++) begin
			     for (int j=0; j<2**N; j++) begin
				     a=i; b=j;
					 #10;
					end
				end
			$finish;
		end
	endmodule