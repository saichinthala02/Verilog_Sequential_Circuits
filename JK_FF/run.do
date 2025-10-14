vlib work
vlog jk_ff_str.v
vsim top
#add wave -position insertpoint sim:/top/dut/*
add wave -r sim:/top/dut/*
force -deposit sim:/top/dut/q 0 0
force -deposit sim:/top/dut/qbar 1 0
force -deposit sim:/top/dut/n3 0 0
force -deposit sim:/top/dut/n4 1 0
run -all
