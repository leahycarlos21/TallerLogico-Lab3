transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/and_.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/or_.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/xor_.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/not_.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/testbench.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/mux_N.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/shift_left_logical.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/shift_right_logical.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/ALU.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/aritm_shift_right.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/flag_Negativo.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/flag_Zero.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/sum_rest.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/flag_Overflow.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/flagMux.sv}

