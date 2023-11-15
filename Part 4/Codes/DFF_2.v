module DFF_2 (
    input D, CLK, Set, Reset_n,   
    output reg Q
);
    always @(posedge CLK or negedge Reset_n) begin
        if(Set)     // Checking if Set is active.
            Q <= 1;
        else if(!Reset_n) // Checking the Reset.
            Q <= 0;
        else        // Normal Clock. No Set/Reset 
            Q <= D;
    end
endmodule


