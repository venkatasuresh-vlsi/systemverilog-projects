module demux #(parameter N = 64)(
     input logic data_in,
	 input logic [$clog2(N)-1:0] sel,
	 output logic [N-1:0] y
	 );
	 always_comb begin
	       y = {N{1'b0}};
		   y[sel] = data_in;
		end
	endmodule