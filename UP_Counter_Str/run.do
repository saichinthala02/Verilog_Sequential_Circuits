vlib work
vlog tb_up_counter.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
