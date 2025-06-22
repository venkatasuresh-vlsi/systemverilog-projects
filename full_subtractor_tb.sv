module tb;
     logic a, b, bin, diff, bout;
    
     full_subtractor dut (.a(a), .b(b), .bin(bin), .diff(diff), .bout(bout));

     initial begin
        $monitor("Time = %0t | a = %b | b = %b | bin = %b | diff = %b | bout = %b", $time, a, b, bin, diff, bout);
        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 1; b = 0; bin = 0; #10;
        a = 1; b = 1; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 1; #10;
        a = 1; b = 1; bin = 1; #10;
        $finish;
    end
endmodule
