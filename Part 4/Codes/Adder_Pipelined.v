module Adder_Pipelined(
    input CLK, Cin,
    input [7:0] A, B,
    output reg Cout,
    output reg [7:0] Sum
);
    // Regestered inputs.
    reg Cin_reg;
    reg [7:0] A_reg, B_reg;

    // First Stage Outputs.
    reg Cout0;
    reg [3:0] Sum0, A_high, B_high;
    always @(posedge CLK) begin
        // First Stage.
        // Regestering the inputs.
        Cin_reg <= Cin;
        A_reg <= A;
        B_reg <= B;

        // Second Stage.
        // Performing Addition on the first 4 bits and Cin
        {Cout0, Sum0} <= Cin_reg + A_reg[3:0] + B_reg[3:0];
        // and registering the last 4 bits.
        A_high <= A_reg[7:4];
        B_high <= B_reg[7:4];

        // Last Stage.
        // Performing Addition on the last 4 bits and Cout of first 4 bits
        {Cout, Sum[7:4]} <= Cout0 + A_high + B_high;
        // and registering the sum of the first 4 bits.
        Sum[3:0] <= Sum0;
    end
endmodule

