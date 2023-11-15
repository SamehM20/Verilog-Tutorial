module HA_behavioral(
    input A, B,
    output reg Sum, Cout
);
    always @* begin
        {Cout, Sum} = A + B;
    end
endmodule

