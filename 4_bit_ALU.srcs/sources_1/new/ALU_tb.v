`timescale 1ns / 1ps
`include "ALU.v"

module alu_DUT();
reg a[3:0], b[3:0], op[1:0];
wire result[7:0];

alu ARITH(.a_i(a[3:0]),.b_i(b[3:0]),.op_i(op[1:0]),.result_o(result[7:0]));

endmodule