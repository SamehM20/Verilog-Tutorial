module HA_structural(
    input A, B,
    output Sum, Cout
);
    xor x0 (Sum, A, B);   // Using XOR gate to calculate the Sum.
    and a0 (Cout, A, B);  // Using AND gate to calculate the Carry out.
endmodule
