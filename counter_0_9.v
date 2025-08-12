module DEM_0_9 (clk,clr,pause,q);
input clk,clr,pause;
output [3:0] q;
reg [3:0] q_tam = 4'b0000;
always @ (posedge clk, posedge clr)
begin
		if (clr)
		q_tam <= 4'b0000;
		else if (pause)
		q_tam <= q_tam;
		else
			begin
			q_tam <= q_tam + 1;
			if (q_tam == 4'b1001)
			q_tam <= 4'b0000;
			end
end
assign q = q_tam;
endmodule
