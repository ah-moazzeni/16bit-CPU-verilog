`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:13:58 07/03/2023
// Design Name:   signExtend
// Module Name:   G:/verilog/singleCycle16bitCPU/signExtend_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: signExtend
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module signExtend_TB;

	// Inputs
	reg [4:0] inp;

	// Outputs
	wire [15:0] res;

	// Instantiate the Unit Under Test (UUT)
	signExtend uut (
		.inp(inp), 
		.res(res)
	);

	initial begin
		// Initialize Inputs
		inp = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		inp= 5'b00100; 
#10;		
$display("result = %b   ",res);
		// Add stimulus here
#100;
        
		  
		inp= 5'b11000; 
		#10;
		$display("result = %b   ",res);

	end
      
endmodule

