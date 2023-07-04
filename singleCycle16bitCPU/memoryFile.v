`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:15:59 07/03/2023 
// Design Name: 
// Module Name:    memoryFile 
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
module memoryFile( input [15:0] address,input [15:0]  mem_write_data,input clk, input mem_write_en,  output [15:0] readData
    );

reg [15:0] mem [1023:0];

integer i ; 
 initial begin  
          $readmemb("./input/data1.txt", mem);
      end  
		
		
 always @(negedge clk) begin  
      if (mem_write_en)  begin
           mem[address] <= mem_write_data; 
			  $display("data=%b  is written in  address=%b",mem_write_data, address);
		end	
	
      end  

assign readData = mem [address] ; 
endmodule
