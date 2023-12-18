// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2021-2023 The Regents of the University of California
 */

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * Application block
 */
module mqnic_app_if_data_proc_v2 #
(
    // Structural configuration
    parameter IF_COUNT = 1,
    parameter PORTS_PER_IF = 1,

    // Interface configuration
    parameter PTP_TS_ENABLE = 1,
    parameter PTP_TS_WIDTH = 96,
    parameter TX_TAG_WIDTH = 16,

    // Ethernet interface configuration (direct, async)
    parameter AXIS_DATA_WIDTH = 512,
    parameter AXIS_KEEP_WIDTH = AXIS_DATA_WIDTH/8,

    // Ethernet interface configuration (interface)
    parameter AXIS_IF_DATA_WIDTH = AXIS_DATA_WIDTH*2**$clog2(PORTS_PER_IF),
    parameter AXIS_IF_KEEP_WIDTH = AXIS_IF_DATA_WIDTH/8,
    parameter AXIS_IF_TX_ID_WIDTH = 12,
    parameter AXIS_IF_RX_ID_WIDTH = PORTS_PER_IF > 1 ? $clog2(PORTS_PER_IF) : 1,
    parameter AXIS_IF_TX_DEST_WIDTH = $clog2(PORTS_PER_IF)+4,
    parameter AXIS_IF_RX_DEST_WIDTH = 8,
    parameter AXIS_IF_TX_USER_WIDTH = TX_TAG_WIDTH + 1,
    parameter AXIS_IF_RX_USER_WIDTH = 96,
    // AXI stream tuser signal width
    //parameter S_AXIS_USER_WIDTH = 1,
    // AXI stream tuser signal width
    //parameter M_AXIS_USER_WIDTH = S_AXIS_USER_WIDTH + 24,
    
    //Config ram interface
    parameter CONFIG_RAM_AWIDTH = 4,
    parameter CONFIG_RAM_DWIDTH = 256
)
(
    input  wire                                           clk,
    input  wire                                           rst,

    /*
     * Ethernet (internal at interface module)
     */
    input  wire [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         s_axis_if_tx_tdata,
    input  wire [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         s_axis_if_tx_tkeep,
    input  wire [IF_COUNT-1:0]                            s_axis_if_tx_tvalid,
    output wire [IF_COUNT-1:0]                            s_axis_if_tx_tready,
    input  wire [IF_COUNT-1:0]                            s_axis_if_tx_tlast,
    input  wire [IF_COUNT*AXIS_IF_TX_ID_WIDTH-1:0]        s_axis_if_tx_tid,
    input  wire [IF_COUNT*AXIS_IF_TX_DEST_WIDTH-1:0]      s_axis_if_tx_tdest,
    input  wire [IF_COUNT*AXIS_IF_TX_USER_WIDTH-1:0]      s_axis_if_tx_tuser,

    output wire [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         m_axis_if_tx_tdata,
    output wire [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         m_axis_if_tx_tkeep,
    output wire [IF_COUNT-1:0]                            m_axis_if_tx_tvalid,
    input  wire [IF_COUNT-1:0]                            m_axis_if_tx_tready,
    output wire [IF_COUNT-1:0]                            m_axis_if_tx_tlast,
    output wire [IF_COUNT*AXIS_IF_TX_ID_WIDTH-1:0]        m_axis_if_tx_tid,
    output wire [IF_COUNT*AXIS_IF_TX_DEST_WIDTH-1:0]      m_axis_if_tx_tdest,
    output wire [IF_COUNT*AXIS_IF_TX_USER_WIDTH-1:0]      m_axis_if_tx_tuser,
    
    input  wire [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         s_axis_if_rx_tdata,
    input  wire [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         s_axis_if_rx_tkeep,
    input  wire [IF_COUNT-1:0]                            s_axis_if_rx_tvalid,
    output wire [IF_COUNT-1:0]                            s_axis_if_rx_tready,
    input  wire [IF_COUNT-1:0]                            s_axis_if_rx_tlast,
    input  wire [IF_COUNT*AXIS_IF_RX_ID_WIDTH-1:0]        s_axis_if_rx_tid,
    input  wire [IF_COUNT*AXIS_IF_RX_DEST_WIDTH-1:0]      s_axis_if_rx_tdest,
    input  wire [IF_COUNT*AXIS_IF_RX_USER_WIDTH-1:0]      s_axis_if_rx_tuser,

    output wire [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         m_axis_if_rx_tdata,
    output wire [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         m_axis_if_rx_tkeep,
    output wire [IF_COUNT-1:0]                            m_axis_if_rx_tvalid,
    input  wire [IF_COUNT-1:0]                            m_axis_if_rx_tready,
    output wire [IF_COUNT-1:0]                            m_axis_if_rx_tlast,
    output wire [IF_COUNT*AXIS_IF_RX_ID_WIDTH-1:0]        m_axis_if_rx_tid,
    output wire [IF_COUNT*AXIS_IF_RX_DEST_WIDTH-1:0]      m_axis_if_rx_tdest,
    output wire [IF_COUNT*AXIS_IF_RX_USER_WIDTH-1:0]      m_axis_if_rx_tuser,
    
    /*
     * Config ram interface (w/r from data proc)
     */
    output wire [IF_COUNT-1:0]                            rx_config_ram_ren,
    output wire [IF_COUNT-1:0]                            rx_config_ram_wen,
    output wire [IF_COUNT*CONFIG_RAM_AWIDTH-1:0]          rx_config_ram_raddr,
    input  wire [IF_COUNT*CONFIG_RAM_DWIDTH-1:0]          rx_config_ram_rdata,   
    output wire [IF_COUNT*CONFIG_RAM_DWIDTH-1:0]          rx_config_ram_wdata,   

    output wire [IF_COUNT-1:0]                            tx_config_ram_ren,
    output wire [IF_COUNT-1:0]                            tx_config_ram_wen,
    output wire [IF_COUNT*CONFIG_RAM_AWIDTH-1:0]          tx_config_ram_raddr,
    input  wire [IF_COUNT*CONFIG_RAM_DWIDTH-1:0]          tx_config_ram_rdata,
    output wire [IF_COUNT*CONFIG_RAM_DWIDTH-1:0]          tx_config_ram_wdata  
    
);

localparam HDR_BYTE = 62;
localparam HDR_WIDTH = HDR_BYTE*8;
localparam DEST_QDP_BIT = (47-1)*8;
localparam PSN_BIT = (51-1)*8;
//localparam HEADER_SIGN = 56'h06_0504_0302_0100;//56'h55_5555_5555_5555;


reg  [IF_COUNT*10-1:0]                         r_if_tx_cnt        ;
reg  [IF_COUNT*10-1:0]                         r_if_rx_cnt        ;
reg  [IF_COUNT*24-1:0]                         r_psn_cnt          ;
reg  [IF_COUNT*24-1:0]                         r_dest_QPN         ;
reg  [IF_COUNT*HDR_WIDTH-1:0]                  r_header           ;
wire [IF_COUNT*HDR_WIDTH-1:0]                  w_new_header       ;

reg  [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         r_axis_if_tx_tdata ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r_axis_if_tx_tkeep ;
reg  [IF_COUNT-1:0]                            r_axis_if_tx_tvalid;
reg  [IF_COUNT-1:0]                            r_axis_if_tx_tlast ;
reg  [IF_COUNT*AXIS_IF_TX_ID_WIDTH-1:0]        r_axis_if_tx_tid   ;
reg  [IF_COUNT*AXIS_IF_TX_DEST_WIDTH-1:0]      r_axis_if_tx_tdest ;
reg  [IF_COUNT*AXIS_IF_TX_USER_WIDTH-1:0]      r_axis_if_tx_tuser ;
     
reg  [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         r_axis_if_rx_tdata ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r_axis_if_rx_tkeep ;
reg  [IF_COUNT-1:0]                            r_axis_if_rx_tvalid;
reg  [IF_COUNT-1:0]                            r_axis_if_rx_tlast ;
reg  [IF_COUNT*AXIS_IF_RX_ID_WIDTH-1:0]        r_axis_if_rx_tid   ;
reg  [IF_COUNT*AXIS_IF_RX_DEST_WIDTH-1:0]      r_axis_if_rx_tdest ;
reg  [IF_COUNT*AXIS_IF_RX_USER_WIDTH-1:0]      r_axis_if_rx_tuser ;


genvar i;
generate 
for(i=0;i<IF_COUNT;i=i+1)
begin: if_data_proc    

////////////////// TX ////////////////////////////////////////
    
    always @(posedge clk) begin
      if(rst)
        r_if_tx_cnt[(i+1)*10-1-:10] <= 10'b0;
      else if(s_axis_if_tx_tvalid[i])
        if(s_axis_if_tx_tlast[i])
          r_if_tx_cnt [(i+1)*10-1-:10] <= 10'b0;
        else
          r_if_tx_cnt <= r_if_tx_cnt[(i+1)*10-1-:10] + 10'b1;
    end

    //header detect and buffer
    always @(posedge clk) begin
      if(rst)
        r_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH] <= {(HDR_WIDTH){1'b0}};
      else if(s_axis_if_tx_tvalid[i])
        if(s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+96-1-:48] == tx_config_ram_rdata[i*CONFIG_RAM_DWIDTH+48-1:0])
          r_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH] <= s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH];
    end
    
    //PSN counter
    always @(posedge clk) begin
      if(rst) begin
        r_psn_cnt[(i+1)*24-1-:24] <= 24'b0;
      end
      else if(r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_tx_tvalid[i]) begin
        if(s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+96-1-:48] == tx_config_ram_rdata[i*CONFIG_RAM_DWIDTH+48-1:0])
          r_psn_cnt[(i+1)*24-1-:24] <= 24'b0;
        else
          r_psn_cnt[(i+1)*24-1-:24] <= r_psn_cnt[(i+1)*24-1-:24] + 24'b1;
      end
    end
    
    //TX CONFIG RAM 
    assign tx_config_ram_wen[i] = 1'b0;
    assign tx_config_ram_wdata[(i+1)*CONFIG_RAM_DWIDTH-1-:CONFIG_RAM_DWIDTH] = {(CONFIG_RAM_DWIDTH){1'b0}};
    assign tx_config_ram_ren[i] = 1'b1;//r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_tx_tvalid[i];
    assign tx_config_ram_raddr[(i+1)*CONFIG_RAM_AWIDTH-1-:CONFIG_RAM_AWIDTH] = {CONFIG_RAM_AWIDTH{1'b0}};//{s_axis_if_tx_tdata[12*32+4-1:12*32],4'b0};//take host QPN as raddr

    
    assign w_new_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH] = {r_header[(i+1)*HDR_WIDTH-1-:11*8], r_psn_cnt[(i+1)*24-1-:24], r_header[i*HDR_WIDTH+PSN_BIT-1:i*HDR_WIDTH]};
    
    
    //buffer the data
    always @(posedge clk) begin
      r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= s_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
      r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= s_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH];
      r_axis_if_tx_tvalid[i]                                                    <= s_axis_if_tx_tvalid[i] ;
      r_axis_if_tx_tlast[i]                                                     <= s_axis_if_tx_tlast[i]  ;
      r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        <= s_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        ;
      r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  <= s_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  ;
      r_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH]  <= s_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH]  ;
    end
      
    assign m_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (r_if_tx_cnt[(i+1)*10-1-:10] == 10'b1)? {r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH-HDR_WIDTH], w_new_header}: r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
    assign m_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]      ;
    assign m_axis_if_tx_tvalid[i]                                                   = r_axis_if_tx_tvalid[i]                                                  ;
    assign m_axis_if_tx_tlast[i]                                                    = r_axis_if_tx_tlast[i]                                                   ;
    assign m_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]       = r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]      ;
    assign m_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH] = r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH];
    assign m_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH] = r_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH];

////////////////// RX ////////////////////////////////////////

    always @(posedge clk) begin
      if(rst)
        r_if_rx_cnt[(i+1)*10-1-:10] <= 10'b0;
      else if(s_axis_if_rx_tvalid[i])
        if(s_axis_if_rx_tlast[i])
          r_if_rx_cnt [(i+1)*10-1-:10] <= 10'b0;
        else
          r_if_rx_cnt[(i+1)*10-1-:10] <= r_if_rx_cnt[(i+1)*10-1-:10] + 10'b1;
    end
    
    //RX CONFIG RAM 
    assign rx_config_ram_wen[i] = 1'b0;
    assign rx_config_ram_wdata[(i+1)*CONFIG_RAM_DWIDTH-1-:CONFIG_RAM_DWIDTH] = {(CONFIG_RAM_DWIDTH){1'b0}};
    assign rx_config_ram_ren[i] = r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i];
    assign rx_config_ram_raddr[(i+1)*CONFIG_RAM_AWIDTH-1-:CONFIG_RAM_AWIDTH] = {s_axis_if_rx_tdata[12*32+4-1:12*32],4'b0};//take Destination QPN as raddr
    //assign dest_QPN[(i+1)*32-1-:32] = rx_config_ram_rdata[i*CONFIG_RAM_DWIDTH+3:i*CONFIG_RAM_DWIDTH];
    
    //get destination QPN
    always @(posedge clk) begin
      if(rst)
        r_dest_QPN[(i+1)*24-1-:24] <= 24'b0;
      else if(r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i])
        r_dest_QPN[(i+1)*24-1-:24] <= s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+DEST_QDP_BIT+24-1:i*AXIS_IF_DATA_WIDTH+DEST_QDP_BIT];
    end
    
  
    //buffer the data
    always @(posedge clk) begin
      r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= s_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
      r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= s_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]  ;
      r_axis_if_rx_tvalid[i]                                                    <= s_axis_if_rx_tvalid[i] ;
      r_axis_if_rx_tlast[i]                                                     <= s_axis_if_rx_tlast[i]  ;
      r_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]        <= s_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]    ;
      r_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]  <= s_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]  ;
      r_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH]  <= s_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH]  ;
    end
      
    assign m_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (r_axis_if_rx_tlast[i] == 1'b0)?{s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH], r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH-HDR_WIDTH]} : {{HDR_WIDTH{1'b0}},r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH-HDR_WIDTH]};    
    assign m_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = (r_axis_if_rx_tlast[i] == 1'b0)?r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH] : r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH] >> HDR_BYTE;
    assign m_axis_if_rx_tvalid[i]                                                   = r_axis_if_rx_tvalid[i];                                                  
    assign m_axis_if_rx_tlast[i]                                                    = r_axis_if_rx_tlast[i];                                                  
    assign m_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]       = r_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH] ;     
    assign m_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH] = r_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH];
    assign m_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH] = {r_dest_QPN[(i+1)*24-1-:24], r_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-24-1-:AXIS_IF_RX_USER_WIDTH-24]};

end
endgenerate

//passthrough
//assign m_axis_if_rx_tdata  = s_axis_if_rx_tdata;
//assign m_axis_if_rx_tkeep  = s_axis_if_rx_tkeep;
//assign m_axis_if_rx_tvalid = s_axis_if_rx_tvalid;
//assign s_axis_if_rx_tready = m_axis_if_rx_tready;
//assign m_axis_if_rx_tlast  = s_axis_if_rx_tlast;
//assign m_axis_if_rx_tid    = s_axis_if_rx_tid;
//assign m_axis_if_rx_tdest  = s_axis_if_rx_tdest;
//assign m_axis_if_rx_tuser  = s_axis_if_rx_tuser;

//assign m_axis_if_tx_tdata = s_axis_if_tx_tdata;
//assign m_axis_if_tx_tkeep = s_axis_if_tx_tkeep;
//assign m_axis_if_tx_tvalid = s_axis_if_tx_tvalid;
//assign s_axis_if_tx_tready = m_axis_if_tx_tready;
//assign m_axis_if_tx_tlast = s_axis_if_tx_tlast;
//assign m_axis_if_tx_tid = s_axis_if_tx_tid;
//assign m_axis_if_tx_tdest = s_axis_if_tx_tdest;
//assign m_axis_if_tx_tuser = s_axis_if_tx_tuser;

assign s_axis_if_tx_tready = m_axis_if_tx_tready;
assign s_axis_if_rx_tready = m_axis_if_rx_tready;


endmodule

`resetall
