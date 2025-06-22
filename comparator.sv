module comparator #(parameter N = 16)(
     input logic [N-1:0] a, b,
	 output logic eq, lt, gt
	 );
	 always_comb begin
		 eq = a == b;
		 lt = a < b;
		 gt = a > b;
		end
	endmodule