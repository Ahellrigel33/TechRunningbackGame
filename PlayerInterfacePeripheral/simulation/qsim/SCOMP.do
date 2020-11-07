onerror {exit -code 1}
vlib work
vcom -work work SCOMP.vho
vcom -work work SCOMP_test.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.SCOMP_System_vhd_vec_tst
vcd file -direction SCOMP.msim.vcd
vcd add -internal SCOMP_System_vhd_vec_tst/*
vcd add -internal SCOMP_System_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
