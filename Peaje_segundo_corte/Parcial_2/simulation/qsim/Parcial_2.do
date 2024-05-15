onerror {exit -code 1}
vlib work
vlog -work work Parcial_2.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Parcial_2_vlg_vec_tst -voptargs="+acc"
vcd file -direction Parcial_2.msim.vcd
vcd add -internal Parcial_2_vlg_vec_tst/*
vcd add -internal Parcial_2_vlg_vec_tst/i1/*
run -all
quit -f
