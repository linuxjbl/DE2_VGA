//////////////////////////////////////////
//////////////////////////////////////////
// Date        : Fri Oct 14 14:58:49 2022
//
// Author      : JBLee
//
// Company     : Onbitel
//
// Description : 
//
//////////////////////////////////////////
//////////////////////////////////////////
`timescale 1ns/10ps
module  testsub_cam (PCLK, RST_N, CamHsync, CamVsync, CamData);
   input PCLK ;
   input RST_N ;
   output CamHsync ;
   output CamVsync ;
   output [7:0] CamData ; wire [7:0] CamData ;

    parameter HEND = 'd1567;
    parameter HON  = 287;
    parameter VEND = 509;
    parameter VPEND = 2;    // Pulse end
    parameter VBEND = 19;   // Blank end
    parameter HWIDTH = 11;   //  0 ~ 1567
    parameter VWIDTH = 9;    //  0 ~ 509

    reg [HWIDTH-1:0]     h_cnt;
    reg [VWIDTH-1:0]     v_cnt;
    wire w_h_end;
    wire w_v_end;
    reg r_camHsync;
    reg r_camVsync;

   assign CamHsync = r_camHsync;
   assign CamVsync = r_camVsync;
   assign CamData  = (h_cnt[3] == 1'b0) ? {1'b0, h_cnt[10:4]} : v_cnt[7:0] ;

    always @( posedge PCLK or negedge  RST_N ) begin
        if( !RST_N ) begin
            h_cnt  <=  'd0 ;
        end
        else begin
            if( w_h_end == 1'b1) begin
                h_cnt  <=  'd0 ;
            end else begin
                h_cnt <= h_cnt + 1;
            end
        end
    end

    assign w_h_end = (h_cnt == HEND) ? 1'b1 : 1'b0;

    always @( posedge PCLK or negedge  RST_N ) begin
        if( !RST_N ) begin
            r_camHsync  <=  'd0 ;
        end
        else begin
            if( h_cnt == HON ) begin
                r_camHsync <= 'd1 ;
            end if( h_cnt == HEND) begin
                r_camHsync <= 'd0 ;
            end
        end
    end

////////////////////////////////////////
    always @( posedge PCLK or negedge  RST_N ) begin
        if( !RST_N ) begin
            v_cnt  <=  'd0 ;
        end
        else begin
            if( w_h_end == 1'b1) begin
                if( w_v_end == 1'b1) begin
                    v_cnt  <=  'd0 ;
                end else begin
                    v_cnt <= v_cnt + 1;
                end
            end
        end
    end

    assign w_v_end = (v_cnt == VEND) ? 1'b1 : 1'b0;

    always @( posedge PCLK or negedge  RST_N ) begin
        if( !RST_N ) begin
            r_camVsync <= 'd1 ;
        end
        else begin
            if( w_h_end == 1'b1) begin
                if(v_cnt == VPEND) begin
                    r_camVsync <= 'd0 ;
                end if(v_cnt == VEND) begin
                    r_camVsync <= 'd1 ;
                end
            end
        end
    end
endmodule




