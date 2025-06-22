module tb;
     parameter N = 16;
	 logic [N-1:0] I;
	 logic [$clog2(N)-1:0] sel;
	 logic Y;
	 
	 mux #(N) dut (
	     .I(I),
		 .sel(sel),
		 .Y(Y)
		 );
	 initial begin
	     $monitor("Time=%0t | I=%b | sel=%b | Y=%b", $time, I, sel, Y);
		     for (int i=0; i<2**$clog2(N); i++) begin
			     for (int j=0; j<2**N; j++) begin
			         sel=i; I=j;
				     #10;
				    end
			    end
		    $finish;
		end
	endmodule
				 