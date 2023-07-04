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


reg [15:0] mem [1023:0];


         initial
 begin
  $readmemb("./input/inp1.txt", mem);

 end
always @ (pc) begin

		$display("new instruction: %b	  pc:%b",mem [pc],pc);
		
end
assign ins = mem [pc] ; 

endmodule
