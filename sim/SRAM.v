//--------------------------------------------------
//  
//      Verilog code generated by Visual HDL
//
//  Design Unit:
//  ------------
//      Unit    Name  :  SRAM
//      Library Name  :  DE2_VGA
//  
//      Creation Date :  Mon Oct 24 16:24:09 2022
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
//         Code Destination               :  1 File per Unit
//         Attach Directives              :  Yes
//         Structural                     :  No
//         Free text style                :  / / ...
//         Preserve spacing for free text :  Yes
//         Sort Ports by mode             :  No
//         Declaration alignment          :  No
//         New line for each Port         :  No
//         Attach comment to Port         :  No
//
//--------------------------------------------------
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
