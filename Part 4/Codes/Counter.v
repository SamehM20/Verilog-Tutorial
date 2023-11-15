module Counter (
    input CLK, En, Reset, Load, UpDown,
    input [3:0] P,
    output Tick,
    output reg [3:0] Count
);
    always @(posedge CLK) begin
        if(Reset)   // Active High Synchronous Reset.
            if(UpDown) // Counting Up. Reset value is 0000.
                Count <= 0;
            else        // Counting Down. Reset value is 1111.
                Count <= 4'b1111;
        else if(En) // Checking if the counter is enabled.
            if(Load)// Loading P data to Count.
                Count <= P;
            else if(UpDown) // Counting Up.
                Count <= Count + 1;
            else            // Counting Down.
                Count <= Count - 1;
    end
    // If counting up, the tick is when Count = 1111.
    // If counting down, the tick is when Count = 0000.
    assign Tick = (UpDown)? &(Count) : ~|(Count);
endmodule

