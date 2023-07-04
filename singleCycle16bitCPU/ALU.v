`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:00 07/03/2023 
// Design Name: 
// Module Name:    ALU 
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
module ALU( input [15:0] a , input [15:0] b , input [2:0] opcode ,output reg [15:0] result ,output reg zero
    );
reg [15:0] temp;

reg carry;	
integer i;
always @(*)
begin 
temp =b[5:1];
 case(opcode)
 3'b000: begin  result <= a + b; // add
 zero <= 0;
 end
 3'b001:  begin  result <= a + b; // addi
 zero <= 0;
 end
 3'b101: begin  result <= a + b; // add
 zero <= 0;
 end
 3'b110: begin  result <= a + b; // add
 zero <= 0;
 end
 3'b111:  begin  result <=0; // add
 zero <= 0;
 end
 3'b010: begin
	if(b[0]==1)begin
		result = a<<b[15:1];
	end
	else begin
		result = a>>b[15:1];
	end
	zero = 0;
 
 end
 3'b011: begin
	 result = a;
    if(b[0] == 1)
       for(i=0;i<b[4:1];i = i+1)
          result = (result << 1) + result[15];
     else
       for(i=0;i<b[4:1];i = i+1)
          result = (result >> 1) + (result[0] << 15);
 
	zero = 0;
 end
 
 3'b100:begin
 zero <= (a==b) ? 1'b1: 1'b0;
 
 end



 endcase
 
//$display("a=%b   ,b=%b ,  result = %b    |    zero = %b",a,b, result, zero);
end

 
endmodule
