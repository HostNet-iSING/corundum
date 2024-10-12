// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2019-2023 The Regents of the University of California
 */

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * Transmit engine
 */
module re_trans_module #
(
    // Number of ports
    parameter PORTS = 1,
    
    // WQE index width
    parameter WQE_INDEX_WIDTH = 10,
    // WQE data width
    parameter AXIS_WQE_DATA_WIDTH = 256,
    
    // DMA RAM address width
    parameter RAM_ADDR_WIDTH = 16,
    // DMA address width
    parameter DMA_ADDR_WIDTH = 64,
    // DMA length field width
    parameter DMA_LEN_WIDTH = 20,
    // DMA client length field width
    parameter DMA_CLIENT_LEN_WIDTH = 20,
    // DMA tag field width
    parameter DMA_TAG_WIDTH = WQE_INDEX_WIDTH,
    // DMA client tag field width
    parameter DMA_CLIENT_TAG_WIDTH = WQE_INDEX_WIDTH,   

    // Width of AXI stream descriptor interfaces in bits
    parameter AXIS_DESC_DATA_WIDTH = 512,
    // AXI stream descriptor tkeep signal width (words per cycle)
    parameter AXIS_DESC_KEEP_WIDTH = AXIS_DESC_DATA_WIDTH/8,
    
    // AXI stream tid signal width
    parameter AXIS_TX_ID_WIDTH = WQE_INDEX_WIDTH,
    // AXI stream tdest signal width
    parameter AXIS_TX_DEST_WIDTH = $clog2(PORTS)+4,
    // AXI stream tuser signal width
    parameter AXIS_TX_USER_WIDTH = 232
)
(
    input  wire                             clk,
    input  wire                             rst,


    /*
     * Descriptor data input
     */
    input  wire [AXIS_WQE_DATA_WIDTH-1:0]   s_axis_wqe_data,
    input  wire [24-1:0]                    s_axis_wqe_qpn, 
    input  wire [WQE_INDEX_WIDTH-1:0]       s_axis_wqe_id,
    input  wire                             s_axis_wqe_valid,
    output wire                             s_axis_wqe_ready,  

    /*
     * tx flag input
     */    
    input  wire [WQE_INDEX_WIDTH-1:0]       s_axis_tx_id    ,
    input  wire [24-1:0]                    s_axis_tx_psn   ,
    input  wire                             s_axis_tx_valid ,
    output wire                             s_axis_tx_ready ,
    
    /*
     * tx flag input
     */    
    input  wire [WQE_INDEX_WIDTH-1:0]       s_axis_ack_id    ,
    input  wire [24-1:0]                    s_axis_ack_psn   ,
    input  wire                             s_axis_ack_valid ,
    output wire                             s_axis_ack_ready ,    
    
    /*
     * DMA read data output
     */
    output wire [DMA_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_dma_addr,
    output wire [RAM_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_ram_addr,
    output wire [DMA_LEN_WIDTH-1:0]         m_axis_dma_read_wqe_len,
    output wire [DMA_TAG_WIDTH-1:0]         m_axis_dma_read_wqe_tag,
    output wire                             m_axis_dma_read_wqe_valid,
    input  wire                             m_axis_dma_read_wqe_ready,

    /*
     * DMA read data status input
     */
    input  wire [DMA_TAG_WIDTH-1:0]         s_axis_dma_read_wqe_status_tag,
    input  wire                             s_axis_dma_read_wqe_status_valid,

    /*
     * Transmit data output
     */
    output wire [RAM_ADDR_WIDTH-1:0]        m_axis_tx_data_addr,
    output wire [DMA_CLIENT_LEN_WIDTH-1:0]  m_axis_tx_data_len,
    output wire [DMA_CLIENT_TAG_WIDTH-1:0]  m_axis_tx_data_tag,
    output wire [AXIS_TX_ID_WIDTH-1:0]      m_axis_tx_data_id,
    output wire [AXIS_TX_DEST_WIDTH-1:0]    m_axis_tx_data_dest,
    output wire [AXIS_TX_USER_WIDTH-1:0]    m_axis_tx_data_user,
    output wire                             m_axis_tx_data_valid,
    input  wire                             m_axis_tx_data_ready,
    
    /*
     * cpl interface
     */    
    output wire [WQE_INDEX_WIDTH-1:0]       m_axis_cpl_id      ,
    output wire                             m_axis_cpl_valid   ,
    input  wire                             m_axis_cpl_ready
);

localparam WQE_TABLE_SIZE = 2**WQE_INDEX_WIDTH;
localparam PKT_LEN = 1024;
localparam PKT_WIDTH = $clog2(PKT_LEN);
localparam PIPE_LEN = 20;

///////////////////  WIRE & REG /////////////////////////////////////////////////////////   

wire [32-1:0]                   s_axis_wqe_len     ;
wire [WQE_INDEX_WIDTH-1:0]      m_axis_retran_id   ;
wire [24-1:0]                   m_axis_retran_psn  ;
wire                            m_axis_retran_valid;
wire                            m_axis_retran_ready;


reg [WQE_INDEX_WIDTH-1:0]  m_axis_wqe_req_id_reg          , m_axis_wqe_req_id_next   ;
reg                       m_axis_wqe_req_valid_reg = 1'b0, m_axis_wqe_req_valid_next;



reg [WQE_INDEX_WIDTH-1:0] wqe_table_start_tag;
reg                       wqe_table_start_en ;
reg [WQE_INDEX_WIDTH-1:0] wqe_table_latch_tag;
reg                       wqe_table_latch_en ;
reg [WQE_INDEX_WIDTH-1:0] wqe_table_retrans_ptr;
reg                       wqe_table_retrans_en ;
reg [WQE_INDEX_WIDTH-1:0] wqe_table_data_fetched_ptr;
reg                       wqe_table_data_fetched_en ;
reg [WQE_INDEX_WIDTH-1:0] wqe_table_tx_send_ptr_reg;
reg                       wqe_table_tx_send_en     ;
reg [WQE_INDEX_WIDTH-1:0] wqe_table_tx_finish_ptr_reg;
reg                       wqe_table_tx_finish_en     ;

reg [WQE_INDEX_WIDTH-1:0] wqe_table_tx_start_ptr_reg;

reg [WQE_INDEX_WIDTH-1:0] wqe_table_active = 0;
reg [WQE_INDEX_WIDTH-1:0] wqe_table_data_fetched = 0;

(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [32-1:0] wqe_table_tx_len[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [32-1:0] wqe_table_rip[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [64-1:0] wqe_table_laddr[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [64-1:0] wqe_table_raddr[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] wqe_table_dst_qpn[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] wqe_table_src_qpn[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [16-1:0] wqe_table_src_port[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [3 -1:0] wqe_table_priority[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [1 -1:0] wqe_table_fence[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [20-1:0] wqe_table_task_id[WQE_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] wqe_table_msn[WQE_TABLE_SIZE-1:0];

reg [32 -1:0] wqe_dma_total_len;
reg [32 -1:0] wqe_rip          ;
reg [64 -1:0] wqe_laddr        ;
reg [64 -1:0] wqe_raddr        ;
reg [24 -1:0] wqe_dst_qpn      ;
reg [16 -1:0] wqe_src_port     ;
reg [3  -1:0] wqe_priority     ;
reg [1  -1:0] wqe_fence        ;
reg [20 -1:0] wqe_task_id      ;  
reg [24 -1:0] wqe_src_qpn      ;
reg [24 -1:0] wqe_msn          ;

reg [24 -1 :0] msn_cnt_reg_0  = 24'b0, msn_cnt_next_0 ;  
reg [24 -1 :0] msn_cnt_reg_1  = 24'b0, msn_cnt_next_1 ; 
reg [24 -1 :0] msn_cnt_reg_2  = 24'b0, msn_cnt_next_2 ; 
reg [24 -1 :0] msn_cnt_reg_3  = 24'b0, msn_cnt_next_3 ; 
reg [24 -1 :0] msn_cnt_reg_4  = 24'b0, msn_cnt_next_4 ; 
reg [24 -1 :0] msn_cnt_reg_5  = 24'b0, msn_cnt_next_5 ; 
reg [24 -1 :0] msn_cnt_reg_6  = 24'b0, msn_cnt_next_6 ; 
reg [24 -1 :0] msn_cnt_reg_7  = 24'b0, msn_cnt_next_7 ; 
reg [24 -1 :0] msn_cnt_reg_8  = 24'b0, msn_cnt_next_8 ;  
reg [24 -1 :0] msn_cnt_reg_9  = 24'b0, msn_cnt_next_9 ; 
reg [24 -1 :0] msn_cnt_reg_10 = 24'b0, msn_cnt_next_10; 
reg [24 -1 :0] msn_cnt_reg_11 = 24'b0, msn_cnt_next_11; 
reg [24 -1 :0] msn_cnt_reg_12 = 24'b0, msn_cnt_next_12; 
reg [24 -1 :0] msn_cnt_reg_13 = 24'b0, msn_cnt_next_13; 
reg [24 -1 :0] msn_cnt_reg_14 = 24'b0, msn_cnt_next_14; 
reg [24 -1 :0] msn_cnt_reg_15 = 24'b0, msn_cnt_next_15;

reg [32 -1:0]             temp_len           ;

reg [RAM_ADDR_WIDTH-1:0] buf_wr_ptr_reg = 0, buf_wr_ptr_next;
reg [RAM_ADDR_WIDTH-1:0] buf_rd_ptr_reg = 0, buf_rd_ptr_next;

// internal datapath
reg  [DMA_ADDR_WIDTH-1:0]  m_axis_dma_read_wqe_dma_addr_int;
reg  [RAM_ADDR_WIDTH-1:0]  m_axis_dma_read_wqe_ram_addr_int;
reg  [DMA_LEN_WIDTH-1:0]   m_axis_dma_read_wqe_len_int;
reg  [WQE_INDEX_WIDTH-1:0] m_axis_dma_read_wqe_tag_int;
reg                        m_axis_dma_read_wqe_valid_int;
reg                        m_axis_dma_read_wqe_ready_int_reg = 1'b0;
wire                       m_axis_dma_read_wqe_ready_int_early;

reg [RAM_ADDR_WIDTH-1:0] m_axis_tx_data_addr_reg = {RAM_ADDR_WIDTH{1'b0}}, m_axis_tx_data_addr_next;
reg [DMA_CLIENT_LEN_WIDTH-1:0] m_axis_tx_data_len_reg = {DMA_CLIENT_LEN_WIDTH{1'b0}}, m_axis_tx_data_len_next;
reg [DMA_CLIENT_TAG_WIDTH-1:0] m_axis_tx_data_tag_reg = {DMA_CLIENT_TAG_WIDTH{1'b0}}, m_axis_tx_data_tag_next;
reg [AXIS_TX_ID_WIDTH-1:0] m_axis_tx_data_id_reg = 0, m_axis_tx_data_id_next;
reg [AXIS_TX_DEST_WIDTH-1:0] m_axis_tx_data_dest_reg = 0, m_axis_tx_data_dest_next;
reg [AXIS_TX_USER_WIDTH-1:0] m_axis_tx_data_user_reg = 0, m_axis_tx_data_user_next;
reg m_axis_tx_data_valid_reg = 1'b0, m_axis_tx_data_valid_next;

// output datapath logic
reg [DMA_ADDR_WIDTH-1:0]  m_axis_dma_read_wqe_dma_addr_reg  = {DMA_ADDR_WIDTH{1'b0}};
reg [RAM_ADDR_WIDTH-1:0]  m_axis_dma_read_wqe_ram_addr_reg  = {RAM_ADDR_WIDTH{1'b0}};
reg [DMA_LEN_WIDTH-1:0]   m_axis_dma_read_wqe_len_reg       = {DMA_LEN_WIDTH{1'b0}};
reg [DMA_TAG_WIDTH-1:0]   m_axis_dma_read_wqe_tag_reg       = {DMA_TAG_WIDTH{1'b0}};
reg                       m_axis_dma_read_wqe_valid_reg     = 1'b0, m_axis_dma_read_wqe_valid_next;

reg [DMA_ADDR_WIDTH-1:0]  temp_m_axis_dma_read_wqe_dma_addr_reg  = {DMA_ADDR_WIDTH{1'b0}};
reg [RAM_ADDR_WIDTH-1:0]  temp_m_axis_dma_read_wqe_ram_addr_reg  = {RAM_ADDR_WIDTH{1'b0}};
reg [DMA_LEN_WIDTH-1:0]   temp_m_axis_dma_read_wqe_len_reg       = {DMA_LEN_WIDTH{1'b0}};
reg [DMA_TAG_WIDTH-1:0]   temp_m_axis_dma_read_wqe_tag_reg       = {DMA_TAG_WIDTH{1'b0}};
reg                       temp_m_axis_dma_read_wqe_valid_reg     = 1'b0, temp_m_axis_dma_read_wqe_valid_next;

// datapath control
reg store_axis_int_to_output;
reg store_axis_int_to_temp;
reg store_axis_temp_to_output;

reg                    w_fifo_wen        ;
reg                    w_fifo_ren        ;
reg  [24-1:0]          w_fifo_wdata      ;
wire [24-1:0]          w_fifo_rdata      ;
wire                   w_fifo_empty      ;
wire                   w_fifo_full       ;
wire                   w_fifo_aempty     ;
wire                   w_fifo_afull      ;

reg  [63:0]            temp0,temp1,temp2,temp3;


assign s_axis_wqe_len                = wqe_dma_total_len;

assign m_axis_retran_ready           = !m_axis_dma_read_wqe_valid && !w_fifo_afull;

assign m_axis_dma_read_wqe_dma_addr  = m_axis_dma_read_wqe_dma_addr_reg;
assign m_axis_dma_read_wqe_ram_addr  = m_axis_dma_read_wqe_ram_addr_reg;
assign m_axis_dma_read_wqe_len       = m_axis_dma_read_wqe_len_reg     ;
assign m_axis_dma_read_wqe_tag       = m_axis_dma_read_wqe_tag_reg     ;
assign m_axis_dma_read_wqe_valid     = m_axis_dma_read_wqe_valid_reg   ;

assign m_axis_tx_data_addr = m_axis_tx_data_addr_reg;
assign m_axis_tx_data_len = m_axis_tx_data_len_reg;
assign m_axis_tx_data_tag = m_axis_tx_data_tag_reg;
assign m_axis_tx_data_id = m_axis_tx_data_id_reg;
assign m_axis_tx_data_dest = m_axis_tx_data_dest_reg;
assign m_axis_tx_data_user = m_axis_tx_data_user_reg;
assign m_axis_tx_data_valid = m_axis_tx_data_valid_reg;

integer i;

initial begin
    for (i = 0; i < WQE_TABLE_SIZE; i = i + 1) begin     
        //wqe_table_dma_total_len[i]    = 0;
        wqe_table_tx_len[i]           = 0;     
        wqe_table_rip[i]              = 0;             
        wqe_table_laddr[i]            = i;             
        wqe_table_raddr[i]            = 0;               
        wqe_table_dst_qpn[i]          = 0;
        wqe_table_src_qpn[i]          = 0;        
        wqe_table_src_port[i]         = 0;      
        wqe_table_priority[i]         = 0;      
        wqe_table_fence[i]            = 0;         
        wqe_table_task_id[i]          = 0;         
        wqe_table_data_fetched[i]     = 0;
        //wqe_table_psn[i]              = 0; 
        wqe_table_msn[i]              = 0;                           
    end
end

always @* begin
    
    wqe_dma_total_len   = 0;
    wqe_rip             = 0;
    wqe_laddr           = 0;
    wqe_raddr           = 0;  
    wqe_dst_qpn         = 0;
    wqe_src_qpn         = 0;
    wqe_src_port        = 0;
    wqe_priority        = 0;
    wqe_fence           = 0;
    wqe_task_id         = 0;
    wqe_msn             = 0;
    
    temp_len            = 0;
    
    msn_cnt_next_0  = msn_cnt_reg_0 ;
    msn_cnt_next_1  = msn_cnt_reg_1 ;
    msn_cnt_next_2  = msn_cnt_reg_2 ;
    msn_cnt_next_3  = msn_cnt_reg_3 ;
    msn_cnt_next_4  = msn_cnt_reg_4 ;
    msn_cnt_next_5  = msn_cnt_reg_5 ;
    msn_cnt_next_6  = msn_cnt_reg_6 ;
    msn_cnt_next_7  = msn_cnt_reg_7 ;
    msn_cnt_next_8  = msn_cnt_reg_8 ;
    msn_cnt_next_9  = msn_cnt_reg_9 ;
    msn_cnt_next_10 = msn_cnt_reg_10;
    msn_cnt_next_11 = msn_cnt_reg_11;
    msn_cnt_next_12 = msn_cnt_reg_12;
    msn_cnt_next_13 = msn_cnt_reg_13;
    msn_cnt_next_14 = msn_cnt_reg_14;
    msn_cnt_next_15 = msn_cnt_reg_15;
       
    m_axis_dma_read_wqe_dma_addr_int = 0;
    m_axis_dma_read_wqe_ram_addr_int = 0;
    m_axis_dma_read_wqe_len_int      = 0;
    m_axis_dma_read_wqe_tag_int      = 0;
    m_axis_dma_read_wqe_valid_int    = 0;
    
    buf_wr_ptr_next = buf_wr_ptr_reg;
    buf_rd_ptr_next = buf_rd_ptr_reg;  
    
    wqe_table_start_tag = {WQE_INDEX_WIDTH{1'b0}};
    wqe_table_start_en = 1'b0;
    
    wqe_table_latch_tag = {WQE_INDEX_WIDTH{1'b0}};
    wqe_table_latch_en = 1'b0;
    
    wqe_table_retrans_ptr = {WQE_INDEX_WIDTH{1'b0}}; 
    wqe_table_retrans_en  = 1'b0;
    
    wqe_table_data_fetched_ptr = {WQE_INDEX_WIDTH{1'b0}}; 
    wqe_table_data_fetched_en  = 1'b0;   
             
    wqe_table_tx_send_ptr_reg = {WQE_INDEX_WIDTH{1'b0}};     
    wqe_table_tx_send_en      = 1'b0;                    
    
    wqe_table_tx_finish_ptr_reg = {WQE_INDEX_WIDTH{1'b0}}; 
    wqe_table_tx_finish_en      = 1'b0;      
    
    w_fifo_wen   = 1'b0 ;
    w_fifo_ren   = 1'b0 ;
    w_fifo_wdata = 24'b0;
    
    m_axis_tx_data_addr_next = m_axis_tx_data_addr_reg;
    m_axis_tx_data_len_next = m_axis_tx_data_len_reg;
    m_axis_tx_data_tag_next = m_axis_tx_data_tag_reg;
    m_axis_tx_data_id_next = m_axis_tx_data_id_reg;
    m_axis_tx_data_dest_next = m_axis_tx_data_dest_reg;
    m_axis_tx_data_user_next = m_axis_tx_data_user_reg;
    m_axis_tx_data_valid_next = m_axis_tx_data_valid_reg && !m_axis_tx_data_ready;
    
	  temp2 = wqe_table_laddr[1];
	  temp3 = wqe_table_laddr[12];

    //latch WQE info
    if (s_axis_wqe_valid && s_axis_wqe_ready) begin

        wqe_dma_total_len  = s_axis_wqe_data[31:0];
        wqe_rip            = s_axis_wqe_data[63:32];
        wqe_laddr          = s_axis_wqe_data[127:64];
        wqe_raddr          = s_axis_wqe_data[191:128];  
        wqe_dst_qpn        = s_axis_wqe_data[215:192];
        wqe_src_port       = s_axis_wqe_data[231:216];
        wqe_priority       = s_axis_wqe_data[234:232];
        wqe_fence          = s_axis_wqe_data[235];
        wqe_task_id        = s_axis_wqe_data[255:236];
        wqe_src_qpn        = s_axis_wqe_qpn;
        
        wqe_table_latch_tag = s_axis_wqe_id;
        wqe_table_latch_en = 1'b1;                 
        
        case(s_axis_wqe_qpn[3:0])
          4'd0 : msn_cnt_next_0  = msn_cnt_reg_0  + 24'b1;
          4'd1 : msn_cnt_next_1  = msn_cnt_reg_1  + 24'b1;
          4'd2 : msn_cnt_next_2  = msn_cnt_reg_2  + 24'b1;
          4'd3 : msn_cnt_next_3  = msn_cnt_reg_3  + 24'b1;
          4'd4 : msn_cnt_next_4  = msn_cnt_reg_4  + 24'b1;
          4'd5 : msn_cnt_next_5  = msn_cnt_reg_5  + 24'b1;
          4'd6 : msn_cnt_next_6  = msn_cnt_reg_6  + 24'b1;
          4'd7 : msn_cnt_next_7  = msn_cnt_reg_7  + 24'b1;
          4'd8 : msn_cnt_next_8  = msn_cnt_reg_8  + 24'b1;
          4'd9 : msn_cnt_next_9  = msn_cnt_reg_9  + 24'b1;
          4'd10: msn_cnt_next_10 = msn_cnt_reg_10 + 24'b1;
          4'd11: msn_cnt_next_11 = msn_cnt_reg_11 + 24'b1;
          4'd12: msn_cnt_next_12 = msn_cnt_reg_12 + 24'b1;
          4'd13: msn_cnt_next_13 = msn_cnt_reg_13 + 24'b1;
          4'd14: msn_cnt_next_14 = msn_cnt_reg_14 + 24'b1;
          4'd15: msn_cnt_next_15 = msn_cnt_reg_15 + 24'b1;
        endcase 
        
        case(s_axis_wqe_qpn[3:0])
          4'd0 : wqe_msn = msn_cnt_reg_0 ;
          4'd1 : wqe_msn = msn_cnt_reg_1 ;
          4'd2 : wqe_msn = msn_cnt_reg_2 ;
          4'd3 : wqe_msn = msn_cnt_reg_3 ;
          4'd4 : wqe_msn = msn_cnt_reg_4 ;
          4'd5 : wqe_msn = msn_cnt_reg_5 ;
          4'd6 : wqe_msn = msn_cnt_reg_6 ;
          4'd7 : wqe_msn = msn_cnt_reg_7 ;
          4'd8 : wqe_msn = msn_cnt_reg_8 ;
          4'd9 : wqe_msn = msn_cnt_reg_9 ;
          4'd10: wqe_msn = msn_cnt_reg_10;
          4'd11: wqe_msn = msn_cnt_reg_11;
          4'd12: wqe_msn = msn_cnt_reg_12;
          4'd13: wqe_msn = msn_cnt_reg_13;
          4'd14: wqe_msn = msn_cnt_reg_14;
          4'd15: wqe_msn = msn_cnt_reg_15;
          default:wqe_msn = 0;
        endcase                
                
    end
    
    
    if(m_axis_retran_valid && m_axis_retran_ready) begin
    
        // initiate data fetch to onboard RAM
        temp0 = m_axis_retran_psn << PKT_WIDTH;
        temp1 = wqe_table_laddr[m_axis_retran_id];
        
        m_axis_dma_read_wqe_dma_addr_int = wqe_table_laddr[m_axis_retran_id] + (m_axis_retran_psn << PKT_WIDTH);
        m_axis_dma_read_wqe_ram_addr_int = buf_wr_ptr_reg;
        m_axis_dma_read_wqe_len_int = PKT_LEN;
        m_axis_dma_read_wqe_tag_int = m_axis_retran_id;
        m_axis_dma_read_wqe_valid_int = 1'b1;      
        
        wqe_table_retrans_ptr = m_axis_retran_id;
        wqe_table_retrans_en = 1'b1;
        w_fifo_wen   = 1'b1;
        w_fifo_wdata = m_axis_retran_psn;
        
        buf_wr_ptr_next = buf_wr_ptr_reg + PKT_LEN;
    
    end

    
    // data fetch completion
    // wait for data fetch completion
    if(s_axis_dma_read_wqe_status_valid) begin
        // update entry in descriptor table
        wqe_table_data_fetched_ptr = s_axis_dma_read_wqe_status_tag;
        wqe_table_data_fetched_en = 1'b1;
        w_fifo_ren = 1'b1;
    end

    // transmit start
    // wait for data fetch completion
    if(wqe_table_active[wqe_table_tx_start_ptr_reg] && wqe_table_data_fetched[wqe_table_tx_start_ptr_reg]  && !m_axis_tx_data_valid) begin
        // update entry in descriptor table
        wqe_table_tx_send_en       = 1'b1;
        wqe_table_tx_send_ptr_reg  = wqe_table_tx_start_ptr_reg;


        // initiate transmit operation
        m_axis_tx_data_addr_next = buf_rd_ptr_reg;
        m_axis_tx_data_len_next = wqe_table_tx_len[wqe_table_tx_start_ptr_reg];
        m_axis_tx_data_tag_next = wqe_table_tx_start_ptr_reg;
        m_axis_tx_data_id_next = 0;
        m_axis_tx_data_dest_next = 0;
        m_axis_tx_data_user_next = 0;
        
        //V3  
           
        m_axis_tx_data_user_next[168 +: 64] = wqe_table_raddr[wqe_table_tx_start_ptr_reg];           
        m_axis_tx_data_user_next[148 +: 20] = wqe_table_task_id[wqe_table_tx_start_ptr_reg];       
        m_axis_tx_data_user_next[145 +: 3 ] = wqe_table_priority[wqe_table_tx_start_ptr_reg];      
        m_axis_tx_data_user_next[144 +: 1 ] = wqe_table_fence[wqe_table_tx_start_ptr_reg]; 
        m_axis_tx_data_user_next[120 +: 24] = w_fifo_rdata;//wqe_table_psn[wqe_table_tx_start_ptr_reg]; 
        m_axis_tx_data_user_next[96  +: 24] = wqe_table_msn[wqe_table_tx_start_ptr_reg];               
        m_axis_tx_data_user_next[72  +: 24] = wqe_table_dst_qpn[wqe_table_tx_start_ptr_reg];
        m_axis_tx_data_user_next[48  +: 24] = wqe_table_src_qpn[wqe_table_tx_start_ptr_reg];
        m_axis_tx_data_user_next[32  +: 16] = wqe_table_src_port[wqe_table_tx_start_ptr_reg];
        m_axis_tx_data_user_next[0   +: 32] = wqe_table_rip[wqe_table_tx_start_ptr_reg];
        m_axis_tx_data_valid_next = 1'b1;
        
        buf_rd_ptr_next = buf_rd_ptr_reg + PKT_LEN;
    end
    
    if(m_axis_cpl_valid && m_axis_cpl_ready) begin
        wqe_table_tx_finish_en = 1'b1;
        wqe_table_tx_finish_ptr_reg = m_axis_cpl_id;
    end
end  

always @(posedge clk) begin
    if(rst) begin
        buf_wr_ptr_reg             <= 0;
        buf_rd_ptr_reg             <= 0;  
        wqe_table_tx_start_ptr_reg <= 0;

        m_axis_tx_data_addr_reg    <= 0;
        m_axis_tx_data_len_reg     <= 0;
        m_axis_tx_data_tag_reg     <= 0;
        m_axis_tx_data_id_reg      <= 0;
        m_axis_tx_data_dest_reg    <= 0;
        m_axis_tx_data_user_reg    <= 0;
        m_axis_tx_data_valid_reg   <= 0;
        
        msn_cnt_reg_0              <= 0;   
        msn_cnt_reg_1              <= 0;   
        msn_cnt_reg_2              <= 0;   
        msn_cnt_reg_3              <= 0;   
        msn_cnt_reg_4              <= 0;   
        msn_cnt_reg_5              <= 0;   
        msn_cnt_reg_6              <= 0;   
        msn_cnt_reg_7              <= 0;   
        msn_cnt_reg_8              <= 0;   
        msn_cnt_reg_9              <= 0;   
        msn_cnt_reg_10             <= 0;   
        msn_cnt_reg_11             <= 0;   
        msn_cnt_reg_12             <= 0;   
        msn_cnt_reg_13             <= 0;   
        msn_cnt_reg_14             <= 0;   
        msn_cnt_reg_15             <= 0; 
    end
    else begin
        buf_wr_ptr_reg <= buf_wr_ptr_next;
        buf_rd_ptr_reg <= buf_rd_ptr_next;    
        
        m_axis_tx_data_addr_reg <= m_axis_tx_data_addr_next;
        m_axis_tx_data_len_reg <= m_axis_tx_data_len_next;
        m_axis_tx_data_tag_reg <= m_axis_tx_data_tag_next;
        m_axis_tx_data_id_reg <= m_axis_tx_data_id_next;
        m_axis_tx_data_dest_reg <= m_axis_tx_data_dest_next;
        m_axis_tx_data_user_reg <= m_axis_tx_data_user_next;
        m_axis_tx_data_valid_reg <= m_axis_tx_data_valid_next;              
        
        msn_cnt_reg_0  <= msn_cnt_next_0 ;
        msn_cnt_reg_1  <= msn_cnt_next_1 ;
        msn_cnt_reg_2  <= msn_cnt_next_2 ;
        msn_cnt_reg_3  <= msn_cnt_next_3 ;
        msn_cnt_reg_4  <= msn_cnt_next_4 ;
        msn_cnt_reg_5  <= msn_cnt_next_5 ;
        msn_cnt_reg_6  <= msn_cnt_next_6 ;
        msn_cnt_reg_7  <= msn_cnt_next_7 ;        
        msn_cnt_reg_8  <= msn_cnt_next_8 ;
        msn_cnt_reg_9  <= msn_cnt_next_9 ;
        msn_cnt_reg_10 <= msn_cnt_next_10;
        msn_cnt_reg_11 <= msn_cnt_next_11;
        msn_cnt_reg_12 <= msn_cnt_next_12;
        msn_cnt_reg_13 <= msn_cnt_next_13;
        msn_cnt_reg_14 <= msn_cnt_next_14;
        msn_cnt_reg_15 <= msn_cnt_next_15; 
        
        // wqe table active
        if (wqe_table_start_en) begin
            wqe_table_active[wqe_table_start_tag] <= 1'b1;   
        end
        
        if (wqe_table_latch_en) begin
            wqe_table_rip[wqe_table_latch_tag]              <= wqe_rip             ; 
            wqe_table_laddr[wqe_table_latch_tag]            <= wqe_laddr           ; 
            wqe_table_raddr[wqe_table_latch_tag]            <= wqe_raddr           ; 
            wqe_table_dst_qpn[wqe_table_latch_tag]          <= wqe_dst_qpn         ;
            wqe_table_src_qpn[wqe_table_latch_tag]          <= wqe_src_qpn         ;
            wqe_table_msn[wqe_table_latch_tag]              <= wqe_msn             ;
            //wqe_table_psn[wqe_table_latch_tag]              <= 24'b0               ;    
            wqe_table_src_port[wqe_table_latch_tag]         <= wqe_src_port        ; 
            wqe_table_priority[wqe_table_latch_tag]         <= wqe_priority        ; 
            wqe_table_fence[wqe_table_latch_tag]            <= wqe_fence           ; 
            wqe_table_task_id[wqe_table_latch_tag]          <= wqe_task_id         ;
            wqe_table_tx_len[wqe_table_latch_tag]           <= temp_len            ;
        end
        
        //if (wqe_table_retrans_en) begin
        //    wqe_table_psn[wqe_table_retrans_ptr] <= m_axis_retran_psn;
        //end 
        
        if (wqe_table_data_fetched_en) begin
            wqe_table_data_fetched[wqe_table_data_fetched_ptr] <= 1'b1;
            wqe_table_tx_start_ptr_reg <= wqe_table_data_fetched_ptr;
        end
        
        if (wqe_table_tx_send_en) begin
            wqe_table_data_fetched[wqe_table_tx_send_ptr_reg] <= 1'b0;
            //wqe_table_psn[wqe_table_tx_send_ptr_reg] <= wqe_dma_pkt_cnt;
        end
        
        if (wqe_table_tx_finish_en) begin
            wqe_table_data_fetched[wqe_table_tx_finish_ptr_reg] <= 1'b0;
            wqe_table_active[wqe_table_tx_finish_ptr_reg] <= 1'b0;
        end
        
    end
end



assign m_axis_dma_read_wqe_dma_addr  = m_axis_dma_read_wqe_dma_addr_reg;
assign m_axis_dma_read_wqe_ram_addr  = m_axis_dma_read_wqe_ram_addr_reg;
assign m_axis_dma_read_wqe_len       = m_axis_dma_read_wqe_len_reg;
assign m_axis_dma_read_wqe_tag       = m_axis_dma_read_wqe_tag_reg;
assign m_axis_dma_read_wqe_valid     = m_axis_dma_read_wqe_valid_reg;

// enable ready input next cycle if output is ready or the temp reg will not be filled on the next cycle (output reg empty or no input)
assign m_axis_dma_read_wqe_ready_int_early = m_axis_dma_read_wqe_ready || (!temp_m_axis_dma_read_wqe_valid_reg && (!m_axis_dma_read_wqe_valid_reg || !m_axis_dma_read_wqe_valid_int));

always @* begin
    // transfer sink ready state to source
    m_axis_dma_read_wqe_valid_next = m_axis_dma_read_wqe_valid_reg;
    temp_m_axis_dma_read_wqe_valid_next = temp_m_axis_dma_read_wqe_valid_reg;

    store_axis_int_to_output = 1'b0;
    store_axis_int_to_temp = 1'b0;
    store_axis_temp_to_output = 1'b0;

    if (m_axis_dma_read_wqe_ready_int_reg) begin
        // input is ready
        if (m_axis_dma_read_wqe_ready || !m_axis_dma_read_wqe_valid_reg) begin
            // output is ready or currently not valid, transfer data to output
            m_axis_dma_read_wqe_valid_next = m_axis_dma_read_wqe_valid_int;
            store_axis_int_to_output = 1'b1;
        end else begin
            // output is not ready, store input in temp
            temp_m_axis_dma_read_wqe_valid_next = m_axis_dma_read_wqe_valid_int;
            store_axis_int_to_temp = 1'b1;
        end
    end else if (m_axis_dma_read_wqe_ready) begin
        // input is not ready, but output is ready
        m_axis_dma_read_wqe_valid_next = temp_m_axis_dma_read_wqe_valid_reg;
        temp_m_axis_dma_read_wqe_valid_next = 1'b0;
        store_axis_temp_to_output = 1'b1;
    end
end

always @(posedge clk) begin
    m_axis_dma_read_wqe_valid_reg <= m_axis_dma_read_wqe_valid_next;
    m_axis_dma_read_wqe_ready_int_reg <= m_axis_dma_read_wqe_ready_int_early;
    temp_m_axis_dma_read_wqe_valid_reg <= temp_m_axis_dma_read_wqe_valid_next;

    // datapath
    if (store_axis_int_to_output) begin
        m_axis_dma_read_wqe_dma_addr_reg <= m_axis_dma_read_wqe_dma_addr_int;
        m_axis_dma_read_wqe_ram_addr_reg <= m_axis_dma_read_wqe_ram_addr_int;
        m_axis_dma_read_wqe_len_reg <= m_axis_dma_read_wqe_len_int;
        m_axis_dma_read_wqe_tag_reg <= m_axis_dma_read_wqe_tag_int;
    end else if (store_axis_temp_to_output) begin
        m_axis_dma_read_wqe_dma_addr_reg <= temp_m_axis_dma_read_wqe_dma_addr_reg;
        m_axis_dma_read_wqe_ram_addr_reg <= temp_m_axis_dma_read_wqe_ram_addr_reg;
        m_axis_dma_read_wqe_len_reg <= temp_m_axis_dma_read_wqe_len_reg;
        m_axis_dma_read_wqe_tag_reg <= temp_m_axis_dma_read_wqe_tag_reg;
    end

    if (store_axis_int_to_temp) begin
        temp_m_axis_dma_read_wqe_dma_addr_reg <= m_axis_dma_read_wqe_dma_addr_int;
        temp_m_axis_dma_read_wqe_ram_addr_reg <= m_axis_dma_read_wqe_ram_addr_int;
        temp_m_axis_dma_read_wqe_len_reg <= m_axis_dma_read_wqe_len_int;
        temp_m_axis_dma_read_wqe_tag_reg <= m_axis_dma_read_wqe_tag_int;
    end

    if (rst) begin
        m_axis_dma_read_wqe_valid_reg <= 1'b0;
        m_axis_dma_read_wqe_ready_int_reg <= 1'b0;
        temp_m_axis_dma_read_wqe_valid_reg <= 1'b0;
    end
end

syn_fifo #(
  .DATA_WIDTH  ( 24        ),
  .ADDR_WIDTH  ( 5         ),
  .RAM_DEPTH   ( 32        ),
  .TH_AFULL    ( 28        ),
  .TH_AEMPTY   ( 4         )
)u_inst_fifo
(
  .i_clk       ( clk             ),
  .i_rst       ( rst             ),
  .i_data_in   ( w_fifo_wdata    ),
  .i_wr_en     ( w_fifo_wen      ),
  .i_rd_en     ( w_fifo_ren      ),
  .o_empty     ( w_fifo_empty    ),
  .o_full      ( w_fifo_full     ),
  .o_aempty    ( w_fifo_aempty   ),
  .o_afull     ( w_fifo_afull    ),
  .o_data_out  ( w_fifo_rdata    ) 
);

resource_pool #(
  .WQE_INDEX_WIDTH  ( 10   ),
  .WQE_SOURCE_LENGTH( 11   ),            
  .PSN_WIDTH        ( 24   ),    
  .SHRESHLOD_RETAIN ( 1000 )  
) u_resource_pool
(  
    .sys_clk             ( clk                 ),
    .sys_rst             ( rst                 ),   
    .s_axis_wqe_len      ( s_axis_wqe_len      ),
    .s_axis_wqe_id       ( s_axis_wqe_id       ),
    .s_axis_wqe_valid    ( s_axis_wqe_valid    ),
    .s_axis_wqe_ready    ( s_axis_wqe_ready    ),
    .s_axis_tx_id        ( s_axis_tx_id        ),
    .s_axis_tx_psn       ( s_axis_tx_psn       ),
    .s_axis_tx_valid     ( s_axis_tx_valid     ),
    .s_axis_tx_ready     ( s_axis_tx_ready     ),
    .s_axis_ack_id       ( s_axis_ack_id       ),
    .s_axis_ack_psn      ( s_axis_ack_psn      ),
    .s_axis_ack_valid    ( s_axis_ack_valid    ),
    .s_axis_ack_ready    ( s_axis_ack_ready    ),
    .m_axis_retran_id    ( m_axis_retran_id    ),
    .m_axis_retran_psn   ( m_axis_retran_psn   ),
    .m_axis_retran_valid ( m_axis_retran_valid ),
    .m_axis_retran_ready ( m_axis_retran_ready ),
    .m_axis_cpl_id       ( m_axis_cpl_id       ),
    .m_axis_cpl_valid    ( m_axis_cpl_valid    ),
    .m_axis_cpl_ready    ( m_axis_cpl_ready    )
);


//assign s_axis_wqe_ready    = 1'b1;
//assign s_axis_tx_ready     = 1'b1;
//assign s_axis_ack_ready    = 1'b1;
//assign m_axis_retran_id    = 'b0;
//assign m_axis_retran_psn   = 'b0;
//assign m_axis_retran_valid = 'b1;
//assign m_axis_cpl_id       = 'b0;
//assign m_axis_cpl_valid    = 1'b1;

endmodule

`resetall
