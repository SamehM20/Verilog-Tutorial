module MUX_case (
    input [3:0] I,  // The 4 inputs.
    input [1:0] S,  // The select lines.
    output reg O    // The output.
);
    always @* begin
        case (S)
            0: O = I[0];        // S = 00
            1: O = I[1];        // S = 01
            2: O = I[2];        // S = 10
            default: O = I[3];  // S = 11
        endcase
    end
endmodule

