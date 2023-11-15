module Adder(
    input CLK, Cin,
    input [7:0] A, B,
    output reg Cout,
    output reg [7:0] Sum
);
    // Regestered inputs.
    reg Cin_reg;
    reg [7:0] A_reg, B_reg;
    always @(posedge CLK) begin
        // Regestering the inputs.
        Cin_reg <= Cin;
        A_reg <= A;
        B_reg <= B;
        // Performing Addition and registering the outputs.
        {Cout, Sum} <= Cin_reg + A_reg + B_reg;
    end
endmodule

