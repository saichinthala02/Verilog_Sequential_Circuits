vlib work
vlog tb_johnson.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
