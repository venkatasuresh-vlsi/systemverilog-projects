module decoder #(parameter N = 64)(
     input logic enable,
	 input logic [$clog2(N)-1:0] a,
	 output logic [N-1:0] y
	 );
	 always_comb begin
	     if(enable)
		    y = 1 << a;
		 else 
		    y = {N{1'b0}};
		end
	endmodule
			