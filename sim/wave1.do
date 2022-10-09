onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix hexadecimal /test_lcd/C1/clk
add wave -noupdate -radix hexadecimal /test_lcd/C1/lcd_busy
add wave -noupdate -radix hexadecimal /test_lcd/C1/rstn
add wave -noupdate -radix hexadecimal /test_lcd/C1/lcd_bus
add wave -noupdate -radix hexadecimal /test_lcd/C1/lcd_clk
add wave -noupdate -radix hexadecimal /test_lcd/C1/lcd_enable
add wave -noupdate -radix hexadecimal /test_lcd/C1/reset_n
add wave -noupdate -radix hexadecimal /test_lcd/C1/s_lcd_enable
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -radix hexadecimal /test_lcd/C0/lcd_blon
add wave -noupdate -radix hexadecimal /test_lcd/C0/lcd_on
add wave -noupdate -radix hexadecimal /test_lcd/C0/rw
add wave -noupdate -radix unsigned /test_lcd/C0/freq
add wave -noupdate -radix hexadecimal /test_lcd/C0/reset_n
add wave -noupdate -radix hexadecimal /test_lcd/C0/clk
add wave -noupdate -radix hexadecimal /test_lcd/C0/lcd_bus
add wave -noupdate -radix hexadecimal /test_lcd/C0/lcd_enable
add wave -noupdate -radix hexadecimal /test_lcd/C0/e
add wave -noupdate -radix hexadecimal /test_lcd/C0/lcd_data
add wave -noupdate -radix hexadecimal /test_lcd/C0/rs
add wave -noupdate -radix hexadecimal /test_lcd/C0/state
add wave -noupdate -radix hexadecimal /test_lcd/C0/busy
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {52555868000 ps} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {52276788315 ps} {52947016347 ps}
