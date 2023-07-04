`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:39:14 07/04/2023 
// Design Name: 
// Module Name:    rotate 
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
module rotate( input [15:0] a , input [15:0] b , output reg [15:0] result
    );
	integer i ;

always @ (*) begin 
 result = a;
                if(b[0] == 1)
                    for(i=0;i<b[4:1];i = i+1)
                        result = (result << 1) + result[15];
                else
                    for(i=0;i<b[4:1];i = i+1)
                        result = (result >> 1) + (result[0] << 15);
 
end

endmodule
