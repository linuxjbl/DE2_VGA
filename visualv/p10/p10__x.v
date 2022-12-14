 
 
`timescale  1ns/10ps
module VideoProc (CLK, RST_N, XCLK, SCL, SDA, CamHsync, CamVsync, PCLK, CamData,
                  VgaVsync, VgaHsync, SW0, SW1, VgaDataR, VgaDataG, VgaDataB);
  reg visual_null;
  input CLK;
  input RST_N;
  output XCLK;
  output SCL;
  output SDA;
  input CamHsync;
  input CamVsync;
  input PCLK;
  input [7:0] CamData;
  output VgaVsync;
  output VgaHsync;
  input SW0;
  input SW1;
  output [7:0] VgaDataR;
  output [7:0] VgaDataG;
  output [7:0] VgaDataB;
  assign SCL = 1'b0;
  assign SDA = 1'b0;
 
  VideoProcCore  VideoProcCore_inst
    (
     .CLK(CLK),
     .RST_N(RST_N),
     .XCLK(XCLK),
     .CamHsync(CamHsync),
     .CamVsync(CamVsync),
     .PCLK(PCLK),
     .CamData(CamData),
     .VgaVsync(VgaVsync),
     .VgaHsync(VgaHsync),
     .SW0(SW0),
     .SW1(SW1),
     .VgaDataR(VgaDataR),
     .VgaDataG(VgaDataG),
     .VgaDataB(VgaDataB));
 
 
endmodule
