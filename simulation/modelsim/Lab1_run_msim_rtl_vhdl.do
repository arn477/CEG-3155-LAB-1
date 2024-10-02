transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/datapath.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/shiftright1.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/shiftleft1.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/mux21.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/eightbitmux41.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/eightbitmux21.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/eightbitregister.vhd}
vcom -93 -work work {C:/Users/arnav/Desktop/CEG-3155-LAB-1/enardFF_2.vhd}

