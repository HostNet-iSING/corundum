// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2021-2023 The Regents of the University of California
 */

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * NIC Interface TX path
 */
module tx_axis_tdata_mux #
(
    // Number of ports
    parameter PORTS = 1,
    
    // Streaming interface configuration
    parameter AXIS_DATA_WIDTH    = 512*2**$clog2(PORTS),
    parameter AXIS_KEEP_WIDTH    = AXIS_DATA_WIDTH/8,
    parameter AXIS_TX_ID_WIDTH   = 10,
    parameter AXIS_TX_DEST_WIDTH = $clog2(PORTS)+4,
    parameter AXIS_TX_USER_WIDTH = 232
    
)
(
    input  wire [AXIS_DATA_WIDTH-1:0]       cu_tx_axis_tdata_int           ,  
    input  wire [AXIS_KEEP_WIDTH-1:0]       cu_tx_axis_tkeep_int           ,  
    input  wire                             cu_tx_axis_tvalid_int          ,  
    output wire                             cu_tx_axis_tready_int          ,  
    input  wire                             cu_tx_axis_tlast_int           ,  
    input  wire [AXIS_TX_ID_WIDTH-1:0]      cu_tx_axis_tid_int             ,  
    input  wire [AXIS_TX_DEST_WIDTH-1:0]    cu_tx_axis_tdest_int           ,  
    input  wire [AXIS_TX_USER_WIDTH-1:0]    cu_tx_axis_tuser_int           ,  
                                                                            
    input  wire [AXIS_DATA_WIDTH-1:0]       re_tx_axis_tdata_int           ,
    input  wire [AXIS_KEEP_WIDTH-1:0]       re_tx_axis_tkeep_int           ,
    input  wire                             re_tx_axis_tvalid_int          ,
    output wire                             re_tx_axis_tready_int          ,
    input  wire                             re_tx_axis_tlast_int           ,
    input  wire [AXIS_TX_ID_WIDTH-1:0]      re_tx_axis_tid_int             ,
    input  wire [AXIS_TX_DEST_WIDTH-1:0]    re_tx_axis_tdest_int           ,
    input  wire [AXIS_TX_USER_WIDTH-1:0]    re_tx_axis_tuser_int           ,

    /*                                                  
     * DMA read data output                             
     */
    output wire [AXIS_DATA_WIDTH-1:0]       tx_axis_tdata_int              ,
    output wire [AXIS_KEEP_WIDTH-1:0]       tx_axis_tkeep_int              ,
    output wire                             tx_axis_tvalid_int             ,
    input  wire                             tx_axis_tready_int             ,
    output wire                             tx_axis_tlast_int              ,
    output wire [AXIS_TX_ID_WIDTH-1:0]      tx_axis_tid_int                ,
    output wire [AXIS_TX_DEST_WIDTH-1:0]    tx_axis_tdest_int              ,
    output wire [AXIS_TX_USER_WIDTH-1:0]    tx_axis_tuser_int              

);


assign tx_axis_tdata_int  = (re_tx_axis_tvalid_int)? re_tx_axis_tdata_int  : cu_tx_axis_tdata_int ;
assign tx_axis_tkeep_int  = (re_tx_axis_tvalid_int)? re_tx_axis_tkeep_int  : cu_tx_axis_tkeep_int ;
assign tx_axis_tvalid_int = (re_tx_axis_tvalid_int)? re_tx_axis_tvalid_int : cu_tx_axis_tvalid_int;
assign tx_axis_tlast_int  = (re_tx_axis_tvalid_int)? re_tx_axis_tlast_int  : cu_tx_axis_tlast_int ;
assign tx_axis_tid_int    = (re_tx_axis_tvalid_int)? re_tx_axis_tid_int    : cu_tx_axis_tid_int   ;
assign tx_axis_tdest_int  = (re_tx_axis_tvalid_int)? re_tx_axis_tdest_int  : cu_tx_axis_tdest_int ;
assign tx_axis_tuser_int  = (re_tx_axis_tvalid_int)? re_tx_axis_tuser_int  : cu_tx_axis_tuser_int ;

assign re_tx_axis_tready_int  =  tx_axis_tready_int;
assign cu_tx_axis_tready_int  =  (re_tx_axis_tvalid_int==1'b0)? tx_axis_tready_int : 1'b0;
					
endmodule

`resetall
