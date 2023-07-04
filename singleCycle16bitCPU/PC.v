`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:25 07/03/2023 
// Design Name: 
// Module Name:    PC 
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
module PC( input clk , input  [15:0] pc ,output  [15:0] p , input j
    );
	 
initial begin  
Pc = 16'd0;
      end  
reg [15:0] Pc;
always @ (posedge clk ) begin

	Pc <= pc;  
end
assign p = Pc;
endmodule
