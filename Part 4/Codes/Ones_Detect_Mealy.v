module Ones_Detect_Mealy (
    input clk, Reset, in,
    output reg out
);  
    reg current_state, next_state;
    // Declaration of States.
    localparam S0 = 1'b0, S1 = 1'b1;

    // Next State and Output Calculation
    always @(in, current_state) begin
        // Combinational Logic (BLocking Assignments)
        case(current_state)
            S0: if(in) begin
                    next_state = S1;
                    out = 0;
                end else begin
                    next_state = S0;
                    out = 0;            
                end
            S1: if(in) begin
                    next_state = S1;
                    out = 1;
                end else begin
                    next_state = S0;
                    out = 0;            
                end
            default: begin
                    next_state = S0;
                    out = 0;
                end
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
endmodule

