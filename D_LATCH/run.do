vlib work
vlog tb_d_latch.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
