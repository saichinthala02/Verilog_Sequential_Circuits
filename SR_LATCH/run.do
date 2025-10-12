vlib work
vlog tb_sr_latch.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
