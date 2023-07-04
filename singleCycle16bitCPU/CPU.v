`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:11:12 07/03/2023 
// Design Name: 
// Module Name:    CPU 
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
module CPU( input clk,input reset ,
output alu_out
    );
wire [15:0] pc, next_pc;
always @(ins)begin
if(ins==16'bx)begin
		$finish;
		end
end
wire [15:0] ins;

assign alu_out = ALU_out;

wire jump,branch,mem_write,alu_src,reg_write , reg_dst ,mem_to_reg   ;

wire     [3:0]     reg_write_dest;  
wire     [15:0] reg_write_data;  
wire     [15:0] reg_read_data_1,readData; 
wire     [15:0] reg_read_data_2;  
wire     [3:0]     reg_read_addr_1;  
wire     [3:0]     reg_read_addr_2;  
wire [15:0] ALU_out;  
 wire [15:0] res;
wire [15:0]mem_read_data;  
PC pcc (
    .clk(clk), 
    .pc(next_pc), 
    .p(pc), 
    .j(jump || branch)
    );
assign next_pc = (jump || (branch&&zero)) ? ((jump) ? {pc[15:13],ins[12:0]} : (pc+2+res)) : pc+2; 
signExtend sginextend (
    .inp(ins[4:0]), 
    .res(res)
    );


control cntr (
    .opcode(ins[15:13]), 
    .reset(reset), 
    .jump(jump), 
    .branch(branch), 
    .mem_write(mem_write), 
    .alu_src(alu_src), 
    .reg_write(reg_write), 
    .reg_dst(reg_dst), 
    .mem_to_reg(mem_to_reg)
    );



instructionMemory insmem (
    .pc(pc), 
    .ins(ins)
    );
	 
assign reg_read_addr_1 = ins[12:9];  
 assign reg_read_addr_2 = ins[8:5];  
 assign reg_write_dest = (reg_dst==0) ? ins[4:1] :ins[8:5];  
 assign reg_write_data = (mem_to_reg) ? readData : ALU_out;
registerFile instance_name (
    .ReadRegister1(reg_read_addr_1), 
    .clk(clk), 
    .ReadRegister2(reg_read_addr_2), 
    .WriteRegister(reg_write_dest), 
    .WriteData(reg_write_data), 
    .RegWrite(reg_write), 
    .ReadData1(reg_read_data_1), 
    .ReadData2(reg_read_data_2)
    );
wire [15:0] alu_b;
assign alu_b = (alu_src) ? res :reg_read_data_2 ;
wire zero;
ALU alu (
    .a(reg_read_data_1), 
    .b(alu_b), 
    .opcode(ins[15:13]), 
    .result(ALU_out), 
    .zero(zero)
    );



memoryFile memfile (
    .address(ALU_out), 
    .mem_write_data(reg_read_data_2), 
    .clk(clk), 
    .mem_write_en(mem_write), 
    .readData(readData)
    );




endmodule
