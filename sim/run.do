##
#vcom C:/JBL/DE2_VGA/sim/test_lcd.vhd
#vlog C:/JBL/DE2_VGA/sim/test_VGA.v
vlog D:/Study/FPGA/Altera/DE2/DE2_VGA/sim/test_VideoProc.v

#vsim work.test_lcd
#vsim work.test_VGA
vsim work.test_VideoProc

#do C:/JBL/DE2_VGA/sim/wave1.do
do D:/Study/FPGA/Altera/DE2/DE2_VGA/sim/wave1.do

run 1 us
