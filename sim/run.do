##
#vcom C:/JBL/DE2_VGA/sim/test_lcd.vhd
vlog C:/JBL/DE2_VGA/sim/test_VGA.v

#vsim work.test_lcd
vsim work.test_VGA

do C:/JBL/DE2_VGA/sim/wave1.do

run 1 us
