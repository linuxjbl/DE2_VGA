//////////////////////////////////////////
//////////////////////////////////////////
// Date        : Mon Oct 10 09:13:20 2022
//
// Author      : 
//
// Company     : 
//
// Description : 
//
//////////////////////////////////////////
//////////////////////////////////////////
`timescale 1ns/1ps

module  testsub_VGA (switch, clock);
   output [1:0] switch ;
   output clock ;

	reg [1:0] switch;
	reg 		 clock;

	initial
	begin
		switch <= 2'b00;
		clock  <= 1'b0;
	end

	always #10 clock <= ~clock;

endmodule