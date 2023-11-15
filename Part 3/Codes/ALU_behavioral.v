module ALU_behavioral(
    input [7:0] A, B,
    input [2:0] Sel,
    output reg [15:0] F
);

    always @(*) begin
        case(Sel)
            3'b000: F = A + B;  // Addition.
            3'b001: F = A - B;  // Subtraction.
            3'b010: F = A * B;  // Multiplication.
            3'b011: F = A + 1;  // Increment of A.
            3'b100: F = A & B;  // ANDing.
            3'b101: F = A | B;  // ORing.
            3'b110: F = A ~^ B; // XNORing.
            default: F = A ^ B; // XORing.
        endcase
    end
endmodule


