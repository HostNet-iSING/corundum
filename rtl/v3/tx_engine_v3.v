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
module tx_engine_v3 #
(
    // Number of ports
    parameter PORTS = 1,
    // DMA RAM address width
    parameter RAM_ADDR_WIDTH = 16,
    // DMA address width
    parameter DMA_ADDR_WIDTH = 64,
    // DMA length field width
    parameter DMA_LEN_WIDTH = 20,
    // DMA client length field width
    parameter DMA_CLIENT_LEN_WIDTH = 20,
    // Transmit request tag field width
    parameter REQ_TAG_WIDTH = 8,
    // Descriptor request tag field width
    parameter DESC_REQ_TAG_WIDTH = 8,
    // Completion request tag field width
    parameter CPL_REQ_TAG_WIDTH = 8,
    // DMA tag field width
    parameter DMA_TAG_WIDTH = 8,
    // DMA client tag field width
    parameter DMA_CLIENT_TAG_WIDTH = 8,
    // Queue index width
    parameter QUEUE_INDEX_WIDTH = 4,
    // Queue element pointer width
    parameter QUEUE_PTR_WIDTH = 16,
    // Completion queue index width
    parameter CQN_WIDTH = QUEUE_INDEX_WIDTH,
    // Descriptor table size (number of in-flight operations)
    parameter DESC_TABLE_SIZE = 8,
    // Width of descriptor table field for tracking outstanding DMA operations
    parameter DESC_TABLE_DMA_OP_COUNT_WIDTH = 4,
    // Max transmit packet size
    parameter MAX_TX_SIZE = 2048,
    // Transmit buffer offset
    parameter TX_BUFFER_OFFSET = 0,
    // Transmit buffer size
    parameter TX_BUFFER_SIZE = 16*MAX_TX_SIZE,
    // Transmit buffer step size
    parameter TX_BUFFER_STEP_SIZE = 128,
    // Descriptor size (in bytes)
    parameter DESC_SIZE = 16,
    // Descriptor size (in bytes)
    parameter CPL_SIZE = 32,
    // Max number of in-flight descriptor requests
    parameter MAX_DESC_REQ = 16,
    // Width of AXI stream descriptor interfaces in bits
    parameter AXIS_DESC_DATA_WIDTH = DESC_SIZE*8,
    // AXI stream descriptor tkeep signal width (words per cycle)
    parameter AXIS_DESC_KEEP_WIDTH = AXIS_DESC_DATA_WIDTH/8,
    // Enable PTP timestamping
    parameter PTP_TS_ENABLE = 1,
    // PTP timestamp width
    parameter PTP_TS_WIDTH = 96,
    // Transmit tag width
    parameter TX_TAG_WIDTH = 16,
    // Enable TX checksum offload
    parameter TX_CHECKSUM_ENABLE = 1,
    // AXI stream tid signal width
    parameter AXIS_TX_ID_WIDTH = QUEUE_INDEX_WIDTH,
    // AXI stream tdest signal width
    parameter AXIS_TX_DEST_WIDTH = $clog2(PORTS)+4,
    // AXI stream tuser signal width
    parameter AXIS_TX_USER_WIDTH = TX_TAG_WIDTH + 1
)
(
    input  wire                             clk,
    input  wire                             rst,

    /*
     * Transmit request input (queue index)
     */
    input  wire [QUEUE_INDEX_WIDTH-1:0]     s_axis_tx_req_queue,
    input  wire [REQ_TAG_WIDTH-1:0]         s_axis_tx_req_tag,
    input  wire [AXIS_TX_DEST_WIDTH-1:0]    s_axis_tx_req_dest,
    input  wire                             s_axis_tx_req_valid,
    output wire                             s_axis_tx_req_ready,

    /*
     * Transmit request status output
     */
    output wire [DMA_CLIENT_LEN_WIDTH-1:0]  m_axis_tx_req_status_len,
    output wire [REQ_TAG_WIDTH-1:0]         m_axis_tx_req_status_tag,
    output wire                             m_axis_tx_req_status_valid,

    /*
     * Descriptor request output
     */
    output wire [QUEUE_INDEX_WIDTH-1:0]     m_axis_desc_req_queue,
    output wire [DESC_REQ_TAG_WIDTH-1:0]    m_axis_desc_req_tag,
    output wire                             m_axis_desc_req_valid,
    input  wire                             m_axis_desc_req_ready,

    /*
     * Descriptor request status input
     */
    input  wire [QUEUE_INDEX_WIDTH-1:0]     s_axis_desc_req_status_queue,
    input  wire [QUEUE_PTR_WIDTH-1:0]       s_axis_desc_req_status_ptr,
    input  wire [CQN_WIDTH-1:0]             s_axis_desc_req_status_cpl,
    input  wire [DESC_REQ_TAG_WIDTH-1:0]    s_axis_desc_req_status_tag,
    input  wire                             s_axis_desc_req_status_empty,
    input  wire                             s_axis_desc_req_status_error,
    input  wire                             s_axis_desc_req_status_valid,

    /*
     * Descriptor data input
     */
    input  wire [AXIS_DESC_DATA_WIDTH-1:0]  s_axis_desc_tdata,
    input  wire [AXIS_DESC_KEEP_WIDTH-1:0]  s_axis_desc_tkeep,
    input  wire                             s_axis_desc_tvalid,
    output wire                             s_axis_desc_tready,
    input  wire                             s_axis_desc_tlast,
    input  wire [DESC_REQ_TAG_WIDTH-1:0]    s_axis_desc_tid,
    input  wire                             s_axis_desc_tuser,

    /*
     * Completion request output
     */
    output wire [CQN_WIDTH-1:0]             m_axis_cpl_req_queue,
    output wire [CPL_REQ_TAG_WIDTH-1:0]     m_axis_cpl_req_tag,
    output wire [CPL_SIZE*8-1:0]            m_axis_cpl_req_data,
    output wire                             m_axis_cpl_req_valid,
    input  wire                             m_axis_cpl_req_ready,

    /*
     * Completion request status input
     */
    input  wire [CPL_REQ_TAG_WIDTH-1:0]     s_axis_cpl_req_status_tag,
    input  wire                             s_axis_cpl_req_status_full,
    input  wire                             s_axis_cpl_req_status_error,
    input  wire                             s_axis_cpl_req_status_valid,

    /*
     * DMA read descriptor output
     */
    output wire [DMA_ADDR_WIDTH-1:0]        m_axis_dma_read_desc_dma_addr,
    output wire [RAM_ADDR_WIDTH-1:0]        m_axis_dma_read_desc_ram_addr,
    output wire [DMA_LEN_WIDTH-1:0]         m_axis_dma_read_desc_len,
    output wire [DMA_TAG_WIDTH-1:0]         m_axis_dma_read_desc_tag,
    output wire                             m_axis_dma_read_desc_valid,
    input  wire                             m_axis_dma_read_desc_ready,

    /*
     * DMA read descriptor status input
     */
    input  wire [DMA_TAG_WIDTH-1:0]         s_axis_dma_read_desc_status_tag,
    input  wire [3:0]                       s_axis_dma_read_desc_status_error,
    input  wire                             s_axis_dma_read_desc_status_valid,

    /*
     * Transmit descriptor output
     */
    output wire [RAM_ADDR_WIDTH-1:0]        m_axis_tx_desc_addr,
    output wire [DMA_CLIENT_LEN_WIDTH-1:0]  m_axis_tx_desc_len,
    output wire [DMA_CLIENT_TAG_WIDTH-1:0]  m_axis_tx_desc_tag,
    output wire [AXIS_TX_ID_WIDTH-1:0]      m_axis_tx_desc_id,
    output wire [AXIS_TX_DEST_WIDTH-1:0]    m_axis_tx_desc_dest,
    output wire [AXIS_TX_USER_WIDTH-1:0]    m_axis_tx_desc_user,
    output wire                             m_axis_tx_desc_valid,
    input  wire                             m_axis_tx_desc_ready,

    /*
     * Transmit descriptor status input
     */
    input  wire [DMA_CLIENT_TAG_WIDTH-1:0]  s_axis_tx_desc_status_tag,
    input  wire [3:0]                       s_axis_tx_desc_status_error,
    input  wire                             s_axis_tx_desc_status_valid,

    /*
     * Transmit checksum command output
     */
    output wire                             m_axis_tx_csum_cmd_csum_enable,
    output wire [7:0]                       m_axis_tx_csum_cmd_csum_start,
    output wire [7:0]                       m_axis_tx_csum_cmd_csum_offset,
    output wire                             m_axis_tx_csum_cmd_valid,
    input  wire                             m_axis_tx_csum_cmd_ready,

    /*
     * Transmit completion input
     */
    input  wire [TX_TAG_WIDTH-1:0]          s_axis_tx_cpl_tag,
    input  wire [PTP_TS_WIDTH-1:0]          s_axis_tx_cpl_ts,
    input  wire                             s_axis_tx_cpl_valid,
    output wire                             s_axis_tx_cpl_ready,

    /*
     * Configuration
     */
    input  wire                             enable
);

parameter CL_DESC_TABLE_SIZE = $clog2(DESC_TABLE_SIZE);
parameter DESC_PTR_MASK = {CL_DESC_TABLE_SIZE{1'b1}};

parameter CL_MAX_TX_SIZE = $clog2(MAX_TX_SIZE);
parameter CL_TX_BUFFER_SIZE = $clog2(TX_BUFFER_SIZE);
parameter TX_BUFFER_PTR_MASK = {CL_TX_BUFFER_SIZE{1'b1}};
parameter TX_BUFFER_PTR_MASK_LOWER = {$clog2(TX_BUFFER_STEP_SIZE){1'b1}};
parameter TX_BUFFER_PTR_MASK_UPPER = TX_BUFFER_PTR_MASK & ~TX_BUFFER_PTR_MASK_LOWER;

parameter CL_MAX_DESC_REQ = $clog2(MAX_DESC_REQ);
parameter PKT_LEN = 1024;
parameter PKT_WIDTH = $clog2(PKT_LEN);
parameter PIPE_LEN = 20;

// bus width assertions
initial begin
    if (DMA_TAG_WIDTH < CL_DESC_TABLE_SIZE) begin
        $error("Error: DMA tag width insufficient for descriptor table size (instance %m)");
        $finish;
    end

    if (DMA_CLIENT_TAG_WIDTH < CL_DESC_TABLE_SIZE) begin
        $error("Error: DMA client tag width insufficient for descriptor table size (instance %m)");
        $finish;
    end

    if (DESC_REQ_TAG_WIDTH < REQ_TAG_WIDTH) begin
        $error("Error: DESC_REQ_TAG_WIDTH must be at least REQ_TAG_WIDTH (instance %m)");
        $finish;
    end

    if (CPL_REQ_TAG_WIDTH < CL_DESC_TABLE_SIZE) begin
        $error("Error: CPL_REQ_TAG_WIDTH must be at least $clog2(DESC_TABLE_SIZE) (instance %m)");
        $finish;
    end

    if (RAM_ADDR_WIDTH < CL_TX_BUFFER_SIZE) begin
        $error("Error: RAM_ADDR_WIDTH insufficient for buffer size (instance %m)");
        $finish;
    end

    if (TX_TAG_WIDTH < CL_DESC_TABLE_SIZE+1) begin
        $error("Error: TX_TAG_WIDTH insufficient for requested descriptor table size (instance %m)");
        $finish;
    end
end

reg s_axis_tx_req_ready_reg = 1'b0, s_axis_tx_req_ready_next;

reg [DMA_CLIENT_LEN_WIDTH-1:0] m_axis_tx_req_status_len_reg = {DMA_CLIENT_LEN_WIDTH{1'b0}}, m_axis_tx_req_status_len_next;
reg [REQ_TAG_WIDTH-1:0] m_axis_tx_req_status_tag_reg = {REQ_TAG_WIDTH{1'b0}}, m_axis_tx_req_status_tag_next;
reg m_axis_tx_req_status_valid_reg = 1'b0, m_axis_tx_req_status_valid_next;

reg [QUEUE_INDEX_WIDTH-1:0] m_axis_desc_req_queue_reg = {QUEUE_INDEX_WIDTH{1'b0}}, m_axis_desc_req_queue_next;
reg [DESC_REQ_TAG_WIDTH-1:0] m_axis_desc_req_tag_reg = {DESC_REQ_TAG_WIDTH{1'b0}}, m_axis_desc_req_tag_next;
reg m_axis_desc_req_valid_reg = 1'b0, m_axis_desc_req_valid_next;

reg s_axis_desc_tready_reg = 1'b0, s_axis_desc_tready_next;

reg [CQN_WIDTH-1:0] m_axis_cpl_req_queue_reg = {CQN_WIDTH{1'b0}}, m_axis_cpl_req_queue_next;
reg [CPL_REQ_TAG_WIDTH-1:0] m_axis_cpl_req_tag_reg = {CPL_REQ_TAG_WIDTH{1'b0}}, m_axis_cpl_req_tag_next;
reg [CPL_SIZE*8-1:0] m_axis_cpl_req_data_reg = {CPL_SIZE*8{1'b0}}, m_axis_cpl_req_data_next;
reg m_axis_cpl_req_valid_reg = 1'b0, m_axis_cpl_req_valid_next;

reg [RAM_ADDR_WIDTH-1:0] m_axis_tx_desc_addr_reg = {RAM_ADDR_WIDTH{1'b0}}, m_axis_tx_desc_addr_next;
reg [DMA_CLIENT_LEN_WIDTH-1:0] m_axis_tx_desc_len_reg = {DMA_CLIENT_LEN_WIDTH{1'b0}}, m_axis_tx_desc_len_next;
reg [DMA_CLIENT_TAG_WIDTH-1:0] m_axis_tx_desc_tag_reg = {DMA_CLIENT_TAG_WIDTH{1'b0}}, m_axis_tx_desc_tag_next;
reg [AXIS_TX_ID_WIDTH-1:0] m_axis_tx_desc_id_reg = 0, m_axis_tx_desc_id_next;
reg [AXIS_TX_DEST_WIDTH-1:0] m_axis_tx_desc_dest_reg = 0, m_axis_tx_desc_dest_next;
reg [AXIS_TX_USER_WIDTH-1:0] m_axis_tx_desc_user_reg = 0, m_axis_tx_desc_user_next;
reg m_axis_tx_desc_valid_reg = 1'b0, m_axis_tx_desc_valid_next;

reg m_axis_tx_csum_cmd_csum_enable_reg = 1'b0, m_axis_tx_csum_cmd_csum_enable_next;
reg [7:0] m_axis_tx_csum_cmd_csum_start_reg = 7'd0, m_axis_tx_csum_cmd_csum_start_next;
reg [7:0] m_axis_tx_csum_cmd_csum_offset_reg = 7'd0, m_axis_tx_csum_cmd_csum_offset_next;
reg m_axis_tx_csum_cmd_valid_reg = 1'b0, m_axis_tx_csum_cmd_valid_next;

reg s_axis_tx_cpl_ready_reg = 1'b0, s_axis_tx_cpl_ready_next;

reg [CL_TX_BUFFER_SIZE+1-1:0] buf_wr_ptr_reg = 0, buf_wr_ptr_next;
reg [CL_TX_BUFFER_SIZE+1-1:0] buf_rd_ptr_reg = 0, buf_rd_ptr_next;

reg desc_start_reg = 1'b1, desc_start_next;
reg [DMA_CLIENT_LEN_WIDTH-1:0] desc_len_reg = {DMA_CLIENT_LEN_WIDTH{1'b0}}, desc_len_next;

reg data_rest_send_vld_reg = 1'b0, data_rest_send_vld_next;
reg [TX_TAG_WIDTH-1:0] data_rest_send_tag_reg = {TX_TAG_WIDTH{1'b0}}, data_rest_send_tag_next;
reg [PIPE_LEN-1:0] data_rest_send_pipe_reg = {PIPE_LEN{1'b0}};
reg data_rest_send_pipe_next;

reg [REQ_TAG_WIDTH-1:0] early_tx_req_status_tag_reg = {REQ_TAG_WIDTH{1'b0}}, early_tx_req_status_tag_next;
reg early_tx_req_status_valid_reg = 1'b0, early_tx_req_status_valid_next;

reg [DMA_CLIENT_LEN_WIDTH-1:0] finish_tx_req_status_len_reg = {DMA_CLIENT_LEN_WIDTH{1'b0}}, finish_tx_req_status_len_next;
reg [REQ_TAG_WIDTH-1:0] finish_tx_req_status_tag_reg = {REQ_TAG_WIDTH{1'b0}}, finish_tx_req_status_tag_next;
reg finish_tx_req_status_valid_reg = 1'b0, finish_tx_req_status_valid_next;

reg [16-1:0] desc_valid_cnt = 0, desc_valid_cnt_next;

reg [CL_MAX_DESC_REQ+1-1:0] active_desc_req_count_reg = 0;
reg inc_active_desc_req;
reg dec_active_desc_req_1;
reg dec_active_desc_req_2;

reg [DESC_TABLE_SIZE-1:0] desc_table_active = 0;
reg [DESC_TABLE_SIZE-1:0] desc_table_invalid = 0;
reg [DESC_TABLE_SIZE-1:0] desc_table_desc_fetched = 0;
reg [DESC_TABLE_SIZE-1:0] desc_table_data_fetched = 0;
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg desc_table_tx_done_a[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg desc_table_tx_done_b[DESC_TABLE_SIZE-1:0];
reg [DESC_TABLE_SIZE-1:0] desc_table_cpl_write_done = 0;
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [REQ_TAG_WIDTH-1:0] desc_table_tag[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [QUEUE_INDEX_WIDTH-1:0] desc_table_queue[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [QUEUE_PTR_WIDTH-1:0] desc_table_queue_ptr[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [CQN_WIDTH-1:0] desc_table_cpl_queue[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [AXIS_TX_DEST_WIDTH-1:0] desc_table_dest[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [6:0] desc_table_csum_start[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [7:0] desc_table_csum_offset[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg desc_table_csum_enable[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [DMA_CLIENT_LEN_WIDTH-1:0] desc_table_len[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [CL_TX_BUFFER_SIZE+1-1:0] desc_table_buf_ptr[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [PTP_TS_WIDTH-1:0] desc_table_ptp_ts[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg desc_table_read_commit[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [DESC_TABLE_DMA_OP_COUNT_WIDTH-1:0] desc_table_read_count_start[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [DESC_TABLE_DMA_OP_COUNT_WIDTH-1:0] desc_table_read_count_finish[DESC_TABLE_SIZE-1:0];

(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [8-1:0] desc_table_op_code[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [32-1:0] desc_table_total_len[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [64-1:0] desc_table_laddr[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] desc_table_dst_qpn[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [16-1:0] desc_table_src_port[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [48-1:0] desc_table_rmac[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [32-1:0] desc_table_rip[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [64-1:0] desc_table_raddr[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [32-1:0] desc_table_finished_len[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [RAM_ADDR_WIDTH-1:0] desc_table_buf_ptr_start[DESC_TABLE_SIZE-1:0];
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] desc_table_pkt_cnt[DESC_TABLE_SIZE-1:0];     
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] desc_table_total_pkt[DESC_TABLE_SIZE-1:0]; 
//(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
//reg [24-1:0] desc_table_fetched_cnt[DESC_TABLE_SIZE-1:0]; 
(* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
reg [24-1:0] desc_table_tx_cpl_cnt[DESC_TABLE_SIZE-1:0]; 


reg [CL_DESC_TABLE_SIZE+1-1:0] desc_table_start_ptr_reg = 0;
reg [QUEUE_INDEX_WIDTH-1:0] desc_table_start_queue;
reg [REQ_TAG_WIDTH-1:0] desc_table_start_tag;
reg [AXIS_TX_DEST_WIDTH-1:0] desc_table_start_dest;
reg desc_table_start_en;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_dequeue_ptr;
reg [QUEUE_PTR_WIDTH-1:0] desc_table_dequeue_queue_ptr;
reg [CQN_WIDTH-1:0] desc_table_dequeue_cpl_queue;
reg desc_table_dequeue_invalid;
reg desc_table_dequeue_en;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_desc_ctrl_ptr;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_desc_ctrl_ptr1;
reg [CL_TX_BUFFER_SIZE+1-1:0] desc_table_desc_ctrl_buf_ptr;
reg [CL_TX_BUFFER_SIZE+1-1:0] desc_table_desc_ctrl_buf_ptr1;
reg [6:0] desc_table_desc_ctrl_csum_start;
reg [7:0] desc_table_desc_ctrl_csum_offset;
reg desc_table_desc_ctrl_csum_enable;
reg desc_table_desc_ctrl_en,desc_table_desc_ctrl_en1;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_desc_fetched_ptr;
reg [DMA_CLIENT_LEN_WIDTH-1:0] desc_table_desc_fetched_len;
reg desc_table_desc_fetched_en;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_desc_latched_ptr;
reg desc_table_desc_latched_en;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_data_fetched_ptr;
reg desc_table_data_fetched_en;
reg [CL_DESC_TABLE_SIZE+1-1:0] desc_table_tx_start_ptr_reg = 0;
reg desc_table_tx_start_en,desc_table_tx_start_en1;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_tx_dma_finish_ptr;
reg desc_table_tx_dma_finish_en;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_tx_finish_ptr;
reg [PTP_TS_WIDTH-1:0] desc_table_tx_finish_ts;
reg desc_table_tx_finish_en;
reg [CL_DESC_TABLE_SIZE+1-1:0] desc_table_cpl_enqueue_start_ptr_reg = 0;
reg desc_table_cpl_enqueue_start_en;
reg [CL_DESC_TABLE_SIZE-1:0] desc_table_cpl_write_done_ptr;
reg desc_table_cpl_write_done_en;
reg [CL_DESC_TABLE_SIZE+1-1:0] desc_table_finish_ptr_reg = 0;
reg desc_table_finish_en;
reg [CL_DESC_TABLE_SIZE+1-1:0] desc_table_read_start_ptr;
reg desc_table_read_start_commit;
reg desc_table_read_start_init;
reg desc_table_read_start_en,desc_table_read_start_en1;
reg [CL_DESC_TABLE_SIZE+1-1:0] desc_table_read_finish_ptr;
reg desc_table_read_finish_en;
reg desc_table_tx_cpl_cnt_en;

reg [8  -1:0] desc_op_code      ;
reg [32 -1:0] desc_dma_total_len;
reg [64 -1:0] desc_laddr        ;
reg [24 -1:0] desc_dst_qpn      ;
reg [16 -1:0] desc_src_port     ;
reg [48 -1:0] desc_rmac         ;
reg [32 -1:0] desc_rip          ;
reg [64 -1:0] desc_raddr        ;

reg [RAM_ADDR_WIDTH -1:0] desc_dma_start_ptr;
reg [32 -1:0] desc_dma_finish_len  ;
reg [32 -1:0] desc_dma_rest_len    ;
reg [24 -1:0] desc_dma_total_pkt   ;
reg [24 -1:0] desc_dma_pkt_cnt     ;
//reg [24 -1:0] desc_dma_fetched_cnt ;
reg [24 -1:0] desc_tx_cpl_cnt      ;
reg [32 -1:0] temp_len, temp_len1  ;
reg [32 -1:0] diff  ;
reg rest_ready_send_flag           ;

// internal datapath
reg  [DMA_ADDR_WIDTH-1:0]  m_axis_dma_read_desc_dma_addr_int;
reg  [RAM_ADDR_WIDTH-1:0]  m_axis_dma_read_desc_ram_addr_int;
reg  [DMA_LEN_WIDTH-1:0]   m_axis_dma_read_desc_len_int;
reg  [DMA_TAG_WIDTH-1:0]   m_axis_dma_read_desc_tag_int;
reg                        m_axis_dma_read_desc_valid_int;
reg                        m_axis_dma_read_desc_ready_int_reg = 1'b0;
wire                       m_axis_dma_read_desc_ready_int_early;

reg temp;
reg [32-1:0] temp0,temp1,temp2,temp3,temp4,temp5;

assign s_axis_tx_req_ready = s_axis_tx_req_ready_reg;

assign m_axis_tx_req_status_len = m_axis_tx_req_status_len_reg;
assign m_axis_tx_req_status_tag = m_axis_tx_req_status_tag_reg;
assign m_axis_tx_req_status_valid = m_axis_tx_req_status_valid_reg;

assign m_axis_desc_req_queue = m_axis_desc_req_queue_reg;
assign m_axis_desc_req_tag = m_axis_desc_req_tag_reg;
assign m_axis_desc_req_valid = m_axis_desc_req_valid_reg;

assign s_axis_desc_tready = s_axis_desc_tready_reg;

assign m_axis_cpl_req_queue = m_axis_cpl_req_queue_reg;
assign m_axis_cpl_req_tag = m_axis_cpl_req_tag_reg;
assign m_axis_cpl_req_data = m_axis_cpl_req_data_reg;
assign m_axis_cpl_req_valid = m_axis_cpl_req_valid_reg;

assign m_axis_tx_desc_addr = m_axis_tx_desc_addr_reg;
assign m_axis_tx_desc_len = m_axis_tx_desc_len_reg;
assign m_axis_tx_desc_tag = m_axis_tx_desc_tag_reg;
assign m_axis_tx_desc_id = m_axis_tx_desc_id_reg;
assign m_axis_tx_desc_dest = m_axis_tx_desc_dest_reg;
assign m_axis_tx_desc_user = m_axis_tx_desc_user_reg;
assign m_axis_tx_desc_valid = m_axis_tx_desc_valid_reg;

assign m_axis_tx_csum_cmd_csum_enable = m_axis_tx_csum_cmd_csum_enable_reg;
assign m_axis_tx_csum_cmd_csum_start = m_axis_tx_csum_cmd_csum_start_reg;
assign m_axis_tx_csum_cmd_csum_offset = m_axis_tx_csum_cmd_csum_offset_reg;
assign m_axis_tx_csum_cmd_valid = m_axis_tx_csum_cmd_valid_reg;

assign s_axis_tx_cpl_ready = s_axis_tx_cpl_ready_reg;

integer i;

initial begin
    for (i = 0; i < DESC_TABLE_SIZE; i = i + 1) begin
        desc_table_tx_done_a[i] = 0;
        desc_table_tx_done_b[i] = 0;
        desc_table_tag[i] = 0;
        desc_table_queue[i] = 0;
        desc_table_queue_ptr[i] = 0;
        desc_table_cpl_queue[i] = 0;
        desc_table_dest[i] = 0;
        desc_table_csum_start[i] = 0;
        desc_table_csum_offset[i] = 0;
        desc_table_csum_enable[i] = 0;

        desc_table_total_pkt[i] = 0;
        //desc_table_fetched_cnt[i] = 0;
        desc_table_pkt_cnt[i] = 0;   
        desc_table_finished_len[i] = 0; 
        desc_table_buf_ptr_start[i] = 0;   
        desc_table_tx_cpl_cnt[i] = 0;
        
        desc_table_op_code[i] = 0;        
        desc_table_total_len[i] = 0;        
        desc_table_laddr[i] = 0;       
        desc_table_dst_qpn[i] = 0;       
        desc_table_src_port[i] = 0;        
        desc_table_rmac[i] = 0;       
        desc_table_rip[i] = 0;       
        desc_table_raddr[i] = 0; 
        
        desc_table_len[i] = 0;
        desc_table_buf_ptr[i] = 0;
        desc_table_ptp_ts[i] = 0;
        desc_table_read_commit[i] = 0;
        desc_table_read_count_start[i] = 0;
        desc_table_read_count_finish[i] = 0;
    end
end

always @* begin
    s_axis_tx_req_ready_next = 1'b0;

    m_axis_tx_req_status_len_next = m_axis_tx_req_status_len_reg;
    m_axis_tx_req_status_tag_next = m_axis_tx_req_status_tag_reg;
    m_axis_tx_req_status_valid_next = 1'b0;

    m_axis_desc_req_queue_next = m_axis_desc_req_queue_reg;
    m_axis_desc_req_tag_next = m_axis_desc_req_tag_reg;
    m_axis_desc_req_valid_next = m_axis_desc_req_valid_reg && !m_axis_desc_req_ready;

    s_axis_desc_tready_next = 1'b0;

    m_axis_cpl_req_queue_next = m_axis_cpl_req_queue_reg;
    m_axis_cpl_req_tag_next = m_axis_cpl_req_tag_reg;
    m_axis_cpl_req_data_next = m_axis_cpl_req_data_reg;
    m_axis_cpl_req_valid_next = m_axis_cpl_req_valid_reg && !m_axis_cpl_req_ready;

    m_axis_tx_desc_addr_next = m_axis_tx_desc_addr_reg;
    m_axis_tx_desc_len_next = m_axis_tx_desc_len_reg;
    m_axis_tx_desc_tag_next = m_axis_tx_desc_tag_reg;
    m_axis_tx_desc_id_next = m_axis_tx_desc_id_reg;
    m_axis_tx_desc_dest_next = m_axis_tx_desc_dest_reg;
    m_axis_tx_desc_user_next = m_axis_tx_desc_user_reg;
    m_axis_tx_desc_valid_next = m_axis_tx_desc_valid_reg && !m_axis_tx_desc_ready;

    m_axis_tx_csum_cmd_csum_enable_next = m_axis_tx_csum_cmd_csum_enable_reg;
    m_axis_tx_csum_cmd_csum_start_next = m_axis_tx_csum_cmd_csum_start_reg;
    m_axis_tx_csum_cmd_csum_offset_next = m_axis_tx_csum_cmd_csum_offset_reg;
    m_axis_tx_csum_cmd_valid_next = m_axis_tx_csum_cmd_valid_reg && !m_axis_tx_csum_cmd_ready;

    s_axis_tx_cpl_ready_next = 1'b0;

    buf_wr_ptr_next = buf_wr_ptr_reg;
    buf_rd_ptr_next = buf_rd_ptr_reg;

    desc_start_next = desc_start_reg;
    desc_len_next = desc_len_reg;
    data_rest_send_vld_next = data_rest_send_vld_reg;
    data_rest_send_tag_next = data_rest_send_tag_reg;
    data_rest_send_pipe_next = 1'b0;

    early_tx_req_status_tag_next = early_tx_req_status_tag_reg;
    early_tx_req_status_valid_next = early_tx_req_status_valid_reg;

    finish_tx_req_status_len_next = finish_tx_req_status_len_reg;
    finish_tx_req_status_tag_next = finish_tx_req_status_tag_reg;
    finish_tx_req_status_valid_next = finish_tx_req_status_valid_reg;

    inc_active_desc_req = 1'b0;
    dec_active_desc_req_1 = 1'b0;
    dec_active_desc_req_2 = 1'b0;

    desc_table_start_tag = s_axis_tx_req_tag;
    desc_table_start_queue = s_axis_tx_req_queue;
    desc_table_start_dest = 0;
    desc_table_start_en = 1'b0;
    desc_table_dequeue_ptr = s_axis_desc_req_status_tag;
    desc_table_dequeue_queue_ptr = s_axis_desc_req_status_ptr;
    desc_table_dequeue_cpl_queue = s_axis_desc_req_status_cpl;
    desc_table_dequeue_invalid = 1'b0;
    desc_table_dequeue_en = 1'b0;
    desc_table_desc_ctrl_ptr = s_axis_desc_tid & DESC_PTR_MASK;
    desc_table_desc_ctrl_ptr1 = data_rest_send_tag_reg & DESC_PTR_MASK;
    desc_table_desc_ctrl_buf_ptr = buf_wr_ptr_reg;
    desc_table_desc_ctrl_buf_ptr1 = buf_wr_ptr_reg;
    if (TX_CHECKSUM_ENABLE) begin
        desc_table_desc_ctrl_csum_start = s_axis_desc_tdata[23:16];
        desc_table_desc_ctrl_csum_offset = s_axis_desc_tdata[30:24];
        desc_table_desc_ctrl_csum_enable = s_axis_desc_tdata[31];
    end else begin
        desc_table_desc_ctrl_csum_start = 0;
        desc_table_desc_ctrl_csum_offset = 0;
        desc_table_desc_ctrl_csum_enable = 0;
    end
    desc_table_desc_ctrl_en = 1'b0;
    desc_table_desc_ctrl_en1 = 1'b0;
    desc_table_desc_fetched_ptr = s_axis_desc_tid & DESC_PTR_MASK;
    desc_table_desc_fetched_len = desc_len_reg + s_axis_desc_tdata[63:32];
    desc_table_desc_fetched_en = 1'b0;
    desc_table_desc_latched_ptr = desc_table_tx_start_ptr_reg & DESC_PTR_MASK;
    desc_table_desc_latched_en = 1'b0;
    desc_table_data_fetched_ptr = s_axis_dma_read_desc_status_tag & DESC_PTR_MASK;
    desc_table_data_fetched_en = 1'b0;
    desc_table_tx_start_en = 1'b0;
    desc_table_tx_start_en1 = 1'b0;
    desc_table_tx_dma_finish_ptr = s_axis_tx_desc_status_tag;
    desc_table_tx_dma_finish_en = 1'b0;
    desc_table_tx_finish_ptr = s_axis_tx_cpl_tag;
    desc_table_tx_finish_ts = s_axis_tx_cpl_ts;
    desc_table_tx_finish_en = 1'b0;
    desc_table_cpl_enqueue_start_en = 1'b0;
    desc_table_cpl_write_done_ptr = s_axis_cpl_req_status_tag & DESC_PTR_MASK;
    desc_table_cpl_write_done_en = 1'b0;
    desc_table_finish_en = 1'b0;
    desc_table_read_start_ptr = s_axis_desc_tid;
    desc_table_read_start_commit = 1'b0;
    desc_table_read_start_init = 1'b0;
    desc_table_read_start_en = 1'b0;
    desc_table_read_start_en1 = 1'b0;
    desc_table_read_finish_ptr = s_axis_dma_read_desc_status_tag;
    desc_table_read_finish_en = 1'b0;
    desc_table_tx_cpl_cnt_en = 1'b0;

    m_axis_dma_read_desc_dma_addr_int = s_axis_desc_tdata[127:64];
    m_axis_dma_read_desc_ram_addr_int = (buf_wr_ptr_reg & TX_BUFFER_PTR_MASK) + desc_len_reg + TX_BUFFER_OFFSET;
    m_axis_dma_read_desc_len_int = s_axis_desc_tdata[63:32];
    m_axis_dma_read_desc_tag_int = s_axis_desc_tid & DESC_PTR_MASK;
    m_axis_dma_read_desc_valid_int = 1'b0;
    
    desc_valid_cnt_next = desc_valid_cnt;
    
    desc_op_code        = s_axis_desc_tdata[7:0];
    desc_dma_total_len  = s_axis_desc_tdata[63:32];
    desc_laddr          = s_axis_desc_tdata[127:64];
    desc_dst_qpn        = s_axis_desc_tdata[151:128];
    desc_src_port       = s_axis_desc_tdata[175:160];
    desc_rmac           = s_axis_desc_tdata[223:176];
    desc_rip            = s_axis_desc_tdata[255:224];
    desc_raddr          = s_axis_desc_tdata[319:256];
    
    desc_dma_total_pkt = s_axis_desc_tdata[63:32] >> PKT_WIDTH;
    //desc_dma_fetched_cnt = 0;
    desc_dma_finish_len = 0;
    desc_dma_start_ptr = 0;//(buf_wr_ptr_reg & TX_BUFFER_PTR_MASK) + desc_len_reg + TX_BUFFER_OFFSET;
    desc_dma_rest_len = 0;
    desc_dma_pkt_cnt = 0;
    temp_len = 0;
    temp_len1 = 0;

    //temp0 = data_rest_send_tag_reg;
    //temp1 = desc_table_active[data_rest_send_tag_reg & DESC_PTR_MASK];
    //temp3 = desc_table_finished_len[data_rest_send_tag_reg & DESC_PTR_MASK];


    // descriptor fetch
    // wait for transmit request
    s_axis_tx_req_ready_next = enable && active_desc_req_count_reg < MAX_DESC_REQ && !desc_table_active[desc_table_start_ptr_reg & DESC_PTR_MASK] && ($unsigned(desc_table_start_ptr_reg - desc_table_finish_ptr_reg) < DESC_TABLE_SIZE) && (!m_axis_desc_req_valid || m_axis_desc_req_ready);
    if (s_axis_tx_req_ready && s_axis_tx_req_valid) begin
        s_axis_tx_req_ready_next = 1'b0;
 
        // store in descriptor table
        desc_table_start_tag = s_axis_tx_req_tag;
        desc_table_start_queue = s_axis_tx_req_queue;
        desc_table_start_dest = s_axis_tx_req_dest;
        desc_table_start_en = 1'b1;

        // initiate descriptor fetch
        m_axis_desc_req_queue_next = s_axis_tx_req_queue;
        m_axis_desc_req_tag_next = desc_table_start_ptr_reg & DESC_PTR_MASK;
        m_axis_desc_req_valid_next = 1'b1;

        inc_active_desc_req = 1'b1;
    end

    // descriptor fetch
    // wait for queue query response
    if (s_axis_desc_req_status_valid) begin

        // update entry in descriptor table
        desc_table_dequeue_ptr = s_axis_desc_req_status_tag & DESC_PTR_MASK;
        desc_table_dequeue_queue_ptr = s_axis_desc_req_status_ptr;
        desc_table_dequeue_cpl_queue = s_axis_desc_req_status_cpl;
        desc_table_dequeue_invalid = 1'b0;
        desc_table_dequeue_en = 1'b1;

        if (s_axis_desc_req_status_error || s_axis_desc_req_status_empty) begin
            // queue empty or not active

            // invalidate entry
            desc_table_dequeue_invalid = 1'b1;

            // return transmit request completion
            early_tx_req_status_tag_next = desc_table_tag[s_axis_desc_req_status_tag & DESC_PTR_MASK];
            early_tx_req_status_valid_next = 1'b1;

            dec_active_desc_req_1 = 1'b1;
        end else begin
            // descriptor available to dequeue

            // wait for descriptor
        end
    end

    // descriptor processing and DMA request generation
    // TODO descriptor validation?
    s_axis_desc_tready_next = !data_rest_send_vld_reg && m_axis_dma_read_desc_ready_int_early && ($unsigned(buf_wr_ptr_reg - buf_rd_ptr_reg) < TX_BUFFER_SIZE - MAX_TX_SIZE) &&(!s_axis_desc_tlast);
    if (s_axis_desc_tready && s_axis_desc_tvalid) begin
        desc_valid_cnt_next = desc_valid_cnt + 1;
        if (desc_table_active[s_axis_desc_tid & DESC_PTR_MASK]) begin
            if(desc_valid_cnt == 0) begin
                //latch WQE info
                desc_op_code        = s_axis_desc_tdata[7:0];
                desc_dma_total_len  = s_axis_desc_tdata[63:32];
                desc_laddr          = s_axis_desc_tdata[127:64];
                desc_dst_qpn        = s_axis_desc_tdata[151:128];
                desc_src_port       = s_axis_desc_tdata[175:160];
                desc_rmac           = s_axis_desc_tdata[223:176];
                desc_rip            = s_axis_desc_tdata[255:224];
                desc_raddr          = s_axis_desc_tdata[319:256];    
                desc_dma_total_pkt  = s_axis_desc_tdata[63:32] >> PKT_WIDTH;
                desc_dma_start_ptr  = (buf_wr_ptr_reg & TX_BUFFER_PTR_MASK) + desc_len_reg + TX_BUFFER_OFFSET;
                //desc_dma_fetched_cnt = 1;    
                temp_len = (s_axis_desc_tdata[63:32] > PKT_LEN)?PKT_LEN:s_axis_desc_tdata[63:32];      
                desc_dma_finish_len = temp_len;
            end
            
            desc_start_next = 1'b0;
            desc_len_next = desc_len_reg + temp_len;

            if (desc_len_next > MAX_TX_SIZE) begin
                desc_len_next = MAX_TX_SIZE;
            end

            desc_table_read_start_init = desc_start_reg;

            // update entry in descriptor table
            desc_table_desc_ctrl_ptr = s_axis_desc_tid & DESC_PTR_MASK;
            desc_table_desc_ctrl_buf_ptr = buf_wr_ptr_reg;
            if (TX_CHECKSUM_ENABLE) begin
                desc_table_desc_ctrl_csum_start = s_axis_desc_tdata[23:16];
                desc_table_desc_ctrl_csum_offset = s_axis_desc_tdata[30:24];
                desc_table_desc_ctrl_csum_enable = s_axis_desc_tdata[31];
            end
            desc_table_desc_ctrl_en = desc_start_reg;

            // initiate data fetch to onboard RAM
            m_axis_dma_read_desc_dma_addr_int = s_axis_desc_tdata[127:64];
            m_axis_dma_read_desc_ram_addr_int = (buf_wr_ptr_reg & TX_BUFFER_PTR_MASK) + desc_len_reg + TX_BUFFER_OFFSET;
            m_axis_dma_read_desc_len_int = temp_len;
            m_axis_dma_read_desc_tag_int = s_axis_desc_tid & DESC_PTR_MASK;

            desc_table_read_start_ptr = s_axis_desc_tid;

            if (m_axis_dma_read_desc_len_int != 0) begin
                m_axis_dma_read_desc_valid_int = 1'b1;

                // read start
                desc_table_read_start_en = 1'b1;
            end

            if (s_axis_desc_tlast) begin
                // update entry in descriptor table
                desc_table_desc_fetched_ptr = s_axis_desc_tid & DESC_PTR_MASK;
                desc_table_desc_fetched_len = desc_len_next;
                desc_table_desc_fetched_en = 1'b1;

                // read commit
                desc_table_read_start_commit = 1'b1;

                if(desc_table_total_len[s_axis_desc_tid & DESC_PTR_MASK] > PKT_LEN) begin
                    data_rest_send_vld_next = 1'b1;
                    data_rest_send_tag_next = s_axis_desc_tid & DESC_PTR_MASK;
                    data_rest_send_pipe_next = 1'b1;
                end
                else begin
                    data_rest_send_vld_next = 1'b0;
                    data_rest_send_tag_next = 0;    
                    data_rest_send_pipe_next = 1'b0;            
                end 

                // update write pointer
                buf_wr_ptr_next = (buf_wr_ptr_reg + desc_len_next + TX_BUFFER_PTR_MASK_LOWER) & ~TX_BUFFER_PTR_MASK_LOWER;

                if ((buf_wr_ptr_reg & TX_BUFFER_PTR_MASK) + desc_len_next > TX_BUFFER_SIZE - MAX_TX_SIZE) begin
                    buf_wr_ptr_next = ~buf_wr_ptr_reg & ~TX_BUFFER_PTR_MASK;
                end

                dec_active_desc_req_2 = 1'b1;

                desc_start_next = 1'b1;
                desc_len_next = 0;
                desc_valid_cnt_next = 0;
            end
        end
    end
    else if(data_rest_send_vld_reg && !m_axis_dma_read_desc_valid && rest_ready_send_flag) begin
        if (desc_table_active[data_rest_send_tag_reg & DESC_PTR_MASK]) begin
            
            diff = desc_table_total_len[data_rest_send_tag_reg & DESC_PTR_MASK] - desc_table_finished_len[data_rest_send_tag_reg & DESC_PTR_MASK];    
            temp_len1 = (diff > PKT_LEN)?PKT_LEN:diff;
            desc_dma_finish_len = desc_table_finished_len[data_rest_send_tag_reg] + PKT_LEN;
            //desc_dma_pkt_cnt = desc_table_pkt_cnt[data_rest_send_tag_reg & DESC_PTR_MASK] + 1;            
            //desc_dma_fetched_cnt = desc_table_fetched_cnt[data_rest_send_tag_reg & DESC_PTR_MASK] + 1;
            desc_table_desc_ctrl_ptr1 = data_rest_send_tag_reg;
            desc_table_desc_ctrl_buf_ptr1 = buf_wr_ptr_reg;
            desc_table_desc_ctrl_en1 = 1'b1;

            // initiate data fetch to onboard RAM
            m_axis_dma_read_desc_dma_addr_int = desc_table_laddr[data_rest_send_tag_reg & DESC_PTR_MASK] + desc_table_finished_len[data_rest_send_tag_reg & DESC_PTR_MASK];
            m_axis_dma_read_desc_ram_addr_int = (buf_wr_ptr_reg & TX_BUFFER_PTR_MASK)  + TX_BUFFER_OFFSET;
            m_axis_dma_read_desc_len_int = temp_len1;
            m_axis_dma_read_desc_tag_int = data_rest_send_tag_reg & DESC_PTR_MASK;

            desc_table_read_start_ptr = data_rest_send_tag_reg;

            if (m_axis_dma_read_desc_len_int != 0) begin
                m_axis_dma_read_desc_valid_int = 1'b1;

                // read start
                desc_table_read_start_en1 = 1'b1;
            end
            buf_wr_ptr_next = (buf_wr_ptr_reg + temp_len1 + TX_BUFFER_PTR_MASK_LOWER) & ~TX_BUFFER_PTR_MASK_LOWER;

            if ((buf_wr_ptr_reg & TX_BUFFER_PTR_MASK) + temp_len1 > TX_BUFFER_SIZE - MAX_TX_SIZE) begin
                buf_wr_ptr_next = ~buf_wr_ptr_reg & ~TX_BUFFER_PTR_MASK;
            end
            if((desc_table_finished_len[data_rest_send_tag_reg & DESC_PTR_MASK]+temp_len1) < desc_table_total_len[data_rest_send_tag_reg & DESC_PTR_MASK]) begin
                data_rest_send_vld_next = 1'b1;
                data_rest_send_tag_next = data_rest_send_tag_reg;
                data_rest_send_pipe_next = 1'b1;
            end
            else begin
                data_rest_send_vld_next = 1'b0;
                data_rest_send_tag_next = 0;  
                data_rest_send_pipe_next = 1'b0;              
            end 
        end    
    end

    // data fetch completion
    // wait for data fetch completion
    if (s_axis_dma_read_desc_status_valid) begin
        // update entry in descriptor table
        desc_table_data_fetched_ptr = s_axis_dma_read_desc_status_tag & DESC_PTR_MASK;
        desc_table_data_fetched_en = 1'b1;

        // read finish
        desc_table_read_finish_ptr = s_axis_dma_read_desc_status_tag;
        desc_table_read_finish_en = 1'b1;
    end
    
    // transmit start
    // wait for data fetch completion
    if (desc_table_active[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] && desc_table_tx_start_ptr_reg != desc_table_start_ptr_reg) begin
        if (desc_table_invalid[desc_table_tx_start_ptr_reg & DESC_PTR_MASK]) begin
            // invalid entry; skip
            desc_table_tx_start_en = 1'b1;
            
        //end else if (desc_table_data_fetched[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] && !m_axis_tx_desc_valid && (!m_axis_tx_csum_cmd_valid || !TX_CHECKSUM_ENABLE)) begin
        //end else if (desc_table_desc_fetched[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] && desc_table_read_commit[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] && (desc_table_read_count_start[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] == desc_table_read_count_finish[desc_table_tx_start_ptr_reg & DESC_PTR_MASK]) && !m_axis_tx_desc_valid && (!m_axis_tx_csum_cmd_valid || !TX_CHECKSUM_ENABLE)) begin
        end else if (desc_table_data_fetched[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] && desc_table_read_commit[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] && !m_axis_tx_desc_valid && (!m_axis_tx_csum_cmd_valid || !TX_CHECKSUM_ENABLE)) begin
            // update entry in descriptor table
            if(desc_table_total_pkt[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] > (desc_table_pkt_cnt[desc_table_tx_start_ptr_reg & DESC_PTR_MASK]+1)) begin
                desc_table_tx_start_en1 = 1'b1;
            end
            else begin
                desc_table_tx_start_en = 1'b1;
            end
            desc_table_desc_latched_ptr = desc_table_tx_start_ptr_reg & DESC_PTR_MASK;
            temp0 = desc_table_buf_ptr_start[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            temp1 = desc_table_pkt_cnt[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            temp2 = desc_table_total_pkt[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            // initiate transmit operation
            m_axis_tx_desc_addr_next = desc_table_buf_ptr_start[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] + (desc_table_pkt_cnt[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] << PKT_WIDTH);
            m_axis_tx_desc_len_next = desc_table_len[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_tag_next = desc_table_tx_start_ptr_reg & DESC_PTR_MASK;
            m_axis_tx_desc_id_next = desc_table_queue[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_dest_next = desc_table_dest[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next = 0;
            
            //V3  
            m_axis_tx_desc_user_next[225+TX_TAG_WIDTH +: 24] = desc_table_pkt_cnt[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];            
            m_axis_tx_desc_user_next[193+TX_TAG_WIDTH +: 32] = desc_table_finished_len[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next[129+TX_TAG_WIDTH +: 64] = desc_table_raddr[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next[97 +TX_TAG_WIDTH +: 32] = desc_table_rip[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next[49 +TX_TAG_WIDTH +: 48] = desc_table_rmac[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next[33 +TX_TAG_WIDTH +: 16] = desc_table_src_port[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next[9  +TX_TAG_WIDTH +: 24] = desc_table_dst_qpn[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            m_axis_tx_desc_user_next[1  +TX_TAG_WIDTH +: 8 ] = desc_table_op_code[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
            
            m_axis_tx_desc_user_next[1+TX_TAG_WIDTH-1 +: 1] = 1'b1;
            m_axis_tx_desc_user_next[1 +: TX_TAG_WIDTH-1] = desc_table_tx_start_ptr_reg & DESC_PTR_MASK;
            m_axis_tx_desc_user_next[0 +: 1] = 1'b0;
            m_axis_tx_desc_valid_next = 1'b1;

            // send TX checksum command
            if (TX_CHECKSUM_ENABLE) begin
                m_axis_tx_csum_cmd_csum_enable_next = desc_table_csum_enable[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
                m_axis_tx_csum_cmd_csum_start_next = desc_table_csum_start[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
                m_axis_tx_csum_cmd_csum_offset_next = desc_table_csum_start[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] + desc_table_csum_offset[desc_table_tx_start_ptr_reg & DESC_PTR_MASK];
                m_axis_tx_csum_cmd_valid_next = 1'b1;
            end
            desc_dma_pkt_cnt = desc_table_pkt_cnt[desc_table_desc_latched_ptr] + 1;
            desc_table_desc_latched_en = 1'b1;
        end
    end

    // transmit DMA done
    // wait for transmit DMA completion; free buffer space
    if (s_axis_tx_desc_status_valid) begin
        // update entry in descriptor table
        desc_table_tx_dma_finish_ptr = s_axis_tx_desc_status_tag;
        desc_table_tx_dma_finish_en = 1'b1;

        // update read pointer
        buf_rd_ptr_next = (desc_table_buf_ptr[s_axis_tx_desc_status_tag & DESC_PTR_MASK] + desc_table_len[s_axis_tx_desc_status_tag & DESC_PTR_MASK] + TX_BUFFER_PTR_MASK_LOWER) & ~TX_BUFFER_PTR_MASK_LOWER;

        if ((desc_table_buf_ptr[s_axis_tx_desc_status_tag & DESC_PTR_MASK] & TX_BUFFER_PTR_MASK) + desc_table_len[s_axis_tx_desc_status_tag & DESC_PTR_MASK] > TX_BUFFER_SIZE - MAX_TX_SIZE) begin
            buf_rd_ptr_next = ~desc_table_buf_ptr[s_axis_tx_desc_status_tag & DESC_PTR_MASK] & ~TX_BUFFER_PTR_MASK;
        end
    end

    // transmit done
    // wait for transmit completion; store PTP timestamp
    s_axis_tx_cpl_ready_next = 1'b1;
    if (s_axis_tx_cpl_valid && s_axis_tx_cpl_tag[TX_TAG_WIDTH-1]) begin
        if((desc_table_tx_cpl_cnt[s_axis_tx_cpl_tag & DESC_PTR_MASK]+1)== desc_table_total_pkt[s_axis_tx_cpl_tag & DESC_PTR_MASK]) begin
            desc_table_tx_finish_ptr = s_axis_tx_cpl_tag;
            desc_table_tx_finish_ts = s_axis_tx_cpl_ts;
            desc_table_tx_finish_en = 1'b1;
            desc_tx_cpl_cnt = 0;
        end
        else begin
            desc_tx_cpl_cnt = desc_table_tx_cpl_cnt[s_axis_tx_cpl_tag & DESC_PTR_MASK] + 1;
        end
        desc_table_tx_cpl_cnt_en = 1'b1;
    end

    // finish transmit; start completion enqueue
    temp5 = {desc_table_active[7],desc_table_active[6],desc_table_active[5],desc_table_active[4],desc_table_active[3],desc_table_active[2],desc_table_active[1],desc_table_active[0]};
    if (desc_table_active[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK] && desc_table_cpl_enqueue_start_ptr_reg != desc_table_start_ptr_reg && desc_table_cpl_enqueue_start_ptr_reg != desc_table_tx_start_ptr_reg) begin
        if (desc_table_invalid[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK]) begin
            // invalid entry; skip
            desc_table_cpl_enqueue_start_en = 1'b1;
        end else if (desc_table_tx_done_a[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK] != desc_table_tx_done_b[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK] && !m_axis_cpl_req_valid_next) begin
            // update entry in descriptor table
            desc_table_cpl_enqueue_start_en = 1'b1;

            // initiate queue query
            m_axis_cpl_req_queue_next = desc_table_cpl_queue[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK];
            m_axis_cpl_req_tag_next = desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK;
            m_axis_cpl_req_data_next = 0;
            m_axis_cpl_req_data_next[15:0]  = desc_table_queue[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK];
            m_axis_cpl_req_data_next[31:16] = desc_table_queue_ptr[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK];
            m_axis_cpl_req_data_next[47:32] = desc_table_len[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK];
            if (PTP_TS_ENABLE) begin
                //m_axis_cpl_req_data_next[127:64] = desc_table_ptp_ts[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK] >> 16;
                m_axis_cpl_req_data_next[111:64] = desc_table_ptp_ts[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK] >> 16;
            end
            m_axis_cpl_req_data_next[176:168] = desc_table_dest[desc_table_cpl_enqueue_start_ptr_reg & DESC_PTR_MASK];
            m_axis_cpl_req_valid_next = 1'b1;
        end
    end

    // start completion write
    // wait for queue query response
    if (s_axis_cpl_req_status_valid) begin
        // update entry in descriptor table
        desc_table_cpl_write_done_ptr = s_axis_cpl_req_status_tag & DESC_PTR_MASK;
        desc_table_cpl_write_done_en = 1'b1;
    end

    // operation complete
    if (desc_table_active[desc_table_finish_ptr_reg & DESC_PTR_MASK] && desc_table_finish_ptr_reg != desc_table_start_ptr_reg && desc_table_finish_ptr_reg != desc_table_cpl_enqueue_start_ptr_reg && !finish_tx_req_status_valid_reg) begin
        if (desc_table_invalid[desc_table_finish_ptr_reg & DESC_PTR_MASK]) begin
            // invalidate entry in descriptor table
            desc_table_finish_en = 1'b1;
        end else if (desc_table_cpl_write_done[desc_table_finish_ptr_reg & DESC_PTR_MASK]) begin
            // invalidate entry in descriptor table
            desc_table_finish_en = 1'b1;

            // return transmit request completion
            finish_tx_req_status_len_next = desc_table_len[desc_table_finish_ptr_reg & DESC_PTR_MASK];
            finish_tx_req_status_tag_next = desc_table_tag[desc_table_finish_ptr_reg & DESC_PTR_MASK];
            finish_tx_req_status_valid_next = 1'b1;
        end
    end

    // transmit request completion arbitration
    if (early_tx_req_status_valid_next) begin
        m_axis_tx_req_status_len_next = 0;
        m_axis_tx_req_status_tag_next = early_tx_req_status_tag_next;
        m_axis_tx_req_status_valid_next = 1'b1;
        early_tx_req_status_valid_next = 1'b0;
    end else if (finish_tx_req_status_valid_next) begin
        m_axis_tx_req_status_len_next = finish_tx_req_status_len_next;
        m_axis_tx_req_status_tag_next = finish_tx_req_status_tag_next;
        m_axis_tx_req_status_valid_next = 1'b1;
        finish_tx_req_status_valid_next = 1'b0;
    end
end

always @(posedge clk) begin
    s_axis_tx_req_ready_reg <= s_axis_tx_req_ready_next;

    m_axis_tx_req_status_len_reg <= m_axis_tx_req_status_len_next;
    m_axis_tx_req_status_tag_reg <= m_axis_tx_req_status_tag_next;
    m_axis_tx_req_status_valid_reg <= m_axis_tx_req_status_valid_next;

    m_axis_desc_req_queue_reg <= m_axis_desc_req_queue_next;
    m_axis_desc_req_tag_reg <= m_axis_desc_req_tag_next;
    m_axis_desc_req_valid_reg <= m_axis_desc_req_valid_next;

    s_axis_desc_tready_reg <= s_axis_desc_tready_next;

    m_axis_cpl_req_queue_reg <= m_axis_cpl_req_queue_next;
    m_axis_cpl_req_tag_reg <= m_axis_cpl_req_tag_next;
    m_axis_cpl_req_data_reg <= m_axis_cpl_req_data_next;
    m_axis_cpl_req_valid_reg <= m_axis_cpl_req_valid_next;

    m_axis_tx_desc_addr_reg <= m_axis_tx_desc_addr_next;
    m_axis_tx_desc_len_reg <= m_axis_tx_desc_len_next;
    m_axis_tx_desc_tag_reg <= m_axis_tx_desc_tag_next;
    m_axis_tx_desc_id_reg <= m_axis_tx_desc_id_next;
    m_axis_tx_desc_dest_reg <= m_axis_tx_desc_dest_next;
    m_axis_tx_desc_user_reg <= m_axis_tx_desc_user_next;
    m_axis_tx_desc_valid_reg <= m_axis_tx_desc_valid_next;

    s_axis_tx_cpl_ready_reg <= s_axis_tx_cpl_ready_next;

    m_axis_tx_csum_cmd_csum_enable_reg <= m_axis_tx_csum_cmd_csum_enable_next;
    m_axis_tx_csum_cmd_csum_start_reg <= m_axis_tx_csum_cmd_csum_start_next;
    m_axis_tx_csum_cmd_csum_offset_reg <= m_axis_tx_csum_cmd_csum_offset_next;
    m_axis_tx_csum_cmd_valid_reg <= m_axis_tx_csum_cmd_valid_next;

    buf_wr_ptr_reg <= buf_wr_ptr_next;
    buf_rd_ptr_reg <= buf_rd_ptr_next;

    desc_start_reg <= desc_start_next;
    desc_len_reg <= desc_len_next;

    data_rest_send_vld_reg  <= data_rest_send_vld_next;
    data_rest_send_tag_reg  <= data_rest_send_tag_next;
    data_rest_send_pipe_reg <= {data_rest_send_pipe_reg[PIPE_LEN-2:0], data_rest_send_pipe_next};

    early_tx_req_status_tag_reg <= early_tx_req_status_tag_next;
    early_tx_req_status_valid_reg <= early_tx_req_status_valid_next;

    finish_tx_req_status_len_reg <= finish_tx_req_status_len_next;
    finish_tx_req_status_tag_reg <= finish_tx_req_status_tag_next;
    finish_tx_req_status_valid_reg <= finish_tx_req_status_valid_next;

    active_desc_req_count_reg <= active_desc_req_count_reg + inc_active_desc_req - dec_active_desc_req_1 - dec_active_desc_req_2;

    // descriptor table operations
    if (desc_table_start_en) begin
        desc_table_active[desc_table_start_ptr_reg & DESC_PTR_MASK] <= 1'b1;
        desc_table_invalid[desc_table_start_ptr_reg & DESC_PTR_MASK] <= 1'b0;
        desc_table_desc_fetched[desc_table_start_ptr_reg & DESC_PTR_MASK] <= 1'b0;
        desc_table_data_fetched[desc_table_start_ptr_reg & DESC_PTR_MASK] <= 1'b0;
        desc_table_tx_done_a[desc_table_start_ptr_reg & DESC_PTR_MASK] <= desc_table_tx_done_b[desc_table_start_ptr_reg & DESC_PTR_MASK];
        desc_table_cpl_write_done[desc_table_start_ptr_reg & DESC_PTR_MASK] <= 1'b0;
        desc_table_queue[desc_table_start_ptr_reg & DESC_PTR_MASK] <= desc_table_start_queue;
        desc_table_tag[desc_table_start_ptr_reg & DESC_PTR_MASK] <= desc_table_start_tag;
        desc_table_dest[desc_table_start_ptr_reg & DESC_PTR_MASK] <= desc_table_start_dest;
        desc_table_start_ptr_reg <= desc_table_start_ptr_reg + 1;
    end

    if (desc_table_dequeue_en) begin
        desc_table_queue_ptr[desc_table_dequeue_ptr & DESC_PTR_MASK] <= desc_table_dequeue_queue_ptr;
        desc_table_cpl_queue[desc_table_dequeue_ptr & DESC_PTR_MASK] <= desc_table_dequeue_cpl_queue;
        if (desc_table_dequeue_invalid) begin
            desc_table_invalid[desc_table_dequeue_ptr & DESC_PTR_MASK] <= 1'b1;
        end
    end

    if (desc_table_desc_ctrl_en) begin
        desc_table_buf_ptr[desc_table_desc_ctrl_ptr & DESC_PTR_MASK] <= desc_table_desc_ctrl_buf_ptr;
        desc_table_csum_start[desc_table_desc_ctrl_ptr & DESC_PTR_MASK] <= desc_table_desc_ctrl_csum_start;
        desc_table_csum_offset[desc_table_desc_ctrl_ptr & DESC_PTR_MASK] <= desc_table_desc_ctrl_csum_offset;
        desc_table_csum_enable[desc_table_desc_ctrl_ptr & DESC_PTR_MASK] <= desc_table_desc_ctrl_csum_enable;
        //latch WQE info                                                                                                             
        desc_table_op_code[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]     <= desc_op_code;                 
        desc_table_total_len[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]   <= desc_dma_total_len;         
        desc_table_laddr[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]       <= desc_laddr;
        desc_table_dst_qpn[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]     <= desc_dst_qpn;
        desc_table_src_port[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]    <= desc_src_port;
        desc_table_rmac[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]        <= desc_rmac;
        desc_table_rip[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]         <= desc_rip;   
        desc_table_raddr[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]       <= desc_raddr;         
        desc_table_finished_len[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]<= desc_dma_finish_len; 
        desc_table_buf_ptr_start[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]<= desc_dma_start_ptr;
        desc_table_pkt_cnt[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]     <= 0; 
        desc_table_total_pkt[desc_table_desc_ctrl_ptr & DESC_PTR_MASK]   <= desc_dma_total_pkt;   
        //[desc_table_desc_ctrl_ptr & DESC_PTR_MASK] <= desc_dma_fetched_cnt;          
    end        

    if (desc_table_desc_ctrl_en1) begin
        desc_table_finished_len[desc_table_desc_ctrl_ptr1 & DESC_PTR_MASK]<= desc_dma_finish_len; 
        desc_table_buf_ptr[desc_table_desc_ctrl_ptr1 & DESC_PTR_MASK] <= desc_table_desc_ctrl_buf_ptr1;
        //desc_table_fetched_cnt[desc_table_desc_ctrl_ptr1 & DESC_PTR_MASK] <= desc_dma_fetched_cnt;        
    end                                                                                        

    if (desc_table_desc_fetched_en) begin
        desc_table_len[desc_table_desc_fetched_ptr & DESC_PTR_MASK] <= desc_table_desc_fetched_len;
        desc_table_desc_fetched[desc_table_desc_fetched_ptr & DESC_PTR_MASK] <= 1'b1;
    end
        
    if(desc_table_desc_latched_en)begin
        desc_table_pkt_cnt[desc_table_desc_latched_ptr & DESC_PTR_MASK]     <= desc_dma_pkt_cnt; 
    end

    if (desc_table_data_fetched_en) begin
        desc_table_data_fetched[desc_table_data_fetched_ptr & DESC_PTR_MASK] <= 1'b1;
        desc_table_tx_start_ptr_reg <= desc_table_data_fetched_ptr;
    end

    if (desc_table_tx_start_en) begin
        desc_table_data_fetched[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] <= 1'b0;
        desc_table_tx_start_ptr_reg <= desc_table_tx_start_ptr_reg + 1;
    end

    if (desc_table_tx_start_en1) begin
        desc_table_data_fetched[desc_table_tx_start_ptr_reg & DESC_PTR_MASK] <= 1'b0;
    end

    if (desc_table_tx_finish_en) begin
        if (PTP_TS_ENABLE) begin
            desc_table_ptp_ts[desc_table_tx_finish_ptr] <= desc_table_tx_finish_ts;
        end
        desc_table_tx_done_b[desc_table_tx_finish_ptr] <= !desc_table_tx_done_a[desc_table_tx_finish_ptr];
    end

    if (desc_table_cpl_enqueue_start_en) begin
        desc_table_cpl_enqueue_start_ptr_reg <= desc_table_cpl_enqueue_start_ptr_reg + 1;
    end

    if (desc_table_cpl_write_done_en) begin
        desc_table_cpl_write_done[desc_table_cpl_write_done_ptr] <= 1'b1;
    end

    if (desc_table_finish_en) begin
        desc_table_active[desc_table_finish_ptr_reg & DESC_PTR_MASK] <= 1'b0;
        desc_table_finish_ptr_reg <= desc_table_finish_ptr_reg + 1;
    end

    if (desc_table_read_start_en) begin
        desc_table_read_commit[desc_table_read_start_ptr] <= desc_table_read_start_commit;
        if (desc_table_read_start_init) begin
            desc_table_read_count_start[desc_table_read_start_ptr] <= desc_table_read_count_finish[desc_table_read_start_ptr] + 1;
        end else begin
            desc_table_read_count_start[desc_table_read_start_ptr] <= desc_table_read_count_start[desc_table_read_start_ptr] + 1;
        end
    end else if (desc_table_read_start_commit || desc_table_read_start_init) begin
        desc_table_read_commit[desc_table_read_start_ptr] <= desc_table_read_start_commit;
        if (desc_table_read_start_init) begin
            desc_table_read_count_start[desc_table_read_start_ptr] <= desc_table_read_count_finish[desc_table_read_start_ptr];
        end
    end

    if (desc_table_read_start_en1) begin
        desc_table_read_count_start[data_rest_send_tag_reg] <= desc_table_read_count_start[data_rest_send_tag_reg] + 1;
    end   

    if (desc_table_read_finish_en) begin
        desc_table_read_count_finish[desc_table_read_finish_ptr] <= desc_table_read_count_finish[desc_table_read_finish_ptr] + 1;
    end

    if (desc_table_tx_cpl_cnt_en) begin
        desc_table_tx_cpl_cnt[s_axis_tx_cpl_tag & DESC_PTR_MASK] <= desc_tx_cpl_cnt;
    end
    
    if(data_rest_send_pipe_reg[PIPE_LEN-1]) begin
        rest_ready_send_flag <= 1'b1;
    end
    else if(desc_table_desc_ctrl_en1) begin
        rest_ready_send_flag <= 1'b0;
    end

    if (rst) begin
        s_axis_tx_req_ready_reg <= 1'b0;
        m_axis_tx_req_status_valid_reg <= 1'b0;
        m_axis_desc_req_valid_reg <= 1'b0;
        s_axis_desc_tready_reg <= 1'b0;
        m_axis_cpl_req_valid_reg <= 1'b0;
        m_axis_tx_desc_valid_reg <= 1'b0;
        s_axis_tx_cpl_ready_reg <= 1'b0;
        m_axis_tx_csum_cmd_valid_reg <= 1'b0;

        buf_wr_ptr_reg <= 0;
        buf_rd_ptr_reg <= 0;

        data_rest_send_vld_reg <= 1'b0;
        data_rest_send_tag_reg <= 0;
        data_rest_send_pipe_reg <= 0;
        rest_ready_send_flag <= 1'b0;
				
        desc_start_reg <= 1'b1;
        desc_len_reg <= 0;

        early_tx_req_status_valid_reg <= 1'b0;
        finish_tx_req_status_valid_reg <= 1'b0;

        active_desc_req_count_reg <= 0;

        desc_table_active <= 0;
        desc_table_invalid <= 0;
        desc_table_desc_fetched <= 0;
        desc_table_data_fetched <= 0;

        desc_table_start_ptr_reg <= 0;
        desc_table_tx_start_ptr_reg <= 0;
        desc_table_cpl_enqueue_start_ptr_reg <= 0;
        desc_table_finish_ptr_reg <= 0;
    end
end

// output datapath logic
reg [DMA_ADDR_WIDTH-1:0]  m_axis_dma_read_desc_dma_addr_reg  = {DMA_ADDR_WIDTH{1'b0}};
reg [RAM_ADDR_WIDTH-1:0]  m_axis_dma_read_desc_ram_addr_reg  = {RAM_ADDR_WIDTH{1'b0}};
reg [DMA_LEN_WIDTH-1:0]   m_axis_dma_read_desc_len_reg       = {DMA_LEN_WIDTH{1'b0}};
reg [DMA_TAG_WIDTH-1:0]   m_axis_dma_read_desc_tag_reg       = {DMA_TAG_WIDTH{1'b0}};
reg                       m_axis_dma_read_desc_valid_reg     = 1'b0, m_axis_dma_read_desc_valid_next;

reg [DMA_ADDR_WIDTH-1:0]  temp_m_axis_dma_read_desc_dma_addr_reg  = {DMA_ADDR_WIDTH{1'b0}};
reg [RAM_ADDR_WIDTH-1:0]  temp_m_axis_dma_read_desc_ram_addr_reg  = {RAM_ADDR_WIDTH{1'b0}};
reg [DMA_LEN_WIDTH-1:0]   temp_m_axis_dma_read_desc_len_reg       = {DMA_LEN_WIDTH{1'b0}};
reg [DMA_TAG_WIDTH-1:0]   temp_m_axis_dma_read_desc_tag_reg       = {DMA_TAG_WIDTH{1'b0}};
reg                       temp_m_axis_dma_read_desc_valid_reg     = 1'b0, temp_m_axis_dma_read_desc_valid_next;

// datapath control
reg store_axis_int_to_output;
reg store_axis_int_to_temp;
reg store_axis_temp_to_output;

assign m_axis_dma_read_desc_dma_addr  = m_axis_dma_read_desc_dma_addr_reg;
assign m_axis_dma_read_desc_ram_addr  = m_axis_dma_read_desc_ram_addr_reg;
assign m_axis_dma_read_desc_len       = m_axis_dma_read_desc_len_reg;
assign m_axis_dma_read_desc_tag       = m_axis_dma_read_desc_tag_reg;
assign m_axis_dma_read_desc_valid     = m_axis_dma_read_desc_valid_reg;

// enable ready input next cycle if output is ready or the temp reg will not be filled on the next cycle (output reg empty or no input)
assign m_axis_dma_read_desc_ready_int_early = m_axis_dma_read_desc_ready || (!temp_m_axis_dma_read_desc_valid_reg && (!m_axis_dma_read_desc_valid_reg || !m_axis_dma_read_desc_valid_int));

always @* begin
    // transfer sink ready state to source
    m_axis_dma_read_desc_valid_next = m_axis_dma_read_desc_valid_reg;
    temp_m_axis_dma_read_desc_valid_next = temp_m_axis_dma_read_desc_valid_reg;

    store_axis_int_to_output = 1'b0;
    store_axis_int_to_temp = 1'b0;
    store_axis_temp_to_output = 1'b0;

    if (m_axis_dma_read_desc_ready_int_reg) begin
        // input is ready
        if (m_axis_dma_read_desc_ready || !m_axis_dma_read_desc_valid_reg) begin
            // output is ready or currently not valid, transfer data to output
            m_axis_dma_read_desc_valid_next = m_axis_dma_read_desc_valid_int;
            store_axis_int_to_output = 1'b1;
        end else begin
            // output is not ready, store input in temp
            temp_m_axis_dma_read_desc_valid_next = m_axis_dma_read_desc_valid_int;
            store_axis_int_to_temp = 1'b1;
        end
    end else if (m_axis_dma_read_desc_ready) begin
        // input is not ready, but output is ready
        m_axis_dma_read_desc_valid_next = temp_m_axis_dma_read_desc_valid_reg;
        temp_m_axis_dma_read_desc_valid_next = 1'b0;
        store_axis_temp_to_output = 1'b1;
    end
end

always @(posedge clk) begin
    m_axis_dma_read_desc_valid_reg <= m_axis_dma_read_desc_valid_next;
    m_axis_dma_read_desc_ready_int_reg <= m_axis_dma_read_desc_ready_int_early;
    temp_m_axis_dma_read_desc_valid_reg <= temp_m_axis_dma_read_desc_valid_next;

    // datapath
    if (store_axis_int_to_output) begin
        m_axis_dma_read_desc_dma_addr_reg <= m_axis_dma_read_desc_dma_addr_int;
        m_axis_dma_read_desc_ram_addr_reg <= m_axis_dma_read_desc_ram_addr_int;
        m_axis_dma_read_desc_len_reg <= m_axis_dma_read_desc_len_int;
        m_axis_dma_read_desc_tag_reg <= m_axis_dma_read_desc_tag_int;
    end else if (store_axis_temp_to_output) begin
        m_axis_dma_read_desc_dma_addr_reg <= temp_m_axis_dma_read_desc_dma_addr_reg;
        m_axis_dma_read_desc_ram_addr_reg <= temp_m_axis_dma_read_desc_ram_addr_reg;
        m_axis_dma_read_desc_len_reg <= temp_m_axis_dma_read_desc_len_reg;
        m_axis_dma_read_desc_tag_reg <= temp_m_axis_dma_read_desc_tag_reg;
    end

    if (store_axis_int_to_temp) begin
        temp_m_axis_dma_read_desc_dma_addr_reg <= m_axis_dma_read_desc_dma_addr_int;
        temp_m_axis_dma_read_desc_ram_addr_reg <= m_axis_dma_read_desc_ram_addr_int;
        temp_m_axis_dma_read_desc_len_reg <= m_axis_dma_read_desc_len_int;
        temp_m_axis_dma_read_desc_tag_reg <= m_axis_dma_read_desc_tag_int;
    end

    if (rst) begin
        m_axis_dma_read_desc_valid_reg <= 1'b0;
        m_axis_dma_read_desc_ready_int_reg <= 1'b0;
        temp_m_axis_dma_read_desc_valid_reg <= 1'b0;
    end
end
/*
ila_0 u_ila_tx_engine_v3   (
    .clk    ( clk                              ),
    .probe0 ( s_axis_tx_req_queue              ), //[12:0]
    .probe1 ( s_axis_tx_req_valid              ), //[0 :0]     
    .probe2 ( m_axis_desc_req_queue            ), //[12:0]
    .probe3 ( m_axis_desc_req_valid            ), //[0 :0] 
    .probe4 ( s_axis_desc_tdata                ), //[511:0]
    .probe5 ( s_axis_desc_tvalid               ), //[0 :0]     
    .probe6 ( m_axis_dma_read_desc_dma_addr    ), //[63:0]
    .probe7 ( m_axis_dma_read_desc_ram_addr    ), //[16:0] 
    .probe8 ( m_axis_dma_read_desc_len         ), //[15:0]
    .probe9 ( m_axis_dma_read_desc_valid       ), //[0:0] 
    .probe10( m_axis_tx_desc_addr              ), //[16:0]
    .probe11( m_axis_tx_desc_len               ), //[15:0] 
    .probe12( m_axis_tx_desc_user              ), //[264:0]
    .probe13( m_axis_tx_desc_valid             ), //[0:0] 
    .probe14( m_axis_cpl_req_queue             ), //[15:0]
    .probe15( m_axis_cpl_req_valid             )  //[0:0] 
);
*/
endmodule

`resetall
