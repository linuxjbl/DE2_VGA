 
 
module test_VGA;
  reg visual_null;
 
  wire [1:0] switch;
 
  VGA  C0
    (
     .clock(clock),
     .switch(switch[1:0]),
     .disp_RGB(),
     .hsync(),
     .vsync());
 
  testsub_VGA  C1
    (
     .switch(switch[1:0]),
     .clock(clock));
 
 
endmodule
