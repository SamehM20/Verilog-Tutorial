`timescale 1ns/1ps
// Choosing the testbench name to be test_1
module test_1_monitor;
  reg InA, InB; // Declaring the test inputs.
  wire OutQ;    // Declaring the observed output.

// Instantiating the design.
circuit_1 DUT (.A(InA), .B(InB), .Q(OutQ));

initial begin
  $monitor(“Input A= %d, B = %d → Output Q = %d”, InA, InB, OutQ);
// Test Sets.
  InA = 0;
  InB = 0;
  #10	
  InA = 0;
  InB = 1;
  #10
  InA = 1;
  InB = 0;
  #10
  InA = 1;
  InB = 1;
end
endmodule
