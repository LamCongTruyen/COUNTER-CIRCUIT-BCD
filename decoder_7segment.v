
//  code giải mã
module GM7DOAN_CC (I, Y,CA);	//cathode chung
	input [3:0] I;
	output [6:0] Y;	//Y6 - Y0 ==> a - g
	output CA;
	reg [6:0] Y;

		always @ (I)
		begin
			case (I)
					4'd0:Y=7'b1111110;	// 0
					4'd1:Y=7'b0110000;	// 1
					4'd2:Y=7'b1101101;	// 2
					4'd3:Y=7'b1111001;	// 3
					4'd4:Y=7'b0110011;	// 4
					4'd5:Y=7'b1011011;	// 5
					4'd6:Y=7'b1011111;	// 6
					4'd7:Y=7'b1110000;	// 7
					4'd8:Y=7'b1111111;	// 8
					4'd9:Y=7'b1111011;	// 9
					default : Y=7'b0000000;	// OFF
			endcase
		end
		assign CA = 1'b1; 	//Chọn led đơn vị hiển thị
endmodule
