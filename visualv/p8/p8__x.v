 
 
module VGA (clock, switch, disp_RGB, hsync, vsync);
  reg visual_null;
  input clock;
  input [1:0] switch;
  output [2:0] disp_RGB;
  output hsync;
  output vsync;
  reg [9:0] hcount;
  reg [9:0] vcount;
  reg [2:0] data;
  reg [2:0] h_dat;
  reg [2:0] v_dat;
  reg flag;
  wire hcount_ov;
  wire vcount_ov;
  wire dat_act;
  wire hsync;
  wire vsync;
  reg vga_clk;
  parameter hsync_end = 10'd95;
  parameter hdat_begin = 10'd143;
  parameter hdat_end = 10'd783;
  parameter hpixel_end = 10'd799;
  parameter vsync_end = 10'd1;
  parameter vdat_begin = 10'd34;
  parameter vdat_end = 10'd514;
  parameter vline_end = 10'd524;
  always
    @( posedge clock )
  begin
    vga_clk = ~(vga_clk);
  end
 
  always
    @( posedge vga_clk )
  begin
    if (hcount_ov)
      hcount <= 10'd0;
    else
      hcount <= hcount + 10'd1;
 
  end
 
  assign hcount_ov = (hcount == hpixel_end);
  always
    @( posedge vga_clk )
  begin
    if (hcount_ov)
    begin
      if (vcount_ov)
        vcount <= 10'd0;
      else
        vcount <= vcount + 10'd1;
 
    end
 
  end
 
  assign vcount_ov = (vcount == vline_end);
  assign dat_act = ((hcount >= hdat_begin) && (hcount < hdat_end)) && ((vcount >=
         vdat_begin) && (vcount < vdat_end));
  assign hsync = (hcount > hsync_end);
  assign vsync = (vcount > vsync_end);
  assign disp_RGB = (dat_act) ? data : 3'h00;
  always
    @( posedge vga_clk )
  begin
    case (switch[1:0])
      2'd0 :
        data <= h_dat;
      2'd1 :
        data <= v_dat;
      2'd2 :
        data <= (v_dat ^ h_dat);
      2'd3 :
        data <= (v_dat ~^ h_dat);
    endcase
 
  end
 
  always
    @( posedge vga_clk )
  begin
    if (hcount < 223)
      v_dat <= 3'h7;
    else
      if (hcount < 303)
        v_dat <= 3'h6;
      else
        if (hcount < 383)
          v_dat <= 3'h5;
        else
          if (hcount < 463)
            v_dat <= 3'h4;
          else
            if (hcount < 543)
              v_dat <= 3'h3;
            else
              if (hcount < 623)
                v_dat <= 3'h2;
              else
                if (hcount < 703)
                  v_dat <= 3'h1;
                else
                  v_dat <= 3'h0;
 
 
 
 
 
 
 
  end
 
  always
    @( posedge vga_clk )
  begin
    if (vcount < 94)
      h_dat <= 3'h7;
    else
      if (vcount < 154)
        h_dat <= 3'h6;
      else
        if (vcount < 214)
          h_dat <= 3'h5;
        else
          if (vcount < 274)
            h_dat <= 3'h4;
          else
            if (vcount < 334)
              h_dat <= 3'h3;
            else
              if (vcount < 394)
                h_dat <= 3'h2;
              else
                if (vcount < 454)
                  h_dat <= 3'h1;
                else
                  h_dat <= 3'h0;
 
 
 
 
 
 
 
  end
 
 
 
endmodule
