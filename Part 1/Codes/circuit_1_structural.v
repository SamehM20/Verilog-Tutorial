module circuit_1_structural (
input A, B,
output Q
);
wire X, Y; // Declaring the inner nets.
and a0 (X, A, B);
not n0 (Y, B);
nor n1 (Q, X, Y);
endmodule
