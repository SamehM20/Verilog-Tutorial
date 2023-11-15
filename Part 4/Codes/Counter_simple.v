module Counter_simple (
    input CLK, En,
    output reg [3:0] Count
);
    always @(posedge CLK) begin
        if(En)  // Checking if the counter is enabled.
            Count <= Count + 1;
    end
endmodule

