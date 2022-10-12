 
 
module clk_event_50m (clk50m, rstn, o_sig);
  reg visual_null;
  input clk50m;
  wire clk50m;
  input rstn;
  wire rstn;
  output o_sig;
  wire o_sig;
  reg r_sig;
  reg [25:0] r_cnt;
  assign o_sig = r_sig;
  always
    @( posedge clk50m or negedge rstn )
  begin
    if (!(rstn))
    begin
      r_cnt <= 26'd0;
      r_sig <= 1'b0;
    end
    else
    begin
      if (r_cnt == 26'd50000000)
      begin
        r_cnt <= 26'd0;
        r_sig <= 1'b1;
      end
      else
      begin
        r_cnt <= r_cnt + 1'd1;
        r_sig <= 1'b0;
      end
 
    end
 
  end
 
 
 
endmodule
