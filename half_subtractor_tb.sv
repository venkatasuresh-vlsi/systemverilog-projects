module tb;
    logic a, b, diff, borrow;
    
    half_subtractor dut (.a(a), .b(b), .diff(diff), .borrow(borrow));

    initial begin
        $monitor("Time = %0t | a = %b | b = %b | diff = %b | borrow = %b", $time, a, b, diff, borrow);
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule
