onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider CAM
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CLK
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/PCLK
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamData
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamHsync
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamVsync
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/RST_N
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamHsync_EDGE
add wave -noupdate -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamLineCount
add wave -noupdate -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamPixCount4x
add wave -noupdate -format Analog-Step -height 74 -max 3135.0 -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamPixCount4x
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamVsync_EDGE
add wave -noupdate -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/LB_WR_ADDR
add wave -noupdate -format Analog-Step -height 74 -max 1023.0000000000001 -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/LB_WR_ADDR
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/LB_WR_DATA
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/LB_WR_N
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamHsync_dly1
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamHsync_dly2
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamHsync_edge_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamLineCount_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamPixCount4x_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamVsync_dly1
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamVsync_dly2
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/CamVsync_edge_sig
add wave -noupdate -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/PclkPixCount
add wave -noupdate -format Analog-Step -height 74 -max 2047.0 -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/PclkPixCount
add wave -noupdate -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/PclkPixCount_dly1
add wave -noupdate -radix unsigned /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/PclkPixCount_dly2
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/Rg_dec
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/Rg_dec_dly1
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/Rg_dec_dly2
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/Rg_latch
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/gB_dec
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/CAM_CTRL_inst/gB_latch
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider LINEIN
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/RST_N
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_WR_ADDR
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_WR_DATA
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_WR_N
add wave -noupdate -format Analog-Step -height 74 -max 508.99999999999994 -radix hexadecimal -childformat {{{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[8]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[7]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[6]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[5]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[4]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[3]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[2]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[1]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[0]} -radix hexadecimal}} -subitemconfig {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[8]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[7]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[6]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[5]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[4]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[3]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[2]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[1]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[0]} {-radix hexadecimal}} /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount
add wave -noupdate -max 508.99999999999994 -radix unsigned -childformat {{{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[8]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[7]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[6]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[5]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[4]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[3]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[2]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[1]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[0]} -radix hexadecimal}} -subitemconfig {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[8]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[7]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[6]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[5]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[4]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[3]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[2]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[1]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount[0]} {-radix hexadecimal}} /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaLineCount
add wave -noupdate -format Analog-Step -height 74 -max 783.0 -radix hexadecimal -childformat {{{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[9]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[8]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[7]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[6]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[5]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[4]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[3]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[2]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[1]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[0]} -radix hexadecimal}} -subitemconfig {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[9]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[8]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[7]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[6]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[5]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[4]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[3]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[2]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[1]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[0]} {-radix hexadecimal}} /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount
add wave -noupdate -max 783.0 -radix unsigned -childformat {{{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[9]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[8]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[7]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[6]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[5]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[4]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[3]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[2]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[1]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[0]} -radix hexadecimal}} -subitemconfig {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[9]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[8]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[7]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[6]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[5]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[4]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[3]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[2]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[1]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount[0]} {-radix hexadecimal}} /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/VgaPixCount
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/CLK
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_WR_N_A
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/ODDLINE
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/oddline_dly1
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/oddline_dly2
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_RD_ADDR
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_RD_DATA_A
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_RD_DATA_B
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_WR_N_B
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/LB_CS_N
add wave -noupdate -radix hexadecimal -childformat {{{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[15]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[14]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[13]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[12]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[11]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[10]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[9]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[8]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[7]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[6]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[5]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[4]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[3]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[2]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[1]} -radix hexadecimal} {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[0]} -radix hexadecimal}} -subitemconfig {{/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[15]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[14]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[13]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[12]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[11]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[10]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[9]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[8]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[7]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[6]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[5]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[4]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[3]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[2]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[1]} {-radix hexadecimal} {/test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB[0]} {-radix hexadecimal}} /test_VideoProc/C1/VideoProcCore_inst/LINEIN_CTRL_inst/buf_RGB
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider VGA
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/RST_N
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/CamHsync_EDGE
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/CamVsync_EDGE
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/CLK
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVisible_H
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaLineCount_clr
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaLineCount_enb
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaPixCount_clr
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVsync_tmp
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaHsync_tmp
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVsync_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaPixCount_enb
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaPixCount_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaLineCount_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVisible_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaFrameCount
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaHsync_sig
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVisible_V
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaHsync
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVsync
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaVisible
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaPixCount
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaLineCount
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/VgaHsync_edge
add wave -noupdate -radix hexadecimal /test_VideoProc/C1/VideoProcCore_inst/VGA_CTRL_inst/OddFrame
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
add wave -noupdate -divider {New Divider}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {168063970000 ps} 0} {{Cursor 3} {67370413 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 245
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
WaveRestoreZoom {67271215 ps} {67507623 ps}
