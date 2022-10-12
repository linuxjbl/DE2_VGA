 
 
module PwmCtrl (HEX0A, HEX0B, HEX0C, HEX0D, HEX0E, HEX0F, HEX0G, HEX0DP, HEX1A, HEX1B,
                HEX1C, HEX1D, HEX1E, HEX1F, HEX1G, HEX1DP, HEX2A, HEX2B, HEX2C, HEX2D,
                HEX2E, HEX2F, HEX2G, HEX2DP, HEX3A, HEX3B, HEX3C, HEX3D, HEX3E, HEX3F,
                HEX3G, HEX3DP, PUSH0, PUSH1, LED0, LED1, LED2, LED3, LED4, LED5, LED6,
                LED7, FL_DQ, FL_ADDR, FL_WE_N, FL_RST_N, FL_OE_N, FL_CE_N, CLK, RST_N,
                lcd_rs, lcd_rw, lcd_data, lcd_e, uart_rx, uart_tx);
  reg visual_null;
  output HEX0A;
  output HEX0B;
  output HEX0C;
  output HEX0D;
  output HEX0E;
  output HEX0F;
  output HEX0G;
  output HEX0DP;
  output HEX1A;
  output HEX1B;
  output HEX1C;
  output HEX1D;
  output HEX1E;
  output HEX1F;
  output HEX1G;
  output HEX1DP;
  output HEX2A;
  output HEX2B;
  output HEX2C;
  output HEX2D;
  output HEX2E;
  output HEX2F;
  output HEX2G;
  output HEX2DP;
  output HEX3A;
  output HEX3B;
  output HEX3C;
  output HEX3D;
  output HEX3E;
  output HEX3F;
  output HEX3G;
  output HEX3DP;
  input PUSH0;
  input PUSH1;
  output LED0;
  output LED1;
  output LED2;
  output LED3;
  output LED4;
  output LED5;
  output LED6;
  output LED7;
  input CLK;
  input RST_N;
  output lcd_rs;
  output lcd_rw;
  inout [7:0] lcd_data;
  output lcd_e;
  input uart_rx;
  output uart_tx;
  inout [7:0] FL_DQ;
  output [21:0] FL_ADDR;
  output FL_WE_N;
  output FL_RST_N;
  output FL_OE_N;
  output FL_CE_N;
  assign FL_RST_N = 1'b1;
  reg [27:0] counter0;
  wire counter0_clr;
  wire counter0_dec;
  wire [27:0] Decode0;
  wire [27:0] Period0;
  reg [27:0] counter1;
  wire counter1_clr;
  wire counter1_dec;
  wire [27:0] Decode1;
  wire [27:0] Period1;
  reg [27:0] counter2;
  wire counter2_clr;
  wire counter2_dec;
  wire [27:0] Decode2;
  wire [27:0] Period2;
  reg [27:0] counter3;
  wire counter3_clr;
  wire counter3_dec;
  wire [27:0] Decode3;
  wire [27:0] Period3;
  reg [27:0] counter4;
  wire counter4_clr;
  wire counter4_dec;
  wire [27:0] Decode4;
  wire [27:0] Period4;
  reg [27:0] counter5;
  wire counter5_clr;
  wire counter5_dec;
  wire [27:0] Decode5;
  wire [27:0] Period5;
  reg [27:0] counter6;
  wire counter6_clr;
  wire counter6_dec;
  wire [27:0] Decode6;
  wire [27:0] Period6;
  reg [27:0] counter7;
  wire counter7_clr;
  wire counter7_dec;
  wire [27:0] Decode7;
  wire [27:0] Period7;
  assign LED0 = counter0_dec;
  assign LED1 = counter1_dec;
  assign LED2 = counter2_dec;
  assign LED3 = counter3_dec;
  assign LED4 = counter4_dec;
  assign LED5 = counter5_dec;
  assign LED6 = counter6_dec;
  assign LED7 = counter7_dec;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter0 <= 0;
    end
    else
    begin
      if (counter0_clr == 1'b1)
      begin
        counter0 <= 0;
      end
      else
      begin
        counter0 <= counter0 + 1;
      end
 
    end
 
  end
 
  assign counter0_clr = (counter0 >= Period0 - 1) ? 1'b1 : 1'b0;
  assign counter0_dec = (counter0 < Decode0) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter1 <= 0;
    end
    else
    begin
      if (counter1_clr == 1'b1)
      begin
        counter1 <= 0;
      end
      else
      begin
        counter1 <= counter1 + 1;
      end
 
    end
 
  end
 
  assign counter1_clr = (counter1 >= Period1 - 1) ? 1'b1 : 1'b0;
  assign counter1_dec = (counter1 < Decode1) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter2 <= 0;
    end
    else
    begin
      if (counter2_clr == 1'b1)
      begin
        counter2 <= 0;
      end
      else
      begin
        counter2 <= counter2 + 1;
      end
 
    end
 
  end
 
  assign counter2_clr = (counter2 >= Period2 - 1) ? 1'b1 : 1'b0;
  assign counter2_dec = (counter2 < Decode2) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter3 <= 0;
    end
    else
    begin
      if (counter3_clr == 1'b1)
      begin
        counter3 <= 0;
      end
      else
      begin
        counter3 <= counter3 + 1;
      end
 
    end
 
  end
 
  assign counter3_clr = (counter3 >= Period3 - 1) ? 1'b1 : 1'b0;
  assign counter3_dec = (counter3 < Decode3) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter4 <= 0;
    end
    else
    begin
      if (counter4_clr == 1'b1)
      begin
        counter4 <= 0;
      end
      else
      begin
        counter4 <= counter4 + 1;
      end
 
    end
 
  end
 
  assign counter4_clr = (counter4 >= Period4 - 1) ? 1'b1 : 1'b0;
  assign counter4_dec = (counter4 < Decode4) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter5 <= 0;
    end
    else
    begin
      if (counter5_clr == 1'b1)
      begin
        counter5 <= 0;
      end
      else
      begin
        counter5 <= counter5 + 1;
      end
 
    end
 
  end
 
  assign counter5_clr = (counter5 >= Period5 - 1) ? 1'b1 : 1'b0;
  assign counter5_dec = (counter5 < Decode5) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter6 <= 0;
    end
    else
    begin
      if (counter6_clr == 1'b1)
      begin
        counter6 <= 0;
      end
      else
      begin
        counter6 <= counter6 + 1;
      end
 
    end
 
  end
 
  assign counter6_clr = (counter6 >= Period6 - 1) ? 1'b1 : 1'b0;
  assign counter6_dec = (counter6 < Decode6) ? 1 : 0;
  always
    @( posedge CLK or negedge RST_N )
  begin
    if (RST_N == 1'b0)
    begin
      counter7 <= 0;
    end
    else
    begin
      if (counter7_clr == 1'b1)
      begin
        counter7 <= 0;
      end
      else
      begin
        counter7 <= counter7 + 1;
      end
 
    end
 
  end
 
  assign counter7_clr = (counter7 >= Period7 - 1) ? 1'b1 : 1'b0;
  assign counter7_dec = (counter7 < Decode7) ? 1 : 0;
 
  nios2  u0
    (
     .clk_clk(CLK),
     .reset_reset_n(RST_N),
     .tristate_conduit_bridge_0_out_ext_flash_tcm_address_out(FL_ADDR),
     .tristate_conduit_bridge_0_out_ext_flash_tcm_chipselect_n_out(FL_CE_N),
     .tristate_conduit_bridge_0_out_ext_flash_tcm_data_out(FL_DQ),
     .tristate_conduit_bridge_0_out_ext_flash_tcm_read_n_out(FL_OE_N),
     .tristate_conduit_bridge_0_out_ext_flash_tcm_write_n_out(FL_WE_N),
     .decode0_external_connection_export(Decode0),
     .period0_external_connection_export(Period0),
     .decode1_external_connection_export(Decode1),
     .period1_external_connection_export(Period1),
     .decode2_external_connection_export(Decode2),
     .period2_external_connection_export(Period2),
     .decode3_external_connection_export(Decode3),
     .period3_external_connection_export(Period3),
     .decode4_external_connection_export(Decode4),
     .period4_external_connection_export(Period4),
     .decode5_external_connection_export(Decode5),
     .period5_external_connection_export(Period5),
     .decode6_external_connection_export(Decode6),
     .period6_external_connection_export(Period6),
     .decode7_external_connection_export(Decode7),
     .period7_external_connection_export(Period7),
     .push_external_connection_export({PUSH1, PUSH0}),
     .hex0_external_connection_export({HEX0DP, HEX0G, HEX0F, HEX0E, HEX0D, HEX0C, HEX0B,
     HEX0A}),
     .hex1_external_connection_export({HEX1DP, HEX1G, HEX1F, HEX1E, HEX1D, HEX1C, HEX1B,
     HEX1A}),
     .hex2_external_connection_export({HEX2DP, HEX2G, HEX2F, HEX2E, HEX2D, HEX2C, HEX2B,
     HEX2A}),
     .hex3_external_connection_export({HEX3DP, HEX3G, HEX3F, HEX3E, HEX3D, HEX3C, HEX3B,
     HEX3A}),
     .lcd_0_external_RS(lcd_rs),
     .lcd_0_external_RW(lcd_rw),
     .lcd_0_external_data(lcd_data),
     .lcd_0_external_E(lcd_e),
     .uart_0_external_connection_rxd(uart_rx),
     .uart_0_external_connection_txd(uart_tx));
 
 
endmodule
