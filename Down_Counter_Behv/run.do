vlib work 
vlog tb_down_counter.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
