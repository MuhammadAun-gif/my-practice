module shift_operators ();

     reg signed [7:0] a;

    /*  SHIFT TYPE                         BEHAVIOUR                       SUITABLE FOR
        
        Logical Shift Left (<<)         -- Shift left, fill with 0s     -- Unsigned values
        Logical Shift Right (>>)        -- Shift right, fill with 0s    -- Unsigned values
        
        Arithmetic Shift Left (<<<)     -- Same as logical left shift   -- Signed values
        Arithmetic Shift Right (>>>)    -- Shift right, preserve MSB    -- Signed values
    */

    // IMPORTANT: To use >>> properly first declare the bits as Signed otherwise it would treat it as Unsigned by default

    initial begin
        //a = 8'b10011010;  // 154 in decimal
        a = -24;  // 8'b11101000 (-24 in 2’s complement)

        // Left Shift
        $display("Logical Left Shift: %b", a << 2);
        $display("Arithmetic Left Shift: %b", a <<< 2);

        // Right Shift
        $display("Logical Right Shift: %b", a >> 2);
        $display("Arithmetic Right Shift: %b", a >>> 2);

    end
    
endmodule