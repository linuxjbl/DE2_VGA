//--------------------------------------------------
//  
//  Library Name :  de2
//  Unit    Name :  toggle0
//  Unit    Type :  Text Unit
//  
//----------------------------------------------------
//////////////////////////////////////////
//////////////////////////////////////////
// Date        : Fri Sep 30 15:31:53 2022
//
// Author      : JBLee
//
// Company     : Onbitel
//
// Description : 
//
//////////////////////////////////////////
//////////////////////////////////////////
module  toggle0 (clk, rstn, toggle_en, o_toggle);
   input clk ; wire clk ;
   input rstn ; wire rstn ;
   input toggle_en ; wire toggle_en ;
   output o_toggle ; wire o_toggle ;

    reg        r_toggle;

    assign  o_toggle = r_toggle ;

    always @( posedge clk or negedge rstn ) begin
        if( !rstn ) begin
            r_toggle <= 1'b0 ;
        end
        else begin
            if(toggle_en == 1'b1) begin
                r_toggle <= ~r_toggle;
            end
            else begin
                r_toggle <= r_toggle;
            end
        end
    end


endmodule

