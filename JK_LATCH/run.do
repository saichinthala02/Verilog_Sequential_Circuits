vlib work
vlog tb_jk_latch.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
