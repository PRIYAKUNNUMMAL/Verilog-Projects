iverilog -o sim alu.v tb_alu.v full_adder.v parameterized_four_bit_adder.v
vvp sim
pause