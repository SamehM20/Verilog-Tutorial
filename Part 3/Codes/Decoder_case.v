module Decoder_case(
    input [1:0] S,      // The select signal.
    output reg [3:0] O  // The 4-bit output.
);
    always @* begin
        case (S)
            0: O = 4'b1110; // S = 00
            1: O = 4'b1101; // S = 01
            2: O = 4'b1011; // S = 10
            3: O = 4'b0111; // S = 11
            default: O = 4'b1110;
        endcase
    end
endmodule

