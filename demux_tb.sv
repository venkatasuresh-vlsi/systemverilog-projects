module tb;
     parameter N = 64;
	 logic data_in;
	 logic [$clog2(N)-1:0] sel;
	 logic [N-1:0] y;
	 
	 demux #(N) dut (
	     .data_in(data_in),
		 .sel(sel),
		 .y(y)
		 );
	 initial begin
	     $monitor("Time=%0t | data_in=%b | sel=%b | y=%b", $time, data_in, sel, y);
		     data_in=1;
			 for(int i=0; i<2**$clog2(N); i++) begin
			     sel=i;
				 #10;
				end
			$finish;
		end
	endmodule