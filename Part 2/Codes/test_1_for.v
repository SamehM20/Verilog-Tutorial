`timescale 1ns/1ps
// Choosing the testbench name to be test_1
module test_1_for;
  reg InA, InB; // Declaring the test inputs.
  wire OutQ;    // Declaring the observed output.

 integer i, j; // Declaring the iteration indices.
 
 circuit_1 DUT (.A(InA), .B(InB), .Q(OutQ));

initial begin
  $monitor(“Input A= %d, B = %d → Output Q = %d”, InA, InB, OutQ);
  // Test Sets.
  for(i = 0; i < 2; i = i + 1) begin
    InA = i;
    for(j = 0; j < 2; j = j + 1) begin
	InB = j;
	#10;
    end
  end
end
endmodule
