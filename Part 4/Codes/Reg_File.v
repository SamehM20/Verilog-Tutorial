module Reg_File (
    input CLK, Reset, Read, Write,
    input [7:0] Data_wr,
    input [9:0] Address_wr, Address_rd,
    output reg [7:0] Data_rd 
);
    // Register Array.
    reg [7:0] mem_file [(2**10)-1:0];
    // Reset Iteration Variable.
    integer i;

    always @(posedge CLK) begin
        if(Reset)
            for(i=0; i<(2**10)-1; i=i+1)
                mem_file[i] <= 0;
        else begin
            if(Read) Data_rd <= mem_file[Address_rd];
            if(Write)  mem_file[Address_wr] <= Data_wr;
        end
    end
endmodule

