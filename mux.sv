module mux #(parameter N = 16)(
     input logic [N-1:0] I,
	 input logic [$clog2(N)-1:0] sel,
	 output logic Y
	 );
	 assign Y = I[sel];
	endmodule