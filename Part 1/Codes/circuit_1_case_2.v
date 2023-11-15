module circuit_1_case_2 (
  input A, B,
  output reg Q
);
  always @ (*) begin
    case({A, B})
      2’b00, 2’b10, 2’b11: Q = 1;
      2’b01: Q = 0;
      default: Q = 0;
    endcase
  end
endmodule
