transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/joshd/Desktop/Docs/School/ECE 201/Labs/Lab 10/Lab10.1/part1.vhd}
vcom -93 -work work {C:/Users/joshd/Desktop/Docs/School/ECE 201/Labs/Lab 10/Lab10.1/TflipFlop.vhd}
vcom -93 -work work {C:/Users/joshd/Desktop/Docs/School/ECE 201/Labs/Lab 10/Lab10.1/debounce.vhd}
vcom -93 -work work {C:/Users/joshd/Desktop/Docs/School/ECE 201/Labs/Lab 10/Lab10.1/output_files/byteToHex7Seg.vhd}

