vlib work
vdel -all
vlib work

vlog -sv rca.sv 
vlog -sv rca_tb.sv 
vsim work.tb
add wave -r *
run -all