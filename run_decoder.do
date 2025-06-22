vlib work
vdel -all
vlib work

vlog -sv decoder.sv 
vlog -sv decoder_tb.sv 
vsim work.tb
add wave -r *
run -all