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
module mqnic_app_if_tx_data_proc_v4 #
(
    // Structural configuration
    parameter IF_COUNT = 1,
    parameter PORTS_PER_IF = 1,

    // Interface configuration
    parameter WQE_INDEX_WIDTH = 10,

    // Ethernet interface configuration (direct, async)
    parameter AXIS_DATA_WIDTH = 512,
    parameter AXIS_KEEP_WIDTH = AXIS_DATA_WIDTH/8,

    // Ethernet interface configuration (interface)
    parameter AXIS_IF_DATA_WIDTH = AXIS_DATA_WIDTH*2**$clog2(PORTS_PER_IF),
    parameter AXIS_IF_KEEP_WIDTH = AXIS_IF_DATA_WIDTH/8,
    parameter AXIS_IF_TX_ID_WIDTH = WQE_INDEX_WIDTH,
    parameter AXIS_IF_TX_DEST_WIDTH = $clog2(PORTS_PER_IF)+4,
    parameter AXIS_TX_USER_WIDTH = 1,    
    parameter AXIS_IF_TX_USER_WIDTH = 232,
    // AXI stream tuser signal width
    parameter S_AXIS_USER_WIDTH = AXIS_IF_TX_USER_WIDTH,
    // AXI stream tuser signal width
    
    //Config ram interface
    parameter CONFIG_RAM_AWIDTH = 4,
    parameter CONFIG_RAM_DWIDTH = 256,
    
    // AXI lite interface (application control from host)
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    
    //v3
    parameter PACK_LEN = 2048
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
    output wire [IF_COUNT*AXIS_TX_USER_WIDTH-1:0]         m_axis_if_tx_tuser,
    
    /*                                                                                    
     * tx flag output                                                                      
     */                                                                                   
    output wire [IF_COUNT*WQE_INDEX_WIDTH-1:0]            m_axis_tx_id      , 
    output wire [IF_COUNT*24-1:0]                         m_axis_tx_psn     , 
    output wire [IF_COUNT-1:0]                            m_axis_tx_valid   , 
    input  wire [IF_COUNT-1:0]                            m_axis_tx_ready   , 
    
    /*
     * Config ram interface (w/r from data proc)
     */  

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

localparam QUEUE_NUM = 32;

wire [IF_COUNT-1:0]                            work_on             ;                                                      
wire [IF_COUNT-1:0]                            first_flag          ;
wire [IF_COUNT-1:0]                            pipeline_busy       ;
                                                                
reg  [IF_COUNT*16-1:0]                         r_if_tx_cnt         ;
reg  [IF_COUNT*16-1:0]                         r_if_tx_cnt_1d      ; 
reg  [IF_COUNT*16-1:0]                         r_if_tx_cnt_2d      ; 
reg  [IF_COUNT*32-1:0]                         r_if_tx_pkt_cnt     ;
reg  [IF_COUNT*624-1:0]                        r_tx_header         ;
                                                                  
reg  [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         r_axis_if_tx_tdata  ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r_axis_if_tx_tkeep  ;
reg  [IF_COUNT-1:0]                            r_axis_if_tx_tvalid ;
reg  [IF_COUNT-1:0]                            r_axis_if_tx_tlast  ;
reg  [IF_COUNT*AXIS_IF_TX_ID_WIDTH-1:0]        r_axis_if_tx_tid    ;
reg  [IF_COUNT*AXIS_IF_TX_DEST_WIDTH-1:0]      r_axis_if_tx_tdest  ;
//reg  [IF_COUNT*AXIS_IF_TX_USER_WIDTH-1:0]      r_axis_if_tx_tuser  ;

reg  [IF_COUNT*AXIS_IF_DATA_WIDTH-1:0]         r1_axis_if_tx_tdata ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r1_axis_if_tx_tkeep ;
reg  [IF_COUNT-1:0]                            r1_axis_if_tx_tvalid;
reg  [IF_COUNT-1:0]                            r1_axis_if_tx_tlast ;
reg  [IF_COUNT*AXIS_IF_TX_ID_WIDTH-1:0]        r1_axis_if_tx_tid   ;
reg  [IF_COUNT*AXIS_IF_TX_DEST_WIDTH-1:0]      r1_axis_if_tx_tdest ;
//reg  [IF_COUNT*AXIS_IF_TX_USER_WIDTH-1:0]      r1_axis_if_tx_tuser ;


reg                                            reg_rd_en_1d        ;
reg                                            reg_wr_en_1d        ;
reg   [DATA_WIDTH-1:0]                         r_rdata             ;
reg                                            r_clr_flag          ;     
                                                                   
wire  [IF_COUNT*48 -1:0]                       MAC_dst_mac         ;
wire  [IF_COUNT*48 -1:0]                       MAC_src_mac         ;
wire  [IF_COUNT*16 -1:0]                       MAC_src_type        ;
wire  [IF_COUNT*112-1:0]                       MAC_header          ;
                                                                   
wire  [IF_COUNT*4  -1:0]                       IP_version          ; 
wire  [IF_COUNT*4  -1:0]                       IP_header_len       ; 
wire  [IF_COUNT*16 -1:0]                       IP_packet_len       ; 
wire  [IF_COUNT*32 -1:0]                       IP_src_ip_addr      ; 
wire  [IF_COUNT*32 -1:0]                       IP_dst_ip_addr      ; 
wire  [IF_COUNT*192-1:0]                       IP_header           ;
                                                                   
wire  [IF_COUNT*16 -1:0]                       UDP_src_port        ; 
wire  [IF_COUNT*16 -1:0]                       UDP_dst_port        ; 
wire  [IF_COUNT*16 -1:0]                       UDP_packet_len      ; 
wire  [IF_COUNT*64 -1:0]                       UDP_header          ; 

wire  [IF_COUNT*16 -1:0]                       DETH_wqe_id         ;
wire  [IF_COUNT*8  -1:0]                       DETH_opcode         ;                                                          
wire  [IF_COUNT*24 -1:0]                       DETH_dst_qpn        ; 
wire  [IF_COUNT*24 -1:0]                       DETH_src_qpn        ;
wire  [IF_COUNT*24 -1:0]                       DETH_psn            ; 
wire  [IF_COUNT*24 -1:0]                       DETH_msn            ; 
wire  [IF_COUNT*3  -1:0]                       DETH_priority       ;
wire  [IF_COUNT*1  -1:0]                       DETH_fence          ;
wire  [IF_COUNT*20 -1:0]                       DETH_task_id        ; 
wire  [IF_COUNT*64 -1:0]                       DETH_vaddr          ; 
wire  [IF_COUNT*32 -1:0]                       DETH_dma_len        ; 
wire  [IF_COUNT*256-1:0]                       DETH_header         ;
                                                                   
wire  [IF_COUNT*624-1:0]                       v3_tx_header        ; 


genvar i;
generate 
for(i=0;i<IF_COUNT;i=i+1)
begin: if_data_proc    

////////////////// TX ////////////////////////////////////////
    assign work_on[i] = (m_axis_if_tx_tvalid[i]==1'b1 && m_axis_if_tx_tready[i]==1'b0)?1'b0:1'b1;
    
    always @(posedge clk) begin
      if(rst)
        r_if_tx_cnt[(i+1)*16-1-:16] <= 16'b0;
      else if(work_on[i])
        if(s_axis_if_tx_tvalid[i])
          if(s_axis_if_tx_tlast[i])
            r_if_tx_cnt[(i+1)*16-1-:16] <= 16'b0;
          else
            r_if_tx_cnt[(i+1)*16-1-:16] <= r_if_tx_cnt[(i+1)*16-1-:16] + 16'b1;
    end
    
    always @(posedge clk) begin
      if(rst) begin
        r_if_tx_cnt_1d[(i+1)*16-1-:16] <= 16'b0;
        r_if_tx_cnt_2d[(i+1)*16-1-:16] <= 16'b0;
      end
      else if(work_on[i]) begin
        r_if_tx_cnt_1d[(i+1)*16-1-:16] <= r_if_tx_cnt[(i+1)*16-1-:16]   ; 
        r_if_tx_cnt_2d[(i+1)*16-1-:16] <= r_if_tx_cnt_1d[(i+1)*16-1-:16];
      end
    end

    always @(posedge clk) begin
      if(rst)
        r_if_tx_pkt_cnt[(i+1)*32-1-:32] <= 32'b0;
      else if(work_on[i])
        if(r_clr_flag)
          r_if_tx_pkt_cnt[(i+1)*32-1-:32] <= 32'b0;
        else if(s_axis_if_tx_tvalid[i] && m_axis_if_tx_tready[i])
          if(s_axis_if_tx_tlast[i])
            r_if_tx_pkt_cnt[(i+1)*32-1-:32] <= r_if_tx_pkt_cnt[(i+1)*32-1-:32] + 32'b1;
    end

    assign first_flag[i] = (s_axis_if_tx_tvalid[i] && r_if_tx_cnt[(i+1)*16-1-:16] == 16'b0)?1'b1:1'b0;
    
    //header detect and buffer
    always @(posedge clk) begin
      if(rst)
        r_tx_header[(i+1)*624-1-:624] <= 624'b0;   
      else if(work_on[i])
        if(first_flag[i])
          r_tx_header[(i+1)*624-1-:624] <= v3_tx_header[(i+1)*624-1-:624];
    end
    
    //TX CONFIG RAM 
    assign tx_config_ram_wen[i] = 1'b0;
    assign tx_config_ram_wdata[(i+1)*CONFIG_RAM_DWIDTH-1-:CONFIG_RAM_DWIDTH] = {(CONFIG_RAM_DWIDTH){1'b0}};
    assign tx_config_ram_ren[i] = 1'b1;//first_flag[i];
    assign tx_config_ram_raddr[(i+1)*CONFIG_RAM_AWIDTH-1-:CONFIG_RAM_AWIDTH] = {(CONFIG_RAM_AWIDTH){1'b0}};
    
    
    //MAC HEADER
    assign MAC_dst_mac[(i+1)*48-1-:48] = tx_config_ram_rdata[i*256+127:i*256+80];
    assign MAC_src_mac[(i+1)*48-1-:48] = tx_config_ram_rdata[i*256+79 :i*256+32];
    assign MAC_src_type[(i+1)*16-1-:16] = 16'h0800;
    assign MAC_header[(i+1)*112-1-:112] = {MAC_src_type, MAC_src_mac, MAC_dst_mac};
    
    //IP HEADER
    assign IP_version[(i+1)*4-1-:4] = 4'b0100;//IP V4
    assign IP_header_len[(i+1)*4-1-:4] = 4'd6;
    assign IP_packet_len[(i+1)*16-1-:16] = 16'd1088;//64+1024
    assign IP_src_ip_addr[(i+1)*32-1-:32] = tx_config_ram_rdata[i*256+31:i*256+0];
    assign IP_dst_ip_addr[(i+1)*32-1-:32] = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+0+:32];
    assign IP_header[(i+1)*192-1-:192] = {32'b0, IP_dst_ip_addr[(i+1)*32-1-:32], IP_src_ip_addr[(i+1)*32-1-:32], 64'b0, IP_packet_len[(i+1)*16-1-:16], 8'b0, IP_header_len[(i+1)*4-1-:4], IP_version[(i+1)*4-1-:4]};
    
    //UDP HEADER
    assign UDP_src_port[(i+1)*16-1-:16] = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+32+:16];
    assign UDP_dst_port[(i+1)*16-1-:16] = 16'd4791;
    assign UDP_packet_len[(i+1)*16-1-:16] = 16'd1056;//32+1024
    assign UDP_header[(i+1)*64-1-:64] = {16'b0, UDP_packet_len[(i+1)*16-1-:16], UDP_dst_port[(i+1)*16-1-:16], UDP_src_port[(i+1)*16-1-:16]};
    
    //DETH HEADER
    assign DETH_opcode[(i+1)*8-1-:8]     = 8'b0;
    assign DETH_wqe_id[(i+1)*16-1-:16]   = {6'b0, s_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]};
    assign DETH_dst_qpn[(i+1)*24-1-:24]  = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+72 +:24];
    assign DETH_src_qpn[(i+1)*24-1-:24]  = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+48 +:24];
    assign DETH_msn[(i+1)*24-1-:24]      = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+96 +:24];
    assign DETH_psn[(i+1)*24-1-:24]      = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+120+:24];    
    assign DETH_fence[(i+1)*1-1-:1]      = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+144+:1 ];
    assign DETH_priority[(i+1)*3-1-:3]   = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+145+:3 ];    
    assign DETH_task_id[(i+1)*20-1-:20]  = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+148+:20]; 
    assign DETH_vaddr[(i+1)*64-1-:64]    = s_axis_if_tx_tuser[i*AXIS_IF_TX_USER_WIDTH+168+:64];   
    assign DETH_dma_len[(i+1)*32-1-:32]  = 32'd1024;
    assign DETH_header[(i+1)*256-1-:256] = {DETH_dma_len[(i+1)*32-1-:32], DETH_vaddr[(i+1)*64-1-:64], DETH_task_id[(i+1)*20-1-:20], DETH_priority[(i+1)*3-1-:3], DETH_fence[(i+1)*1-1-:1], 8'b0, DETH_psn[(i+1)*24-1-:24], 8'b0, DETH_msn[(i+1)*24-1-:24], DETH_wqe_id[(i+1)*16-1-:8], DETH_src_qpn[(i+1)*24-1-:24], DETH_wqe_id[(i+1)*16-8-1-:8], DETH_dst_qpn[(i+1)*24-1-:24], DETH_opcode[(i+1)*8-1-:8]};
    
    
    assign v3_tx_header[(i+1)*624-1-:624] = {DETH_header[(i+1)*256-1-:256], UDP_header[(i+1)*64-1-:64], IP_header[(i+1)*192-1-:192], MAC_header[(i+1)*112-1-:112]};

    
    //buffer the data
    always @(posedge clk) begin
      if(work_on[i]) begin
        r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= s_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
        r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= s_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH];
        r_axis_if_tx_tvalid[i]                                                    <= s_axis_if_tx_tvalid[i] ;
        r_axis_if_tx_tlast[i]                                                     <= s_axis_if_tx_tlast[i]  ;
        r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        <= s_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        ;
        r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  <= s_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  ;
        //r_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH]  <= s_axis_if_tx_tuser[i*S_AXIS_USER_WIDTH+AXIS_IF_TX_USER_WIDTH-1:i*S_AXIS_USER_WIDTH]  ;
      end
    end
    
    //buffer the data
    always @(posedge clk) begin
      if(work_on[i]) begin
        r1_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]        <= r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
        r1_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]        <= r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH];
        r1_axis_if_tx_tvalid[i]                                                    <= r_axis_if_tx_tvalid[i] ;
        r1_axis_if_tx_tlast[i]                                                     <= r_axis_if_tx_tlast[i]  ;
        r1_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        <= r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]        ;
        r1_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  <= r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]  ;
        //r1_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH]  <= r_axis_if_tx_tuser[i*S_AXIS_USER_WIDTH+AXIS_IF_TX_USER_WIDTH-1:i*S_AXIS_USER_WIDTH]  ;
      end
    end
      
    assign m_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (first_flag)? v3_tx_header[i*624+512-1:i*624]                                                    : (r_if_tx_cnt[(i+1)*16-1-:16] == 16'd1)? {r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-112-1-:AXIS_IF_DATA_WIDTH-112],r_tx_header[(i+1)*624-1-:112]} : (r1_axis_if_tx_tlast[i])? r1_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:112]                                 :{r1_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-112-1-:AXIS_IF_DATA_WIDTH-112],r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:112]};
    assign m_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = (first_flag)? {AXIS_IF_KEEP_WIDTH{1'b1}}                                                         : (r_if_tx_cnt[(i+1)*16-1-:16] == 16'd1)? {r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-14 -1-:AXIS_IF_KEEP_WIDTH-14],14'h3fff}                       : (r1_axis_if_tx_tlast[i])? {{(AXIS_IF_KEEP_WIDTH-14){1'b0}},14'h3fff}                                           :{r1_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-14 -1-:AXIS_IF_KEEP_WIDTH-14 ],r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:14 ]};
    assign m_axis_if_tx_tvalid[i]                                                   = (first_flag)? s_axis_if_tx_tvalid[i]                                                             : (r_if_tx_cnt[(i+1)*16-1-:16] == 16'd1)? r_axis_if_tx_tvalid[i]                                                                                     : (r1_axis_if_tx_tlast[i])? r1_axis_if_tx_tvalid[i]                                                              : r_axis_if_tx_tvalid[i]                                                                                                          ;
    assign m_axis_if_tx_tlast[i]                                                    = (first_flag)? 1'b0                                                                               : (r_if_tx_cnt[(i+1)*16-1-:16] == 16'd1)? 1'b0                                                                                                       : (r1_axis_if_tx_tlast[i])? 1'b1                                                                                 : 1'b0                                                                                                                            ;
    assign m_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]       = (first_flag)? s_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]                 : (r_if_tx_cnt[(i+1)*16-1-:16] == 16'd1)? r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]                                         : (r1_axis_if_tx_tlast[i])? r1_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]                  : r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]                                                              ;
    assign m_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH] = (first_flag)? s_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]           : (r_if_tx_cnt[(i+1)*16-1-:16] == 16'd1)? r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]                                   : (r1_axis_if_tx_tlast[i])? r1_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]            : r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH]                                                        ;
    assign m_axis_if_tx_tuser[(i+1)*AXIS_TX_USER_WIDTH-1-:AXIS_TX_USER_WIDTH]       = {AXIS_TX_USER_WIDTH{1'b0}};

    assign pipeline_busy[i] = (r_if_tx_cnt_1d[(i+1)*16-1-:16] == PACK_LEN-1 || r_if_tx_cnt_2d[(i+1)*16-1-:16] == PACK_LEN-1)?1'b1:1'b0;     
    
    assign m_axis_tx_id[(i+1)*WQE_INDEX_WIDTH-1-:WQE_INDEX_WIDTH] = m_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH];  
    assign m_axis_tx_psn[(i+1)*24-1-:24]                          = r_tx_header[(i+1)*624-128-1-:24]; 
    assign m_axis_tx_valid[i]                                     = m_axis_tx_ready[i] && m_axis_if_tx_tlast[i];

end
endgenerate

//data passthough
//assign m_axis_if_tx_tdata = s_axis_if_tx_tdata;
//assign m_axis_if_tx_tkeep = s_axis_if_tx_tkeep;
//assign m_axis_if_tx_tvalid = s_axis_if_tx_tvalid;
//assign s_axis_if_tx_tready = m_axis_if_tx_tready;
//assign m_axis_if_tx_tlast = s_axis_if_tx_tlast;
//assign m_axis_if_tx_tid   = s_axis_if_tx_tid;
//assign m_axis_if_tx_tdest = s_axis_if_tx_tdest;
//assign m_axis_if_tx_tuser = s_axis_if_tx_tuser;

assign s_axis_if_tx_tready = m_axis_if_tx_tready && (!pipeline_busy);

////////////////// DEBUG ////////////////////////////////////////
always @(posedge clk) begin
  if(rst)
    r_clr_flag <= 1'b0;
  else if(reg_wr_en)
    if(reg_wr_addr[7:0] == 8'h54)
      r_clr_flag <= reg_wr_data[0];
end

always @(posedge clk) begin
  if(rst)
    r_rdata <= {DATA_WIDTH{1'b0}};
  else if(reg_rd_en)
    case(reg_rd_addr[7:0])
      8'h00: r_rdata <= r_tx_header[0*624+ 1*DATA_WIDTH-1-:DATA_WIDTH];
      8'h04: r_rdata <= r_tx_header[0*624+ 2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h08: r_rdata <= r_tx_header[0*624+ 3*DATA_WIDTH-1-:DATA_WIDTH];
      8'h0c: r_rdata <= r_tx_header[0*624+ 4*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h10: r_rdata <= r_tx_header[0*624+ 5*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h14: r_rdata <= r_tx_header[0*624+ 6*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h18: r_rdata <= r_tx_header[0*624+ 7*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h1c: r_rdata <= r_tx_header[0*624+ 8*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h20: r_rdata <= r_tx_header[0*624+ 9*DATA_WIDTH-1-:DATA_WIDTH];
      8'h24: r_rdata <= r_tx_header[0*624+10*DATA_WIDTH-1-:DATA_WIDTH];
      8'h28: r_rdata <= r_tx_header[0*624+11*DATA_WIDTH-1-:DATA_WIDTH];
      8'h2c: r_rdata <= r_tx_header[0*624+12*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h30: r_rdata <= r_tx_header[0*624+13*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h34: r_rdata <= r_tx_header[0*624+14*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h38: r_rdata <= r_tx_header[0*624+15*DATA_WIDTH-1-:DATA_WIDTH];
      8'h3c: r_rdata <= r_tx_header[0*624+16*DATA_WIDTH-1-:DATA_WIDTH];   
      8'h40: r_rdata <= r_tx_header[0*624+17*DATA_WIDTH-1-:DATA_WIDTH]; 
      8'h44: r_rdata <= r_tx_header[0*624+18*DATA_WIDTH-1-:DATA_WIDTH]; 
      8'h48: r_rdata <= r_tx_header[0*624+19*DATA_WIDTH-1-:DATA_WIDTH]; 
      8'h4c: r_rdata <= r_if_tx_pkt_cnt[1*32-1-:32]; 
      8'h50: r_rdata <= 32'h20240713;  
      8'h54: r_rdata <= {31'b0,r_clr_flag};      
       
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
/*
ila_1 u_ila_app_tx_data_proc   (
    .clk    ( clk                              ),
    .probe0 ( s_axis_if_tx_tdata[511:0]        ), //[511:0]
    .probe1 ( s_axis_if_tx_tvalid[0]           ), //[0 :0]     
    .probe2 ( s_axis_if_tx_tlast[0]            ), //[0 :0]
    .probe3 ( s_axis_if_tx_tuser[264:0]        ), //[264:0] 
    .probe4 ( m_axis_if_tx_tdata[511:0]        ), //[511:0]
    .probe5 ( m_axis_if_tx_tvalid[0]           ), //[0 :0]     
    .probe6 ( m_axis_if_tx_tlast[0]            ), //[0 :0]
    .probe7 ( m_axis_if_tx_tuser[16:0]         ), //[16:0] 
    .probe8 ( work_on[0]                       ),  //[0 :0]  
    .probe7 ( tx_config_ram_ren[0]             ), //[0:0] 
    .probe8 ( tx_config_ram_rdata[255:0]       )  //[255:0]          

);
*/       
endmodule

`resetall
