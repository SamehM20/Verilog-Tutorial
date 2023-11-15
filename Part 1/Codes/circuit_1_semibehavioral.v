module circuit_1_semibehavioral (
  input A, B,
  output reg Q
);
  // Or always @ (*)
  always @ (A or B) begin
    Q = (A & B) | (~ B);
  end
endmodule
