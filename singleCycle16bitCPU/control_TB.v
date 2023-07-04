`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:10:39 07/04/2023
// Design Name:   control
// Module Name:   G:/verilog/singleCycle16bitCPU/control_TB.v
// Project Name:  singleCycle16bitCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_TB;

	// Inputs
	reg [2:0] opcode;
	reg reset;

	// Outputs
	wire jump;
	wire branch;
	wire mem_write;
	wire alu_src;
	wire reg_write;
	wire reg_dst;
	wire mem_to_reg;

	// Instantiate the Unit Under Test (UUT)
	control uut (
		.opcode(opcode), 
		.reset(reset), 
		.jump(jump), 
		.branch(branch), 
		.mem_write(mem_write), 
		.alu_src(alu_src), 
		.reg_write(reg_write), 
		.reg_dst(reg_dst), 
		.mem_to_reg(mem_to_reg)
	);

    integer j;

	initial begin

		for(j=0;j<8;j = j+1)begin
		    opcode = j;
		    #100;
			 $display("Opcode is %d%d%d controls are : %d %d %d %d %d %d %d", opcode[2], opcode[1], opcode[0],jump,branch,mem_write,alu_src,reg_write , reg_dst ,mem_to_reg);
		end

	end
      
endmodule

