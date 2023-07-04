`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:13 07/03/2023 
// Design Name: 
// Module Name:    control 
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
module control( input[2:0] opcode,  
                           input reset,  
                           
                           output reg jump,branch,mem_write,alu_src,reg_write , reg_dst ,mem_to_reg                
   );  
 always @(opcode, reset)  
 begin  
      if(reset == 1'b1) begin  
                reg_dst = 0;  
                mem_to_reg = 0;  
                jump = 1'b0;  
                branch = 1'b0;  
              
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b0;  
               
      end  
      else begin  
      case(opcode)   
      3'b000: begin // add  
                reg_dst = 0;  
                mem_to_reg = 0;  
                jump = 1'b0;  
                branch = 1'b0;  
                
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b1;  
                 
                end  
      3'b010: begin // sli  
                reg_dst = 1;  
                mem_to_reg =0; 
                jump = 1'b0;  
                branch = 1'b0;  
                 
                mem_write = 1'b0;  
                alu_src = 1'b1;  
                reg_write = 1'b1;  
               
                end  
      3'b011: begin // routate  
                reg_dst = 1;  
                mem_to_reg = 0; 
                jump = 1'b0;  
                branch = 1'b0;  
                 
                mem_write = 1'b0;  
                alu_src = 1'b1;  
                reg_write = 1'b1;  
               
                end  
      3'b111: begin // jmp  
                reg_dst = 1;  
                mem_to_reg = 0; 
                jump = 1'b1;  
                branch = 1'b0;  
               
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b0;  
                
                end  
      3'b110: begin // lw  
                reg_dst =1;  
                mem_to_reg = 1; 
                jump = 1'b0;  
                branch = 1'b0;  
               
                mem_write = 1'b0;  
                alu_src = 1'b1;  
                reg_write = 1'b1;  
               
                end  
      3'b101: begin // sw  
                reg_dst = 1;  
                mem_to_reg = 0;  
                jump = 1'b0;  
                branch = 1'b0;  
               
                mem_write = 1'b1;  
                alu_src = 1'b1;  
                reg_write = 1'b0;  
               
                end  
      3'b100: begin // beq  
                reg_dst = 1;  
                mem_to_reg = 0; 
                jump = 1'b0;  
                branch = 1'b1;  
               
                mem_write = 1'b0;  
                alu_src = 1'b0;  
                reg_write = 1'b0;  
               
                end  
      3'b001: begin // addi  
                reg_dst = 1;  
                mem_to_reg = 0;  
                jump = 1'b0;  
                branch = 1'b0;  
               
                mem_write = 1'b0;  
                alu_src = 1'b1;  
                reg_write = 1'b1;  
           
                end  
   
      endcase  
      end  
 end  


endmodule
