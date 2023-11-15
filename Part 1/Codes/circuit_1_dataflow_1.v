module circuit_1_dataflow_1 (
  input A, B,
  output Q
);
  wire X, Y; // Declaring the inner nets.
  assign X = A & B;
  assign Y = ~ B;
  assign Q = X | Y;
endmodule
