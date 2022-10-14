 
 
`timescale  1ns/10ps
module testsub_VideoProc (XCLK, SCL, SDA, VgaVsync, VgaHsync, VgaDataR, VgaDataG,
                          VgaDataB, CLK, RST_N, CamHsync, CamVsync, PCLK, CamData, SW0,
                          SW1);
  reg visual_null;
  input XCLK;
  input SCL;
  input SDA;
  input VgaVsync;
  input VgaHsync;
  input [7:0] VgaDataR;
  wire [7:0] VgaDataR;
  input [7:0] VgaDataG;
  wire [7:0] VgaDataG;
  input [7:0] VgaDataB;
  wire [7:0] VgaDataB;
  output CLK;
  output RST_N;
  output CamHsync;
  output CamVsync;
  output PCLK;
  output [7:0] CamData;
  wire [7:0] CamData;
  output SW0;
  output SW1;
  reg reset_n;
  reg r_clk50m;
  reg r_clk25m;
  assign CLK = r_clk50m;
  assign RST_N = reset_n;
  assign PCLK = r_clk25m;
  assign SW0 = 1'b0;
  assign SW1 = 1'b0;
  assign CamHsync = 1'b0;
  assign CamVsync = 1'b0;
  assign CamData = 8'hA5;
  initial
  begin
    reset_n = 0;
  #499.84
    reset_n = 1;
  end
 
  initial
  begin
    r_clk50m = 0;
  end
 
  always
  #10
    r_clk50m <= ~(r_clk50m);
 
  always
    @( posedge r_clk50m or negedge reset_n )
  begin
    if (reset_n == 1'b0)
    begin
      r_clk25m <= 1'b0;
    end
    else
    begin
      r_clk25m <= ~(r_clk25m);
    end
 
  end
 
 
 
endmodule
