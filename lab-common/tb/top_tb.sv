`include "src/top.sv"
`default_nettype none

module top_tb;
logic [3:0] tb_bcd;

logic [6:0] tb_seg7;

top uut
(
    .bcd(tb_bcd),
    .seg7(tb_seg7)
);

localparam delay_PERIOD = 15;

initial begin
    $dumpfile("build/top.vcd");
    $dumpvars(0, top_tb);
end

initial begin
    for (int i = 0; i <= 15; i=i+1)begin
        tb_bcd = i;
        #(delay_PERIOD);
    end
    
    $finish;
end

endmodule
`default_nettype wire