`timescale 1ns/1ps
// Choosing the testbench name to be test_1
module test_1_while;
 reg InA, InB; // Declaring the test inputs.
 wire OutQ;    // Declaring the observed output.

 // Declaring the iteration indices with initial values.
 integer i = 0; 
 integer j = 0;

 circuit_1 DUT (.A(InA), .B(InB), .Q(OutQ));

initial begin
  $monitor(“Input A= %d, B = %d → Output Q = %d”, InA, InB, OutQ);
  // Test Sets.
  while(i < 2) begin
    InA = i;
    j = 0; // Don’t forget to initialize the index for every full loop.
    while(j < 2) begin
	InB = j;
	#10
	j = j + 1;
    end
    i = i + 1;
  end
end
endmodule
