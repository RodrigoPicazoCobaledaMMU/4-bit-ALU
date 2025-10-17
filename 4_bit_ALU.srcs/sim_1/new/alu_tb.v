`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2025 14:46:35
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module alu_tb();
reg [3:0]a; 
reg [3:0]b;
reg [1:0]op;
wire [7:0]result;

alu ALU_TEST(
.a_i(a),
.b_i(b),
.op_i(op),
.result_o(result)
);

   initial begin
       a =1 ;b = 1; op = 0;#5
       $display("a + b = %d", result);
       a = 2; b = 5; op = 1; #5
       $display("a * b = %d", result);
       a = 15; b = 3; op = 2; #5
       $display("a modulo b = %d", result);
       a = 3; b = 1; op = 3;  #5
       $display("a & b = %d", result); 
       $stop;
   end
endmodule
