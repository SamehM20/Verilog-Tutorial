module Decoder_if(
    input [1:0] S,      // The select signal.
    output reg [3:0] O  // The 4-bit output.
);
    always @* begin
        if(S == 0)      O = 4'b1110;    // S = 00
        else if(S == 1) O = 4'b1101;    // S = 01
        else if(S == 2) O = 4'b1011;    // S = 10
        else O = 4'b0111;               // S = 11
    end
endmodule

