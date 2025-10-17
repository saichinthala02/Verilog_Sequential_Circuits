vlib work
vlog tb_up_down.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
