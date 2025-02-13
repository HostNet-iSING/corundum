
// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * AXI stream sink DMA client
 */
module mqnic_app_if_rx_data_proc_v4 #
(
		parameter IF_COUNT = 1,
		parameter PORTS_PER_IF = 1,
		
    parameter WQE_INDEX_WIDTH = 10,
    
    parameter DMA_IMM_WIDTH = 32,
    parameter RAM_SEL_WIDTH = 4,
    // RAM address width
    parameter RAM_ADDR_WIDTH = 16,
    // DMA address width
    parameter DMA_ADDR_WIDTH = 64,
    // DMA length field width
    parameter DMA_LEN_WIDTH = 20,
    // DMA tag field width
    parameter DMA_TAG_WIDTH = 8,
    // RAM segment count
    parameter SEG_COUNT = 2,
    // RAM segment data width
    parameter SEG_DATA_WIDTH = 64,
    // RAM segment byte enable width
    parameter SEG_BE_WIDTH = SEG_DATA_WIDTH/8,
    // RAM segment address width
    parameter SEG_ADDR_WIDTH = RAM_ADDR_WIDTH-$clog2(SEG_COUNT*SEG_BE_WIDTH),
    // Control register interface address width
    parameter REG_ADDR_WIDTH = 7,
    // Control register interface data width
    parameter REG_DATA_WIDTH = 32,
    // Control register interface byte enable width
    parameter REG_STRB_WIDTH = (REG_DATA_WIDTH/8),
    // Register block base address
    parameter RB_BASE_ADDR = 0,
    // Register block next block address
    parameter RB_NEXT_PTR = 0,
    // Width of AXI stream interfaces in bits
    parameter AXIS_DATA_WIDTH = SEG_DATA_WIDTH*SEG_COUNT/2,
    // Use AXI stream tkeep signal
    parameter AXIS_KEEP_ENABLE = (AXIS_DATA_WIDTH>8),
    // AXI stream tkeep signal width (words per cycle)
    parameter AXIS_KEEP_WIDTH = (AXIS_DATA_WIDTH/8),
    // Use AXI stream tlast signal
    parameter AXIS_LAST_ENABLE = 1,
    // Propagate AXI stream tid signal
    parameter AXIS_ID_ENABLE = 0,
    // AXI stream tid signal width
    parameter AXIS_ID_WIDTH = WQE_INDEX_WIDTH,
    // Propagate AXI stream tdest signal
    parameter AXIS_DEST_ENABLE = 0,
    // AXI stream tdest signal width
    parameter AXIS_DEST_WIDTH = $clog2(PORTS_PER_IF)+4,
    // Propagate AXI stream tuser signal
    parameter AXIS_USER_ENABLE = 1,
    // AXI stream tuser signal width
    parameter AXIS_USER_WIDTH = 1,
    // Width of length field
    parameter LEN_WIDTH = 16,
    // Width of tag field
    parameter TAG_WIDTH = 10
)
(
    input  wire                                 clk,
    input  wire                                 rst,

    /*
     * Control register interface
     */
    input  wire [REG_ADDR_WIDTH-1:0]            reg_wr_addr,
    input  wire [REG_DATA_WIDTH-1:0]            reg_wr_data,
    input  wire [REG_STRB_WIDTH-1:0]            reg_wr_strb,
    input  wire                                 reg_wr_en,
    output wire                                 reg_wr_wait,
    output wire                                 reg_wr_ack,
    input  wire [REG_ADDR_WIDTH-1:0]            reg_rd_addr,
    input  wire                                 reg_rd_en,
    output wire [REG_DATA_WIDTH-1:0]            reg_rd_data,
    output wire                                 reg_rd_wait,
    output wire                                 reg_rd_ack,

    /*
     * AXI stream write data input
     */
    input  wire [AXIS_DATA_WIDTH-1:0]           s_axis_write_data_tdata,
    input  wire [AXIS_KEEP_WIDTH-1:0]           s_axis_write_data_tkeep,
    input  wire                                 s_axis_write_data_tvalid,
    output wire                                 s_axis_write_data_tready,
    input  wire                                 s_axis_write_data_tlast,
    input  wire [AXIS_ID_WIDTH-1:0]             s_axis_write_data_tid,
    input  wire [AXIS_DEST_WIDTH-1:0]           s_axis_write_data_tdest,
    input  wire [AXIS_USER_WIDTH-1:0]           s_axis_write_data_tuser,
    
    /*
     * ACK PACKET interface
     */
    output wire [IF_COUNT*AXIS_DATA_WIDTH-1:0]      m_axis_if_tx_tdata,
    output wire [IF_COUNT*AXIS_KEEP_WIDTH-1:0]      m_axis_if_tx_tkeep,
    output wire [IF_COUNT-1:0]                      m_axis_if_tx_tvalid,
    input  wire [IF_COUNT-1:0]                      m_axis_if_tx_tready,
    output wire [IF_COUNT-1:0]                      m_axis_if_tx_tlast,
    output wire [IF_COUNT*AXIS_ID_WIDTH-1:0]        m_axis_if_tx_tid,
    output wire [IF_COUNT*AXIS_DEST_WIDTH-1:0]      m_axis_if_tx_tdest,
    output wire [IF_COUNT*AXIS_USER_WIDTH-1:0]      m_axis_if_tx_tuser,

    /*
     * RAM interface
     */
    output wire [SEG_COUNT*SEG_BE_WIDTH-1:0]    ram_wr_cmd_be,
    output wire [SEG_COUNT*SEG_ADDR_WIDTH-1:0]  ram_wr_cmd_addr,
    output wire [SEG_COUNT*SEG_DATA_WIDTH-1:0]  ram_wr_cmd_data,
    output wire [SEG_COUNT-1:0]                 ram_wr_cmd_valid,
    input  wire [SEG_COUNT-1:0]                 ram_wr_cmd_ready,
    input  wire [SEG_COUNT-1:0]                 ram_wr_done,

    /*
     * DMA write descriptor output
     */
    output wire [DMA_ADDR_WIDTH-1:0]            m_axis_dma_write_desc_dma_addr,
    output wire [RAM_SEL_WIDTH-1:0]             m_axis_dma_write_desc_ram_sel,
    output wire [RAM_ADDR_WIDTH-1:0]            m_axis_dma_write_desc_ram_addr,
    output wire [DMA_IMM_WIDTH-1:0]             m_axis_dma_write_desc_imm,
    output wire                                 m_axis_dma_write_desc_imm_en,
    output wire [DMA_LEN_WIDTH-1:0]             m_axis_dma_write_desc_len,
    output wire [DMA_TAG_WIDTH-1:0]             m_axis_dma_write_desc_tag,
    output wire                                 m_axis_dma_write_desc_valid,
    input  wire                                 m_axis_dma_write_desc_ready,

    /*
     * DMA write descriptor status input
     */
    input  wire [DMA_TAG_WIDTH-1:0]             s_axis_dma_write_desc_status_tag,
    input  wire [3:0]                           s_axis_dma_write_desc_status_error,
    input  wire                                 s_axis_dma_write_desc_status_valid,

    /*
     * ACK output
     */    
    output wire [WQE_INDEX_WIDTH - 1:0]         m_axis_ack_id   ,
    output wire [24 - 1:0]                      m_axis_ack_psn  ,
    output wire                                 m_axis_ack_valid,
    input  wire                                 m_axis_ack_ready,

    /*
     * Configuration
     */
    input  wire                                 enable,
    input  wire                                 abort
);

localparam RBB = RB_BASE_ADDR & {REG_ADDR_WIDTH{1'b1}};
localparam RDMA_DEST_PORT = 16'D4791;

parameter RAM_WORD_WIDTH = SEG_BE_WIDTH;
parameter RAM_WORD_SIZE = SEG_DATA_WIDTH/RAM_WORD_WIDTH;

parameter AXIS_KEEP_WIDTH_INT = AXIS_KEEP_ENABLE ? AXIS_KEEP_WIDTH : 1;
parameter AXIS_WORD_WIDTH = AXIS_KEEP_WIDTH_INT;
parameter AXIS_WORD_SIZE = AXIS_DATA_WIDTH/AXIS_WORD_WIDTH;

parameter PART_COUNT = SEG_COUNT*SEG_BE_WIDTH / AXIS_KEEP_WIDTH_INT;
parameter PART_COUNT_WIDTH = PART_COUNT > 1 ? $clog2(PART_COUNT) : 1;
parameter PART_OFFSET_WIDTH = AXIS_KEEP_WIDTH_INT > 1 ? $clog2(AXIS_KEEP_WIDTH_INT) : 1;
parameter PARTS_PER_SEG = (SEG_BE_WIDTH + AXIS_KEEP_WIDTH_INT - 1) / AXIS_KEEP_WIDTH_INT;
parameter SEGS_PER_PART = (AXIS_KEEP_WIDTH_INT + SEG_BE_WIDTH - 1) / SEG_BE_WIDTH;

parameter OFFSET_WIDTH = AXIS_KEEP_WIDTH_INT > 1 ? $clog2(AXIS_KEEP_WIDTH_INT) : 1;
parameter OFFSET_MASK = AXIS_KEEP_WIDTH_INT > 1 ? {OFFSET_WIDTH{1'b1}} : 0;
parameter ADDR_MASK = {RAM_ADDR_WIDTH{1'b1}} << $clog2(AXIS_KEEP_WIDTH_INT);
parameter CYCLE_COUNT_WIDTH = LEN_WIDTH - $clog2(AXIS_KEEP_WIDTH_INT) + 1;

parameter STATUS_FIFO_ADDR_WIDTH = 5;
parameter OUTPUT_FIFO_ADDR_WIDTH = 5;

// bus width assertions
initial begin
    if (RAM_WORD_SIZE * SEG_BE_WIDTH != SEG_DATA_WIDTH) begin
        $error("Error: RAM data width not evenly divisble (instance %m)");
        $finish;
    end

    if (AXIS_WORD_SIZE * AXIS_KEEP_WIDTH_INT != AXIS_DATA_WIDTH) begin
        $error("Error: AXI stream data width not evenly divisble (instance %m)");
        $finish;
    end

    if (RAM_WORD_SIZE != AXIS_WORD_SIZE) begin
        $error("Error: word size mismatch (instance %m)");
        $finish;
    end

    if (2**$clog2(RAM_WORD_WIDTH) != RAM_WORD_WIDTH) begin
        $error("Error: RAM word width must be even power of two (instance %m)");
        $finish;
    end

    if (RAM_ADDR_WIDTH != SEG_ADDR_WIDTH+$clog2(SEG_COUNT)+$clog2(SEG_BE_WIDTH)) begin
        $error("Error: RAM_ADDR_WIDTH does not match RAM configuration (instance %m)");
        $finish;
    end

    if (AXIS_DATA_WIDTH > SEG_COUNT*SEG_DATA_WIDTH) begin
        $error("Error: AXI stream interface width must not be wider than RAM interface width (instance %m)");
        $finish;
    end

    if (AXIS_DATA_WIDTH*2**$clog2(PART_COUNT) != SEG_COUNT*SEG_DATA_WIDTH) begin
        $error("Error: AXI stream interface width must be a power of two fraction of RAM interface width (instance %m)");
        $finish;
    end
end

//recv header
reg     [15:0]                          wdata_fifo_tvalid_cnt;
reg     [15:0]                          wdata_fifo_tvalid_cnt_1d;
reg     [47:0]                          dst_mac_addr;
reg     [47:0]                          src_mac_addr;
reg     [15:0]                          mac_protocol_type;
reg     [3:0]                           ip_version;
reg     [3:0]                           ip_header_length;
reg     [7:0]                           ip_reverse0;
reg     [15:0]                          ip_packet_length;
reg     [31:0]                          ip_reverse1;
reg     [31:0]                          ip_reverse2;
reg     [31:0]                          src_ip_addr;
reg     [31:0]                          dst_ip_addr;
reg     [31:0]                          ip_reverse3;
reg     [15:0]                          udp_src_port;
reg     [15:0]                          udp_dst_port;
reg     [15:0]                          udp_length;
reg     [7:0]                           udp_reverse;
reg     [7:0]                           deth_opcode;
reg     [23:0]                          deth_dst_qpn;
reg     [7:0]                           deth_reserve; 
reg     [23:0]                          deth_src_qpn;
reg     [15:0]                          deth_wqe_id  ;
reg     [23:0]                          deth_msn     ;
reg     [23:0]                          deth_psn     ;
reg     [0:0]                           deth_fence   ;
reg     [3:0]                           deth_priority;
reg     [19:0]                          deth_task_id ;    
reg     [63:0]                          deth_vaddr   ;

reg     [32:0]                          dma_data_length;

//state
localparam [1:0]
    STATE_IDLE = 2'd0,
    STATE_RW = 2'd1,
    STATE_DROP_DATA = 2'd2;

reg     [1:0]                           state_reg = STATE_IDLE, state_next;

//cycle
integer i;
reg     [OFFSET_WIDTH:0]                cycle_size;

reg     [RAM_ADDR_WIDTH-1:0]            addr_reg = {RAM_ADDR_WIDTH{1'b0}}, addr_next;
reg     [AXIS_KEEP_WIDTH_INT-1:0]       keep_mask_reg = {AXIS_KEEP_WIDTH_INT{1'b0}}, keep_mask_next;
reg     [OFFSET_WIDTH-1:0]              last_cycle_offset_reg = {OFFSET_WIDTH{1'b0}}, last_cycle_offset_next;
reg     [LEN_WIDTH-1:0]                 length_reg = {LEN_WIDTH{1'b0}}, length_next;
reg     [CYCLE_COUNT_WIDTH-1:0]         cycle_count_reg = {CYCLE_COUNT_WIDTH{1'b0}}, cycle_count_next;
reg                                     last_cycle_reg = 1'b0, last_cycle_next;

reg     [TAG_WIDTH-1:0]                 tag_reg = {TAG_WIDTH{1'b0}}, tag_next;

reg     [STATUS_FIFO_ADDR_WIDTH+1-1:0]  active_count_reg = 0;
reg                                     active_count_av_reg = 1'b1;
reg                                     inc_active;
reg                                     dec_active;

// control registers
reg     [REG_DATA_WIDTH-1:0]            read_ptr_reg = 0, read_ptr_next;
reg                                     reg_wr_ack_reg = 1'b0, reg_wr_ack_next;
reg     [REG_DATA_WIDTH-1:0]            reg_rd_data_reg = 0, reg_rd_data_next;
reg                                     reg_rd_ack_reg = 1'b0, reg_rd_ack_next;
reg                                     s_axis_rx_req_ready_reg = 1'b0, s_axis_rx_req_ready_next;
reg                                     ram_write_data_tready_reg = 1'b0, ram_write_data_tready_next;
reg     [AXIS_DATA_WIDTH-1:0]           wdata_fifo_tdata_reg = {AXIS_DATA_WIDTH{1'b0}};
reg     [AXIS_KEEP_WIDTH-1:0]           wdata_fifo_tkeep_reg = {AXIS_KEEP_WIDTH{1'b0}};       
reg     [AXIS_KEEP_WIDTH-1:0]           wdata_fifo_tid_reg   = {AXIS_ID_WIDTH{1'b0}}  ;

// internal datapath
reg     [SEG_COUNT*SEG_BE_WIDTH-1:0]    ram_wr_cmd_be_int;
reg     [SEG_COUNT*SEG_ADDR_WIDTH-1:0]  ram_wr_cmd_addr_int;
reg     [SEG_COUNT*SEG_DATA_WIDTH-1:0]  ram_wr_cmd_data_int;
reg     [SEG_COUNT-1:0]                 ram_wr_cmd_valid_int;
wire    [SEG_COUNT-1:0]                 ram_wr_cmd_ready_int;
reg     [SEG_COUNT-1:0]                 ram_wr_cmd_mask;

wire    [SEG_COUNT-1:0]                 out_done;
reg     [SEG_COUNT-1:0]                 out_done_ack;
wire                                    write_wqe_valid;
// output datapath logic
reg     [DMA_ADDR_WIDTH-1:0]            m_axis_dma_write_desc_dma_addr_reg  = {DMA_ADDR_WIDTH{1'b0}},m_axis_dma_write_desc_dma_addr_next;
reg     [RAM_ADDR_WIDTH-1:0]            m_axis_dma_write_desc_ram_addr_reg  = {RAM_ADDR_WIDTH{1'b0}},m_axis_dma_write_desc_ram_addr_next;
reg     [DMA_LEN_WIDTH-1:0]             m_axis_dma_write_desc_len_reg       = {DMA_LEN_WIDTH{1'b0}},m_axis_dma_write_desc_len_next;
reg     [DMA_TAG_WIDTH-1:0]             m_axis_dma_write_desc_tag_reg       = {DMA_TAG_WIDTH{1'b0}},m_axis_dma_write_desc_tag_next;
reg                                     m_axis_dma_write_desc_valid_reg     = 1'b0, m_axis_dma_write_desc_valid_next;


//fifo 
wire    [AXIS_DATA_WIDTH-1:0]           wdata_fifo_tdata;
wire    [AXIS_KEEP_WIDTH-1:0]           wdata_fifo_tkeep;
wire    [AXIS_ID_WIDTH  -1:0]           wdata_fifo_tid  ; 
wire                                    wdata_fifo_tvalid;
wire                                    wdata_fifo_tready;
wire                                    wdata_fifo_tlast;

reg                                     m_axis_ack_valid_reg;
reg     [WQE_INDEX_WIDTH - 1:0]         m_axis_ack_id_reg;
reg     [24 - 1:0]                      m_axis_ack_psn_reg;         

reg     [AXIS_DATA_WIDTH-1:0]           m_axis_if_tx_tdata_reg ;
reg     [AXIS_KEEP_WIDTH-1:0]           m_axis_if_tx_tkeep_reg ;
reg                                     m_axis_if_tx_tvalid_reg;
reg                                     m_axis_if_tx_tlast_reg ;
reg     [AXIS_ID_WIDTH-1:0]             m_axis_if_tx_tid_reg   ;
reg     [AXIS_DEST_WIDTH-1:0]           m_axis_if_tx_tdest_reg ;
reg     [AXIS_USER_WIDTH-1:0]           m_axis_if_tx_tuser_reg ;
    


axis_fifo #(
    .DEPTH(128),
    .DATA_WIDTH(AXIS_DATA_WIDTH),
    .KEEP_WIDTH(AXIS_KEEP_WIDTH),
    .LAST_ENABLE(1),
    .ID_ENABLE(1),
    .ID_WIDTH(AXIS_ID_WIDTH),
    .DEST_ENABLE(0),
    .USER_ENABLE(0),
    .RAM_PIPELINE(24),
    .FRAME_FIFO(0)
)
rx_desc_fifo (
    .clk(clk),
    .rst(rst),

    // AXI input
    .s_axis_tdata(s_axis_write_data_tdata),
    .s_axis_tkeep(s_axis_write_data_tkeep),
    .s_axis_tvalid(s_axis_write_data_tvalid),
    .s_axis_tready(s_axis_write_data_tready),
    .s_axis_tlast(s_axis_write_data_tlast),
    .s_axis_tid(s_axis_write_data_tid),
    .s_axis_tdest(s_axis_write_data_tdest),
    .s_axis_tuser(s_axis_write_data_tuser),

    // AXI output
    .m_axis_tdata(wdata_fifo_tdata),
    .m_axis_tkeep(wdata_fifo_tkeep),
    .m_axis_tvalid(wdata_fifo_tvalid),
    .m_axis_tready(wdata_fifo_tready),
    .m_axis_tlast(wdata_fifo_tlast),
    .m_axis_tid(wdata_fifo_tid),
    .m_axis_tdest(),
    .m_axis_tuser(),
 
    // Status
    .status_overflow(),
    .status_bad_frame(),
    .status_good_frame()
);

//recv header

always @(posedge clk) begin
    if(rst)
        wdata_fifo_tvalid_cnt <= 16'b0;
    else if(wdata_fifo_tready && wdata_fifo_tvalid && wdata_fifo_tlast)
        wdata_fifo_tvalid_cnt <= 16'b0;
    else if(wdata_fifo_tready && wdata_fifo_tvalid)
        wdata_fifo_tvalid_cnt <= wdata_fifo_tvalid_cnt + 1;
end

always @(posedge clk) begin
    if(rst)
        wdata_fifo_tvalid_cnt_1d <= 16'b0;
    else 
        wdata_fifo_tvalid_cnt_1d <= wdata_fifo_tvalid_cnt;
end

always @(posedge clk) begin
    if(wdata_fifo_tready && wdata_fifo_tvalid && wdata_fifo_tvalid_cnt == 16'b0)begin
        dst_mac_addr <= wdata_fifo_tdata[47:0];
        src_mac_addr <= wdata_fifo_tdata[95:48];
        mac_protocol_type <= wdata_fifo_tdata[111:96];

        ip_version <= wdata_fifo_tdata[115:112];
        ip_header_length <= wdata_fifo_tdata[119:116];
        ip_reverse0 <= wdata_fifo_tdata[127:120];
        ip_packet_length <= wdata_fifo_tdata[143:128];
        ip_reverse1 <= wdata_fifo_tdata[175:144];
        ip_reverse2 <= wdata_fifo_tdata[207:176];
        src_ip_addr <= wdata_fifo_tdata[239:208];
        dst_ip_addr <= wdata_fifo_tdata[271:240];
        ip_reverse3 <= wdata_fifo_tdata[303:272];

        udp_src_port <= wdata_fifo_tdata[319:304];
        udp_dst_port <= wdata_fifo_tdata[335:320];
        udp_length <= wdata_fifo_tdata[351:336];
        udp_reverse <= wdata_fifo_tdata[367:352];
                
        deth_opcode <= wdata_fifo_tdata[375:368];
        deth_dst_qpn <= wdata_fifo_tdata[399:376];
        deth_wqe_id <= {wdata_fifo_tdata[439:432],wdata_fifo_tdata[407:400]};
        deth_src_qpn <= wdata_fifo_tdata[431:408];
        
        deth_msn <= wdata_fifo_tdata[463:440];
        deth_psn <= wdata_fifo_tdata[495:472];

        deth_fence <= wdata_fifo_tdata[504]; 
        deth_priority <= wdata_fifo_tdata[507:505];
        deth_task_id[3:0] <= wdata_fifo_tdata[511:508];

    end
    if(wdata_fifo_tready && wdata_fifo_tvalid && wdata_fifo_tvalid_cnt == 16'b1)begin
        deth_task_id[19:4] <= wdata_fifo_tdata[15:0];
        deth_vaddr <= wdata_fifo_tdata[79:16];
        dma_data_length <= wdata_fifo_tdata[111:80];
    end
    wdata_fifo_tdata_reg <= wdata_fifo_tdata;
    wdata_fifo_tkeep_reg <= wdata_fifo_tkeep;
    wdata_fifo_tid_reg   <= wdata_fifo_tid  ;
end 


//ACK VALID GENERATION
always @(posedge clk) begin
    if(rst)
        m_axis_ack_valid_reg <= 0;          
    else if(wdata_fifo_tvalid_cnt == 16'd1 && deth_opcode == 8'd1) 
        m_axis_ack_valid_reg <= 1'b1; 	  	    
    else if(m_axis_ack_ready == 1'b1)
        m_axis_ack_valid_reg <= 1'b0;  
end	

always @(posedge clk) begin
    if(rst)begin
        m_axis_ack_id_reg    <= 0;  
        m_axis_ack_psn_reg   <= 0;      
    end
    else if(wdata_fifo_tvalid_cnt == 16'd1 && deth_opcode == 8'd1)begin 
        m_axis_ack_id_reg    <= deth_wqe_id;   	
        m_axis_ack_psn_reg   <= deth_psn;   	  	
    end
end	

assign m_axis_ack_valid = m_axis_ack_valid_reg;
assign m_axis_ack_id    = m_axis_ack_id_reg   ;
assign m_axis_ack_psn   = m_axis_ack_psn_reg  ;


//ACK PACKET GENERATION
always @(posedge clk) begin
    if(rst) begin
        m_axis_if_tx_tdata_reg  <= 0;
        m_axis_if_tx_tkeep_reg  <= 0;
        m_axis_if_tx_tid_reg    <= 0;
        m_axis_if_tx_tdest_reg  <= 0;
        m_axis_if_tx_tuser_reg  <= 0;
    end
    else if(wdata_fifo_tvalid_cnt_1d == 16'd0 && deth_opcode == 8'd0) begin
        m_axis_if_tx_tdata_reg  <= {deth_task_id[3:0], deth_priority, deth_fence, deth_psn, deth_msn, deth_wqe_id[15:8], deth_dst_qpn, deth_wqe_id[7:0], deth_src_qpn, deth_opcode, udp_reverse, udp_length, udp_src_port, udp_dst_port, ip_reverse3, src_ip_addr, dst_ip_addr, ip_reverse2, ip_reverse1, ip_packet_length, ip_reverse0, ip_header_length, ip_version, mac_protocol_type,dst_mac_addr, src_mac_addr};
        m_axis_if_tx_tkeep_reg  <= wdata_fifo_tkeep_reg;
        m_axis_if_tx_tid_reg    <= wdata_fifo_tid_reg;
        m_axis_if_tx_tdest_reg  <= 0;
        m_axis_if_tx_tuser_reg  <= 0;	  	    
    end
end	

always @(posedge clk) begin
    if(rst) begin
        m_axis_if_tx_tvalid_reg <= 0;
        m_axis_if_tx_tlast_reg  <= 0;
    end
    else if(m_axis_if_tx_tvalid && m_axis_if_tx_tready) begin
        m_axis_if_tx_tvalid_reg <= 1'b0;
        m_axis_if_tx_tlast_reg  <= 1'b0;  	    
    end
    else if(wdata_fifo_tvalid_cnt_1d == 16'd0 && deth_opcode == 8'd0) begin
        m_axis_if_tx_tvalid_reg <= 1'b1;
        m_axis_if_tx_tlast_reg  <= 1'b1;  	    
    end
end	


assign m_axis_if_tx_tdata  = m_axis_if_tx_tdata_reg ;
assign m_axis_if_tx_tkeep  = m_axis_if_tx_tkeep_reg ;
assign m_axis_if_tx_tvalid = m_axis_if_tx_tvalid_reg;
assign m_axis_if_tx_tlast  = m_axis_if_tx_tlast_reg ;
assign m_axis_if_tx_tid    = m_axis_if_tx_tid_reg   ;
assign m_axis_if_tx_tdest  = m_axis_if_tx_tdest_reg ;
assign m_axis_if_tx_tuser  = m_axis_if_tx_tuser_reg ;



assign m_axis_dma_write_desc_dma_addr   = m_axis_dma_write_desc_dma_addr_reg;
assign m_axis_dma_write_desc_ram_sel    = 0;
assign m_axis_dma_write_desc_ram_addr   = m_axis_dma_write_desc_ram_addr_reg;
assign m_axis_dma_write_desc_imm        = 0;
assign m_axis_dma_write_desc_imm_en     = 0;
assign m_axis_dma_write_desc_len        = m_axis_dma_write_desc_len_reg;
assign m_axis_dma_write_desc_tag        = m_axis_dma_write_desc_tag_reg;
// assign m_axis_dma_write_desc_valid      = probe_out0 ? m_axis_dma_write_desc_valid_reg : 0;
assign m_axis_dma_write_desc_valid      = m_axis_dma_write_desc_valid_reg ;
assign wdata_fifo_tready         = m_axis_dma_write_desc_ready && ram_write_data_tready_reg;

assign write_wqe_valid = (wdata_fifo_tvalid & wdata_fifo_tvalid_cnt == 16'b1);

always @* begin
    state_next = STATE_IDLE;

    ram_write_data_tready_next = 1'b0;

    if (PART_COUNT > 1) begin
        ram_wr_cmd_be_int = {wdata_fifo_tkeep[7:0],wdata_fifo_tkeep_reg[AXIS_KEEP_WIDTH-1:8]} << (addr_reg & ({PART_COUNT_WIDTH{1'b1}} << PART_OFFSET_WIDTH));
    end else begin
        ram_wr_cmd_be_int = {wdata_fifo_tkeep[7:0],wdata_fifo_tkeep_reg[AXIS_KEEP_WIDTH-1:8]} & keep_mask_reg;
    end
    ram_wr_cmd_addr_int = {PART_COUNT{addr_reg[RAM_ADDR_WIDTH-1:RAM_ADDR_WIDTH-SEG_ADDR_WIDTH]}};
    ram_wr_cmd_data_int = {PART_COUNT{wdata_fifo_tdata[79:0],wdata_fifo_tdata_reg[AXIS_DATA_WIDTH-1:80]}};
    ram_wr_cmd_valid_int = {SEG_COUNT{1'b0}};
    for (i = 0; i < SEG_COUNT; i = i + 1) begin
        ram_wr_cmd_mask[i] = ram_wr_cmd_be_int[i*SEG_BE_WIDTH +: SEG_BE_WIDTH] != 0;
    end

    cycle_size = AXIS_KEEP_WIDTH_INT;

    addr_next = addr_reg;
    keep_mask_next = keep_mask_reg;
    last_cycle_offset_next = last_cycle_offset_reg;
    length_next = length_reg;
    cycle_count_next = cycle_count_reg;
    last_cycle_next = last_cycle_reg;

    m_axis_dma_write_desc_valid_next = 1'b0;

    tag_next = tag_reg;
    dec_active = 1'b0;

    out_done_ack = {SEG_COUNT{1'b0}};

    case (state_reg)
        STATE_IDLE: begin
            // idle state - load new descriptor to start operation
            addr_next = addr_reg ;
            last_cycle_offset_next = dma_data_length & OFFSET_MASK;
            tag_next = 0;
            length_next = 0;
            cycle_count_next = (dma_data_length - 1) >> $clog2(AXIS_KEEP_WIDTH_INT);
            last_cycle_next = cycle_count_next == 0;
            if (cycle_count_next == 0 && last_cycle_offset_next != 0) begin
                keep_mask_next = {AXIS_KEEP_WIDTH_INT{1'b1}} >> (AXIS_KEEP_WIDTH_INT - last_cycle_offset_next);
            end else begin
                keep_mask_next = {AXIS_KEEP_WIDTH_INT{1'b1}};
            end

            //write desc
            m_axis_dma_write_desc_dma_addr_next = deth_vaddr;
            m_axis_dma_write_desc_ram_addr_next = addr_reg;
            m_axis_dma_write_desc_len_next = wdata_fifo_tdata[111:80];
            m_axis_dma_write_desc_tag_next = 0;
            

            ram_write_data_tready_next = &ram_wr_cmd_ready_int;

            if (wdata_fifo_tready && write_wqe_valid) begin
                if(udp_dst_port == RDMA_DEST_PORT && deth_opcode == 8'd0)begin
                    m_axis_dma_write_desc_valid_next = 1'b1;
                    state_next = STATE_RW;
                end
                else begin
                    m_axis_dma_write_desc_valid_next = 1'b0;
                    state_next = STATE_DROP_DATA;
                end
            end else begin
                state_next = STATE_IDLE;
            end

            
        end
        STATE_RW: begin
            // write state - generate write operations
            ram_write_data_tready_next = &ram_wr_cmd_ready_int ;
            m_axis_dma_write_desc_valid_next = 1'b0;
            if (wdata_fifo_tready && wdata_fifo_tvalid) begin

                // update counters
                addr_next = addr_reg + AXIS_KEEP_WIDTH_INT;
                length_next = length_reg + AXIS_KEEP_WIDTH_INT;
                cycle_count_next = cycle_count_reg - 1;
                last_cycle_next = cycle_count_next == 0;
                if (cycle_count_next == 0 && last_cycle_offset_reg != 0) begin
                    keep_mask_next = {AXIS_KEEP_WIDTH_INT{1'b1}} >> (AXIS_KEEP_WIDTH_INT - last_cycle_offset_reg);
                end else begin
                    keep_mask_next = {AXIS_KEEP_WIDTH_INT{1'b1}};
                end

                if (PART_COUNT > 1) begin
                    ram_wr_cmd_be_int = ({wdata_fifo_tkeep[7:0],wdata_fifo_tkeep_reg[AXIS_KEEP_WIDTH-1:8]} & keep_mask_reg) << (addr_reg & ({PART_COUNT_WIDTH{1'b1}} << PART_OFFSET_WIDTH));
                end else begin
                    ram_wr_cmd_be_int = {wdata_fifo_tkeep[7:0],wdata_fifo_tkeep_reg[AXIS_KEEP_WIDTH-1:8]} & keep_mask_reg;
                end
                ram_wr_cmd_addr_int = {SEG_COUNT{addr_reg[RAM_ADDR_WIDTH-1:RAM_ADDR_WIDTH-SEG_ADDR_WIDTH]}};
                ram_wr_cmd_data_int = {PART_COUNT{wdata_fifo_tdata[79:0],wdata_fifo_tdata_reg[AXIS_DATA_WIDTH-1:80]}};
                ram_wr_cmd_valid_int = ram_wr_cmd_mask;

                if (AXIS_LAST_ENABLE && wdata_fifo_tlast) begin
                    if (AXIS_KEEP_ENABLE) begin
                        cycle_size = AXIS_KEEP_WIDTH_INT;
                        for (i = AXIS_KEEP_WIDTH_INT-1; i >= 0; i = i - 1) begin
                            if (~(wdata_fifo_tkeep & keep_mask_reg) & (1 << i)) begin
                                cycle_size = i;
                            end
                        end
                    end else begin
                        cycle_size = AXIS_KEEP_WIDTH_INT;
                    end

                    // no more data to transfer, finish operation
                    if (last_cycle_reg && last_cycle_offset_reg > 0) begin
                        if (AXIS_KEEP_ENABLE && !(wdata_fifo_tkeep & keep_mask_reg & ~({AXIS_KEEP_WIDTH_INT{1'b1}} >> (AXIS_KEEP_WIDTH_INT - last_cycle_offset_reg)))) begin
                            length_next = length_reg + cycle_size;
                        end else begin
                            length_next = length_reg + last_cycle_offset_reg;
                        end
                    end else begin
                        if (AXIS_KEEP_ENABLE) begin
                            length_next = length_reg + cycle_size;
                        end
                    end
                    ram_write_data_tready_next = 1'b0;
                    state_next = STATE_IDLE;
                end else if (last_cycle_reg) begin
                    if (last_cycle_offset_reg > 0) begin
                        length_next = length_reg + last_cycle_offset_reg;
                    end

                    if (AXIS_LAST_ENABLE) begin
                        ram_write_data_tready_next = 1'b1;
                        state_next = STATE_DROP_DATA;
                    end else begin
                        ram_write_data_tready_next = 1'b0;
                        state_next = STATE_IDLE;
                    end
                end else begin
                    state_next = STATE_RW;
                end
            end else begin
                state_next = STATE_RW;
            end
        end
        STATE_DROP_DATA: begin
            // drop excess AXI stream data
            ram_write_data_tready_next = 1'b1;

            if (wdata_fifo_tready && wdata_fifo_tvalid) begin
                if (wdata_fifo_tlast) begin
                    ram_write_data_tready_next = 1'b0;
                    state_next = STATE_IDLE;
                end else begin
                    state_next = STATE_DROP_DATA;
                end
            end else begin
                state_next = STATE_DROP_DATA;
            end
        end
    endcase

    
    if (reg_wr_en && !reg_wr_ack_reg) begin
        // write operation
        reg_wr_ack_next = 1'b1;
        case ({reg_wr_addr >> 2, 2'b00})
            // control
            RBB+12'h00c: read_ptr_next = reg_wr_data;
            default: reg_wr_ack_next = 1'b0;
        endcase
    end

    if (reg_rd_en && !reg_rd_ack_reg) begin
        // read operation
        reg_rd_ack_next = 1'b1;
        case ({reg_rd_addr >> 2, 2'b00})
            RBB+12'h000: reg_rd_data_next = 32'h20240326;  // Type
            RBB+12'h004: reg_rd_data_next = 32'h00000100;  // Version
            RBB+12'h008: reg_rd_data_next = RB_NEXT_PTR;   // Next header
            // control
            RBB+12'h0c: reg_rd_data_next = read_ptr_reg;
            // state
            RBB+12'h010: reg_rd_data_next = deth_opcode;
            RBB+12'h014: reg_rd_data_next = deth_dst_qpn;
            RBB+12'h018: reg_rd_data_next = deth_psn;
            RBB+12'h01c: reg_rd_data_next = deth_src_qpn;
            RBB+12'h020: reg_rd_data_next = deth_vaddr[31:0];
            RBB+12'h024: reg_rd_data_next = deth_vaddr[63:32];
            RBB+12'h028: reg_rd_data_next = dma_data_length;
            RBB+12'h02c: reg_rd_data_next = udp_src_port;
            RBB+12'h030: reg_rd_data_next = udp_dst_port;
            RBB+12'h034: reg_rd_data_next = udp_length;
            RBB+12'h038: reg_rd_data_next = src_ip_addr;
            RBB+12'h03c: reg_rd_data_next = dst_ip_addr;
            RBB+12'h040: reg_rd_data_next = RB_NEXT_PTR+12'h200;
            // single dma write
            RBB+12'h200: reg_rd_data_next = m_axis_dma_write_desc_dma_addr_reg;
            RBB+12'h204: reg_rd_data_next = m_axis_dma_write_desc_dma_addr_reg >> 32;
            RBB+12'h208: reg_rd_data_next = m_axis_dma_write_desc_ram_addr_reg;
            RBB+12'h20c: reg_rd_data_next = m_axis_dma_write_desc_ram_addr_reg >> 32;
            RBB+12'h210: reg_rd_data_next = m_axis_dma_write_desc_len_reg;
            RBB+12'h214: reg_rd_data_next = m_axis_dma_write_desc_tag_reg;
            default: reg_rd_ack_next = 1'b0;
        endcase
    end
end

always @(posedge clk) begin
    state_reg <= state_next;

    reg_wr_ack_reg <= reg_wr_ack_next;
    reg_rd_data_reg <= reg_rd_data_next;
    reg_rd_ack_reg <= reg_rd_ack_next;

    ram_write_data_tready_reg <= ram_write_data_tready_next;

    addr_reg <= addr_next;
    keep_mask_reg <= keep_mask_next;
    last_cycle_offset_reg <= last_cycle_offset_next;
    length_reg <= length_next;
    cycle_count_reg <= cycle_count_next;
    last_cycle_reg <= last_cycle_next;

    tag_reg <= tag_next;

    m_axis_dma_write_desc_dma_addr_reg <= m_axis_dma_write_desc_dma_addr_next;
    m_axis_dma_write_desc_ram_addr_reg <= m_axis_dma_write_desc_ram_addr_next;
    m_axis_dma_write_desc_len_reg <= m_axis_dma_write_desc_len_next;
    m_axis_dma_write_desc_tag_reg <= m_axis_dma_write_desc_tag_next;
    m_axis_dma_write_desc_valid_reg <= m_axis_dma_write_desc_valid_next;

    if (rst) begin
        state_reg <= STATE_IDLE;
        reg_wr_ack_reg <= 1'b0;
        reg_rd_ack_reg <= 1'b0;

        ram_write_data_tready_reg <= 1'b0;

    end
end

// output datapath logic (write data)
generate

genvar n;

for (n = 0; n < SEG_COUNT; n = n + 1) begin

    reg [SEG_BE_WIDTH-1:0]   ram_wr_cmd_be_reg = {SEG_BE_WIDTH{1'b0}};
    reg [SEG_ADDR_WIDTH-1:0] ram_wr_cmd_addr_reg = {SEG_ADDR_WIDTH{1'b0}};
    reg [SEG_DATA_WIDTH-1:0] ram_wr_cmd_data_reg = {SEG_DATA_WIDTH{1'b0}};
    reg                      ram_wr_cmd_valid_reg = 1'b0;

    reg [OUTPUT_FIFO_ADDR_WIDTH+1-1:0] out_fifo_wr_ptr_reg = 0;
    reg [OUTPUT_FIFO_ADDR_WIDTH+1-1:0] out_fifo_rd_ptr_reg = 0;
    reg out_fifo_half_full_reg = 1'b0;

    wire out_fifo_full = out_fifo_wr_ptr_reg == (out_fifo_rd_ptr_reg ^ {1'b1, {OUTPUT_FIFO_ADDR_WIDTH{1'b0}}});
    wire out_fifo_empty = out_fifo_wr_ptr_reg == out_fifo_rd_ptr_reg;

    (* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
    reg [SEG_BE_WIDTH-1:0]   out_fifo_wr_cmd_be[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
    (* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
    reg [SEG_ADDR_WIDTH-1:0] out_fifo_wr_cmd_addr[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];
    (* ram_style = "distributed", ramstyle = "no_rw_check, mlab" *)
    reg [SEG_DATA_WIDTH-1:0] out_fifo_wr_cmd_data[2**OUTPUT_FIFO_ADDR_WIDTH-1:0];

    reg [OUTPUT_FIFO_ADDR_WIDTH+1-1:0] done_count_reg = 0;
    reg done_reg = 1'b0;

    assign ram_wr_cmd_ready_int[n +: 1] = !out_fifo_half_full_reg;

    assign ram_wr_cmd_be[n*SEG_BE_WIDTH +: SEG_BE_WIDTH] = ram_wr_cmd_be_reg;
    assign ram_wr_cmd_addr[n*SEG_ADDR_WIDTH +: SEG_ADDR_WIDTH] = ram_wr_cmd_addr_reg;
    assign ram_wr_cmd_data[n*SEG_DATA_WIDTH +: SEG_DATA_WIDTH] = ram_wr_cmd_data_reg;
    assign ram_wr_cmd_valid[n +: 1] = ram_wr_cmd_valid_reg;

    assign out_done[n] = done_reg;

    always @(posedge clk) begin
        ram_wr_cmd_valid_reg <= ram_wr_cmd_valid_reg && !ram_wr_cmd_ready[n +: 1];

        out_fifo_half_full_reg <= $unsigned(out_fifo_wr_ptr_reg - out_fifo_rd_ptr_reg) >= 2**(OUTPUT_FIFO_ADDR_WIDTH-1);

        if (!out_fifo_full && ram_wr_cmd_valid_int[n +: 1]) begin
            out_fifo_wr_cmd_be[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= ram_wr_cmd_be_int[n*SEG_BE_WIDTH +: SEG_BE_WIDTH];
            out_fifo_wr_cmd_addr[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= ram_wr_cmd_addr_int[n*SEG_ADDR_WIDTH +: SEG_ADDR_WIDTH];
            out_fifo_wr_cmd_data[out_fifo_wr_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]] <= ram_wr_cmd_data_int[n*SEG_DATA_WIDTH +: SEG_DATA_WIDTH];
            out_fifo_wr_ptr_reg <= out_fifo_wr_ptr_reg + 1;
        end

        if (!out_fifo_empty && (!ram_wr_cmd_valid_reg || ram_wr_cmd_ready[n +: 1])) begin
            ram_wr_cmd_be_reg <= out_fifo_wr_cmd_be[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
            ram_wr_cmd_addr_reg <= out_fifo_wr_cmd_addr[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
            ram_wr_cmd_data_reg <= out_fifo_wr_cmd_data[out_fifo_rd_ptr_reg[OUTPUT_FIFO_ADDR_WIDTH-1:0]];
            ram_wr_cmd_valid_reg <= 1'b1;
            out_fifo_rd_ptr_reg <= out_fifo_rd_ptr_reg + 1;
        end

        if (done_count_reg < 2**OUTPUT_FIFO_ADDR_WIDTH && ram_wr_done[n] && !out_done_ack[n]) begin
            done_count_reg <= done_count_reg + 1;
            done_reg <= 1;
        end else if (done_count_reg > 0 && !ram_wr_done[n] && out_done_ack[n]) begin
            done_count_reg <= done_count_reg - 1;
            done_reg <= done_count_reg > 1;
        end

        if (rst) begin
            out_fifo_wr_ptr_reg <= 0;
            out_fifo_rd_ptr_reg <= 0;
            ram_wr_cmd_valid_reg <= 1'b0;
            done_count_reg <= 0;
            done_reg <= 1'b0;
        end
    end

end

endgenerate

reg  m_axis_dma_write_desc_valid_reg1;

always @(posedge clk) begin
    m_axis_dma_write_desc_valid_reg1 <= m_axis_dma_write_desc_valid_reg;
end
/*
 ila_2 u_mqnic_app_if_rx_data_proc_inst (
 	.clk(clk), // input wire clk

 	.probe0(s_axis_write_data_tdata), // input wire [511:0]  probe0  
 	.probe1(s_axis_write_data_tkeep), // input wire [63:0]  probe1 
 	.probe2(s_axis_write_data_tvalid), // input wire [0:0]  probe2 
 	.probe3(s_axis_write_data_tready), // input wire [0:0]  probe3 
 	.probe4(s_axis_write_data_tlast), // input wire [0:0]  probe4 
 	.probe5(s_axis_write_data_tid), // input wire [0:0]  probe5 
 	.probe6(s_axis_write_data_tdest), // input wire [7:0]  probe6 
 	.probe7(ram_wr_done), // input wire [0:0]  probe7 
 	.probe8(ram_wr_cmd_be), // input wire [127:0]  probe8 
 	.probe9(ram_wr_cmd_addr), // input wire [19:0]  probe9 
 	.probe10(ram_wr_cmd_data), // input wire [1023:0]  probe10 
 	.probe11(ram_wr_cmd_valid), // input wire [1:0]  probe11 
 	.probe12(ram_wr_cmd_ready), // input wire [1:0]  probe12 
 	.probe13(m_axis_dma_write_desc_dma_addr), // input wire [63:0]  probe13 
 	.probe14(m_axis_dma_write_desc_ram_sel), // input wire [0:0]  probe14 
 	.probe15(m_axis_dma_write_desc_ram_addr), // input wire [19:0]  probe15 
 	.probe16(m_axis_dma_write_desc_len), // input wire [15:0]  probe16 
 	.probe17(m_axis_dma_write_desc_tag), // input wire [13:0]  probe17 
 	.probe18(m_axis_dma_write_desc_valid_reg), // input wire [0:0]  probe18 
 	.probe19(m_axis_dma_write_desc_ready), // input wire [0:0]  probe19
 	.probe20(udp_dst_port), // input wire [15:0]  probe20
     .probe21(m_axis_dma_write_desc_valid) // input wire [0:0]  probe21 
//     .probe22() // input wire [0:0]  probe22 
 );
*/

endmodule

`resetall
