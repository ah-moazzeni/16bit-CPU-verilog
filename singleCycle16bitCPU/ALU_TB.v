`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:53:16 07/04/2023
// Design Name:   ALU
// Module Name:   G:/verilog/singleCycle16bitCPU/ALU_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_TB;

	// Inputs
	reg [15:0] a;
	reg [15:0] b;
	reg [2:0] opcode;

	// Outputs
	wire [15:0] result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.a(a), 
		.b(b), 
		.opcode(opcode), 
		.result(result), 
		.zero(zero)
	);
	
	initial begin
	   a = 5;
		b = 6;
		opcode = 3'b000;
		#10;
		$display("add 5+6 : result = %d    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		b = -3;
		opcode = 3'b001;
		#10;
		$display("addi 4-3 : result = %d    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 1;
		b = 5;
		opcode = 3'b010;
		#10;
		$display("shift left 1 >> 100 :result = %b    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 15;
		b = 2;
		opcode = 3'b010;
		#10;
		$display("shift right 1111 > 0111 :result = %b    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		

		a = 1;
		b = 5;
		opcode = 3'b011;
		#10;
		$display("rotate left 1>>100:result = %b    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 3;
		b = 8;
		opcode = 3'b011;
		#10;
		$display("rotate right  11 >> 0011 :result = %b    <>    zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 10;
		b = -2;
		opcode = 3'b100;
		#10;
		$display("beq 10 != -2 :zero = %b ",  zero);

		// Wait 100 ns for global reset to finish
		#100;
		
				a = 10;
		b = 10;
		opcode = 3'b100;
		#10;
		$display("beq 10 == 10 : zero = %b", zero);

		// Wait 100 ns for global reset to finish
		#100;
		a = 10;
		b = 10;
		opcode = 3'b101;
		#10;
		$display("sw 10+10 :result = %d    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		a = 10;
		b = 10;
		opcode = 3'b110;
		#10;
		$display("lw 10+10 :result = %d    <>     zero = %b", result, zero);

		// Wait 100 ns for global reset to finish
		#100;
		
		
		
		
        
	end
      
endmodule

