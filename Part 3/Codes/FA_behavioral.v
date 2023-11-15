module FA_behavioral(
    input A, B, Cin,
    output reg Sum, Cout
);
    always @* begin
        {Cout, Sum} = A + B + Cin;
    end
endmodule

