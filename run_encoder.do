vlib work
vdel -all
vlib work

vlog -sv encoder.sv 
vlog -sv encoder_tb.sv 
vsim work.tb
add wave -r *
run -all