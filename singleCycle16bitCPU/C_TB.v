`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:06:37 07/03/2023
// Design Name:   PC
// Module Name:   G:/verilog/singleCycle16bitCPU/C_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_TB;

	// Inputs
	reg clk;
	reg [15:0] pc;
	reg j;

	// Outputs
	wire [15:0] p;

	// Instantiate the Unit Under Test (UUT)
	PC uut (
		.clk(clk), 
		.pc(pc), 
		.p(p), 
		.j(j)
	);
	always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		pc = 0;
		j = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
		j=1;
		pc = 100;
		#50
		j=0;
		// Add stimulus here

	end
      
endmodule

