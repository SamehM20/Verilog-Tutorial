module DFF_1 (
    input D, CLK,
    output reg Q
);
    always @(posedge CLK ) begin
        Q <= D;
    end
endmodule
