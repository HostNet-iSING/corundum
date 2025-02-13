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
    parameter CONFIG_RAM_DWIDTH = 256,
    
    // AXI lite interface (application control from host)
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16,
    parameter STRB_WIDTH = (DATA_WIDTH/8)
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
    output wire [IF_COUNT*CONFIG_RAM_DWIDTH-1:0]          tx_config_ram_wdata,
    
    input  wire [ADDR_WIDTH-1:0]                          reg_wr_addr,
    input  wire [DATA_WIDTH-1:0]                          reg_wr_data,
    input  wire [STRB_WIDTH-1:0]                          reg_wr_strb,
    input  wire                                           reg_wr_en,
    output wire                                           reg_wr_wait,
    output wire                                           reg_wr_ack,
    
    input  wire [ADDR_WIDTH-1:0]                          reg_rd_addr,
    input  wire                                           reg_rd_en,
    output wire [DATA_WIDTH-1:0]                          reg_rd_data,
    output wire                                           reg_rd_wait,
    output wire                                           reg_rd_ack      
    
);

localparam RX_HDR_BYTE = 62;
localparam RX_HDR_WIDTH = RX_HDR_BYTE*8;
localparam DEST_QDP_BIT = 46*8;

localparam TX_HDR_BYTE = 42;
localparam TX_HDR_WIDTH = TX_HDR_BYTE*8;
localparam PSN_BIT = 50*8;
localparam LOCAL_QPN_BIT = 58*8;
localparam QUEUE_NUM = 32;


reg  [IF_COUNT*10-1:0]                         r_if_tx_cnt        ;
reg  [IF_COUNT*10-1:0]                         r_if_tx_cnt_1d     ;
reg  [IF_COUNT*10-1:0]                         r_if_rx_cnt        ;
reg  [IF_COUNT*32-1:0]                         r_if_tx_pkt_cnt    ;
reg  [IF_COUNT*32-1:0]                         r_if_rx_pkt_cnt    ;
reg  [IF_COUNT*QUEUE_NUM*24-1:0]               r_psn_cnt          ;
reg  [IF_COUNT*24-1:0]                         r_sel_psn_cnt      ;
reg  [IF_COUNT*24-1:0]                         r_dest_QPN         ;
wire [IF_COUNT*24-1:0]                         w_dest_QPN         ;
reg  [IF_COUNT*TX_HDR_WIDTH-1:0]               r_tx_header        ;
reg  [IF_COUNT*RX_HDR_WIDTH-1:0]               r_rx_header        ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r_rx_header_keep   ;
wire [IF_COUNT-1:0]                            w_first_flag       ;
wire [IF_COUNT*24-1:0]                         w_local_QPN        ;         
reg  [IF_COUNT*24-1:0]                         r_local_QPN        ; 

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
reg  [IF_COUNT-1:0]                            r_axis_if_rx_tready;
reg  [IF_COUNT*AXIS_IF_RX_ID_WIDTH-1:0]        r_axis_if_rx_tid   ;
reg  [IF_COUNT*AXIS_IF_RX_DEST_WIDTH-1:0]      r_axis_if_rx_tdest ;
reg  [IF_COUNT*AXIS_IF_RX_USER_WIDTH-1:0]      r_axis_if_rx_tuser ;

reg                                            reg_rd_en_1d       ;
reg                                            reg_wr_en_1d       ;
reg  [DATA_WIDTH-1:0]                          r_rdata            ;
reg                                            r_clr_flag         ;
wire [IF_COUNT-1:0]                            work_on            ;
reg  [IF_COUNT-1:0]                            r_work_on          ;

genvar i;
generate 
for(i=0;i<IF_COUNT;i=i+1)
begin: if_data_proc    

////////////////// TX ////////////////////////////////////////
    
    always @(posedge clk) begin
      if(rst)
        r_if_tx_cnt[(i+1)*10-1-:10] <= 10'b0;
      else if(s_axis_if_tx_tvalid[i] && m_axis_if_tx_tready[i])
        if(s_axis_if_tx_tlast[i])
          r_if_tx_cnt[(i+1)*10-1-:10] <= 10'b0;
        else
          r_if_tx_cnt[(i+1)*10-1-:10] <= r_if_tx_cnt[(i+1)*10-1-:10] + 10'b1;
    end
    
    always @(posedge clk) begin
      if(rst)
        r_if_tx_cnt_1d[(i+1)*10-1-:10] <= 10'b0;
      else
        r_if_tx_cnt_1d[(i+1)*10-1-:10] <= r_if_tx_cnt[(i+1)*10-1-:10];
    end
    
    always @(posedge clk) begin
      if(rst)
        r_local_QPN[(i+1)*24-1-:24]    <= 24'b0;
      else if(w_first_flag[i])
        r_local_QPN[(i+1)*24-1-:24]    <= w_local_QPN[(i+1)*24-1-:24];
    end

    always @(posedge clk) begin
      if(rst)
        r_if_tx_pkt_cnt[(i+1)*32-1-:32] <= 32'b0;
      else if(r_clr_flag)
        r_if_tx_pkt_cnt[(i+1)*32-1-:32] <= 32'b0;
      else if(s_axis_if_tx_tvalid[i] && m_axis_if_tx_tready[i])
        if(s_axis_if_tx_tlast[i])
          r_if_tx_pkt_cnt[(i+1)*32-1-:32] <= r_if_tx_pkt_cnt[(i+1)*32-1-:32] + 32'b1;
    end

    assign w_first_flag[i] = (s_axis_if_tx_tvalid[i] && m_axis_if_tx_tready[i] && r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+TX_HDR_WIDTH+5-1-:5] == 5'b00110)?1'b1:1'b0;
    
    //header detect and buffer
    always @(posedge clk) begin
      if(rst)
        r_tx_header[(i+1)*TX_HDR_WIDTH-1-:TX_HDR_WIDTH] <= {(TX_HDR_WIDTH){1'b0}};
      else if(w_first_flag[i])
        r_tx_header[(i+1)*TX_HDR_WIDTH-1-:TX_HDR_WIDTH] <= s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+TX_HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH];
    end
    
    //TX CONFIG RAM 
    assign tx_config_ram_wen[i] = 1'b0;
    assign tx_config_ram_wdata[(i+1)*CONFIG_RAM_DWIDTH-1-:CONFIG_RAM_DWIDTH] = {(CONFIG_RAM_DWIDTH){1'b0}};
    assign tx_config_ram_ren[i] = 1'b0; //r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_tx_tvalid[i];
    assign tx_config_ram_raddr[(i+1)*CONFIG_RAM_AWIDTH-1-:CONFIG_RAM_AWIDTH] = {(CONFIG_RAM_AWIDTH){1'b0}};//{s_axis_if_tx_tdata[12*32+4-1:12*32],4'b0};//take host QPN as raddr

    
    assign w_local_QPN[(i+1)*24-1-:24] = s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+LOCAL_QPN_BIT+24-1-:24];
    
    always @(posedge clk) begin
      if(rst)
        r_psn_cnt[(i+1)*QUEUE_NUM*24-1-:QUEUE_NUM*24] <= {(QUEUE_NUM*24){1'b0}};
      if(s_axis_if_tx_tvalid[i] && m_axis_if_tx_tready[i] && r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0)
        case(w_local_QPN[i*24+5-1-:5])
          5'd0 : r_psn_cnt[i*QUEUE_NUM*24+1 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+1 *24-1-:24] + 24'b1);
          5'd1 : r_psn_cnt[i*QUEUE_NUM*24+2 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+2 *24-1-:24] + 24'b1);
          5'd2 : r_psn_cnt[i*QUEUE_NUM*24+3 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+3 *24-1-:24] + 24'b1);
          5'd3 : r_psn_cnt[i*QUEUE_NUM*24+4 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+4 *24-1-:24] + 24'b1);
          5'd4 : r_psn_cnt[i*QUEUE_NUM*24+5 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+5 *24-1-:24] + 24'b1);
          5'd5 : r_psn_cnt[i*QUEUE_NUM*24+6 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+6 *24-1-:24] + 24'b1);
          5'd6 : r_psn_cnt[i*QUEUE_NUM*24+7 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+7 *24-1-:24] + 24'b1);
          5'd7 : r_psn_cnt[i*QUEUE_NUM*24+8 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+8 *24-1-:24] + 24'b1);   
          5'd8 : r_psn_cnt[i*QUEUE_NUM*24+9 *24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+9 *24-1-:24] + 24'b1);
          5'd9 : r_psn_cnt[i*QUEUE_NUM*24+10*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+10*24-1-:24] + 24'b1);
          5'd10: r_psn_cnt[i*QUEUE_NUM*24+11*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+11*24-1-:24] + 24'b1);
          5'd11: r_psn_cnt[i*QUEUE_NUM*24+12*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+12*24-1-:24] + 24'b1);
          5'd12: r_psn_cnt[i*QUEUE_NUM*24+13*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+13*24-1-:24] + 24'b1);
          5'd13: r_psn_cnt[i*QUEUE_NUM*24+14*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+14*24-1-:24] + 24'b1);
          5'd14: r_psn_cnt[i*QUEUE_NUM*24+15*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+15*24-1-:24] + 24'b1);
          5'd15: r_psn_cnt[i*QUEUE_NUM*24+16*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+16*24-1-:24] + 24'b1); 
          5'd16: r_psn_cnt[i*QUEUE_NUM*24+17*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+17*24-1-:24] + 24'b1);
          5'd17: r_psn_cnt[i*QUEUE_NUM*24+18*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+18*24-1-:24] + 24'b1);
          5'd18: r_psn_cnt[i*QUEUE_NUM*24+19*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+19*24-1-:24] + 24'b1);
          5'd19: r_psn_cnt[i*QUEUE_NUM*24+20*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+20*24-1-:24] + 24'b1);
          5'd20: r_psn_cnt[i*QUEUE_NUM*24+21*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+21*24-1-:24] + 24'b1);
          5'd21: r_psn_cnt[i*QUEUE_NUM*24+22*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+22*24-1-:24] + 24'b1);
          5'd22: r_psn_cnt[i*QUEUE_NUM*24+23*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+23*24-1-:24] + 24'b1);
          5'd23: r_psn_cnt[i*QUEUE_NUM*24+24*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+24*24-1-:24] + 24'b1); 
          5'd24: r_psn_cnt[i*QUEUE_NUM*24+25*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+25*24-1-:24] + 24'b1);
          5'd25: r_psn_cnt[i*QUEUE_NUM*24+26*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+26*24-1-:24] + 24'b1);
          5'd26: r_psn_cnt[i*QUEUE_NUM*24+27*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+27*24-1-:24] + 24'b1);
          5'd27: r_psn_cnt[i*QUEUE_NUM*24+28*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+28*24-1-:24] + 24'b1);
          5'd28: r_psn_cnt[i*QUEUE_NUM*24+29*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+29*24-1-:24] + 24'b1);
          5'd29: r_psn_cnt[i*QUEUE_NUM*24+30*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+30*24-1-:24] + 24'b1);
          5'd30: r_psn_cnt[i*QUEUE_NUM*24+31*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+31*24-1-:24] + 24'b1);
          5'd31: r_psn_cnt[i*QUEUE_NUM*24+32*24-1-:24] <= (w_first_flag[i])?24'b0:(r_psn_cnt[i*QUEUE_NUM*24+32*24-1-:24] + 24'b1); 
        endcase
    end
    
    always @(*) begin
      r_sel_psn_cnt[(i+1)*24-1-:24] = 24'b0;
      case(r_local_QPN[i*24+5-1-:5])
        5'd0 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+1 *24-1-:24];
        5'd1 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+2 *24-1-:24];
        5'd2 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+3 *24-1-:24];
        5'd3 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+4 *24-1-:24];
        5'd4 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+5 *24-1-:24];
        5'd5 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+6 *24-1-:24];
        5'd6 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+7 *24-1-:24];
        5'd7 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+8 *24-1-:24];   
        5'd8 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+9 *24-1-:24];
        5'd9 : r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+10*24-1-:24];
        5'd10: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+11*24-1-:24];
        5'd11: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+12*24-1-:24];
        5'd12: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+13*24-1-:24];
        5'd13: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+14*24-1-:24];
        5'd14: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+15*24-1-:24];
        5'd15: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+16*24-1-:24]; 
        5'd16: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+17*24-1-:24];
        5'd17: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+18*24-1-:24];
        5'd18: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+19*24-1-:24];
        5'd19: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+20*24-1-:24];
        5'd20: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+21*24-1-:24];
        5'd21: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+22*24-1-:24];
        5'd22: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+23*24-1-:24];
        5'd23: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+24*24-1-:24]; 
        5'd24: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+25*24-1-:24];
        5'd25: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+26*24-1-:24];
        5'd26: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+27*24-1-:24];
        5'd27: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+28*24-1-:24];
        5'd28: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+29*24-1-:24];
        5'd29: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+30*24-1-:24];
        5'd30: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+31*24-1-:24];
        5'd31: r_sel_psn_cnt[(i+1)*24-1-:24] = r_psn_cnt[i*24*QUEUE_NUM+32*24-1-:24]; 
      endcase
    end        
    
    //buffer the data
    always @(posedge clk) begin
      if(m_axis_if_tx_tready[i]) begin
        r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= s_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
        r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= s_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH];
        r_axis_if_tx_tvalid[i]                                                    <= s_axis_if_tx_tvalid[i] ;
        r_axis_if_tx_tlast[i]                                                     <= s_axis_if_tx_tlast[i]  ;
        r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        <= s_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        ;
        r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  <= s_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  ;
        r_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH]  <= s_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH]  ;
      end
    end
      
    //assign m_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (r_if_tx_cnt_1d[(i+1)*10-1-:10] == 10'b0)? {r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:80], 8'b0, r_sel_psn_cnt[(i+1)*24-1-:24], r_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+TX_HDR_WIDTH+64-1-:64], r_tx_header[(i+1)*TX_HDR_WIDTH-1-:TX_HDR_WIDTH]}: r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
    //assign m_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]      ;
    //assign m_axis_if_tx_tvalid[i]                                                   = r_axis_if_tx_tvalid[i]                                                  ;
    //assign m_axis_if_tx_tlast[i]                                                    = r_axis_if_tx_tlast[i]                                                   ;
    //assign m_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]       = r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]      ;
    //assign m_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH] = r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH];
    //assign m_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH] = r_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH];

////////////////// RX ////////////////////////////////////////

    always @(posedge clk) begin
      if(rst)
        r_if_rx_cnt[(i+1)*10-1-:10] <= 10'b0;
      else if(s_axis_if_rx_tvalid[i] && m_axis_if_rx_tready[i])
        if(s_axis_if_rx_tlast[i])
          r_if_rx_cnt [(i+1)*10-1-:10] <= 10'b0;
        else
          r_if_rx_cnt[(i+1)*10-1-:10] <= r_if_rx_cnt[(i+1)*10-1-:10] + 10'b1;
    end

    always @(posedge clk) begin
      if(rst)
        r_if_rx_pkt_cnt[(i+1)*32-1-:32] <= 32'b0;
      else if(r_clr_flag)
        r_if_rx_pkt_cnt[(i+1)*32-1-:32] <= 32'b0;
      else if(s_axis_if_rx_tvalid[i] && m_axis_if_rx_tready[i])
        if(s_axis_if_rx_tlast[i])
          r_if_rx_pkt_cnt[(i+1)*32-1-:32] <= r_if_rx_pkt_cnt[(i+1)*32-1-:32] + 32'b1;
    end
    
    //RX CONFIG RAM 
    assign rx_config_ram_wen[i] = 1'b0;
    assign rx_config_ram_wdata[(i+1)*CONFIG_RAM_DWIDTH-1-:CONFIG_RAM_DWIDTH] = {(CONFIG_RAM_DWIDTH){1'b0}};
    assign rx_config_ram_ren[i] = r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i] && m_axis_if_rx_tready[i];
    assign rx_config_ram_raddr[(i+1)*CONFIG_RAM_AWIDTH-1-:CONFIG_RAM_AWIDTH] = {s_axis_if_rx_tdata[12*32+4-1:12*32],4'b0};//take Destination QPN as raddr
    //assign dest_QPN[(i+1)*32-1-:32] = rx_config_ram_rdata[i*CONFIG_RAM_DWIDTH+3:i*CONFIG_RAM_DWIDTH];
    
    //header detect and buffer
    always @(posedge clk) begin
      if(rst) begin
        r_rx_header[(i+1)*RX_HDR_WIDTH-1-:RX_HDR_WIDTH]                  <= {(RX_HDR_WIDTH){1'b0}};
      end
      else if(r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i] && m_axis_if_rx_tready[i]) begin
        r_rx_header[(i+1)*RX_HDR_WIDTH-1-:RX_HDR_WIDTH]                  <= s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+RX_HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH];
      end
    end
    
    //get destination QPN
    always @(posedge clk) begin
      if(rst)
        r_dest_QPN[(i+1)*24-1-:24] <= 24'b0;
      else if(r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i] && m_axis_if_rx_tready[i])
        r_dest_QPN[(i+1)*24-1-:24] <= s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+DEST_QDP_BIT+24-1:i*AXIS_IF_DATA_WIDTH+DEST_QDP_BIT];
    end

    assign w_dest_QPN[(i+1)*24-1-:24] = (r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i] && m_axis_if_rx_tready[i])?s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+DEST_QDP_BIT+24-1:i*AXIS_IF_DATA_WIDTH+DEST_QDP_BIT]:r_dest_QPN[(i+1)*24-1-:24];
    
    assign work_on[i] = m_axis_if_rx_tready[i];//s_axis_if_rx_tvalid[i] && ;

    always @(posedge clk) begin
       r_work_on[i] <= work_on[i];
    end
  
    //buffer the data
    always @(posedge clk) begin
      //if(s_axis_if_rx_tvalid[i]) begin
        r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= s_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
        r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= s_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]  ;
        r_axis_if_rx_tvalid[i]                                                    <= s_axis_if_rx_tvalid[i] ;
        r_axis_if_rx_tlast[i]                                                     <= s_axis_if_rx_tlast[i]  ;
        //r_axis_if_rx_tready[i]                                                    <= m_axis_if_rx_tready[i]  ;
        r_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]        <= s_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]    ;
        r_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]  <= s_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]  ;
        r_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH]  <= s_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH]  ;
      //end
    end

    
    //buffer the data
    //always @(posedge clk) begin
    //    r_axis_if_rx_tdata_d[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
    //    r_axis_if_rx_tkeep_d[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]  ;
    //    r_axis_if_rx_tvalid_d[i]                                                    <= r_axis_if_rx_tvalid[i] ;
    //    r_axis_if_rx_tlast_d[i]                                                     <= r_axis_if_rx_tlast[i]  ;
    //    r_axis_if_rx_tready_d[i]                                                    <= r_axis_if_rx_tready[i]  ;
    //    r_axis_if_rx_tid_d[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]        <= r_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]    ;
    //    r_axis_if_rx_tdest_d[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]  <= r_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]  ;
    //    r_axis_if_rx_tuser_d[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH]  <= r_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH]  ;
    //end
      
    //assign m_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (r_axis_if_rx_tlast[i] == 1'b0)?{s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+RX_HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH], r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH-RX_HDR_WIDTH]} : {{RX_HDR_WIDTH{1'b0}},r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH-RX_HDR_WIDTH]};    
    //assign m_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = (r_axis_if_rx_tlast[i] == 1'b0)?r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH] : r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH] >> RX_HDR_BYTE;
    assign m_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (r_work_on[i])?s_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]: r_axis_if_rx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];    
    assign m_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = (r_work_on[i])?s_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]: r_axis_if_rx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH];
    assign m_axis_if_rx_tvalid[i]                                                   = (r_work_on[i])?s_axis_if_rx_tvalid[i]:r_axis_if_rx_tvalid[i];                                                  
    assign m_axis_if_rx_tlast[i]                                                    = (r_work_on[i])?s_axis_if_rx_tlast[i]:r_axis_if_rx_tlast[i];                                                  
    assign m_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]       = (r_work_on[i])?s_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH]:r_axis_if_rx_tid[(i+1)*AXIS_IF_RX_ID_WIDTH-1-:AXIS_IF_RX_ID_WIDTH] ;     
    assign m_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH] = (r_work_on[i])?s_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH]:r_axis_if_rx_tdest[(i+1)*AXIS_IF_RX_DEST_WIDTH-1-:AXIS_IF_RX_DEST_WIDTH];
    assign m_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-1-:AXIS_IF_RX_USER_WIDTH] = (r_work_on[i])?{w_dest_QPN[(i+1)*24-1-:24], s_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-24-1-:AXIS_IF_RX_USER_WIDTH-24]}:{r_dest_QPN[(i+1)*24-1-:24], r_axis_if_rx_tuser[(i+1)*AXIS_IF_RX_USER_WIDTH-24-1-:AXIS_IF_RX_USER_WIDTH-24]};

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

assign m_axis_if_tx_tdata = s_axis_if_tx_tdata;
assign m_axis_if_tx_tkeep = s_axis_if_tx_tkeep;
assign m_axis_if_tx_tvalid = s_axis_if_tx_tvalid;
assign s_axis_if_tx_tready = m_axis_if_tx_tready;
assign m_axis_if_tx_tlast = s_axis_if_tx_tlast;
assign m_axis_if_tx_tid = s_axis_if_tx_tid;
assign m_axis_if_tx_tdest = s_axis_if_tx_tdest;
assign m_axis_if_tx_tuser = s_axis_if_tx_tuser;

//assign s_axis_if_tx_tready = m_axis_if_tx_tready;
assign s_axis_if_rx_tready = m_axis_if_rx_tready;

////////////////// DEBUG ////////////////////////////////////////
always @(posedge clk) begin
  if(rst)
    r_clr_flag <= 1'b0;
  else if(reg_wr_en)
    if(reg_wr_addr[7:0] == 8'h64)
      r_clr_flag <= reg_wr_data[0];
end

always @(posedge clk) begin
  if(rst)
    r_rdata <= {DATA_WIDTH{1'b0}};
  else if(reg_rd_en)
    case(reg_rd_addr[7:0])
      8'h00: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 1*DATA_WIDTH-1-:DATA_WIDTH];
      8'h04: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h08: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 3*DATA_WIDTH-1-:DATA_WIDTH];
      8'h0c: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 4*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h10: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 5*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h14: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 6*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h18: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 7*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h1c: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 8*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h20: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+ 9*DATA_WIDTH-1-:DATA_WIDTH];
      8'h24: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+10*DATA_WIDTH-1-:DATA_WIDTH];
      8'h28: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+11*DATA_WIDTH-1-:DATA_WIDTH];
      8'h2c: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+12*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h30: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+13*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h34: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+14*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h38: r_rdata <= r_rx_header[0*RX_HDR_WIDTH+15*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h3c: r_rdata <= {16'b0,r_rx_header[0*RX_HDR_WIDTH+15*DATA_WIDTH+16-1-:16]};
      8'h40: r_rdata <= r_rx_header_keep[0*AXIS_IF_KEEP_WIDTH+1*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h44: r_rdata <= r_rx_header_keep[0*AXIS_IF_KEEP_WIDTH+2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h48: r_rdata <= {8'b0,r_dest_QPN[1*24-1-:24]};  
      8'h4c: r_rdata <= r_if_rx_pkt_cnt[1*32-1-:32];   
      8'h50: r_rdata <= r_if_tx_pkt_cnt[1*32-1-:32]; 
      8'h54: r_rdata <= r_axis_if_rx_tuser[1*32-1-:32];  
      8'h58: r_rdata <= r_axis_if_rx_tuser[2*32-1-:32]; 
      8'h5c: r_rdata <= r_axis_if_rx_tuser[3*32-1-:32]; 
      8'h60: r_rdata <= 32'h20240105;  
      8'h64: r_rdata <= {31'b0,r_clr_flag}; 
      8'h68: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 1*DATA_WIDTH-1-:DATA_WIDTH];
      8'h6c: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h70: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 3*DATA_WIDTH-1-:DATA_WIDTH];
      8'h74: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 4*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h78: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 5*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h7c: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 6*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h80: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 7*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h84: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 8*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h88: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+ 9*DATA_WIDTH-1-:DATA_WIDTH];
      8'h8c: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+10*DATA_WIDTH-1-:DATA_WIDTH];
      8'h90: r_rdata <= r_tx_header[0*TX_HDR_WIDTH+11*DATA_WIDTH-1-:DATA_WIDTH];
      8'h94: r_rdata <= {8'b0,r_local_QPN[23:0]};      
       
      default: r_rdata <= {DATA_WIDTH{1'b0}};     
    endcase  
end

always @(posedge clk) 
  if(rst) begin
    reg_rd_en_1d <= 1'b0;
    reg_wr_en_1d <= 1'b0;
  end
  else begin
    reg_rd_en_1d <= reg_rd_en;
    reg_wr_en_1d <= reg_wr_en;
  end

assign reg_rd_data = r_rdata;
assign reg_rd_wait = 1'b0;
assign reg_rd_ack  = reg_rd_en_1d;

assign reg_wr_wait = 1'b0;
assign reg_wr_ack  = reg_wr_en_1d;
       
endmodule

`resetall
