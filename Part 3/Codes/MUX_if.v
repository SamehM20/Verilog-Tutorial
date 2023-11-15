module MUX_if(
    input [3:0] I,  // The 4 inputs.
    input [1:0] S,  // The select lines.
    output reg O    // The output.
);
    always @* begin
        if(S == 0)      O = I[0];    // S = 00
        else if(S == 1) O = I[1];    // S = 01
        else if(S == 2) O = I[2];    // S = 10
        else O = I[3];               // S = 11
    end
endmodule

