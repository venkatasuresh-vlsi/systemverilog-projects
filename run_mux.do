vlib work
vdel -all
vlib work

vlog -sv mux.sv 
vlog -sv mux_tb.sv 
vsim work.tb
add wave -r *
run -all