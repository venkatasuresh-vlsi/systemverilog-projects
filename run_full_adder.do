vlib work
vdel -all
vlib work

vlog -sv full_adder.sv 
vlog -sv full_adder_tb.sv 
vsim work.tb
add wave -r *
run -all