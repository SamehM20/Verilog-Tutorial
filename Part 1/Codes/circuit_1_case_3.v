module circuit_1_case_3 (
  input A, B,
  output reg Q
);
  always @ (*) begin
    case({A, B})
      2’b01: Q = 0;
      default: Q = 1;
    endcase
  end
endmodule
