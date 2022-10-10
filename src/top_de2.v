//--------------------------------------------------
//  
//      Verilog code generated by Visual HDL
//
//  Root of Design:
//  ---------------
//      Unit    Name  :  top_de2
//      Library Name  :  de2
//  
//      Creation Date :  Fri Sep 30 15:44:40 2022
//      Version       :  6.7.2-pc build 25 from Feb 19 2001
//  
//  Options Used:
//  -------------
//      Target
//         HDL        :  Verilog
//         Purpose    :  Simulation
//  
//      Style
//         Use tasks                      :  No
//         Code Destination               :  Combined file
//         Attach Directives              :  Yes
//         Structural                     :  No
//         Free text style                :  / / ...
//         Preserve spacing for free text :  Yes
//         Sort Ports by mode             :  No
//         Declaration alignment          :  No
//
//--------------------------------------------------
//--------------------------------------------------
//  
//  Library Name :  de2
//  Unit    Name :  top_de2
//  Unit    Type :  Block Diagram
//  
//----------------------------------------------------
 
 
module top_de2 (AUD_ADCDAT, AUD_ADCLRCK, AUD_BCLK, AUD_DACDAT, AUD_DACLRCK,
                AUD_XCK, CLOCK_27, CLOCK_50, DRAM_ADDR, DRAM_BA, DRAM_CAS_N,
                DRAM_CKE, DRAM_CLK, DRAM_CS_N, DRAM_DQ, DRAM_LDQM, DRAM_RAS_N,
                DRAM_UDQM, DRAM_WE_N, ENET_CLK, ENET_CMD, ENET_CS_N, ENET_DATA,
                ENET_INT, ENET_RD_N, ENET_RST_N, ENET_WR_N, EXT_CLOCK, FL_ADDR,
                FL_CE_N, FL_DQ, FL_OE_N, FL_RST_N, FL_WE_N, GPIO_0, GPIO_1,
                HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7, I2C_SCLK,
                I2C_SDAT, IRDA_RXD, IRDA_TXD, KEY, LCD_BLON, LCD_DATA, LCD_EN,
                LCD_ON, LCD_RS, LCD_RW, LEDG, LEDR, OTG_ADDR, OTG_CS_N,
                OTG_DACK_N, OTG_DATA, OTG_DREQ, OTG_FSPEED, OTG_INT,
                OTG_LSPEED, OTG_RD_N, OTG_RST_N, OTG_WR_N, PS2_CLK, PS2_DAT,
                SD_CLK, SD_CMD, SD_DAT, SD_DAT3, SRAM_ADDR, SRAM_CE_N, SRAM_DQ,
                SRAM_LB_N, SRAM_OE_N, SRAM_UB_N, SRAM_WE_N, SW, TCK, TCS, TDI,
                TDO, TD_DATA, TD_HS, TD_RESET, TD_VS, UART_RXD, UART_TXD,
                VGA_B, VGA_BLANK, VGA_CLK, VGA_G, VGA_HS, VGA_R, VGA_SYNC, VGA_VS,
               	XCLK, SCL, SDA, CamHsync, CamVsync, PCLK, CamData, CAM_RESET
                );
 
  input AUD_ADCDAT;
  output AUD_ADCLRCK;
  output AUD_BCLK;
  output AUD_DACDAT;
  output AUD_DACLRCK;
  output AUD_XCK;
  input CLOCK_27;
  input CLOCK_50;
  output [11:0] DRAM_ADDR; wire [11:0] DRAM_ADDR;
  output [1:0] DRAM_BA; wire [1:0] DRAM_BA;
  output DRAM_CAS_N;
  output DRAM_CKE;
  output DRAM_CLK;
  output DRAM_CS_N;
  inout [15:0] DRAM_DQ; wire [15:0] DRAM_DQ;
  output DRAM_LDQM;
  output DRAM_RAS_N;
  output DRAM_UDQM;
  output DRAM_WE_N;
  output ENET_CLK;
  output ENET_CMD;
  output ENET_CS_N;
  inout [15:0] ENET_DATA; wire [15:0] ENET_DATA;
  input ENET_INT;
  output ENET_RD_N;
  output ENET_RST_N;
  output ENET_WR_N;
  input EXT_CLOCK;
  output [21:0] FL_ADDR; wire [21:0] FL_ADDR;
  output FL_CE_N;
  inout [7:0] FL_DQ; wire [7:0] FL_DQ;
  output FL_OE_N;
  output FL_RST_N;
  output FL_WE_N;
  input [20:0] GPIO_0; wire [20:0] GPIO_0;
  input [35:0] GPIO_1; wire [35:0] GPIO_1;
  output [6:0] HEX0; wire [6:0] HEX0;
  output [6:0] HEX1; wire [6:0] HEX1;
  output [6:0] HEX2; wire [6:0] HEX2;
  output [6:0] HEX3; wire [6:0] HEX3;
  output [6:0] HEX4; wire [6:0] HEX4;
  output [6:0] HEX5; wire [6:0] HEX5;
  output [6:0] HEX6; wire [6:0] HEX6;
  output [6:0] HEX7; wire [6:0] HEX7;
  output I2C_SCLK;
  inout I2C_SDAT;
  input IRDA_RXD;
  output IRDA_TXD;
  input [3:0] KEY; wire [3:0] KEY;
  output LCD_BLON;
  output [7:0] LCD_DATA; wire [7:0] LCD_DATA;
  output LCD_EN;
  output LCD_ON;
  output LCD_RS;
  output LCD_RW;
  output [8:0] LEDG; wire [8:0] LEDG;
  output [17:0] LEDR; wire [17:0] LEDR;
  output [1:0] OTG_ADDR; wire [1:0] OTG_ADDR;
  output OTG_CS_N;
  output [1:0] OTG_DACK_N; wire [1:0] OTG_DACK_N;
  inout [15:0] OTG_DATA; wire [15:0] OTG_DATA;
  input [1:0] OTG_DREQ; wire [1:0] OTG_DREQ;
  inout OTG_FSPEED;
  input [1:0] OTG_INT; wire [1:0] OTG_INT;
  inout OTG_LSPEED;
  output OTG_RD_N;
  output OTG_RST_N;
  output OTG_WR_N;
  output PS2_CLK;
  inout PS2_DAT;
  output SD_CLK;
  output SD_CMD;
  inout SD_DAT;
  inout SD_DAT3;
  output [17:0] SRAM_ADDR;
  wire [17:0] SRAM_ADDR;
  output SRAM_CE_N;
  inout [15:0] SRAM_DQ;
  wire [15:0] SRAM_DQ;
  output SRAM_LB_N;
  output SRAM_OE_N;
  output SRAM_UB_N;
  output SRAM_WE_N;
  input [17:0] SW;
  wire [17:0] SW;
  input TCK;
  input TCS;
  input TDI;
  output TDO;
  input [7:0] TD_DATA;
  wire [7:0] TD_DATA;
  input TD_HS;
  output TD_RESET;
  input TD_VS;
  input UART_RXD;
  output UART_TXD;
  output [9:0] VGA_B; wire [9:0] VGA_B;
  output VGA_BLANK;
  output VGA_CLK;
  output [9:0] VGA_G; wire [9:0] VGA_G;
  output VGA_HS;
  output [9:0] VGA_R; wire [9:0] VGA_R;
  output VGA_SYNC;
  output VGA_VS;

  output	    XCLK;
  output        SCL, SDA;
  input	        CamHsync;
  input         CamVsync;
  input         PCLK;
  input [7:0]   CamData;
  output        CAM_RESET;

  wire [2:0] clk_toggle;
  wire rstn;
  wire s_clk_toggle0;
  wire s_clk_toggle1;
  wire s_clk_toggle2;
  wire s_toggle_en0;
  wire s_toggle_en1;
  wire s_toggle_en2;
 
  wire [8:0] w_LEDG;
  wire [17:0] w_LEDR;
  wire [7:0]     w_PwmLED;
  wire [7:0]     w_hex00;
  wire [7:0]     w_hex01;
  wire [7:0]     w_hex02;
  wire [7:0]     w_hex03;
  wire [2:0]     w_disp_RGB;
  wire [7:0]     w_VgaDataR;
  wire [7:0]     w_VgaDataG;
  wire [7:0]     w_VgaDataB;
  wire [35:0]    w_GPIO_0;

  assign LEDG[8:0] =  w_LEDG[8:0];
  assign LEDR[17:0] =  {w_LEDR[17:8], w_PwmLED};

  assign HEX0 = {w_hex00[7], 6'b0};
  assign HEX1 = w_hex00[6:0];
  assign HEX2 = {w_hex01[7], 6'b0};
  assign HEX3 = w_hex01[6:0];
  assign HEX4 = w_hex02[6:0];
  assign HEX5 = w_hex03[6:0];

  etc_de2  C0
    (
     .clk50m(CLOCK_50),
     .clk_toggle(clk_toggle[2:0]),
     .SW(SW[17:0]),
     .DRAM_ADDR(DRAM_ADDR),
     .DRAM_DQ(DRAM_DQ),
     .DRAM_BA(DRAM_BA),
     .DRAM_LDQM(DRAM_LDQM),
     .DRAM_UDQM(DRAM_UDQM),
     .DRAM_RAS_N(DRAM_RAS_N),
     .DRAM_CAS_N(DRAM_CAS_N),
     .DRAM_CKE(DRAM_CKE),
     .DRAM_CLK(DRAM_CLK),
     .DRAM_WE_N(DRAM_WE_N),
     .DRAM_CS_N(DRAM_CS_N),
     .FL_ADDR(),
     .FL_DQ(),
     .FL_CE_N(),
     .FL_OE_N(),
     .FL_RST_N(),
     .FL_WE_N(),
     .SRAM_ADDR(SRAM_ADDR[17:0]),
     .SRAM_DQ(SRAM_DQ[15:0]),
     .SRAM_WE_N(SRAM_WE_N),
     .SRAM_OE_N(SRAM_OE_N),
     .SRAM_UB_N(SRAM_UB_N),
     .SRAM_LB_N(SRAM_LB_N),
     .SRAM_CE_N(SRAM_CE_N),
     .OTG_ADDR(OTG_ADDR[1:0]),
     .OTG_DATA(OTG_DATA[15:0]),
     .OTG_CS_N(OTG_CS_N),
     .OTG_RD_N(OTG_RD_N),
     .OTG_WR_N(OTG_WR_N),
     .OTG_RST_N(OTG_RST_N),
     .OTG_INT(OTG_INT[1:0]),
     .OTG_DACK_N(OTG_DACK_N[1:0]),
     .OTG_DREQ(OTG_DREQ[1:0]),
     .OTG_FSPEED(OTG_FSPEED),
     .OTG_LSPEED(OTG_LSPEED),
     .LCD_DATA(),
     .LCD_RW(),
     .LCD_EN(),
     .LCD_RS(),
     .LCD_ON(LCD_ON),
     .LCD_BLON(LCD_BLON),
     .SD_DAT(SD_DAT),
     .SD_DAT3(SD_DAT3),
     .SD_CMD(SD_CMD),
     .SD_CLK(SD_CLK),
     .TDI(TDI),
     .TCS(TCS),
     .TCK(TCK),
     .TDO(TDO),
     .IRDA_TXD(IRDA_TXD),
     .IRDA_RXD(IRDA_RXD),
     .HEX0(),
	 .HEX1(),
     .HEX2(),
     .HEX3(),
     .HEX4(),
     .HEX5(),
     .HEX6(HEX6[6:0]),
     .HEX7(HEX7[6:0]),
     .KEY(KEY[3:0]),
     .LEDR(w_LEDR[17:0]),
     .LEDG(w_LEDG[8:0]),
     .UART_RXD(UART_RXD),
     .UART_TXD(),
     .PS2_CLK(PS2_CLK),
     .PS2_DAT(PS2_DAT),
     .I2C_SCLK(I2C_SCLK),
     .I2C_SDAT(I2C_SDAT),
     .TD_DATA(TD_DATA[7:0]),
     .TD_HS(TD_HS),
     .TD_VS(TD_VS),
     .TD_RESET(TD_RESET),
     //.VGA_R(VGA_R[9:0]),
     //.VGA_G(VGA_G[9:0]),
     //.VGA_B(VGA_B[9:0]),
     .VGA_R(),
     .VGA_G(),
     .VGA_B(),
     .VGA_CLK(VGA_CLK),
     .VGA_BLANK(VGA_BLANK),
     //.VGA_HS(VGA_HS),
     //.VGA_VS(VGA_VS),
     .VGA_HS(),
     .VGA_VS(),
     .VGA_SYNC(VGA_SYNC),
     .AUD_ADCLRCK(AUD_ADCLRCK),
     .AUD_ADCDAT(AUD_ADCDAT),
     .AUD_DACLRCK(AUD_DACLRCK),
     .AUD_DACDAT(AUD_DACDAT),
     .AUD_XCK(AUD_XCK),
     .AUD_BCLK(AUD_BCLK),
     .ENET_DATA(ENET_DATA[15:0]),
     .ENET_CLK(ENET_CLK),
     .ENET_CMD(ENET_CMD),
     .ENET_CS_N(ENET_CS_N),
     .ENET_INT(ENET_INT),
     .ENET_RD_N(ENET_RD_N),
     .ENET_WR_N(ENET_WR_N),
     .ENET_RST_N(ENET_RST_N),
     .GPIO_0(w_GPIO_0),
     .GPIO_1(GPIO_1[35:0]));
 
     assign w_GPIO_0 = {15'h0, GPIO_0};

  clk_event_50m  C1
    (
     .clk50m(CLOCK_50),
     .rstn(rstn),
     .o_sig(s_toggle_en0));
 
  clk_event_50m  C2
    (
     .clk50m(CLOCK_27),
     .rstn(rstn),
     .o_sig(s_toggle_en1));
 
  clk_event_50m  C3
    (
     .clk50m(EXT_CLOCK),
     .rstn(rstn),
     .o_sig(s_toggle_en2));
 
  toggle0  C4
    (
     .clk(CLOCK_50),
     .rstn(rstn),
     .toggle_en(s_toggle_en0),
     .o_toggle(s_clk_toggle0));
 
  toggle0  C5
    (
     .clk(CLOCK_27),
     .rstn(rstn),
     .toggle_en(s_toggle_en1),
     .o_toggle(s_clk_toggle1));
 
  toggle0  C6
    (
     .clk(EXT_CLOCK),
     .rstn(rstn),
     .toggle_en(s_toggle_en2),
     .o_toggle(s_clk_toggle2));


lcd_test00 lcd_inst0 (
        .rstn     (rstn),
        .clk_50m  (CLOCK_50),
        .lcd_blon (),
        .lcd_on   (),
        .e        (LCD_EN),
        .rs       (LCD_RS),
        .rw       (LCD_RW),
        .lcd_data (LCD_DATA)
        );


 //////////////////////////////////////
 // PwmCtrl
 //////////////////////////////////////
    PwmCtrl PwmCtrl0(
	.RST_N  (rstn),
	.CLK    (CLOCK_50),

     .FL_DQ(FL_DQ[7:0]),
     .FL_ADDR(FL_ADDR[21:0]),
     .FL_WE_N(FL_WE_N),
     .FL_RST_N(FL_RST_N),
     .FL_OE_N(FL_OE_N),
     .FL_CE_N(FL_CE_N),

	.LED0   (w_PwmLED[0]),
	.LED1   (w_PwmLED[1]),
	.LED2   (w_PwmLED[2]),
	.LED3   (w_PwmLED[3]),
	.LED4   (w_PwmLED[4]),
	.LED5   (w_PwmLED[5]),
	.LED6   (w_PwmLED[6]),
	.LED7   (w_PwmLED[7]),
   .HEX0A   (w_hex00[0]),
   .HEX0B   (w_hex00[1]),
   .HEX0C   (w_hex00[2]),
   .HEX0D   (w_hex00[3]),
   .HEX0E   (w_hex00[4]),
   .HEX0F   (w_hex00[5]),
   .HEX0G   (w_hex00[6]),
   .HEX0DP  (w_hex00[7]),
   .HEX1A   (w_hex01[0]),
   .HEX1B   (w_hex01[1]),
   .HEX1C   (w_hex01[2]),
   .HEX1D   (w_hex01[3]),
   .HEX1E   (w_hex01[4]),
   .HEX1F   (w_hex01[5]),
   .HEX1G   (w_hex01[6]),
   .HEX1DP  (w_hex01[7]),
   .HEX2A   (w_hex02[0]),
   .HEX2B   (w_hex02[1]),
   .HEX2C   (w_hex02[2]),
   .HEX2D   (w_hex02[3]),
   .HEX2E   (w_hex02[4]),
   .HEX2F   (w_hex02[5]),
   .HEX2G   (w_hex02[6]),
   .HEX2DP  (w_hex02[7]),
   .HEX3A   (w_hex03[0]),
   .HEX3B   (w_hex03[1]),
   .HEX3C   (w_hex03[2]),
   .HEX3D   (w_hex03[3]),
   .HEX3E   (w_hex03[4]),
   .HEX3F   (w_hex03[5]),
   .HEX3G   (w_hex03[6]),
   .HEX3DP  (w_hex03[7]),
   .PUSH0   (KEY[1]),
   .PUSH1   (KEY[2]),
   //.lcd_rs   (LCD_RS),
   //.lcd_rw   (LCD_RW),
   //.lcd_data   (LCD_DATA),
   //.lcd_e   (LCD_EN),
   .lcd_rs   (),
   .lcd_rw   (),
   .lcd_data   (),
   .lcd_e   (),
   .uart_rx   (UART_RXD),
   .uart_tx   (UART_TXD),
    ); 


  assign rstn = KEY[0];
 
  assign clk_toggle[2] = s_clk_toggle2;
  assign clk_toggle[1] = s_clk_toggle1;
  assign clk_toggle[0] = s_clk_toggle0;
 
 //////////////////////////////////////
 // VGA for Testing monitor
 //////////////////////////////////////
    VGA VGA00(
        .clock      (CLOCK_50),
        .switch     ({KEY[3], KEY[2]}),
        .disp_RGB    (w_disp_RGB),
        //.hsync       (VGA_HS),
        //.vsync       (VGA_VS)
        .hsync       (),
        .vsync       ()
    );
 
    //assign VGA_R = {w_disp_RGB[2], 9'h0};
    //assign VGA_G = {w_disp_RGB[1], 9'h0};
    //assign VGA_B = {w_disp_RGB[0], 9'h0};

 //////////////////////////////////////
 // CAM VGA      ov7670
 //////////////////////////////////////
    VideoProc VideoProc00(
       	.CLK        (CLOCK_50),
	    .RST_N      (rstn),
	    .XCLK       (XCLK),
    	.SCL        (SCL),
    	.SDA        (SDA),
    	.CamHsync       (CamHsync),
    	.CamVsync       (CamVsync),
    	.PCLK           (PCLK),
        .CamData        (CamData),
    	.VgaVsync       (VGA_VS),
    	.VgaHsync       (VGA_HS),
    	.SW0            (KEY[2]),
    	.SW1            (KEY[3]),
        .VgaDataR       (w_VgaDataR),
        .VgaDataG       (w_VgaDataG),
        .VgaDataB       (w_VgaDataB)	
    );

    assign VGA_R = {w_VgaDataR, 2'h0};
    assign VGA_G = {w_VgaDataG, 2'h0};
    assign VGA_B = {w_VgaDataB, 2'h0};
    assign CAM_RESET = 1'b0;

endmodule

