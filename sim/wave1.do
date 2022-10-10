onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix hexadecimal /test_VGA/C0/hsync_end
add wave -noupdate -radix hexadecimal /test_VGA/C0/hdat_begin
add wave -noupdate -radix hexadecimal /test_VGA/C0/hdat_end
add wave -noupdate -radix hexadecimal /test_VGA/C0/hpixel_end
add wave -noupdate -radix hexadecimal /test_VGA/C0/vsync_end
add wave -noupdate -radix hexadecimal /test_VGA/C0/vdat_begin
add wave -noupdate -radix hexadecimal /test_VGA/C0/vdat_end
add wave -noupdate -radix hexadecimal /test_VGA/C0/vline_end
add wave -noupdate -radix hexadecimal /test_VGA/C0/clock
add wave -noupdate -radix hexadecimal /test_VGA/C0/switch
add wave -noupdate -radix hexadecimal /test_VGA/C0/disp_RGB
add wave -noupdate -radix hexadecimal /test_VGA/C0/hsync
add wave -noupdate -radix hexadecimal /test_VGA/C0/vsync
add wave -noupdate -radix hexadecimal /test_VGA/C0/hcount
add wave -noupdate -radix hexadecimal /test_VGA/C0/vcount
add wave -noupdate -radix hexadecimal -childformat {{{/test_VGA/C0/data[2]} -radix hexadecimal} {{/test_VGA/C0/data[1]} -radix hexadecimal} {{/test_VGA/C0/data[0]} -radix hexadecimal}} -subitemconfig {{/test_VGA/C0/data[2]} {-radix hexadecimal} {/test_VGA/C0/data[1]} {-radix hexadecimal} {/test_VGA/C0/data[0]} {-radix hexadecimal}} /test_VGA/C0/data
add wave -noupdate -radix hexadecimal -childformat {{{/test_VGA/C0/h_dat[2]} -radix hexadecimal} {{/test_VGA/C0/h_dat[1]} -radix hexadecimal} {{/test_VGA/C0/h_dat[0]} -radix hexadecimal}} -subitemconfig {{/test_VGA/C0/h_dat[2]} {-radix hexadecimal} {/test_VGA/C0/h_dat[1]} {-radix hexadecimal} {/test_VGA/C0/h_dat[0]} {-radix hexadecimal}} /test_VGA/C0/h_dat
add wave -noupdate -radix hexadecimal -childformat {{{/test_VGA/C0/v_dat[2]} -radix hexadecimal} {{/test_VGA/C0/v_dat[1]} -radix hexadecimal} {{/test_VGA/C0/v_dat[0]} -radix hexadecimal}} -subitemconfig {{/test_VGA/C0/v_dat[2]} {-radix hexadecimal} {/test_VGA/C0/v_dat[1]} {-radix hexadecimal} {/test_VGA/C0/v_dat[0]} {-radix hexadecimal}} /test_VGA/C0/v_dat
add wave -noupdate -radix hexadecimal /test_VGA/C0/flag
add wave -noupdate -radix hexadecimal /test_VGA/C0/hcount_ov
add wave -noupdate -radix hexadecimal /test_VGA/C0/vcount_ov
add wave -noupdate -radix hexadecimal /test_VGA/C0/dat_act
add wave -noupdate -radix hexadecimal /test_VGA/C0/vga_clk
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {151263970000 ps} 0} {{Cursor 3} {168063970000 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 177
configure wave -valuecolwidth 44
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {168063819795 ps} {168064120205 ps}
