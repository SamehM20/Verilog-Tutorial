module Ones_Detect_Moore (
    input clk, Reset, in,
    output reg out
);
    reg [1:0] current_state, next_state;
    // Declaration of States.
    localparam S0 = 2'b00, S1 = 2'b01, S2 = 2'b11;

    // Next State Calculation
    always @(in, current_state) begin
        // Combinational Logic (BLocking Assignments)
        case(current_state)
            S0: if(in) next_state = S1;
                else next_state = S0;

            S1: if(in) next_state = S2;
                else next_state = S0;

            S2: if(in) next_state = S2;
                else next_state = S0;

            default: next_state = S0;
        endcase 
    end

    // Current State Calculation
    always @(posedge clk) begin
        // Sequential Logic (Non-BLocking Assignments)
        // Resetting if available
        if(Reset)
            current_state <= S0; 
        // Assigning the next_state to be current_state
        else
            current_state <= next_state;
    end

    // Output Calculation
    assign out = (current_state == S2);
endmodule

