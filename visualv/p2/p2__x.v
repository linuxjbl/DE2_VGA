 
 
module etc_de2 (clk50m, clk_toggle, SW, DRAM_ADDR, DRAM_DQ, DRAM_BA, DRAM_LDQM,
                DRAM_UDQM, DRAM_RAS_N, DRAM_CAS_N, DRAM_CKE, DRAM_CLK, DRAM_WE_N,
                DRAM_CS_N, FL_ADDR, FL_DQ, FL_CE_N, FL_OE_N, FL_RST_N, FL_WE_N,
                SRAM_ADDR, SRAM_DQ, SRAM_WE_N, SRAM_OE_N, SRAM_UB_N, SRAM_LB_N,
                SRAM_CE_N, OTG_ADDR, OTG_DATA, OTG_CS_N, OTG_RD_N, OTG_WR_N, OTG_RST_N,
                OTG_INT, OTG_DACK_N, OTG_DREQ, OTG_FSPEED, OTG_LSPEED, LCD_DATA, LCD_RW,
                LCD_EN, LCD_RS, LCD_ON, LCD_BLON, SD_DAT, SD_DAT3, SD_CMD, SD_CLK, TDI,
                TCS, TCK, TDO, IRDA_TXD, IRDA_RXD, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5,
                HEX6, HEX7, KEY, LEDR, LEDG, UART_RXD, UART_TXD, PS2_CLK, PS2_DAT,
                I2C_SCLK, I2C_SDAT, TD_DATA, TD_HS, TD_VS, TD_RESET, VGA_R, VGA_G, VGA_B,
                VGA_CLK, VGA_BLANK, VGA_HS, VGA_VS, VGA_SYNC, AUD_ADCLRCK, AUD_ADCDAT,
                AUD_DACLRCK, AUD_DACDAT, AUD_XCK, AUD_BCLK, ENET_DATA, ENET_CLK,
                ENET_CMD, ENET_CS_N, ENET_INT, ENET_RD_N, ENET_WR_N, ENET_RST_N, GPIO_0,
                GPIO_1);
  reg visual_null;
  input clk50m;
  input [2:0] clk_toggle;
  input [17:0] SW;
  output [11:0] DRAM_ADDR;
  inout [15:0] DRAM_DQ;
  output [1:0] DRAM_BA;
  output DRAM_LDQM;
  output DRAM_UDQM;
  output DRAM_RAS_N;
  output DRAM_CAS_N;
  output DRAM_CKE;
  output DRAM_CLK;
  output DRAM_WE_N;
  output DRAM_CS_N;
  output [21:0] FL_ADDR;
  inout [7:0] FL_DQ;
  output FL_CE_N;
  output FL_OE_N;
  output FL_RST_N;
  output FL_WE_N;
  output [17:0] SRAM_ADDR;
  inout [15:0] SRAM_DQ;
  output SRAM_WE_N;
  output SRAM_OE_N;
  output SRAM_UB_N;
  output SRAM_LB_N;
  output SRAM_CE_N;
  output [1:0] OTG_ADDR;
  inout [15:0] OTG_DATA;
  output OTG_CS_N;
  output OTG_RD_N;
  output OTG_WR_N;
  output OTG_RST_N;
  input [1:0] OTG_INT;
  output [1:0] OTG_DACK_N;
  input [1:0] OTG_DREQ;
  inout OTG_FSPEED;
  inout OTG_LSPEED;
  output [7:0] LCD_DATA;
  output LCD_RW;
  output LCD_EN;
  output LCD_RS;
  output LCD_ON;
  output LCD_BLON;
  inout SD_DAT;
  inout SD_DAT3;
  output SD_CMD;
  output SD_CLK;
  input TDI;
  input TCS;
  input TCK;
  output TDO;
  output IRDA_TXD;
  input IRDA_RXD;
  output [6:0] HEX0;
  output [6:0] HEX1;
  output [6:0] HEX2;
  output [6:0] HEX3;
  output [6:0] HEX4;
  output [6:0] HEX5;
  output [6:0] HEX6;
  output [6:0] HEX7;
  input [3:0] KEY;
  output [17:0] LEDR;
  output [8:0] LEDG;
  input UART_RXD;
  output UART_TXD;
  output PS2_CLK;
  inout PS2_DAT;
  output I2C_SCLK;
  inout I2C_SDAT;
  input [7:0] TD_DATA;
  input TD_HS;
  input TD_VS;
  output TD_RESET;
  output [9:0] VGA_R;
  output [9:0] VGA_G;
  output [9:0] VGA_B;
  output VGA_CLK;
  output VGA_BLANK;
  output VGA_HS;
  output VGA_VS;
  output VGA_SYNC;
  output AUD_ADCLRCK;
  input AUD_ADCDAT;
  output AUD_DACLRCK;
  output AUD_DACDAT;
  output AUD_XCK;
  output AUD_BCLK;
  inout [15:0] ENET_DATA;
  output ENET_CLK;
  output ENET_CMD;
  output ENET_CS_N;
  input ENET_INT;
  output ENET_RD_N;
  output ENET_WR_N;
  output ENET_RST_N;
  input [35:0] GPIO_0;
  input [35:0] GPIO_1;
  wire w_gpio0;
  wire w_gpio1;
  reg r_VGA_CLK;
  assign DRAM_ADDR = 12'd0;
  assign DRAM_DQ = 16'bz;
  assign DRAM_BA = 2'b0;
  assign DRAM_LDQM = 1'b0;
  assign DRAM_UDQM = 1'b0;
  assign DRAM_RAS_N = 1'b1;
  assign DRAM_CAS_N = 1'b1;
  assign DRAM_CKE = 1'b0;
  assign DRAM_CLK = 1'b0;
  assign DRAM_WE_N = 1'b1;
  assign DRAM_CS_N = 1'b1;
  assign FL_ADDR = 22'b0;
  assign FL_DQ = 8'bz;
  assign FL_CE_N = 1'b1;
  assign FL_OE_N = 1'b1;
  assign FL_RST_N = 1'b1;
  assign FL_WE_N = 1'b1;
  assign SRAM_ADDR = 18'b0;
  assign SRAM_DQ = 16'bz;
  assign SRAM_WE_N = 1'b1;
  assign SRAM_OE_N = 1'b1;
  assign SRAM_UB_N = 1'b1;
  assign SRAM_LB_N = 1'b1;
  assign SRAM_CE_N = 1'b1;
  assign OTG_ADDR = OTG_DREQ;
  assign OTG_DATA = 16'bz;
  assign OTG_CS_N = 1'b1;
  assign OTG_RD_N = 1'b1;
  assign OTG_WR_N = 1'b1;
  assign OTG_RST_N = 1'b1;
  assign OTG_DACK_N = OTG_INT;
  assign OTG_FSPEED = 1'bz;
  assign OTG_LSPEED = 1'bz;
  assign LCD_DATA = 8'b0;
  assign LCD_RW = 1'b0;
  assign LCD_EN = 1'b0;
  assign LCD_RS = 1'b0;
  assign LCD_ON = 1'b1;
  assign LCD_BLON = 1'b1;
  assign SD_DAT = 1'bz;
  assign SD_DAT3 = 1'bz;
  assign SD_CMD = 1'b0;
  assign SD_CLK = 1'b0;
  assign TDO = TDI & TCS & TCK;
  assign IRDA_TXD = IRDA_RXD;
  assign HEX0 = {1'h0, w_gpio1, w_gpio0, KEY};
  assign HEX1 = 7'h5a;
  assign HEX2 = 7'h5a;
  assign HEX3 = 7'h5a;
  assign HEX4 = 7'h5a;
  assign HEX5 = 7'h5a;
  assign HEX6 = 7'h5a;
  assign HEX7 = 7'h5a;
  assign LEDR = SW;
  assign LEDG = {6'b0, clk_toggle};
  assign UART_TXD = UART_RXD;
  assign PS2_CLK = 1'b0;
  assign PS2_DAT = 1'bz;
  assign I2C_SCLK = 1'b0;
  assign I2C_SDAT = 1'bz;
  assign TD_RESET = (TD_DATA == 8'b0 && TD_HS == 1'b0 && TD_VS == 1'b0) ? 1'b0 : 1'b1;
  assign VGA_R = 10'b0;
  assign VGA_G = 10'b0;
  assign VGA_B = 10'b0;
  assign VGA_CLK = r_VGA_CLK;
  assign VGA_BLANK = 1'b1;
  assign VGA_HS = 1'b0;
  assign VGA_VS = 1'b0;
  assign VGA_SYNC = 1'b0;
  assign AUD_ADCLRCK = 1'b0;
  assign AUD_DACLRCK = 1'b0;
  assign AUD_DACDAT = AUD_ADCDAT;
  assign AUD_XCK = 1'b0;
  assign AUD_BCLK = 1'b0;
  assign ENET_DATA = 16'bz;
  assign ENET_CLK = 1'b0;
  assign ENET_CMD = ENET_INT;
  assign ENET_CS_N = 1'b1;
  assign ENET_RD_N = 1'b1;
  assign ENET_WR_N = 1'b1;
  assign ENET_RST_N = 1'b1;
  assign w_gpio0 = (GPIO_0 == 36'b0) ? 1'b0 : 1'b1;
  assign w_gpio1 = (GPIO_1 == 36'b0) ? 1'b0 : 1'b1;
  always
    @( posedge clk50m )
  begin
    r_VGA_CLK <= ~(r_VGA_CLK);
  end
 
 
 
endmodule
