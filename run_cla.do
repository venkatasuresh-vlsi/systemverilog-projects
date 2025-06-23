vlib work
vdel -all
vlib work

vlog -sv cla.sv 
vlog -sv cla_tb.sv 
vsim work.tb
add wave -r *
run -all