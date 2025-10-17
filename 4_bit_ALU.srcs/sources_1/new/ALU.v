`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: N/A
// Engineer: Rodrigo Picazo Cobaleda
// 
// Create Date: 15.10.2025 10:33:51
// Design Name: 
// Module Name: ALU
// Project Name: 4 bit ALU
// Target Devices: N/A
// Tool Versions: Vivado Design Suite 2025.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(
        input [3:0] a_i,
        input [3:0] b_i,
        input [1:0] op_i,
        output reg [7:0] result_o
    );
    // 0 - Add
    // 1 - Multiplication
    // 2 - Module
    // 3 - Bitwise And
    always @ (a_i, b_i, op_i) begin
        case(op_i)
        0: result_o[7:0] = a_i[3:0] + b_i[3:0];
        1: result_o[7:0] = a_i[3:0] * b_i[3:0];
        2: result_o[7:0] = a_i[3:0] % b_i[3:0];
        3: result_o[7:0] = a_i[3:0] & b_i[3:0];     
        default: result_o[7:0] = a_i;   
//        default: result_o[7:0] = a_i[3:0] && b_i[3:0];
        endcase
    end
endmodule
