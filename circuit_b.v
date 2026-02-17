module circuit_b(
    // Declare inputs
    input A, B, C, D,
    // Declare Y output
    output Y
    );
    // Logic derived from the truth table minterms
    assign Y = (~A & ~B & ~C & ~D) | // m0
               (~A &  B & ~C & ~D) | // m4
               (~A &  B &  C & ~D) | // m6
               ( A & ~B & ~C & ~D) | // m8
               ( A &  B & ~C & ~D) | // m12
               ( A &  B & ~C &  D) | // m13
               ( A &  B &  C & ~D) | // m14
               ( A &  B &  C &  D);  // m15
endmodule