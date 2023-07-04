`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:05:52 07/03/2023
// Design Name:   memoryFile
// Module Name:   G:/verilog/singleCycle16bitCPU/memoryFile_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memoryFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memoryFile_TB;

	// Inputs
	reg [15:0] address;
	reg [15:0] mem_write_data;
	reg clk;
	reg mem_write_en;

	// Outputs
	wire [15:0] readData;

	// Instantiate the Unit Under Test (UUT)
	memoryFile uut (
		.address(address), 
		.mem_write_data(mem_write_data), 
		.clk(clk), 
		.mem_write_en(mem_write_en), 
		.readData(readData)
	);
	always #10 clk = ~clk ;
	integer i ;
	initial begin
	clk=0;
	mem_write_en=0;
	
		for (i=0;i<3;i=i+1) begin
		address=i;
			#10;
		$display(" data = %b ", readData);

		end
	end
      
endmodule

