module Counter_param #(
    parameter N = 4
)(
    input CLK, En, Reset, Load, UpDown,
    input [N-1:0] P,
    output Tick,
    output reg [N-1:0] Count
);
    always @(posedge CLK) begin
        if(Reset)   // Active High Synchronous Reset.
            if(UpDown) // Counting Up. Reset value is zeros.
                Count <= 0;
            else        // Counting Down. Reset value is ones.
                Count <= -1;
        else if(En) // Checking if the counter is enabled.
            if(Load)// Loading P data to Count.
                Count <= P;
            else if(UpDown) // Counting Up.
                Count <= Count + 1;
            else            // Counting Down.
                Count <= Count - 1;
    end
    // If counting up, the tick is when Count is all ones.
    // If counting down, the tick is when Count is zeros.
    assign Tick = (UpDown)? &(Count) : ~|(Count);
endmodule

