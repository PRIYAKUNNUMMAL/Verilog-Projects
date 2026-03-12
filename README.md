# Verilog Projects

![Verilog](https://img.shields.io/badge/HDL-Verilog-blue)
![Simulation](https://img.shields.io/badge/Simulation-Icarus%20Verilog-green)
![Waveform](https://img.shields.io/badge/Waveform-GTKWave-orange)


# Implemented Modules

## Arithmetic Logic Unit (ALU)

A parameterized **N-bit ALU** supporting the following operations:

| Opcode | Operation |
| ------ | --------- |
| `000`  | AND       |
| `001`  | OR        |
| `010`  | NOT A     |
| `011`  | NOT B     |
| `100`  | ADD       |
| `101`  | SUB       |

The ALU uses a **single-adder architecture** to perform both addition and subtraction using two's complement arithmetic.

Key design concepts:

* Conditional operand inversion
* Parameterized datapath
* Multiplexer-based operation selection

---

# Simulation Tools

The projects are simulated using:

* **V S Code**
* **Icarus Verilog**
* **GTKWave**

---
