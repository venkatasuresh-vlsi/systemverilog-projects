vlib work
vdel -all
vlib work

vlog -sv half_adder.sv 
vlog -sv half_adder_tb.sv 
vsim work.tb
add wave -r *
run -all