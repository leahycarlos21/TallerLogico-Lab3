transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/not_.sv}
vlog -sv -work work +incdir+D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1 {D:/leahyvasquez/Documents/ISEM2020/TallerDisenoLogico/Laboratorio3/GitHub/TallerLogico-Lab3/Problema1/testbench.sv}

