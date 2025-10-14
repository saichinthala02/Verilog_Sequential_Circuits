vlib work
vlog sr_ff_str.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
