module Counter_simple_param #(
    parameter N = 4
)(
    input CLK, En, Reset,
    output reg [N-1:0] Count
);
    always @(posedge CLK) begin
        if(Reset)
            Count <= 0;
        else if(En)  // Checking if the counter is enabled.
            Count <= Count + 1;
    end
endmodule

