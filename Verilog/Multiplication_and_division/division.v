module division_example;
  reg unsigned [7:0] a, b;
  reg signed [7:0] c;
  reg [7:0] result;
  initial begin
    a = 8'd30;
    b = 8'd2;
    c = -30; // Automatically stored as 2's complement.
    // writing c = 8'd-30 is wrong since 'd always treats it as unsigned.
    result = a / b;
    $display("Division Result: %d", result); // 30 / 2 = 15
    $display("Division Result: %d", a >> 1); // 30 / 2 = 15 -- 2^n -- 30/2;
    $display("Division Result: %d", a >> 2); // 30 / 4 = 15 -- 2^n -- 30/4;

    // Since we are now using signed we can only use >>> to Compute the value.
    $display("Division Result (Correct - 2's complement): %d", c >>> 1); // -30 / 2 -- 2^n -- -30/2;
    $display("Division Result (Wrong - 2's complement): %d", c >> 1); // -30 / 2 -- 2^n -- -30/2;
  end
endmodule

// FPGA division is expensive, and it's often replaced with bit-shifting (for powers of 2).