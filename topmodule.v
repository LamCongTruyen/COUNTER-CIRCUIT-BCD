module TOP_MODULE(
    input clk_ht, clr, pause,
    output [6:0] SEG,
    output CA
    );

wire w1;
wire [3:0] w2;

CHIA_1HZ IC1 (.clk_ht(clk_ht), .clk_1hz(w1));
DEM_0_9 IC2 (.clk(w1), .clr(clr), .pause(pause), .q(w2));
GM7DOAN_CC IC3 (.I(w2), .Y(SEG), .CA(CA));

Endmodule
