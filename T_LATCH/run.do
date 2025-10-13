vlib work
vlog tb_t_latch.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
