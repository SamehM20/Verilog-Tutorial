module circuit_1_dataflow_2 (
input A, B,
output Q
);
// With one assign expression.
assign Q = (A & B) | (~ B);
endmodule
