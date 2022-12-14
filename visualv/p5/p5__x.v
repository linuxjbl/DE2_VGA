 
 
module SRAM (CLK, CS_N, WR_N, WRADDR, RDADDR, WRDATA, RDDATA);
  reg visual_null;
  input CLK;
  input CS_N;
  input WR_N;
  input [9:0] WRADDR;
  input [9:0] RDADDR;
  input [15:0] WRDATA;
  output [15:0] RDDATA;
  reg [15:0] RAMDATA [0:1024];
  reg [15:0] RDDATA_sig;
  always
    @( posedge CLK )
  begin
    if (CLK == 1'b1)
    begin
      if (CS_N == 0 && WR_N == 0)
      begin
        RAMDATA[WRADDR] <= WRDATA;
      end
 
    end
 
  end
 
  always
    @( posedge CLK )
  begin
    if (CLK == 1'b1)
    begin
      if (CS_N == 0 && WR_N == 1)
      begin
        RDDATA_sig <= RAMDATA[RDADDR];
      end
      else
      begin
        RDDATA_sig <= 0;
      end
 
    end
 
  end
 
  assign RDDATA = RDDATA_sig;
 
 
endmodule
