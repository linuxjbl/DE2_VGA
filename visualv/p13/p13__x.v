 
 
module test_VideoProc;
  reg visual_null;
 
  wire [7:0] CamData;
  wire [7:0] S21;
  wire [7:0] S22;
  wire [7:0] S23;
  wire [7:0] S29;
  wire [7:0] VgaDataB;
  wire [7:0] VgaDataG;
  wire [7:0] VgaDataR;
 
  testsub_VideoProc  testsub_VideoProc
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
     .CamHsync(CamHsync),
     .CamVsync(CamVsync),
     .PCLK(PCLK),
     .CamData(CamData[7:0]),
     .SW0(SW0),
     .SW1(SW1));
 
  VideoProc  C1
    (
     .CLK(CLK),
     .RST_N(RST_N),
     .XCLK(XCLK),
     .SCL(SCL),
     .SDA(SDA),
     .CamHsync(CamHsync),
     .CamVsync(CamVsync),
     .PCLK(PCLK),
     .CamData(S29[7:0]),
     .VgaVsync(VgaVsync),
     .VgaHsync(VgaHsync),
     .SW0(SW0),
     .SW1(SW1),
     .VgaDataR(S21[7:0]),
     .VgaDataG(S22[7:0]),
     .VgaDataB(S23[7:0]));
 
 
endmodule
