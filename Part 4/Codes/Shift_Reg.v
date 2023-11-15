module Shift_Reg (
    input D, CLK,   
    output reg Q
);
    // Outputs of the FFs.
    reg [0:3] Q_data;
    assign Q = Q_data[3];

    always @(posedge CLK) begin
        Q_data <= {D, Q_data[0:2]};
    end
endmodule
