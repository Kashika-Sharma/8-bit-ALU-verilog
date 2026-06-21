`timescale 1ns / 1ps
module alu_8bits(
    input [7:0] A,
    input [7:0] B,
    input [2:0] Opcode,
    output reg[7:0] result,
    output reg zero
    );
always @(*)
begin

case(Opcode)

3'b000: result = A + B;

3'b001: result = A - B;

3'b010: result = A & B;

3'b011: result = A | B;

3'b100: result = A ^ B;

3'b101: result = A << 1;

3'b110: result = A >> 1;

3'b111: result = ~A;

endcase

if(result == 8'b00000000)
zero = 1;
else
zero = 0;

end

endmodule
