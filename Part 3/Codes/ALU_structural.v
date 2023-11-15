module ALU_structural(
    input [7:0] A, B,
    input [2:0] Sel,
    output [15:0] F
);
// For Addition and Subtraction.
wire [8:0] Out0, Out1, Out3;
// For Multiplication.
wire [15:0] Out2;   
// For Logical Operations.
wire [7:0] Out4, Out5, Out6, Out7;

// Arithmetic Operations.
Adder adder1 (A, B, Out0);  // Addition.
Sub   sub1   (A, B, Out1);  // Subtraction.
Mult  mult1  (A, B, Out2);  // Addition.
Adder adder2 (A, 1, Out3);  // Increment of A.

// Logical Operations.
and  a0 (Out4, A, B);   // ANDing.
or   o0 (Out5, A, B);   // ORing.
xnor x0 (Out6, A, B);   // XNORing.
xor  x1 (Out7, A, B);   // XORing.

// Controlling the Output.
assign F = (Sel == 0)? Out0:
           (Sel == 1)? Out1:
           (Sel == 2)? Out2:
           (Sel == 3)? Out3:
           (Sel == 4)? Out4:
           (Sel == 5)? Out5:
           (Sel == 6)? Out6: 
           Out7;
endmodule

