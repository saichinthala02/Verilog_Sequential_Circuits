vlib work
vlog jitter.v
vsim top +freq=100 +duty=80 +gitter=10
add wave -position insertpoint sim:/top/*
run -all
