module multiplication_example;
  reg [7:0] a, b;
  reg [15:0] result; // 8-bit * 8-bit = 16-bit result
  initial begin
    a = 8'b0001111;
    b = 8'b0000010;
    result = a * b;
    $display("Multiplication Result: %b", result); // 15 * 2 = 30
    $display("Multiplication Result: %b", a << 1); // 2^n -- where n is bits -- a*2 = 30
    $display("Multiplication Result: %b", a << 2); // 2^n -- where n is bits -- a*4 = 60
    $display("Multiplication Result: %b", a << 3); // 2^n -- where n is bits -- a*8 = 120
  end
endmodule

// Uses DSP block in FPGA - a * b
// Since multiplication is DSP-friendly but division is expensive, alternative methods are used

// If multiplying by powers of 2, use left shifts (<<):
// In this case << and <<< does not matter since they perform the same function.
// However >> and >>> matter as one is for unsigned and the other is for signed.

