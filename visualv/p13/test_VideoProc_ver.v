02.00 00 04 
0000003A 
00000000 
00000000 
00000000 
//--------------------------------------------------
//  
//      Verilog code generated by Visual HDL
//
//  Root of Design:
//  ---------------
//      Unit    Name  :  test_VideoProc
//      Library Name  :  DE2_VGA
//  
//      Creation Date :  Tue Oct 11 11:45:07 2022
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
//  Library Name :  DE2_VGA
//  Unit    Name :  VGA_CTRL
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
module VGA_CTRL (
	CLK,
	RST_N,
	CamHsync_EDGE,
	CamVsync_EDGE,
	VgaLineCount,
	VgaPixCount,
	VgaVisible,
	VgaVsync,
	VgaHsync,
	VgaHsync_edge,
	OddFrame
); 

input		CLK, RST_N;
input CamHsync_EDGE, CamVsync_EDGE;
output	[8:0] VgaLineCount;
output	[9:0] VgaPixCount;
output	VgaVisible, VgaVsync,	VgaHsync, VgaHsync_edge, OddFrame;

reg VgaPixCount_enb;
reg [9:0] VgaPixCount_sig;
reg [8:0] VgaLineCount_sig;
reg VgaVisible_sig;
reg VgaFrameCount;
wire VgaHsync_sig, VgaVsync_sig;
reg VgaHsync_tmp, VgaVsync_tmp;
wire VgaPixCount_clr ;
wire VgaLineCount_enb;
wire VgaLineCount_clr;
wire VgaVisible_H;
wire VgaVisible_V;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
		VgaPixCount_enb  <= 0;
	end else begin
		VgaPixCount_enb <= !VgaPixCount_enb;
	end
end

///////////////////////////////////////////////////////
assign VgaPixCount_clr = (VgaPixCount_enb == 1'b1 && VgaPixCount_sig == 783)
                      || CamHsync_EDGE == 1'b1 ? 1 : 0; 

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
		VgaPixCount_sig <= 0;
	end else begin
		if(VgaPixCount_clr == 1'b1) begin
			VgaPixCount_sig <= 0;
		end else if( VgaPixCount_enb == 1'b1 ) begin
			VgaPixCount_sig <= VgaPixCount_sig + 1;
		end
	end
end

assign VgaPixCount = VgaPixCount_sig;

assign VgaLineCount_enb = (VgaPixCount_sig == 783 && VgaPixCount_enb == 1'b1) ? 1 : 0;
assign VgaLineCount_clr = (VgaPixCount_clr == 1'b1 && VgaLineCount_sig == 509) ? 1 : 0;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
		VgaLineCount_sig  <= 0;
	end else begin
		if(VgaLineCount_clr == 1'b1 || CamVsync_EDGE == 1'b1) begin
			VgaLineCount_sig  <= 0;
		end else if(VgaLineCount_enb == 1'b1) begin 
			VgaLineCount_sig  <= VgaLineCount_sig  + 1;
		end
	end
end


assign VgaLineCount = VgaLineCount_sig;

assign VgaVisible_H = (VgaPixCount_sig >= 134 && VgaPixCount_sig < 776) ? 1 : 0;  
assign VgaHsync_sig = (VgaPixCount_sig >= 96) ? 1 : 0; 
assign VgaHsync_edge = (VgaPixCount_sig == 96) ? 1 : 0;

assign VgaVisible_V = (VgaLineCount_sig >= 17 && VgaLineCount_sig < 498) ? 1 : 0;
assign VgaVsync_sig = (VgaLineCount_sig >= 500 && VgaLineCount_sig <= 501) ? 0 : 1;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
		VgaVisible_sig <= 0;
	end else begin
		if(VgaPixCount_enb == 1'b1) begin
			VgaVisible_sig <= VgaVisible_V & VgaVisible_H;
		end
	end
end

assign VgaVisible = VgaVisible_sig;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N or posedge CamVsync_EDGE )
begin
	if (RST_N == 1'b0 || CamVsync_EDGE == 1'b1) begin
		VgaFrameCount <= 0;
	end else begin
		if(VgaPixCount_enb == 1'b1 && VgaLineCount_enb == 1'b1 && VgaLineCount_sig == 1) begin
			VgaFrameCount <= !VgaFrameCount;
		end
	end
end

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
		VgaHsync_tmp <= 0;
	end else begin
		if(VgaPixCount_enb == 1'b1) begin
			VgaHsync_tmp <= VgaHsync_sig;
		end
	end
end

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
		VgaVsync_tmp <= 0;
	end else begin
		if(VgaPixCount_enb == 1'b1) begin
			VgaVsync_tmp <= VgaVsync_sig;
		end
	end
end

assign VgaHsync = VgaHsync_tmp;
assign VgaVsync = VgaVsync_tmp;
assign OddFrame = !VgaFrameCount;

endmodule



//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  CAM_CTRL
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
module CAM_CTRL (
	CLK,
	RST_N,
	PCLK,
	CamHsync,
	CamVsync,
	CamData,
	LB_WR_ADDR,
	LB_WR_DATA,
	LB_WR_N,
	CamHsync_EDGE,
	CamVsync_EDGE,
	CamLineCount,
	CamPixCount4x
); 

input	CLK, RST_N;
output	[8:0] CamLineCount;
output	[15:0] CamPixCount4x;
output	[9:0] LB_WR_ADDR;
output	[15:0] LB_WR_DATA;
output  LB_WR_N;
input CamHsync, CamVsync;
input [7:0] CamData;
input PCLK;
output CamHsync_EDGE, CamVsync_EDGE;

reg [15:0] CamPixCount4x_sig;
reg [10:0] PclkPixCount;
reg CamHsync_dly1, CamHsync_dly2;
wire CamHsync_edge_sig; 
reg CamVsync_dly1, CamVsync_dly2;
wire CamVsync_edge_sig; 
wire Rg_dec, gB_dec;
reg Rg_dec_dly1, Rg_dec_dly2;
reg [7:0] Rg_latch, gB_latch;
reg [9:0] PclkPixCount_dly1, PclkPixCount_dly2;
reg [8:0] CamLineCount_sig;


///////////////////////////////////////////////////////
always @(posedge PCLK or negedge RST_N or posedge CamHsync_edge_sig)
begin
	if (RST_N == 1'b0 || CamHsync_edge_sig == 1'b1) begin
		PclkPixCount <= 0;
	end else begin
	  PclkPixCount <= PclkPixCount + 1;
	end
end

///////////////////////////////////////////////////////
assign Rg_dec = !PclkPixCount[0];
assign gB_dec = PclkPixCount[0];

///////////////////////////////////////////////////////
always @(posedge PCLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     Rg_latch <= 0;
	end else begin
	   if(Rg_dec == 1'b1) begin
       Rg_latch <= CamData;
     end
	end
end

///////////////////////////////////////////////////////
always @(posedge PCLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     gB_latch <= 0;
	end else begin
	   if(gB_dec == 1'b1) begin
       gB_latch <= CamData;
     end
	end
end

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     CamPixCount4x_sig <= 0;
	end else begin
	   if(CamPixCount4x_sig == 3135 || CamHsync_edge_sig == 1'b1) begin
       CamPixCount4x_sig <= 0;
     end else begin
       CamPixCount4x_sig <= CamPixCount4x_sig + 1;
     end
	end
end

assign CamPixCount4x = CamPixCount4x_sig;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     Rg_dec_dly2 <= 0;
     Rg_dec_dly1 <= 0;
	end else begin
     Rg_dec_dly2 <= Rg_dec_dly1;
     Rg_dec_dly1 <= Rg_dec;
	end
end

///////////////////////////////////////////////////////
always @(posedge PCLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     PclkPixCount_dly2 <= 0;
     PclkPixCount_dly1 <= 0;
	end else begin
     PclkPixCount_dly2 <= PclkPixCount_dly1;
     PclkPixCount_dly1 <= PclkPixCount[10:1];
	end
end

///////////////////////////////////////////////////////
assign LB_WR_N = (Rg_dec_dly1 == 1'b1 && Rg_dec_dly2 == 1'b0) ? 1'b0 : 1'b1;
assign LB_WR_DATA = {Rg_latch, gB_latch};
assign LB_WR_ADDR = PclkPixCount_dly2;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     CamHsync_dly2 <= 0;
     CamHsync_dly1 <= 0;
	end else begin
     CamHsync_dly2 <= CamHsync_dly1;
     CamHsync_dly1 <= CamHsync;
	end
end

///////////////////////////////////////////////////////
assign  CamHsync_edge_sig = (CamHsync_dly1 == 1'b0 && CamHsync_dly2 == 1'b1) ? 1'b1 : 1'b0;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     CamVsync_dly2 <= 0;
     CamVsync_dly1 <= 0;
	end else begin
     CamVsync_dly2 <= CamVsync_dly1;
     CamVsync_dly1 <= CamVsync;
	end
end

///////////////////////////////////////////////////////
assign CamVsync_edge_sig = (CamVsync_dly1 == 1'b0 && CamVsync_dly2 == 1'b1) ? 1'b1 : 1'b0;
assign CamVsync_EDGE = CamVsync_edge_sig;

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     CamLineCount_sig <= 0;
	end else begin
	   if(CamVsync_edge_sig == 1'b1) begin
       CamLineCount_sig <= 0;
     end else if( CamHsync_edge_sig == 1'b1) begin
       CamLineCount_sig <= CamLineCount_sig + 1;
     end
	end
end

///////////////////////////////////////////////////////
assign CamLineCount = CamLineCount_sig;
assign CamHsync_EDGE = CamHsync_edge_sig;

endmodule

//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  SRAM
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
module SRAM (
	CLK,
  CS_N,
  WR_N,
  WRADDR,
  RDADDR,
  WRDATA,
  RDDATA
); 

input	CLK;
input CS_N, WR_N;
input [9:0] WRADDR;
input [9:0] RDADDR;
input [15:0] WRDATA;
output [15:0] RDDATA;

reg [15:0] RAMDATA [0:1024];
reg [15:0] RDDATA_sig;

///////////////////////////////////////////////////////
// sram write
always @(posedge CLK)
begin
	if (CLK == 1'b1) begin
	  if(CS_N == 0 && WR_N == 0) begin
    		RAMDATA[WRADDR] <= WRDATA;
		end
	end
end

///////////////////////////////////////////////////////
// sram read
always @(posedge CLK)
begin
	if (CLK == 1'b1) begin
	  if(CS_N == 0 && WR_N == 1) begin
    		RDDATA_sig <= RAMDATA[RDADDR];
		end else begin
    		RDDATA_sig <= 0;
    end
  	end
end

assign RDDATA = RDDATA_sig;

endmodule
//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  LINEIN_CTRL
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
module LINEIN_CTRL (
	CLK,
	RST_N,
	LB_WR_ADDR,
	LB_WR_DATA,
	LB_WR_N,
	VgaLineCount,
	VgaPixCount,
	buf_RGB
); 

input		CLK, RST_N;
input	[9:0] LB_WR_ADDR;
input	[15:0] LB_WR_DATA;
input LB_WR_N;
input [8:0] VgaLineCount;
input [9:0] VgaPixCount;
output [15:0] buf_RGB;

wire ODDLINE;
reg oddline_dly1, oddline_dly2;
reg [9:0] LB_RD_ADDR;
wire [15:0] LB_RD_DATA_A;
wire [15:0] LB_RD_DATA_B;
wire LB_WR_N_B;
wire LB_WR_N_A;
wire LB_CS_N;
reg [15:0] buf_RGB;

SRAM SRAM_A (
  .CLK(CLK),
  .CS_N(LB_CS_N),
  .WR_N(LB_WR_N_A),
  .WRADDR(LB_WR_ADDR),
  .RDADDR(LB_RD_ADDR),
  .WRDATA(LB_WR_DATA),
  .RDDATA(LB_RD_DATA_A)
); 

SRAM SRAM_B (
  .CLK(CLK),
  .CS_N(LB_CS_N),
  .WR_N(LB_WR_N_B),
  .WRADDR(LB_WR_ADDR),
  .RDADDR(LB_RD_ADDR),
  .WRDATA(LB_WR_DATA),
  .RDDATA(LB_RD_DATA_B)
); 

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     oddline_dly2 <= 0;
     oddline_dly1 <= 0;
	end else begin
     oddline_dly2 <= oddline_dly1;
     oddline_dly1 <= ODDLINE;
	end
end

assign ODDLINE = VgaLineCount[1];

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     buf_RGB <= 0;
	end else begin
    if(oddline_dly2 == 0) begin
      buf_RGB <= LB_RD_DATA_B;
    end else begin 
      buf_RGB <= LB_RD_DATA_A;
    end    
	end
end

///////////////////////////////////////////////////////
always @(posedge CLK or negedge RST_N)
begin
	if (RST_N == 1'b0) begin
     LB_RD_ADDR <= 0;
	end else begin
     LB_RD_ADDR <= VgaPixCount[9:0] + 20;
	end
end

assign LB_WR_N_A = (oddline_dly2 == 0) ? LB_WR_N : 1; 
assign LB_WR_N_B = (oddline_dly2 == 1) ? LB_WR_N : 1; 
assign LB_CS_N = 0;

endmodule
//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  VideoProcCore
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
module VideoProcCore (
	CLK,
	RST_N,
	XCLK,
	CamHsync,
	CamVsync,
	PCLK,
  CamData,
	VgaVsync,
	VgaHsync,
	SW0,
	SW1,
   VgaDataR,
   VgaDataG,
   VgaDataB	
); 

input		CLK, RST_N;
output	XCLK;
input	CamHsync;
input CamVsync;
input PCLK;
input [7:0]CamData;
output	VgaVsync;
output	VgaHsync;
input SW0;
input SW1;
output	[7:0] VgaDataR	;
output	[7:0] VgaDataG	;
output	[7:0] VgaDataB	;

wire CamHsync_EDGE, CamVsync_EDGE;
wire [9:0] LB_WR_ADDR;
wire [15:0] LB_WR_DATA;
wire LB_WR_N;
wire [8:0] VgaLineCount;
wire [9:0] VgaPixCount;
wire [15:0] buf_RGB;
wire [8:0] CamLineCount;
wire [15:0] CamPixCount4x;
wire VgaVisible, VgaVsync, VgaHsync, VgaHsync_edge, OddFrame;
wire [7:0] buf_r, buf_g, buf_b;

assign VgaDataR = (VgaVisible == 1 && ((OddFrame == 1 && SW0 == 0) || (OddFrame == 0 && SW1 == 0)))
                    ? buf_r : 8'h00;
assign VgaDataG = (VgaVisible == 1 && ((OddFrame == 1 && SW0 == 0) || (OddFrame == 0 && SW1 == 0)))
                    ? buf_g : 8'h00;
assign VgaDataB = (VgaVisible == 1 && ((OddFrame == 1 && SW0 == 0) || (OddFrame == 0 && SW1 == 0)))
                    ? buf_b : 8'h00;

assign buf_r = {buf_RGB[15 : 11], 3'b000};
assign buf_g = {buf_RGB[10 : 5], 2'b00};
assign buf_b = {buf_RGB[4 : 0], 3'b000};

assign XCLK = CamPixCount4x[0];

	LINEIN_CTRL LINEIN_CTRL_inst(
	.CLK(CLK),
	.RST_N(RST_N),
	.LB_WR_ADDR(LB_WR_ADDR),
	.LB_WR_DATA(LB_WR_DATA),
	.LB_WR_N(LB_WR_N),
	.VgaLineCount(VgaLineCount),
	.VgaPixCount(VgaPixCount),
	.buf_RGB(buf_RGB)
);

	CAM_CTRL CAM_CTRL_inst(
	.CLK(CLK),
	.RST_N(RST_N),
	.PCLK(PCLK),
	.CamHsync(CamHsync),
	.CamVsync(CamVsync),
	.CamData(CamData),
	.LB_WR_ADDR(LB_WR_ADDR),
	.LB_WR_DATA(LB_WR_DATA),
	.LB_WR_N(LB_WR_N),
	.CamHsync_EDGE(CamHsync_EDGE),
	.CamVsync_EDGE(CamVsync_EDGE),
	.CamLineCount(CamLineCount),
	.CamPixCount4x(CamPixCount4x)
);

	VGA_CTRL VGA_CTRL_inst (
	.CLK(CLK),
	.RST_N(RST_N),
	.CamHsync_EDGE(CamHsync_EDGE),
	.CamVsync_EDGE(CamVsync_EDGE),
	.VgaLineCount(VgaLineCount),
	.VgaPixCount(VgaPixCount),
	.VgaVisible(VgaVisible),
	.VgaVsync(VgaVsync),
	.VgaHsync(VgaHsync),
	.VgaHsync_edge(VgaHsync_edge),
	.OddFrame(OddFrame)
); 
endmodule
//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  VideoProc
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
module VideoProc (
	CLK,
	RST_N,
	XCLK,
	SCL,
	SDA,
	CamHsync,
	CamVsync,
	PCLK,
  CamData,
	VgaVsync,
	VgaHsync,
	SW0,
	SW1,
   VgaDataR,
   VgaDataG,
   VgaDataB	
); 

input		CLK, RST_N;
output	XCLK;
output SCL, SDA;
input	CamHsync;
input CamVsync;
input PCLK;
input [7:0]CamData;
output	VgaVsync;
output	VgaHsync;
input SW0;
input SW1;
output	[7:0] VgaDataR	;
output	[7:0] VgaDataG	;
output	[7:0] VgaDataB	;

	VideoProcCore VideoProcCore_inst(
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
   .VgaDataB(VgaDataB)	
	);

endmodule
//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  testsub_VideoProc
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
//////////////////////////////////////////
//////////////////////////////////////////
// Date        : Tue Oct 11 11:17:37 2022
//
// Author      : JBLee
//
// Company     : Onbitel
//
// Description : 
//
//////////////////////////////////////////
//////////////////////////////////////////
module  testsub_VideoProc (XCLK, SCL, SDA, VgaVsync, VgaHsync, VgaDataR, VgaDataG, VgaDataB, CLK, RST_N, CamHsync, CamVsync, PCLK, CamData, SW0, SW1);
   input XCLK ;
   input SCL ;
   input SDA ;
   input VgaVsync ;
   input VgaHsync ;
   input [7:0] VgaDataR ; wire [7:0] VgaDataR ;
   input [7:0] VgaDataG ; wire [7:0] VgaDataG ;
   input [7:0] VgaDataB ; wire [7:0] VgaDataB ;
   output CLK ;
   output RST_N ;
   output CamHsync ;
   output CamVsync ;
   output PCLK ;
   output [7:0] CamData ; wire [7:0] CamData ;
   output SW0 ;
   output SW1 ;

    reg                 reset_n ;
    reg                 r_clk50m ;
    reg                 r_clk25m ;

   assign CLK   = r_clk50m;
   assign RST_N = reset_n;

   assign PCLK = r_clk25m;
   assign SW0 = 1'b0;
   assign SW1 = 1'b0;

    // !!!!!!!
   assign CamHsync = 1'b0;
   assign CamVsync = 1'b0;
   assign CamData = 8'hA5;


    initial begin
        reset_n = 0 ;
        #499.84 reset_n = 1 ;
    end

    initial begin
        r_clk50m = 0 ;
    end          
    
    always #10      r_clk50m <= ~r_clk50m ;

    always @(posedge r_clk50m or negedge reset_n)
    begin
        if(reset_n == 1'b0)
        begin
            r_clk25m <= 1'b0;
        end else begin
            r_clk25m <= ~r_clk25m;
        end 
    end

endmodule



//--------------------------------------------------
//  
//  Library Name :  DE2_VGA
//  Unit    Name :  test_VideoProc
//  Unit    Type :  Block Diagram
//  
//----------------------------------------------------
 
 
module test_VideoProc;
 
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


$RPR
NROOT -1 1 
VMODUNIT VGA_CTRL $ DE2_VGA 
29 $B -1 NROOT -1 1 
VMODUNIT VGA_CTRL $ DE2_VGA 
36 $N 1
37 $N 2
38 $N 3
39 $N 4
40 $N 5
41 $N 6
42 $N 7
43 $N 8
44 $N 9
45 $N 10
46 $N 11
47 $N 12
48 $N 13
49 $N 14
50 $N 15
51 $N 16
52 $N 17
53 $N 18
54 $N 19
55 $N 20
56 $N 21
57 $N 22
58 $N 23
59 $N 24
60 $N 25
61 $N 26
62 $N 27
63 $N 28
64 $N 29
65 $N 30
66 $N 31
67 $N 32
68 $N 33
69 $N 34
70 $N 35
71 $N 36
72 $N 37
73 $N 38
74 $N 39
75 $N 40
76 $N 41
77 $N 42
78 $N 43
79 $N 44
80 $N 45
81 $N 46
82 $N 47
83 $N 48
84 $N 49
85 $N 50
86 $N 51
87 $N 52
88 $N 53
89 $N 54
90 $N 55
91 $N 56
92 $N 57
93 $N 58
94 $N 59
95 $N 60
96 $N 61
97 $N 62
98 $N 63
99 $N 64
100 $N 65
101 $N 66
102 $N 67
103 $N 68
104 $N 69
105 $N 70
106 $N 71
107 $N 72
108 $N 73
109 $N 74
110 $N 75
111 $N 76
112 $N 77
113 $N 78
114 $N 79
115 $N 80
116 $N 81
117 $N 82
118 $N 83
119 $N 84
120 $N 85
121 $N 86
122 $N 87
123 $N 88
124 $N 89
125 $N 90
126 $N 91
127 $N 92
128 $N 93
129 $N 94
130 $N 95
131 $N 96
132 $N 97
133 $N 98
134 $N 99
135 $N 100
136 $N 101
137 $N 102
138 $N 103
139 $N 104
140 $N 105
141 $N 106
142 $N 107
143 $N 108
144 $N 109
145 $N 110
146 $N 111
147 $N 112
148 $N 113
149 $N 114
150 $N 115
151 $N 116
152 $N 117
153 $N 118
154 $N 119
155 $N 120
156 $N 121
157 $N 122
158 $N 123
159 $N 124
160 $N 125
161 $N 126
162 $N 127
163 $N 128
164 $N 129
165 $N 130
166 $N 131
167 $N 132
168 $N 133
169 $N 134
170 $N 135
171 $N 136
172 $N 137
173 $N 138
174 $N 139
175 $N 140
176 $N 141
177 $N 142
178 $N 143
179 $N 144
180 $N 145
181 $N 146
182 $N 147
183 $N 148
184 $B -1 NROOT -1 1 
VMODUNIT CAM_CTRL $ DE2_VGA 
191 $N 1
192 $N 2
193 $N 3
194 $N 4
195 $N 5
196 $N 6
197 $N 7
198 $N 8
199 $N 9
200 $N 10
201 $N 11
202 $N 12
203 $N 13
204 $N 14
205 $N 15
206 $N 16
207 $N 17
208 $N 18
209 $N 19
210 $N 20
211 $N 21
212 $N 22
213 $N 23
214 $N 24
215 $N 25
216 $N 26
217 $N 27
218 $N 28
219 $N 29
220 $N 30
221 $N 31
222 $N 32
223 $N 33
224 $N 34
225 $N 35
226 $N 36
227 $N 37
228 $N 38
229 $N 39
230 $N 40
231 $N 41
232 $N 42
233 $N 43
234 $N 44
235 $N 45
236 $N 46
237 $N 47
238 $N 48
239 $N 49
240 $N 50
241 $N 51
242 $N 52
243 $N 53
244 $N 54
245 $N 55
246 $N 56
247 $N 57
248 $N 58
249 $N 59
250 $N 60
251 $N 61
252 $N 62
253 $N 63
254 $N 64
255 $N 65
256 $N 66
257 $N 67
258 $N 68
259 $N 69
260 $N 70
261 $N 71
262 $N 72
263 $N 73
264 $N 74
265 $N 75
266 $N 76
267 $N 77
268 $N 78
269 $N 79
270 $N 80
271 $N 81
272 $N 82
273 $N 83
274 $N 84
275 $N 85
276 $N 86
277 $N 87
278 $N 88
279 $N 89
280 $N 90
281 $N 91
282 $N 92
283 $N 93
284 $N 94
285 $N 95
286 $N 96
287 $N 97
288 $N 98
289 $N 99
290 $N 100
291 $N 101
292 $N 102
293 $N 103
294 $N 104
295 $N 105
296 $N 106
297 $N 107
298 $N 108
299 $N 109
300 $N 110
301 $N 111
302 $N 112
303 $N 113
304 $N 114
305 $N 115
306 $N 116
307 $N 117
308 $N 118
309 $N 119
310 $N 120
311 $N 121
312 $N 122
313 $N 123
314 $N 124
315 $N 125
316 $N 126
317 $N 127
318 $N 128
319 $N 129
320 $N 130
321 $N 131
322 $N 132
323 $N 133
324 $N 134
325 $N 135
326 $N 136
327 $N 137
328 $N 138
329 $N 139
330 $N 140
331 $N 141
332 $N 142
333 $N 143
334 $N 144
335 $N 145
336 $N 146
337 $N 147
338 $N 148
339 $N 149
340 $N 150
341 $N 151
342 $N 152
343 $N 153
344 $N 154
345 $N 155
346 $N 156
347 $N 157
348 $N 158
349 $N 159
350 $N 160
351 $N 161
352 $N 162
353 $N 163
354 $N 164
355 $N 165
356 $N 166
357 $N 167
358 $N 168
359 $N 169
360 $N 170
361 $N 171
362 $N 172
363 $N 173
364 $N 174
365 $B -1 NROOT -1 1 
VMODUNIT SRAM $ DE2_VGA 
372 $N 1
373 $N 2
374 $N 3
375 $N 4
376 $N 5
377 $N 6
378 $N 7
379 $N 8
380 $N 9
381 $N 10
382 $N 11
383 $N 12
384 $N 13
385 $N 14
386 $N 15
387 $N 16
388 $N 17
389 $N 18
390 $N 19
391 $N 20
392 $N 21
393 $N 22
394 $N 23
395 $N 24
396 $N 25
397 $N 26
398 $N 27
399 $N 28
400 $N 29
401 $N 30
402 $N 31
403 $N 32
404 $N 33
405 $N 34
406 $N 35
407 $N 36
408 $N 37
409 $N 38
410 $N 39
411 $N 40
412 $N 41
413 $N 42
414 $N 43
415 $N 44
416 $N 45
417 $N 46
418 $N 47
419 $B -1 NROOT -1 1 
VMODUNIT LINEIN_CTRL $ DE2_VGA 
426 $N 1
427 $N 2
428 $N 3
429 $N 4
430 $N 5
431 $N 6
432 $N 7
433 $N 8
434 $N 9
435 $N 10
436 $N 11
437 $N 12
438 $N 13
439 $N 14
440 $N 15
441 $N 16
442 $N 17
443 $N 18
444 $N 19
445 $N 20
446 $N 21
447 $N 22
448 $N 23
449 $N 24
450 $N 25
451 $N 26
452 $N 27
453 $N 28
454 $N 29
455 $N 30
456 $N 31
457 $N 32
458 $N 33
459 $N 34
460 $N 35
461 $N 36
462 $N 37
463 $N 38
464 $N 39
465 $N 40
466 $N 41
467 $N 42
468 $N 43
469 $N 44
470 $N 45
471 $N 46
472 $N 47
473 $N 48
474 $N 49
475 $N 50
476 $N 51
477 $N 52
478 $N 53
479 $N 54
480 $N 55
481 $N 56
482 $N 57
483 $N 58
484 $N 59
485 $N 60
486 $N 61
487 $N 62
488 $N 63
489 $N 64
490 $N 65
491 $N 66
492 $N 67
493 $N 68
494 $N 69
495 $N 70
496 $N 71
497 $N 72
498 $N 73
499 $N 74
500 $N 75
501 $N 76
502 $N 77
503 $N 78
504 $N 79
505 $N 80
506 $N 81
507 $N 82
508 $N 83
509 $N 84
510 $N 85
511 $N 86
512 $N 87
513 $N 88
514 $N 89
515 $N 90
516 $N 91
517 $N 92
518 $B -1 NROOT -1 1 
VMODUNIT VideoProcCore $ DE2_VGA 
525 $N 1
526 $N 2
527 $N 3
528 $N 4
529 $N 5
530 $N 6
531 $N 7
532 $N 8
533 $N 9
534 $N 10
535 $N 11
536 $N 12
537 $N 13
538 $N 14
539 $N 15
540 $N 16
541 $N 17
542 $N 18
543 $N 19
544 $N 20
545 $N 21
546 $N 22
547 $N 23
548 $N 24
549 $N 25
550 $N 26
551 $N 27
552 $N 28
553 $N 29
554 $N 30
555 $N 31
556 $N 32
557 $N 33
558 $N 34
559 $N 35
560 $N 36
561 $N 37
562 $N 38
563 $N 39
564 $N 40
565 $N 41
566 $N 42
567 $N 43
568 $N 44
569 $N 45
570 $N 46
571 $N 47
572 $N 48
573 $N 49
574 $N 50
575 $N 51
576 $N 52
577 $N 53
578 $N 54
579 $N 55
580 $N 56
581 $N 57
582 $N 58
583 $N 59
584 $N 60
585 $N 61
586 $N 62
587 $N 63
588 $N 64
589 $N 65
590 $N 66
591 $N 67
592 $N 68
593 $N 69
594 $N 70
595 $N 71
596 $N 72
597 $N 73
598 $N 74
599 $N 75
600 $N 76
601 $N 77
602 $N 78
603 $N 79
604 $N 80
605 $N 81
606 $N 82
607 $N 83
608 $N 84
609 $N 85
610 $N 86
611 $N 87
612 $N 88
613 $N 89
614 $N 90
615 $N 91
616 $N 92
617 $N 93
618 $N 94
619 $N 95
620 $N 96
621 $N 97
622 $B -1 NROOT -1 1 
VMODUNIT VideoProc $ DE2_VGA 
629 $N 1
630 $N 2
631 $N 3
632 $N 4
633 $N 5
634 $N 6
635 $N 7
636 $N 8
637 $N 9
638 $N 10
639 $N 11
640 $N 12
641 $N 13
642 $N 14
643 $N 15
644 $N 16
645 $N 17
646 $N 18
647 $N 19
648 $N 20
649 $N 21
650 $N 22
651 $N 23
652 $N 24
653 $N 25
654 $N 26
655 $N 27
656 $N 28
657 $N 29
658 $N 30
659 $N 31
660 $N 32
661 $N 33
662 $N 34
663 $N 35
664 $N 36
665 $N 37
666 $N 38
667 $N 39
668 $N 40
669 $N 41
670 $N 42
671 $N 43
672 $N 44
673 $N 45
674 $N 46
675 $N 47
676 $N 48
677 $N 49
678 $N 50
679 $N 51
680 $N 52
681 $B -1 NROOT -1 1 
VMODUNIT testsub_VideoProc $ DE2_VGA 
688 $N 1
689 $N 2
690 $N 3
691 $N 4
692 $N 5
693 $N 6
694 $N 7
695 $N 8
696 $N 9
697 $N 10
698 $N 11
699 $N 12
700 $N 13
701 $N 14
702 $N 15
703 $N 16
704 $N 17
705 $N 18
706 $N 19
707 $N 20
708 $N 21
709 $N 22
710 $N 23
711 $N 24
712 $N 25
713 $N 26
714 $N 27
715 $N 28
716 $N 29
717 $N 30
718 $N 31
719 $N 32
720 $N 33
721 $N 34
722 $N 35
723 $N 36
724 $N 37
725 $N 38
726 $N 39
727 $N 40
728 $N 41
729 $N 42
730 $N 43
731 $N 44
732 $N 45
733 $N 46
734 $N 47
735 $N 48
736 $N 49
737 $N 50
738 $N 51
739 $N 52
740 $N 53
741 $N 54
742 $N 55
743 $N 56
744 $N 57
745 $N 58
746 $N 59
747 $N 60
748 $N 61
749 $N 62
750 $N 63
751 $N 64
752 $N 65
753 $N 66
754 $N 67
755 $N 68
756 $N 69
757 $N 70
758 $N 71
759 $N 72
760 $B -1 NROOT -1 1 
BLKUNIT test_VideoProc $ DE2_VGA 
771 $N 1
772 $N 2
773 $N 3
774 $N 4
775 $N 5
776 $N 6
777 $N 7
778 $N 8
780 $R 1 1 BLOK $ testsub_VideoProc $ 
781 $R 1 0 782 $N 1
783 $N 1
784 $N 1
785 $N 1
786 $N 1
787 $N 1
788 $N 1
789 $N 1
790 $N 1
791 $N 1
792 $N 1
793 $N 1
794 $N 1
795 $N 1
796 $N 1
797 $N 1
799 $R 18 1 BLOK $ C1 $ 
800 $R 18 0 801 $N 18
802 $N 18
803 $N 18
804 $N 18
805 $N 18
806 $N 18
807 $N 18
808 $N 18
809 $N 18
810 $N 18
811 $N 18
812 $N 18
813 $N 18
814 $N 18
815 $N 18
816 $N 18
819 $N 18

-1