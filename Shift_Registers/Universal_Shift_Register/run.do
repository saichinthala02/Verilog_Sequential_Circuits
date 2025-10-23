vlib work
vlog tb_shift.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
