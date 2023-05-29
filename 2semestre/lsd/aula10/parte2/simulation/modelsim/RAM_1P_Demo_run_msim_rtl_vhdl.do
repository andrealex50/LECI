transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/alexa/lsd/aula10/parte2/RAM_1P_16_8.vhd}

