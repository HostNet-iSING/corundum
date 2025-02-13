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
module mqnic_interface_tx_v4 #
(
    // Number of ports
    parameter PORTS = 1,
    
    // WQE index width
    parameter WQE_INDEX_WIDTH = 8,
    // WQE data width
    parameter AXIS_WQE_DATA_WIDTH = 256,
    
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
    
    // Streaming interface configuration
    parameter AXIS_DATA_WIDTH = 512*2**$clog2(PORTS),
    parameter AXIS_KEEP_WIDTH = AXIS_DATA_WIDTH/8,
    parameter AXIS_TX_ID_WIDTH = WQE_INDEX_WIDTH,
    parameter AXIS_TX_DEST_WIDTH = $clog2(PORTS)+4,
    parameter AXIS_TX_USER_WIDTH = 232,

    // Interface configuration
    parameter TX_CHECKSUM_ENABLE = 0,
    parameter MAX_TX_SIZE = 9214,
    parameter TX_RAM_SIZE = 32768,

    // DMA interface configuration

    parameter RAM_ADDR_WIDTH = $clog2(TX_RAM_SIZE),
    parameter RAM_SEG_COUNT = 2,
    parameter RAM_SEG_DATA_WIDTH = 256*2/RAM_SEG_COUNT,
    parameter RAM_SEG_BE_WIDTH = RAM_SEG_DATA_WIDTH/8,
    parameter RAM_SEG_ADDR_WIDTH = RAM_ADDR_WIDTH-$clog2(RAM_SEG_COUNT*RAM_SEG_BE_WIDTH),
    parameter RAM_PIPELINE = 2

)
(
    input  wire                                         clk                         ,
    input  wire                                         rst                         ,
                                                                                    
    /*                                                                              
     * Descriptor data input                                                        
     */                                                                             
    input  wire [AXIS_WQE_DATA_WIDTH-1:0]               s_axis_wqe_data             ,
    input  wire [24-1:0]                                s_axis_wqe_qpn              , 
    input  wire [WQE_INDEX_WIDTH-1:0]                   s_axis_wqe_id               ,
    input  wire                                         s_axis_wqe_valid            ,
    output wire                                         s_axis_wqe_ready            ,
                                                        
    /*                                                  
     * DMA read data output                             
     */                                                 
    output wire [DMA_ADDR_WIDTH-1:0]                    m_axis_dma_read_wqe_dma_addr,
    output wire [RAM_ADDR_WIDTH-1:0]                    m_axis_dma_read_wqe_ram_addr,
    output wire [DMA_LEN_WIDTH-1:0]                     m_axis_dma_read_wqe_len     ,
    output wire [DMA_TAG_WIDTH:0]                       m_axis_dma_read_wqe_tag     ,
    output wire                                         m_axis_dma_read_wqe_valid   ,
    input  wire                                         m_axis_dma_read_wqe_ready   ,                                                        
  
    /*
     * RAM interface (data)
     */
    input  wire [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]    dma_ram_wr_cmd_be           ,
    input  wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  dma_ram_wr_cmd_addr         ,
    input  wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  dma_ram_wr_cmd_data         ,
    input  wire [RAM_SEG_COUNT-1:0]                     dma_ram_wr_cmd_valid        ,
    output wire [RAM_SEG_COUNT-1:0]                     dma_ram_wr_cmd_ready        ,
    output wire [RAM_SEG_COUNT-1:0]                     dma_ram_wr_done             ,

    /*
     * Transmit data output
     */
    output wire [AXIS_DATA_WIDTH-1:0]                   m_axis_tx_tdata             ,
    output wire [AXIS_KEEP_WIDTH-1:0]                   m_axis_tx_tkeep             ,
    output wire                                         m_axis_tx_tvalid            ,
    input  wire                                         m_axis_tx_tready            ,
    output wire                                         m_axis_tx_tlast             ,
    output wire [AXIS_TX_ID_WIDTH-1:0]                  m_axis_tx_tid               ,
    output wire [AXIS_TX_DEST_WIDTH-1:0]                m_axis_tx_tdest             ,
    output wire [AXIS_TX_USER_WIDTH-1:0]                m_axis_tx_tuser             ,
    
    /*
     * tx flag input
     */    
    input  wire [WQE_INDEX_WIDTH-1:0]                   s_axis_tx_id                ,
    input  wire [24-1:0]                                s_axis_tx_psn               ,
    input  wire                                         s_axis_tx_valid             ,
    output wire                                         s_axis_tx_ready             ,
                                                                                    
    /*                                                                              
     * ack flag input                                                               
     */                                                                             
    input  wire [WQE_INDEX_WIDTH-1:0]                   s_axis_ack_id               ,
    input  wire [24-1:0]                                s_axis_ack_psn              ,
    input  wire                                         s_axis_ack_valid            ,
    output wire                                         s_axis_ack_ready            , 
                                                                                    
    /*                                                                              
     * cpl interface                                                                
     */                                                                             
    output wire [WQE_INDEX_WIDTH-1:0]                   m_axis_cpl_id               ,
    output wire                                         m_axis_cpl_valid            ,
    input  wire                                         m_axis_cpl_ready                 
                                                                                         
);

////////////////////////////////// WIRE & REG ///////////////////////////////////////////////////////

wire [DMA_ADDR_WIDTH-1:0]                    m_axis_cu_dma_read_wqe_dma_addr;
wire [RAM_ADDR_WIDTH-1:0]                    m_axis_cu_dma_read_wqe_ram_addr;
wire [DMA_LEN_WIDTH-1:0]                     m_axis_cu_dma_read_wqe_len     ;
wire [DMA_TAG_WIDTH-1:0]                     m_axis_cu_dma_read_wqe_tag     ;
wire                                         m_axis_cu_dma_read_wqe_valid   ;
wire                                         m_axis_cu_dma_read_wqe_ready   ;
                                                                            
wire [DMA_ADDR_WIDTH-1:0]                    m_axis_re_dma_read_wqe_dma_addr;
wire [RAM_ADDR_WIDTH-1:0]                    m_axis_re_dma_read_wqe_ram_addr;
wire [DMA_LEN_WIDTH-1:0]                     m_axis_re_dma_read_wqe_len     ;
wire [DMA_TAG_WIDTH-1:0]                     m_axis_re_dma_read_wqe_tag     ;
wire                                         m_axis_re_dma_read_wqe_valid   ;
wire                                         m_axis_re_dma_read_wqe_ready   ;
                                                                            
wire [RAM_ADDR_WIDTH-1:0]                    m_axis_cu_tx_data_addr         ;
wire [DMA_CLIENT_LEN_WIDTH-1:0]              m_axis_cu_tx_data_len          ;
wire [DMA_CLIENT_TAG_WIDTH-1:0]              m_axis_cu_tx_data_tag          ;
wire [AXIS_TX_ID_WIDTH-1:0]                  m_axis_cu_tx_data_id           ;
wire [AXIS_TX_DEST_WIDTH-1:0]                m_axis_cu_tx_data_dest         ;
wire [AXIS_TX_USER_WIDTH-1:0]                m_axis_cu_tx_data_user         ;
wire                                         m_axis_cu_tx_data_valid        ;
wire                                         m_axis_cu_tx_data_ready        ;
                                                                            
wire [RAM_ADDR_WIDTH-1:0]                    m_axis_re_tx_data_addr         ;
wire [DMA_CLIENT_LEN_WIDTH-1:0]              m_axis_re_tx_data_len          ;
wire [DMA_CLIENT_TAG_WIDTH-1:0]              m_axis_re_tx_data_tag          ;
wire [AXIS_TX_ID_WIDTH-1:0]                  m_axis_re_tx_data_id           ;
wire [AXIS_TX_DEST_WIDTH-1:0]                m_axis_re_tx_data_dest         ;
wire [AXIS_TX_USER_WIDTH-1:0]                m_axis_re_tx_data_user         ;
wire                                         m_axis_re_tx_data_valid        ;
wire                                         m_axis_re_tx_data_ready        ;

wire [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]    cu_dma_ram_wr_cmd_be           ;
wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  cu_dma_ram_wr_cmd_addr         ;
wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  cu_dma_ram_wr_cmd_data         ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_wr_cmd_valid        ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_wr_cmd_ready        ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_wr_done             ;
wire [DMA_CLIENT_TAG_WIDTH-1:0]              cu_dma_tx_desc_status_tag      ;
wire [DMA_CLIENT_TAG_WIDTH-1:0]              cu_dma_tx_desc_status_error    ;
wire                                         cu_dma_tx_desc_status_valid    ;
                                                                            
wire [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]    re_dma_ram_wr_cmd_be           ;
wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  re_dma_ram_wr_cmd_addr         ;
wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  re_dma_ram_wr_cmd_data         ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_wr_cmd_valid        ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_wr_cmd_ready        ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_wr_done             ;
wire [DMA_CLIENT_TAG_WIDTH-1:0]              re_dma_tx_desc_status_tag      ;
wire [DMA_CLIENT_TAG_WIDTH-1:0]              re_dma_tx_desc_status_error    ;
wire                                         re_dma_tx_desc_status_valid    ;

wire [AXIS_DATA_WIDTH-1:0]                   cu_tx_axis_tdata_int           ;
wire [AXIS_KEEP_WIDTH-1:0]                   cu_tx_axis_tkeep_int           ;
wire                                         cu_tx_axis_tvalid_int          ;
wire                                         cu_tx_axis_tready_int          ;
wire                                         cu_tx_axis_tlast_int           ;
wire [AXIS_TX_ID_WIDTH-1:0]                  cu_tx_axis_tid_int             ;
wire [AXIS_TX_DEST_WIDTH-1:0]                cu_tx_axis_tdest_int           ;
wire [AXIS_TX_USER_WIDTH-1:0]                cu_tx_axis_tuser_int           ;

wire [AXIS_DATA_WIDTH-1:0]                   re_tx_axis_tdata_int           ;
wire [AXIS_KEEP_WIDTH-1:0]                   re_tx_axis_tkeep_int           ;
wire                                         re_tx_axis_tvalid_int          ;
wire                                         re_tx_axis_tready_int          ;
wire                                         re_tx_axis_tlast_int           ;
wire [AXIS_TX_ID_WIDTH-1:0]                  re_tx_axis_tid_int             ;
wire [AXIS_TX_DEST_WIDTH-1:0]                re_tx_axis_tdest_int           ;
wire [AXIS_TX_USER_WIDTH-1:0]                re_tx_axis_tuser_int           ;
                                                                            
wire [AXIS_DATA_WIDTH-1:0]                   tx_axis_tdata_int              ;
wire [AXIS_KEEP_WIDTH-1:0]                   tx_axis_tkeep_int              ;
wire                                         tx_axis_tvalid_int             ;
wire                                         tx_axis_tready_int             ;
wire                                         tx_axis_tlast_int              ;
wire [AXIS_TX_ID_WIDTH-1:0]                  tx_axis_tid_int                ;
wire [AXIS_TX_DEST_WIDTH-1:0]                tx_axis_tdest_int              ;
wire [AXIS_TX_USER_WIDTH-1:0]                tx_axis_tuser_int              ;
                                                                            
wire [DMA_CLIENT_TAG_WIDTH-1:0]              dma_tx_desc_status_tag         ;
wire [3:0]                                   dma_tx_desc_status_error       ;
wire                                         dma_tx_desc_status_valid       ;

wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  cu_dma_ram_rd_cmd_addr_int     ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_rd_cmd_valid_int    ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_rd_cmd_ready_int    ;
wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  cu_dma_ram_rd_resp_data_int    ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_rd_resp_valid_int   ;
wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_rd_resp_ready_int   ;

wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  re_dma_ram_rd_cmd_addr_int     ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_rd_cmd_valid_int    ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_rd_cmd_ready_int    ;
wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  re_dma_ram_rd_resp_data_int    ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_rd_resp_valid_int   ;
wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_rd_resp_ready_int   ;


tx_engine_v4 #
(
   .PORTS                  ( PORTS                ),
   .WQE_INDEX_WIDTH        ( WQE_INDEX_WIDTH      ),
   .AXIS_WQE_DATA_WIDTH    ( AXIS_WQE_DATA_WIDTH  ),
   .RAM_ADDR_WIDTH         ( RAM_ADDR_WIDTH       ),
   .DMA_ADDR_WIDTH         ( DMA_ADDR_WIDTH       ),
   .DMA_LEN_WIDTH          ( DMA_LEN_WIDTH        ), 
   .AXIS_TX_USER_WIDTH     ( AXIS_TX_USER_WIDTH   )
)u_tx_engine_v4
(
   .clk                              (  clk                               ),
   .rst                              (  rst                               ),
   .s_axis_wqe_data                  (  s_axis_wqe_data                   ),
   .s_axis_wqe_qpn                   (  s_axis_wqe_qpn                    ), 
   .s_axis_wqe_id                    (  s_axis_wqe_id                     ),
   .s_axis_wqe_valid                 (  s_axis_wqe_valid                  ),
   .s_axis_wqe_ready                 (                                    ),
   .m_axis_dma_read_wqe_dma_addr     (  m_axis_cu_dma_read_wqe_dma_addr   ),
   .m_axis_dma_read_wqe_ram_addr     (  m_axis_cu_dma_read_wqe_ram_addr   ),
   .m_axis_dma_read_wqe_len          (  m_axis_cu_dma_read_wqe_len        ),
   .m_axis_dma_read_wqe_tag          (  m_axis_cu_dma_read_wqe_tag        ),
   .m_axis_dma_read_wqe_valid        (  m_axis_cu_dma_read_wqe_valid      ),
   .m_axis_dma_read_wqe_ready        (  m_axis_cu_dma_read_wqe_ready      ),
   .s_axis_dma_read_wqe_status_tag   (  cu_dma_tx_desc_status_tag         ),
   .s_axis_dma_read_wqe_status_error (  cu_dma_tx_desc_status_error       ),
   .s_axis_dma_read_wqe_status_valid (  cu_dma_tx_desc_status_valid       ),
   .m_axis_tx_data_addr              (  m_axis_cu_tx_data_addr            ),
   .m_axis_tx_data_len               (  m_axis_cu_tx_data_len             ),
   .m_axis_tx_data_tag               (  m_axis_cu_tx_data_tag             ),
   .m_axis_tx_data_id                (  m_axis_cu_tx_data_id              ),
   .m_axis_tx_data_dest              (  m_axis_cu_tx_data_dest            ),
   .m_axis_tx_data_user              (  m_axis_cu_tx_data_user            ),
   .m_axis_tx_data_valid             (  m_axis_cu_tx_data_valid           ),
   .m_axis_tx_data_ready             (  m_axis_cu_tx_data_ready           )
);




re_trans_module #
(
   .PORTS                  ( PORTS                ),
   .WQE_INDEX_WIDTH        ( WQE_INDEX_WIDTH      ),
   .AXIS_WQE_DATA_WIDTH    ( AXIS_WQE_DATA_WIDTH  ),
   .RAM_ADDR_WIDTH         ( RAM_ADDR_WIDTH       ),
   .DMA_ADDR_WIDTH         ( DMA_ADDR_WIDTH       ),
   .DMA_LEN_WIDTH          ( DMA_LEN_WIDTH        ),
   .DMA_CLIENT_LEN_WIDTH   ( DMA_CLIENT_LEN_WIDTH ),  
   .AXIS_DESC_DATA_WIDTH   ( AXIS_DESC_DATA_WIDTH ),
   .AXIS_TX_USER_WIDTH     ( AXIS_TX_USER_WIDTH   )
)u_re_trans_module
(
   .clk                              (  clk                               ),
   .rst                              (  rst                               ),
   .s_axis_wqe_data                  (  s_axis_wqe_data                   ),
   .s_axis_wqe_qpn                   (  s_axis_wqe_qpn                    ), 
   .s_axis_wqe_id                    (  s_axis_wqe_id                     ),
   .s_axis_wqe_valid                 (  s_axis_wqe_valid                  ),
   .s_axis_wqe_ready                 (  s_axis_wqe_ready                  ),
   .s_axis_tx_id                     (  s_axis_tx_id                      ),
   .s_axis_tx_psn                    (  s_axis_tx_psn                     ),
   .s_axis_tx_valid                  (  s_axis_tx_valid                   ),
   .s_axis_tx_ready                  (  s_axis_tx_ready                   ),
   .s_axis_ack_id                    (  s_axis_ack_id                     ),
   .s_axis_ack_psn                   (  s_axis_ack_psn                    ),
   .s_axis_ack_valid                 (  s_axis_ack_valid                  ),
   .s_axis_ack_ready                 (  s_axis_ack_ready                  ),      
   .m_axis_dma_read_wqe_dma_addr     (  m_axis_re_dma_read_wqe_dma_addr   ),
   .m_axis_dma_read_wqe_ram_addr     (  m_axis_re_dma_read_wqe_ram_addr   ),
   .m_axis_dma_read_wqe_len          (  m_axis_re_dma_read_wqe_len        ),
   .m_axis_dma_read_wqe_tag          (  m_axis_re_dma_read_wqe_tag        ),
   .m_axis_dma_read_wqe_valid        (  m_axis_re_dma_read_wqe_valid      ),
   .m_axis_dma_read_wqe_ready        (  m_axis_re_dma_read_wqe_ready      ),
   .s_axis_dma_read_wqe_status_tag   (  re_dma_tx_desc_status_tag         ),
   .s_axis_dma_read_wqe_status_error (  re_dma_tx_desc_status_error       ),
   .s_axis_dma_read_wqe_status_valid (  re_dma_tx_desc_status_valid       ),   
   .m_axis_tx_data_addr              (  m_axis_re_tx_data_addr            ),
   .m_axis_tx_data_len               (  m_axis_re_tx_data_len             ),
   .m_axis_tx_data_tag               (  m_axis_re_tx_data_tag             ),
   .m_axis_tx_data_id                (  m_axis_re_tx_data_id              ),
   .m_axis_tx_data_dest              (  m_axis_re_tx_data_dest            ),
   .m_axis_tx_data_user              (  m_axis_re_tx_data_user            ),
   .m_axis_tx_data_valid             (  m_axis_re_tx_data_valid           ),
   .m_axis_tx_data_ready             (  m_axis_re_tx_data_ready           ), 
   .m_axis_cpl_id                    (  m_axis_cpl_id                     ),
   .m_axis_cpl_valid                 (  m_axis_cpl_valid                  ),
   .m_axis_cpl_ready                 (  m_axis_cpl_ready                  )
);

axis_dma_read_wqe_mux #(
    .RAM_ADDR_WIDTH       ( RAM_ADDR_WIDTH       ),
    .DMA_CLIENT_LEN_WIDTH ( DMA_CLIENT_LEN_WIDTH ),
    .DMA_CLIENT_TAG_WIDTH ( DMA_CLIENT_TAG_WIDTH )
)u_m_axis_dma_read_wqe
(
    .m_axis_cu_dma_read_wqe_dma_addr     (  m_axis_cu_dma_read_wqe_dma_addr     ),
    .m_axis_cu_dma_read_wqe_ram_addr     (  m_axis_cu_dma_read_wqe_ram_addr     ),
    .m_axis_cu_dma_read_wqe_len          (  m_axis_cu_dma_read_wqe_len          ),
    .m_axis_cu_dma_read_wqe_tag          (  m_axis_cu_dma_read_wqe_tag          ),
    .m_axis_cu_dma_read_wqe_valid        (  m_axis_cu_dma_read_wqe_valid        ),
    .m_axis_cu_dma_read_wqe_ready        (  m_axis_cu_dma_read_wqe_ready        ),
    .m_axis_re_dma_read_wqe_dma_addr     (  m_axis_re_dma_read_wqe_dma_addr     ),
    .m_axis_re_dma_read_wqe_ram_addr     (  m_axis_re_dma_read_wqe_ram_addr     ),
    .m_axis_re_dma_read_wqe_len          (  m_axis_re_dma_read_wqe_len          ),
    .m_axis_re_dma_read_wqe_tag          (  m_axis_re_dma_read_wqe_tag          ),
    .m_axis_re_dma_read_wqe_valid        (  m_axis_re_dma_read_wqe_valid        ),
    .m_axis_re_dma_read_wqe_ready        (  m_axis_re_dma_read_wqe_ready        ),
    .m_axis_dma_read_wqe_dma_addr        (  m_axis_dma_read_wqe_dma_addr        ),
    .m_axis_dma_read_wqe_ram_addr        (  m_axis_dma_read_wqe_ram_addr        ),
    .m_axis_dma_read_wqe_len             (  m_axis_dma_read_wqe_len             ),
    .m_axis_dma_read_wqe_tag             (  m_axis_dma_read_wqe_tag             ),
    .m_axis_dma_read_wqe_valid           (  m_axis_dma_read_wqe_valid           ),
    .m_axis_dma_read_wqe_ready           (  m_axis_dma_read_wqe_ready           )
);

dma_wr_data_mux #
(
    .RAM_ADDR_WIDTH       ( RAM_ADDR_WIDTH     ),
    .RAM_SEG_COUNT        ( RAM_SEG_COUNT      ),
    .RAM_SEG_DATA_WIDTH   ( RAM_SEG_DATA_WIDTH ),
    .RAM_SEG_BE_WIDTH     ( RAM_SEG_BE_WIDTH   ),
    .RAM_SEG_ADDR_WIDTH   ( RAM_SEG_ADDR_WIDTH )
    
)u_dma_wr_data_mux
(
    .clk                         ( clk                                    ),
    .rst                         ( rst                                    ),
    .cu_dma_ram_wr_cmd_be        ( cu_dma_ram_wr_cmd_be                   ),
    .cu_dma_ram_wr_cmd_addr      ( cu_dma_ram_wr_cmd_addr                 ),
    .cu_dma_ram_wr_cmd_data      ( cu_dma_ram_wr_cmd_data                 ),
    .cu_dma_ram_wr_cmd_valid     ( cu_dma_ram_wr_cmd_valid                ),
    .cu_dma_ram_wr_cmd_ready     ( cu_dma_ram_wr_cmd_ready                ),
    .cu_dma_ram_wr_done          ( cu_dma_ram_wr_done                     ),                                                                                
    .re_dma_ram_wr_cmd_be        ( re_dma_ram_wr_cmd_be                   ),
    .re_dma_ram_wr_cmd_addr      ( re_dma_ram_wr_cmd_addr                 ),
    .re_dma_ram_wr_cmd_data      ( re_dma_ram_wr_cmd_data                 ),
    .re_dma_ram_wr_cmd_valid     ( re_dma_ram_wr_cmd_valid                ),
    .re_dma_ram_wr_cmd_ready     ( re_dma_ram_wr_cmd_ready                ),
    .re_dma_ram_wr_done          ( re_dma_ram_wr_done                     ),                                                                       
    .dma_ram_wr_cmd_be           ( dma_ram_wr_cmd_be                      ),
    .dma_ram_wr_cmd_addr         ( dma_ram_wr_cmd_addr                    ),
    .dma_ram_wr_cmd_data         ( dma_ram_wr_cmd_data                    ),
    .dma_ram_wr_cmd_valid        ( dma_ram_wr_cmd_valid                   ),
    .dma_ram_wr_cmd_ready        ( dma_ram_wr_cmd_ready                   ),
    .dma_ram_wr_done             ( dma_ram_wr_done                        ),    
    .m_axis_dma_read_wqe_tag     ( m_axis_dma_read_wqe_tag[DMA_TAG_WIDTH] ),
    .m_axis_dma_read_wqe_valid   ( m_axis_dma_read_wqe_valid              ),
    .m_axis_dma_read_wqe_ready   ( m_axis_dma_read_wqe_ready              )    
);


dma_psdpram #(
    .SIZE(TX_RAM_SIZE),
    .SEG_COUNT(RAM_SEG_COUNT),
    .SEG_DATA_WIDTH(RAM_SEG_DATA_WIDTH),
    .SEG_BE_WIDTH(RAM_SEG_BE_WIDTH),
    .SEG_ADDR_WIDTH(RAM_SEG_ADDR_WIDTH),
    .PIPELINE(RAM_PIPELINE)
)
dma_psdpram_tx_cu (
    .clk           ( clk                          ),
    .rst           ( rst                          ),

    /*
     * Write port
     */
    .wr_cmd_be     ( cu_dma_ram_wr_cmd_be         ),
    .wr_cmd_addr   ( cu_dma_ram_wr_cmd_addr       ),
    .wr_cmd_data   ( cu_dma_ram_wr_cmd_data       ),
    .wr_cmd_valid  ( cu_dma_ram_wr_cmd_valid      ),
    .wr_cmd_ready  ( cu_dma_ram_wr_cmd_ready      ),
    .wr_done       ( cu_dma_ram_wr_done           ),

    /*
     * Read port
     */
    .rd_cmd_addr   ( cu_dma_ram_rd_cmd_addr_int   ),
    .rd_cmd_valid  ( cu_dma_ram_rd_cmd_valid_int  ),
    .rd_cmd_ready  ( cu_dma_ram_rd_cmd_ready_int  ),
    .rd_resp_data  ( cu_dma_ram_rd_resp_data_int  ),
    .rd_resp_valid ( cu_dma_ram_rd_resp_valid_int ),
    .rd_resp_ready ( cu_dma_ram_rd_resp_ready_int )
);

dma_psdpram #(
    .SIZE(TX_RAM_SIZE),
    .SEG_COUNT(RAM_SEG_COUNT),
    .SEG_DATA_WIDTH(RAM_SEG_DATA_WIDTH),
    .SEG_BE_WIDTH(RAM_SEG_BE_WIDTH),
    .SEG_ADDR_WIDTH(RAM_SEG_ADDR_WIDTH),
    .PIPELINE(RAM_PIPELINE)
)
dma_psdpram_tx_re (
    .clk           ( clk                          ),
    .rst           ( rst                          ),

    /*
     * Write port
     */
    .wr_cmd_be     ( re_dma_ram_wr_cmd_be         ),
    .wr_cmd_addr   ( re_dma_ram_wr_cmd_addr       ),
    .wr_cmd_data   ( re_dma_ram_wr_cmd_data       ),
    .wr_cmd_valid  ( re_dma_ram_wr_cmd_valid      ),
    .wr_cmd_ready  ( re_dma_ram_wr_cmd_ready      ),
    .wr_done       ( re_dma_ram_wr_done           ),

    /*
     * Read port
     */
    .rd_cmd_addr   ( re_dma_ram_rd_cmd_addr_int   ),
    .rd_cmd_valid  ( re_dma_ram_rd_cmd_valid_int  ),
    .rd_cmd_ready  ( re_dma_ram_rd_cmd_ready_int  ),
    .rd_resp_data  ( re_dma_ram_rd_resp_data_int  ),
    .rd_resp_valid ( re_dma_ram_rd_resp_valid_int ),
    .rd_resp_ready ( re_dma_ram_rd_resp_ready_int )
);

dma_client_axis_source #(
    .RAM_ADDR_WIDTH(RAM_ADDR_WIDTH),
    .SEG_COUNT(RAM_SEG_COUNT),
    .SEG_DATA_WIDTH(RAM_SEG_DATA_WIDTH),
    .SEG_ADDR_WIDTH(RAM_SEG_ADDR_WIDTH),
    .SEG_BE_WIDTH(RAM_SEG_BE_WIDTH),
    .AXIS_DATA_WIDTH(AXIS_DATA_WIDTH),
    .AXIS_KEEP_ENABLE(AXIS_KEEP_WIDTH > 1),
    .AXIS_KEEP_WIDTH(AXIS_KEEP_WIDTH),
    .AXIS_LAST_ENABLE(1),
    .AXIS_ID_ENABLE(1),
    .AXIS_ID_WIDTH(AXIS_TX_ID_WIDTH),
    .AXIS_DEST_ENABLE(1),
    .AXIS_DEST_WIDTH(AXIS_TX_DEST_WIDTH),
    .AXIS_USER_ENABLE(1),
    .AXIS_USER_WIDTH(AXIS_TX_USER_WIDTH),
    .LEN_WIDTH(DMA_CLIENT_LEN_WIDTH),
    .TAG_WIDTH(DMA_CLIENT_TAG_WIDTH)
)
dma_client_axis_source_cu (
    .clk                           ( clk                          ),
    .rst                           ( rst                          ),
                                                                  
    /*                                                            
     * DMA read descriptor input                                  
     */                                                           
    .s_axis_read_desc_ram_addr     ( m_axis_cu_tx_data_addr       ),
    .s_axis_read_desc_len          ( m_axis_cu_tx_data_len        ),
    .s_axis_read_desc_tag          ( m_axis_cu_tx_data_tag        ),
    .s_axis_read_desc_id           ( m_axis_cu_tx_data_id         ),
    .s_axis_read_desc_dest         ( m_axis_cu_tx_data_dest       ),
    .s_axis_read_desc_user         ( m_axis_cu_tx_data_user       ),
    .s_axis_read_desc_valid        ( m_axis_cu_tx_data_valid      ),
    .s_axis_read_desc_ready        ( m_axis_cu_tx_data_ready      ),

    /*
     * DMA read descriptor status output
     */
    .m_axis_read_desc_status_tag   ( cu_dma_tx_desc_status_tag    ),
    .m_axis_read_desc_status_error ( cu_dma_tx_desc_status_error  ),
    .m_axis_read_desc_status_valid ( cu_dma_tx_desc_status_valid  ),

    /*
     * AXI stream read data output
     */
    .m_axis_read_data_tdata        ( cu_tx_axis_tdata_int         ),
    .m_axis_read_data_tkeep        ( cu_tx_axis_tkeep_int         ),
    .m_axis_read_data_tvalid       ( cu_tx_axis_tvalid_int        ),
    .m_axis_read_data_tready       ( cu_tx_axis_tready_int        ),
    .m_axis_read_data_tlast        ( cu_tx_axis_tlast_int         ),
    .m_axis_read_data_tid          ( cu_tx_axis_tid_int           ),
    .m_axis_read_data_tdest        ( cu_tx_axis_tdest_int         ),
    .m_axis_read_data_tuser        ( cu_tx_axis_tuser_int         ),
                                   
    /*                             
     * RAM interface               
     */                            
    .ram_rd_cmd_addr               ( cu_dma_ram_rd_cmd_addr_int   ),
    .ram_rd_cmd_valid              ( cu_dma_ram_rd_cmd_valid_int  ),
    .ram_rd_cmd_ready              ( cu_dma_ram_rd_cmd_ready_int  ),
    .ram_rd_resp_data              ( cu_dma_ram_rd_resp_data_int  ),
    .ram_rd_resp_valid             ( cu_dma_ram_rd_resp_valid_int ),
    .ram_rd_resp_ready             ( cu_dma_ram_rd_resp_ready_int ),

    /*
     * Configuration
     */
    .enable                        ( 1'b1                         )
);

dma_client_axis_source #(
    .RAM_ADDR_WIDTH(RAM_ADDR_WIDTH),
    .SEG_COUNT(RAM_SEG_COUNT),
    .SEG_DATA_WIDTH(RAM_SEG_DATA_WIDTH),
    .SEG_ADDR_WIDTH(RAM_SEG_ADDR_WIDTH),
    .SEG_BE_WIDTH(RAM_SEG_BE_WIDTH),
    .AXIS_DATA_WIDTH(AXIS_DATA_WIDTH),
    .AXIS_KEEP_ENABLE(AXIS_KEEP_WIDTH > 1),
    .AXIS_KEEP_WIDTH(AXIS_KEEP_WIDTH),
    .AXIS_LAST_ENABLE(1),
    .AXIS_ID_ENABLE(1),
    .AXIS_ID_WIDTH(AXIS_TX_ID_WIDTH),
    .AXIS_DEST_ENABLE(1),
    .AXIS_DEST_WIDTH(AXIS_TX_DEST_WIDTH),
    .AXIS_USER_ENABLE(1),
    .AXIS_USER_WIDTH(AXIS_TX_USER_WIDTH),
    .LEN_WIDTH(DMA_CLIENT_LEN_WIDTH),
    .TAG_WIDTH(DMA_CLIENT_TAG_WIDTH)
)
dma_client_axis_source_re (
    .clk                           ( clk                          ),
    .rst                           ( rst                          ),
                                                                  
    /*                                                            
     * DMA read descriptor input                                  
     */                                                           
    .s_axis_read_desc_ram_addr     ( m_axis_re_tx_data_addr       ),
    .s_axis_read_desc_len          ( m_axis_re_tx_data_len        ),
    .s_axis_read_desc_tag          ( m_axis_re_tx_data_tag        ),
    .s_axis_read_desc_id           ( m_axis_re_tx_data_id         ),
    .s_axis_read_desc_dest         ( m_axis_re_tx_data_dest       ),
    .s_axis_read_desc_user         ( m_axis_re_tx_data_user       ),
    .s_axis_read_desc_valid        ( m_axis_re_tx_data_valid      ),
    .s_axis_read_desc_ready        ( m_axis_re_tx_data_ready      ),

    /*
     * DMA read descriptor status output
     */
    .m_axis_read_desc_status_tag   ( re_dma_tx_desc_status_tag    ),
    .m_axis_read_desc_status_error ( re_dma_tx_desc_status_error  ),
    .m_axis_read_desc_status_valid ( re_dma_tx_desc_status_valid  ),

    /*
     * AXI stream read data output
     */
    .m_axis_read_data_tdata        ( re_tx_axis_tdata_int         ),
    .m_axis_read_data_tkeep        ( re_tx_axis_tkeep_int         ),
    .m_axis_read_data_tvalid       ( re_tx_axis_tvalid_int        ),
    .m_axis_read_data_tready       ( re_tx_axis_tready_int        ),
    .m_axis_read_data_tlast        ( re_tx_axis_tlast_int         ),
    .m_axis_read_data_tid          ( re_tx_axis_tid_int           ),
    .m_axis_read_data_tdest        ( re_tx_axis_tdest_int         ),
    .m_axis_read_data_tuser        ( re_tx_axis_tuser_int         ),
                                   
    /*                             
     * RAM interface               
     */                            
    .ram_rd_cmd_addr               ( re_dma_ram_rd_cmd_addr_int   ),
    .ram_rd_cmd_valid              ( re_dma_ram_rd_cmd_valid_int  ),
    .ram_rd_cmd_ready              ( re_dma_ram_rd_cmd_ready_int  ),
    .ram_rd_resp_data              ( re_dma_ram_rd_resp_data_int  ),
    .ram_rd_resp_valid             ( re_dma_ram_rd_resp_valid_int ),
    .ram_rd_resp_ready             ( re_dma_ram_rd_resp_ready_int ),

    /*
     * Configuration
     */
    .enable                        ( 1'b1                         )
);

tx_axis_tdata_mux #(
    .AXIS_DATA_WIDTH    ( AXIS_DATA_WIDTH    ),
    .AXIS_KEEP_WIDTH    ( AXIS_KEEP_WIDTH    ),
    .AXIS_TX_ID_WIDTH   ( AXIS_TX_ID_WIDTH   ),
    .AXIS_TX_DEST_WIDTH ( AXIS_TX_DEST_WIDTH ),
    .AXIS_TX_USER_WIDTH ( AXIS_TX_USER_WIDTH )
)u_tx_axis_tdata_mux
(
    .cu_tx_axis_tdata_int      (  cu_tx_axis_tdata_int      ),
    .cu_tx_axis_tkeep_int      (  cu_tx_axis_tkeep_int      ),
    .cu_tx_axis_tvalid_int     (  cu_tx_axis_tvalid_int     ),
    .cu_tx_axis_tready_int     (  cu_tx_axis_tready_int     ),
    .cu_tx_axis_tlast_int      (  cu_tx_axis_tlast_int      ),
    .cu_tx_axis_tid_int        (  cu_tx_axis_tid_int        ),
    .cu_tx_axis_tdest_int      (  cu_tx_axis_tdest_int      ),
    .cu_tx_axis_tuser_int      (  cu_tx_axis_tuser_int      ),
    .re_tx_axis_tdata_int      (  re_tx_axis_tdata_int      ),
    .re_tx_axis_tkeep_int      (  re_tx_axis_tkeep_int      ),
    .re_tx_axis_tvalid_int     (  re_tx_axis_tvalid_int     ),
    .re_tx_axis_tready_int     (  re_tx_axis_tready_int     ),
    .re_tx_axis_tlast_int      (  re_tx_axis_tlast_int      ),
    .re_tx_axis_tid_int        (  re_tx_axis_tid_int        ),
    .re_tx_axis_tdest_int      (  re_tx_axis_tdest_int      ),
    .re_tx_axis_tuser_int      (  re_tx_axis_tuser_int      ),
    .tx_axis_tdata_int         (  tx_axis_tdata_int         ),
    .tx_axis_tkeep_int         (  tx_axis_tkeep_int         ),
    .tx_axis_tvalid_int        (  tx_axis_tvalid_int        ),
    .tx_axis_tready_int        (  tx_axis_tready_int        ),
    .tx_axis_tlast_int         (  tx_axis_tlast_int         ),
    .tx_axis_tid_int           (  tx_axis_tid_int           ),
    .tx_axis_tdest_int         (  tx_axis_tdest_int         ),
    .tx_axis_tuser_int         (  tx_axis_tuser_int         )
);

mqnic_egress #(
    .TX_CHECKSUM_ENABLE(TX_CHECKSUM_ENABLE),
    .AXIS_DATA_WIDTH(AXIS_DATA_WIDTH),
    .AXIS_KEEP_WIDTH(AXIS_KEEP_WIDTH),
    .AXIS_ID_WIDTH(AXIS_TX_ID_WIDTH),
    .AXIS_DEST_WIDTH(AXIS_TX_DEST_WIDTH),
    .AXIS_USER_WIDTH(AXIS_TX_USER_WIDTH),
    .MAX_TX_SIZE(MAX_TX_SIZE)
)
egress_inst (
    .clk(clk),
    .rst(rst),

    /*
     * Transmit data input
     */
    .s_axis_tdata(tx_axis_tdata_int),
    .s_axis_tkeep(tx_axis_tkeep_int),
    .s_axis_tvalid(tx_axis_tvalid_int),
    .s_axis_tready(tx_axis_tready_int),
    .s_axis_tlast(tx_axis_tlast_int),
    .s_axis_tid(tx_axis_tid_int),
    .s_axis_tdest(tx_axis_tdest_int),
    .s_axis_tuser(tx_axis_tuser_int),

    /*
     * Transmit data output
     */
    .m_axis_tdata(m_axis_tx_tdata),
    .m_axis_tkeep(m_axis_tx_tkeep),
    .m_axis_tvalid(m_axis_tx_tvalid),
    .m_axis_tready(m_axis_tx_tready),
    .m_axis_tlast(m_axis_tx_tlast),
    .m_axis_tid(m_axis_tx_tid),
    .m_axis_tdest(m_axis_tx_tdest),
    .m_axis_tuser(m_axis_tx_tuser),

    /*
     * Transmit checksum command
     */
    .tx_csum_cmd_csum_enable(0),
    .tx_csum_cmd_csum_start(0),
    .tx_csum_cmd_csum_offset(0),
    .tx_csum_cmd_valid(0),
    .tx_csum_cmd_ready()
);

endmodule

`resetall
