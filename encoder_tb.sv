module tb;
     parameter N = 64;
	 logic enable;
	 logic [N-1:0] a;
	 logic [$clog2(N)-1:0] y;
	 
	 encoder #(N) dut (
	     .enable(enable),
		 .a(a),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t | enable=%b | a=%b | y=%b", $time, enable, a, y);
		     enable=0; #10;
			 enable=1; #10;
			 for (int i=0; i<2**$clog2(N); i++) begin
			     a = 1 << i;
				 #10;
				end
			$finish;
		end
	endmodule