module circuit_1_if_1 (
  input A, B,
  output reg Q
);
  always @ (*) begin
    if((A==0)&&(B==0)) Q = 1;
    else if((A==0)&&(B==1)) Q = 0;
    else if((A==1)&&(B==0)) Q = 1;
    else Q = 1;
  end
endmodule
