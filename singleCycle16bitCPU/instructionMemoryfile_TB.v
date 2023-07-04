`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:16:03 07/04/2023
// Design Name:   instructionMemory
// Module Name:   G:/verilog/singleCycle16bitCPU/instructionMemoryfile_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instructionMemory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module instructionMemoryfile_TB;

	// Inputs
	reg [15:0] pc;

	// Outputs
	wire [15:0] ins;

	// Instantiate the Unit Under Test (UUT)
	instructionMemory uut (
		.pc(pc), 
		.ins(ins)
	);
integer i;
	initial begin
		// Initialize Inputs
		pc = 0;

		// Wait 100 ns for global reset to finish
		#100;
		 
 for (i=0 ; i<5;i=i+1)begin
		pc=i;
		#10;
		$display("ins = %b ", ins);

 end
        
		// Add stimulus here

	end
      
endmodule

