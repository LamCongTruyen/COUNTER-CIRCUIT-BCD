//4: Chương trình testbench
module TESTBENCH;

	// Inputs
	reg clk;
	reg clr;
	reg pause;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	DEM_0_9 uut (
		.clk(clk), 
		.clr(clr), 
		.pause(pause), 
		.q(q)
	);
// Tạo xung clock
    always #5 clk = ~clk; // Clock 10ns (100MHz)

    initial begin
        // Khởi tạo tín hiệu
        clk = 0;
        clr = 1;
        pause = 0;
        
        #20 clr = 0;  // Nhả reset

        #100 pause = 1; // Tạm dừng đếm
        #50 pause = 0;  // Tiếp tục đếm
		  
		  #500 clr = 1; // Reset lại bộ đếm
        #20 clr = 0; 

        #1000 $stop; // Dừng mô phỏng
    end

    // Monitor giá trị đếm
    
      
endmodule
