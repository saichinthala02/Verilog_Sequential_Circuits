vlib work
vlog tb_siso.v
vsim top
add wave -position insertpoint sim:/top/dut/*
run -all
