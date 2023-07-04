`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:09 07/03/2023 
// Design Name: 
// Module Name:    instructionMemory 
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
module instructionMemory( input [15:0] pc , output  [15:0] ins
    );


reg [15:0] temp [511:0];




reg [7:0]  mem  [1023:0]; //memory



integer j;
         initial
 begin
  $readmemb("./input/inp2.txt", temp);
	for (j=0 ; j<512;j=j+1)begin 
		  mem[2*j] = temp[j][15:8];
        mem[2*j+1] = temp[j][7:0];
	end
 end
always @ (pc) begin

		$display("new instruction: %b	  pc:%b",{mem[pc], mem[pc+1]},pc);
		
end
assign ins = {mem[pc], mem[pc+1]};

endmodule
