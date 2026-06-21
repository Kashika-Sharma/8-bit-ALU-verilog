`timescale 1ns / 1ps
module alu_8_tb;

reg [7:0] A;
reg [7:0] B;
reg [2:0] Opcode;

wire [7:0] result;
wire zero;

alu_8bits uut(
    .A(A),
    .B(B),
    .Opcode(Opcode),
    .result(result),
    .zero(zero)
);

initial
begin

// Addition
A = 8'd10;
B = 8'd5;
Opcode = 3'b000;
#10;

// Subtraction
A = 8'd10;
B = 8'd5;
Opcode = 3'b001;
#10;

// AND
A = 8'b10101010;
B = 8'b11110000;
Opcode = 3'b010;
#10;

// OR
A = 8'b10101010;
B = 8'b11110000;
Opcode = 3'b011;
#10;

// XOR
A = 8'b10101010;
B = 8'b11110000;
Opcode = 3'b100;
#10;

// Shift Left
A = 8'd10;
B = 8'd0;
Opcode = 3'b101;
#10;

// Shift Right
A = 8'd10;
B = 8'd0;
Opcode = 3'b110;
#10;

// NOT
A = 8'b10101010;
B = 8'd0;
Opcode = 3'b111;
#10;

end
