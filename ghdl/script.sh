#!/bin/bash

srcdir_core=../

# Analyse sources; libs and images at first!
ghdl -a --work=neorv32 $srcdir_core/neorv32_package.vhd

#
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_alu.vhd
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_bus.vhd
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_control.vhd
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_cp_bitmanip.vhd
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_cp_muldiv.vhd
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_decompressor.vhd
ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu_regfile.vhd

ghdl -a --work=neorv32 $srcdir_core/neorv32_cpu.vhd

yosys -m ghdl -p 'ghdl neorv32_cpu'