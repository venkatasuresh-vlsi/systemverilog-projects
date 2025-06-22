vlib work
vdel -all
vlib work

vlog -sv demux.sv 
vlog -sv demux_tb.sv 
vsim work.tb
add wave -r *
run -all