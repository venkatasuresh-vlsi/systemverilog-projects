vlib work
vdel -all
vlib work

vlog -sv full_subtractor.sv 
vlog -sv full_subtractor_tb.sv 
vsim work.tb
add wave -r *
run -all