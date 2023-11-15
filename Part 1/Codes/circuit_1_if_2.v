module circuit_1_if_2 (
  input A, B,
  output reg Q
);
  always @ (*) begin
    if((A==0)&&(B==1)) Q = 0;
    else Q = 1;
  end
endmodule
