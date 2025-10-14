vlib work
vlog tb_dff.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
