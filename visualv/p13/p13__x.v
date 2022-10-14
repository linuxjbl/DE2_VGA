 
 
module test_VideoProc;
  reg visual_null;
 
  wire [7:0] CamData;
  wire [7:0] VgaDataB;
  wire [7:0] VgaDataG;
  wire [7:0] VgaDataR;
 
  VideoProc  C1_VideoProc
    (
     .CLK(CLK),
     .RST_N(RST_N),
     .XCLK(XCLK),
     .SCL(SCL),
     .SDA(SDA),
     .CamHsync(CamHsync),
     .CamVsync(CamVsync),
     .PCLK(PCLK),
     .CamData(CamData[7:0]),
     .VgaVsync(VgaVsync),
     .VgaHsync(VgaHsync),
     .SW0(SW0),
     .SW1(SW1),
     .VgaDataR(VgaDataR[7:0]),
     .VgaDataG(VgaDataG[7:0]),
     .VgaDataB(VgaDataB[7:0]));
 
  testsub_VideoProc  C0
    (
     .XCLK(XCLK),
     .SCL(SCL),
     .SDA(SDA),
     .VgaVsync(VgaVsync),
     .VgaHsync(VgaHsync),
     .VgaDataR(VgaDataR[7:0]),
     .VgaDataG(VgaDataG[7:0]),
     .VgaDataB(VgaDataB[7:0]),
     .CLK(CLK),
     .RST_N(RST_N),
     .CamHsync(),
     .CamVsync(),
     .PCLK(PCLK),
     .CamData(),
     .SW0(SW0),
     .SW1(SW1));
 
  testsub_cam  C3_PulseGen
    (
     .PCLK(PCLK),
     .RST_N(RST_N),
     .CamHsync(CamHsync),
     .CamVsync(CamVsync),
     .CamData(CamData[7:0]));
 
 
endmodule
