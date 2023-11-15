module FA_structutal(
    input A, B, Cin,
    output Sum, Cout
);
    // Delaration of the inner-nets.
    wire Sum1, Cout1, Cout2;    
    HA ha1 (A, B, Sum1, Cout1);     // First Half-Adder.
    HA ha2 (Sum1, Cin, Sum, Cout2); // Second Half-Adder.
    // Using OR gate to calculate the Carry out.
    or o0 (Cout, Cout1, Cout2);     
endmodule

