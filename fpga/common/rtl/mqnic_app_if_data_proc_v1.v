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
module mqnic_app_if_data_proc_v1 #
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

localparam HDR_BYTE = 62;
localparam HDR_WIDTH = HDR_BYTE*8;
localparam DEST_QDP_BIT = (47-1)*8;
localparam HEADER_SIGN = 32'hffff_ffff;


reg  [IF_COUNT*10-1:0]                         r_if_tx_cnt        ;
reg  [IF_COUNT*10-1:0]                         r_if_rx_cnt        ;
reg  [IF_COUNT*24-1:0]                         r_psn_cnt          ;
reg  [IF_COUNT*24-1:0]                         r_dest_QPN         ;
reg  [IF_COUNT*HDR_WIDTH-1:0]                  r_tx_header        ;
reg  [IF_COUNT*HDR_WIDTH-1:0]                  r_rx_header        ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r_tx_header_keep   ;
reg  [IF_COUNT*AXIS_IF_KEEP_WIDTH-1:0]         r_rx_header_keep   ;
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

reg                                            reg_rd_en_1d       ;
reg  [DATA_WIDTH-1:0]                          r_rdata            ;

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
          r_if_tx_cnt <= r_if_tx_cnt + 10'b1;
    end

    //header detect and buffer
    always @(posedge clk) begin
      if(rst)
        r_tx_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH] <= {(HDR_WIDTH){1'b0}};
      else if(s_axis_if_tx_tvalid[i])
        if(s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+31:i*AXIS_IF_DATA_WIDTH] == HEADER_SIGN)
          r_tx_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH] <= s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH];
    end
    
    //PSN counter
    always @(posedge clk) begin
      if(rst)
        r_psn_cnt[(i+1)*24-1-:24] <= 24'b0;
      else if(r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_tx_tvalid[i])
        if(s_axis_if_tx_tdata[i*AXIS_IF_DATA_WIDTH+31:i*AXIS_IF_DATA_WIDTH] == HEADER_SIGN)
          r_psn_cnt[(i+1)*24-1-:24] <= 24'b0;
      else
          r_psn_cnt[(i+1)*24-1-:24] <= r_psn_cnt[(i+1)*24-1-:24] + 24'b1;
    end
    
    //TX CONFIG RAM 
    assign tx_config_ram_wen[i] = 1'b0;
    assign tx_config_ram_wdata[(i+1)*CONFIG_RAM_DWIDTH-1-:CONFIG_RAM_DWIDTH] = {(CONFIG_RAM_DWIDTH){1'b0}};
    assign tx_config_ram_ren[i] = r_if_tx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_tx_tvalid[i];
    assign tx_config_ram_raddr[(i+1)*CONFIG_RAM_AWIDTH-1-:CONFIG_RAM_AWIDTH] = {s_axis_if_tx_tdata[12*32+4-1:12*32],4'b0};//take host QPN as raddr

    
    assign w_new_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH] = {r_tx_header[(i+1)*HDR_WIDTH-1-:2*32], 8'b0, r_psn_cnt, r_tx_header[i*HDR_WIDTH+10*32-1:i*HDR_WIDTH]};
    
    
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
      
//    assign m_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH]       = (r_if_tx_cnt[(i+1)*10-1-:10] == 10'b1)? {r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH-HDR_WIDTH], w_new_header}: r_axis_if_tx_tdata[(i+1)*AXIS_IF_DATA_WIDTH-1-:AXIS_IF_DATA_WIDTH];
//    assign m_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]       = r_axis_if_tx_tkeep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH]      ;
//    assign m_axis_if_tx_tvalid[i]                                                   = r_axis_if_tx_tvalid[i]                                                  ;
//    assign m_axis_if_tx_tlast[i]                                                    = r_axis_if_tx_tlast[i]                                                   ;
//    assign m_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]       = r_axis_if_tx_tid[(i+1)*AXIS_IF_TX_ID_WIDTH-1-:AXIS_IF_TX_ID_WIDTH]      ;
//    assign m_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH] = r_axis_if_tx_tdest[(i+1)*AXIS_IF_TX_DEST_WIDTH-1-:AXIS_IF_TX_DEST_WIDTH];
//    assign m_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH] = r_axis_if_tx_tuser[(i+1)*AXIS_IF_TX_USER_WIDTH-1-:AXIS_IF_TX_USER_WIDTH];

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
    
    //header detect and buffer
    always @(posedge clk) begin
      if(rst) begin
        r_rx_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH]                        <= {(HDR_WIDTH){1'b0}};
        r_rx_header_keep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH] <= {(AXIS_IF_KEEP_WIDTH){1'b0}};
      end
      else if(r_if_rx_cnt[(i+1)*10-1-:10] == 10'b0 && s_axis_if_rx_tvalid[i])
        r_rx_header[(i+1)*HDR_WIDTH-1-:HDR_WIDTH]                        <= s_axis_if_rx_tdata[i*AXIS_IF_DATA_WIDTH+HDR_WIDTH-1:i*AXIS_IF_DATA_WIDTH];
        r_rx_header_keep[(i+1)*AXIS_IF_KEEP_WIDTH-1-:AXIS_IF_KEEP_WIDTH] <= s_axis_if_rx_tkeep;
    end
    
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

assign m_axis_if_tx_tdata = s_axis_if_tx_tdata;
assign m_axis_if_tx_tkeep = s_axis_if_tx_tkeep;
assign m_axis_if_tx_tvalid = s_axis_if_tx_tvalid;
assign s_axis_if_tx_tready = m_axis_if_tx_tready;
assign m_axis_if_tx_tlast = s_axis_if_tx_tlast;
assign m_axis_if_tx_tid = s_axis_if_tx_tid;
assign m_axis_if_tx_tdest = s_axis_if_tx_tdest;
assign m_axis_if_tx_tuser = s_axis_if_tx_tuser;

assign s_axis_if_rx_tready = m_axis_if_rx_tready;     

////////////////// DEBUG ////////////////////////////////////////
always @(posedge clk) begin
  if(rst)
    r_rdata <= {DATA_WIDTH{1'b0}};
  else if(reg_rd_en)
    case(reg_rd_addr[7:0])
      8'h00: r_rdata <= r_rx_header[0*HDR_WIDTH+ 1*DATA_WIDTH-1-:DATA_WIDTH];
      8'h04: r_rdata <= r_rx_header[0*HDR_WIDTH+ 2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h08: r_rdata <= r_rx_header[0*HDR_WIDTH+ 3*DATA_WIDTH-1-:DATA_WIDTH];
      8'h0c: r_rdata <= r_rx_header[0*HDR_WIDTH+ 4*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h10: r_rdata <= r_rx_header[0*HDR_WIDTH+ 5*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h14: r_rdata <= r_rx_header[0*HDR_WIDTH+ 6*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h18: r_rdata <= r_rx_header[0*HDR_WIDTH+ 7*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h1c: r_rdata <= r_rx_header[0*HDR_WIDTH+ 8*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h20: r_rdata <= r_rx_header[0*HDR_WIDTH+ 9*DATA_WIDTH-1-:DATA_WIDTH];
      8'h24: r_rdata <= r_rx_header[0*HDR_WIDTH+10*DATA_WIDTH-1-:DATA_WIDTH];
      8'h28: r_rdata <= r_rx_header[0*HDR_WIDTH+11*DATA_WIDTH-1-:DATA_WIDTH];
      8'h2c: r_rdata <= r_rx_header[0*HDR_WIDTH+12*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h30: r_rdata <= r_rx_header[0*HDR_WIDTH+13*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h34: r_rdata <= r_rx_header[0*HDR_WIDTH+14*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h38: r_rdata <= r_rx_header[0*HDR_WIDTH+15*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h3c: r_rdata <= {16'b0,r_rx_header[0*HDR_WIDTH+15*DATA_WIDTH+16-1-:16]};
      8'h40: r_rdata <= r_rx_header_keep[0*AXIS_IF_KEEP_WIDTH+1*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h44: r_rdata <= r_rx_header_keep[0*AXIS_IF_KEEP_WIDTH+2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h48: r_rdata <= {8'b0,r_dest_QPN[1*24-1-:24]};  
      8'h4c: r_rdata <= 32'h20231214;     
      8'h50: r_rdata <= r_rx_header[1*HDR_WIDTH+ 1*DATA_WIDTH-1-:DATA_WIDTH];
      8'h54: r_rdata <= r_rx_header[1*HDR_WIDTH+ 2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h58: r_rdata <= r_rx_header[1*HDR_WIDTH+ 3*DATA_WIDTH-1-:DATA_WIDTH];
      8'h5c: r_rdata <= r_rx_header[1*HDR_WIDTH+ 4*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h60: r_rdata <= r_rx_header[1*HDR_WIDTH+ 5*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h64: r_rdata <= r_rx_header[1*HDR_WIDTH+ 6*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h68: r_rdata <= r_rx_header[1*HDR_WIDTH+ 7*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h6c: r_rdata <= r_rx_header[1*HDR_WIDTH+ 8*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h70: r_rdata <= r_rx_header[1*HDR_WIDTH+ 9*DATA_WIDTH-1-:DATA_WIDTH];
      8'h74: r_rdata <= r_rx_header[1*HDR_WIDTH+10*DATA_WIDTH-1-:DATA_WIDTH];
      8'h78: r_rdata <= r_rx_header[1*HDR_WIDTH+11*DATA_WIDTH-1-:DATA_WIDTH];
      8'h7c: r_rdata <= r_rx_header[1*HDR_WIDTH+12*DATA_WIDTH-1-:DATA_WIDTH];        
      8'h80: r_rdata <= r_rx_header[1*HDR_WIDTH+13*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h84: r_rdata <= r_rx_header[1*HDR_WIDTH+14*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h88: r_rdata <= r_rx_header[1*HDR_WIDTH+15*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h8c: r_rdata <= {16'b0,r_rx_header[1*HDR_WIDTH+15*DATA_WIDTH+16-1-:16]};
      8'h90: r_rdata <= r_rx_header_keep[1*AXIS_IF_KEEP_WIDTH+1*DATA_WIDTH-1-:DATA_WIDTH];  
      8'h94: r_rdata <= r_rx_header_keep[1*AXIS_IF_KEEP_WIDTH+2*DATA_WIDTH-1-:DATA_WIDTH];
      8'h98: r_rdata <= {8'b0,r_dest_QPN[2*24-1-:24]};  
      8'h9c: r_rdata <= 32'h12345678;          
      default: r_rdata <= {DATA_WIDTH{1'b0}};     
    endcase  
end

always @(posedge clk) 
  if(rst)
    reg_rd_en_1d <= 1'b0;
  else
    reg_rd_en_1d <= reg_rd_en;

assign reg_rd_data = r_rdata;
assign reg_rd_wait = 1'b0;
assign reg_rd_ack  = reg_rd_en_1d;

assign reg_wr_wait = 1'b0;
assign reg_wr_ack  = 1'b0;
       
endmodule

`resetall
