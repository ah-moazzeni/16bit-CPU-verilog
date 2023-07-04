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

reg [15:0] temp [511:0];



reg [7:0]  mem  [1023:0]; //memory



integer j;

 initial begin  
          $readmemb("./input/data2.txt", temp);
			 for (j=0 ; j<512;j=j+1)begin 
		  mem[2*j] = temp[j][15:8];
        mem[2*j+1] = temp[j][7:0];
	end
      end  
		
		
 always @(negedge clk) begin  
      if (mem_write_en)  begin
           mem[2*address] <= mem_write_data[15:8]; 
			  mem[2*address+1] <= mem_write_data[7:0]; 
			  $display("data=%b  is written in  address=%b  and %b",mem_write_data, 2*address[7:0],2*address+1);
		end	
	
      end  

assign readData = {mem [2*address],mem[2*address+1]} ; 
endmodule
