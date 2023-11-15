module circuit_1_case_1 (
  input A, B,
  output reg Q
);
  always @ (*) begin
    case({A, B})
      2’b00: Q = 1;
      2’b01: Q = 0;
      2’b10: Q = 1;
      2’b11: Q = 1;
      default: Q = 0;
    endcase
  end
endmodule
