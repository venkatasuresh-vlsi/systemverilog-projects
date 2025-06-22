module encoder #(parameter N = 64)(
     input logic enable,
	 input logic [N-1:0] a,
	 output logic [$clog2(N)-1:0] y
	 );
	 always_comb begin
	     if (enable) begin
		     for (int i=0; i<2**$clog2(N); i++) begin
			      if (a[i])
				     y = i;
				end
			end
		end
	endmodule