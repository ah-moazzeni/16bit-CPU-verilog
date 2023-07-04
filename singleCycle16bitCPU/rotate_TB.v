`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:43:59 07/04/2023
// Design Name:   rotate
// Module Name:   G:/verilog/singleCycle16bitCPU/rotate_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rotate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rotate_TB;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;

	// Outputs
	wire [15:0] result;

	// Instantiate the Unit Under Test (UUT)
	rotate uut (
		.a(a), 
		.b(b), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	a = 1;
		 b= 5;
		
		#10;
		
		a = 1;
		b= 8 ;
		
		#10;

	end
      
endmodule

