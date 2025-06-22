vlib work
vdel -all
vlib work

vlog -sv half_subtractor.sv 
vlog -sv half_subtractor_tb.sv 
vsim work.tb
add wave -r *
run -all