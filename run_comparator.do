vlib work
vdel -all
vlib work

vlog -sv comparator.sv 
vlog -sv comparator_tb.sv 
vsim work.tb
add wave -r *
run -all