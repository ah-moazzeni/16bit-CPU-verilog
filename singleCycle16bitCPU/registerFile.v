`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:32 07/02/2023 
// Design Name: 
// Module Name:    registerFile 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module registerFile(ReadRegister1, clk,ReadRegister2, WriteRegister, WriteData, RegWrite, ReadData1, ReadData2);

	/* Please fill in the implementation here... */ 
	input [3:0] ReadRegister1,ReadRegister2,WriteRegister;
	input [15:0] WriteData;
	input RegWrite;
	input clk;
	
	output reg [15:0] ReadData1,ReadData2;
	
	
	//reg [31:0] Registers = new reg[32];
	reg [15:0] Registers [15:0];
	
	initial begin
		Registers[0] <= 16'h0000;
		Registers[1] <= 16'h0000;
		Registers[2] <= 16'h0000;
		Registers[3] <= 16'h0000;
		Registers[4] <= 16'h0000;
		Registers[5] <= 16'h0000;
		Registers[6] <= 16'h0000;
		Registers[7] <= 16'h0000;
		Registers[8] <= 16'h0000;
		Registers[9] <= 16'h0000;
		Registers[10] <= 16'h0000;
		Registers[11] <= 16'h0000;
		Registers[12] <= 16'h0000;
		Registers[13] <= 16'h0000;
		Registers[14] <= 16'h0000;
		Registers[15] <= 16'h0000;

	end
		
	always @ (negedge clk ) begin
   if (RegWrite == 1) 
		begin
			Registers[WriteRegister] <= WriteData;
			$display("data %b is written on register %b", WriteData, WriteRegister);

		end

 end

	always @ (*) begin
   if(clk) begin
		ReadData1 <= Registers[ReadRegister1];
	 	ReadData2 <= Registers[ReadRegister2];
	end

 end
		

endmodule
