`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:54:35 07/03/2023
// Design Name:   registerFile
// Module Name:   G:/verilog/singleCycle16bitCPU/registerFile_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: registerFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module registerFile_TB;

	// Inputs
	reg [3:0] ReadRegister1;
	reg clk;
	reg [3:0] ReadRegister2;
	reg [3:0] WriteRegister;
	reg [15:0] WriteData;
	reg RegWrite;

	// Outputs
	wire [15:0] ReadData1;
	wire [15:0] ReadData2;

	// Instantiate the Unit Under Test (UUT)
	registerFile uut (
		.ReadRegister1(ReadRegister1), 
		.clk(clk), 
		.ReadRegister2(ReadRegister2), 
		.WriteRegister(WriteRegister), 
		.WriteData(WriteData), 
		.RegWrite(RegWrite), 
		.ReadData1(ReadData1), 
		.ReadData2(ReadData2)
	);
always #10 clk = ~clk;
      
	initial begin
	clk = 0;
		// Initialize Inputs
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 0;
		WriteData = 0;
		RegWrite = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		ReadRegister1 = 1;
		ReadRegister2 = 1;
		WriteRegister = 1;
		WriteData = 15;
		RegWrite = 1;
		
		#20;
		
		ReadRegister1 = 1;
		ReadRegister2 = 2;
		WriteRegister = 2;
		WriteData = 5;
		RegWrite = 1;
		
		#20;
		
		ReadRegister1 = 1;
		ReadRegister2 = 2;
		WriteRegister = 5;
		WriteData = 5;
		RegWrite = 0;
        
		// Add stimulus here
		// Add stimulus here

	end
	
	
endmodule

