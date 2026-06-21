# 8-bit Arithmetic Logic Unit (ALU) in Verilog

## Overview
This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL and Xilinx Vivado. The design performs arithmetic and logical operations based on a 3-bit opcode and was verified through simulation and synthesis.

## Features
- 8-bit inputs A and B
- 3-bit opcode selection
- Zero flag output
- Verilog HDL implementation
- Functional simulation in Vivado

## Supported Operations

| Opcode | Operation |
|--------|---------- |
|000     |Addition   |
|001     |Subtraction|
|010     |AND        |
|011     |OR         |
|100     |XOR        |
|101     |Left Shift |
|110     |Right Shift|
|111     |NOT        |

## Inputs and Outputs

### Inputs
- A[7:0]
- B[7:0]
- Opcode[2:0]

### Outputs
- Result[7:0]
- Zero Flag

## Project Structure

```
src/
    alu_8bits.v

testbench/
    alu_8_tb.v

images/
    RTL.JPG
    simulation.JPG
    Synthesis Schematic.JPG

reports/
    DESIGN AND SIMULATION OF AN 8 
```

## Tools Used
- Verilog HDL
- Xilinx Vivado 2025.2

## Results
The design was successfully simulated and synthesized in Vivado.

## Author
Kashika Sharma 
