vlib work
vdel -all
vlib work

vlog -sv csa.sv 
vlog -sv csa_tb.sv 
vsim work.tb
add wave -r *
run -all