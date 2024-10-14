`timescale 1ns/1ps

module tb_tx_engine();

localparam PORTS = 1;
localparam WQE_INDEX_WIDTH    = 10 ;
localparam AXIS_WQE_DATA_WIDTH = 256;
localparam DMA_ADDR_WIDTH = 64;
localparam RAM_ADDR_WIDTH = 32;  
localparam DMA_LEN_WIDTH = 20; 
localparam DMA_TAG_WIDTH = WQE_INDEX_WIDTH;
localparam DMA_CLIENT_LEN_WIDTH = 20;
localparam DMA_CLIENT_TAG_WIDTH = WQE_INDEX_WIDTH;  
localparam AXIS_DESC_DATA_WIDTH = 512;
localparam AXIS_DESC_KEEP_WIDTH = AXIS_DESC_DATA_WIDTH/8;    
localparam AXIS_TX_ID_WIDTH = WQE_INDEX_WIDTH;
localparam AXIS_TX_DEST_WIDTH = $clog2(PORTS)+4;
localparam AXIS_TX_USER_WIDTH = 232;

reg                             clk;                          
reg                             rst;                          

/*
 * Transmit request input
 */
reg [WQE_INDEX_WIDTH-1:0]       s_axis_manager_id   ;
reg                             s_axis_manager_valid;
wire                            s_axis_manager_ready;

/*
 * WQE request output
 */
wire [WQE_INDEX_WIDTH-1:0]      m_axis_wqe_req_id    ;
wire                            m_axis_wqe_req_valid ;
reg                             m_axis_wqe_req_ready ;

/*
 * Descriptor data input
 */
reg [AXIS_WQE_DATA_WIDTH-1:0]   s_axis_wqe_data ;
reg [24-1:0]                    s_axis_wqe_qpn  ; 
reg [WQE_INDEX_WIDTH-1:0]       s_axis_wqe_id   ;
reg                             s_axis_wqe_valid;
wire                            s_axis_wqe_ready;

/*
 * DMA read data output
 */
wire [DMA_ADDR_WIDTH-1:0]       m_axis_dma_read_wqe_dma_addr ;
wire [RAM_ADDR_WIDTH-1:0]       m_axis_dma_read_wqe_ram_addr ;
wire [DMA_LEN_WIDTH-1:0]        m_axis_dma_read_wqe_len      ;
wire [DMA_TAG_WIDTH-1:0]        m_axis_dma_read_wqe_tag      ;
wire                            m_axis_dma_read_wqe_valid    ;
reg                             m_axis_dma_read_wqe_ready    ;

/*
 * DMA read data status input
 */
reg [DMA_TAG_WIDTH-1:0]         s_axis_dma_read_wqe_status_tag   ;
reg                             s_axis_dma_read_wqe_status_valid ;

/*
 * Transmit data output
 */
wire [RAM_ADDR_WIDTH-1:0]       m_axis_tx_data_addr ;
wire [DMA_CLIENT_LEN_WIDTH-1:0] m_axis_tx_data_len  ;
wire [DMA_CLIENT_TAG_WIDTH-1:0] m_axis_tx_data_tag  ;
wire [AXIS_TX_ID_WIDTH-1:0]     m_axis_tx_data_id   ;
wire [AXIS_TX_DEST_WIDTH-1:0]   m_axis_tx_data_dest ;
wire [AXIS_TX_USER_WIDTH-1:0]   m_axis_tx_data_user ;
wire                            m_axis_tx_data_valid;
reg                             m_axis_tx_data_ready;

/*
 * Resource pool
 */    
reg                             s_axis_resource_ready;


reg  [32 -1:0]             simcnt           ;

wire [32 -1:0]             wqe_dma_total_len_1;
wire [32 -1:0]             wqe_rip_1          ;
wire [64 -1:0]             wqe_laddr_1        ;
wire [64 -1:0]             wqe_raddr_1        ;
wire [24 -1:0]             wqe_dst_qpn_1      ;
wire [16 -1:0]             wqe_src_port_1     ;
wire [3  -1:0]             wqe_priority_1     ;
wire [1  -1:0]             wqe_fence_1        ;
wire [20 -1:0]             wqe_task_id_1      ;  

wire [32 -1:0]             wqe_dma_total_len_2;
wire [32 -1:0]             wqe_rip_2          ;
wire [64 -1:0]             wqe_laddr_2        ;
wire [64 -1:0]             wqe_raddr_2        ;
wire [24 -1:0]             wqe_dst_qpn_2      ;
wire [16 -1:0]             wqe_src_port_2     ;
wire [3  -1:0]             wqe_priority_2     ;
wire [1  -1:0]             wqe_fence_2        ;
wire [20 -1:0]             wqe_task_id_2      ; 
                                                               
reg [WQE_INDEX_WIDTH-1:0] r_axis_dma_read_wqe_status_tag     ;                                                             
reg                       r_axis_dma_read_wqe_status_valid   ;                                                           
reg [WQE_INDEX_WIDTH-1:0] r_axis_dma_read_wqe_status_tag_1d  ;
reg                       r_axis_dma_read_wqe_status_valid_1d;
reg [WQE_INDEX_WIDTH-1:0] r_axis_dma_read_wqe_status_tag_2d  ;
reg                       r_axis_dma_read_wqe_status_valid_2d;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
tx_engine_v4 #
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
)u_tx_engine_v4
(
   .clk                              (  clk                               ),
   .rst                              (  rst                               ),
   .s_axis_manager_id                (  s_axis_manager_id                 ),
   .s_axis_manager_valid             (  s_axis_manager_valid              ),
   .s_axis_manager_ready             (  s_axis_manager_ready              ),
   .m_axis_wqe_req_id                (  m_axis_wqe_req_id                 ),
   .m_axis_wqe_req_valid             (  m_axis_wqe_req_valid              ),
   .m_axis_wqe_req_ready             (  m_axis_wqe_req_ready              ),
   .s_axis_wqe_data                  (  s_axis_wqe_data                   ),
   .s_axis_wqe_qpn                   (  s_axis_wqe_qpn                    ), 
   .s_axis_wqe_id                    (  s_axis_wqe_id                     ),
   .s_axis_wqe_valid                 (  s_axis_wqe_valid                  ),
   .s_axis_wqe_ready                 (  s_axis_wqe_ready                  ),
   .m_axis_dma_read_wqe_dma_addr     (  m_axis_dma_read_wqe_dma_addr      ),
   .m_axis_dma_read_wqe_ram_addr     (  m_axis_dma_read_wqe_ram_addr      ),
   .m_axis_dma_read_wqe_len          (  m_axis_dma_read_wqe_len           ),
   .m_axis_dma_read_wqe_tag          (  m_axis_dma_read_wqe_tag           ),
   .m_axis_dma_read_wqe_valid        (  m_axis_dma_read_wqe_valid         ),
   .m_axis_dma_read_wqe_ready        (  m_axis_dma_read_wqe_ready         ),
   .s_axis_dma_read_wqe_status_tag   (  s_axis_dma_read_wqe_status_tag    ),
   .s_axis_dma_read_wqe_status_valid (  s_axis_dma_read_wqe_status_valid  ),
   .m_axis_tx_data_addr              (  m_axis_tx_data_addr               ),
   .m_axis_tx_data_len               (  m_axis_tx_data_len                ),
   .m_axis_tx_data_tag               (  m_axis_tx_data_tag                ),
   .m_axis_tx_data_id                (  m_axis_tx_data_id                 ),
   .m_axis_tx_data_dest              (  m_axis_tx_data_dest               ),
   .m_axis_tx_data_user              (  m_axis_tx_data_user               ),
   .m_axis_tx_data_valid             (  m_axis_tx_data_valid              ),
   .m_axis_tx_data_ready             (  m_axis_tx_data_ready              ),   
   .s_axis_resource_ready            (  s_axis_resource_ready             )
);



always #2.5 clk = ~clk;    

integer i;

initial
begin
  clk = 1'b0;
  rst = 1'b1;
  
  s_axis_manager_id                 = 0;
  s_axis_manager_valid              = 0;
  m_axis_wqe_req_ready              = 1'b1;
  m_axis_dma_read_wqe_ready         = 1'b1;
  s_axis_dma_read_wqe_status_tag    = 0;
  s_axis_dma_read_wqe_status_valid  = 0;
  m_axis_tx_data_ready              = 1'b1;
  s_axis_resource_ready             = 1'b1;


  #1000;
  rst= 1'b0;
  #1000;  
  s_axis_manager_id                 = 10'd6;
  s_axis_manager_valid              = 1'b1 ;  
  #5;  
  s_axis_manager_valid              = 1'b0 ; 
  
  #100;  
  s_axis_manager_id                 = 10'd4;
  s_axis_manager_valid              = 1'b1 ;  
  #5;  
  s_axis_manager_valid              = 1'b0 ; 
  
    
  #500000;  
  //INST FIFO WR

  //INST REG WR

end

always @( posedge clk )begin
  if(rst)
    simcnt <= 32'b0;
  else
    simcnt <= simcnt + 32'b1;
end

assign wqe_dma_total_len_1 = 32'd3072;              //[31:0];  
assign wqe_rip_1           = 32'h12345678;          //[63:32]; 
assign wqe_laddr_1         = 64'h123456789abcdef0;  //[127:64];
assign wqe_raddr_1         = 64'h0fedcba987654321;  //[191:128]
assign wqe_dst_qpn_1       = 24'd24;                //[215:192]
assign wqe_src_port_1      = 16'h2468;              //[231:216]
assign wqe_priority_1      = 3'b0;                  //[234:232]
assign wqe_fence_1         = 1'b1;                  //[235];   
assign wqe_task_id_1       = 20'h12345;             //[255:236]

assign wqe_dma_total_len_2 = 32'd4096;              //[31:0];  
assign wqe_rip_2           = 32'h23456789;          //[63:32]; 
assign wqe_laddr_2         = 64'h23456789abcdef01;  //[127:64];
assign wqe_raddr_2         = 64'hfedcba9876543210;  //[191:128]
assign wqe_dst_qpn_2       = 24'd22;                //[215:192]
assign wqe_src_port_2      = 16'h1357;              //[231:216]
assign wqe_priority_2      = 3'b1;                  //[234:232]
assign wqe_fence_2         = 1'b0;                  //[235];   
assign wqe_task_id_2       = 20'h23451;             //[255:236]


//wqe data intface reg
always @( posedge clk )begin
  if(rst) begin
    s_axis_wqe_data                   <= 0;
    s_axis_wqe_qpn                    <= 0;
    s_axis_wqe_id                     <= 0;
    s_axis_wqe_valid                  <= 0;
  end
  else if(m_axis_wqe_req_valid) begin
    if(m_axis_wqe_req_id == 6)
      s_axis_wqe_data                   <= {wqe_task_id_1, wqe_fence_1, wqe_priority_1, wqe_src_port_1, wqe_dst_qpn_1, wqe_raddr_1, wqe_laddr_1, wqe_rip_1, wqe_dma_total_len_1};
    else
      s_axis_wqe_data                   <= {wqe_task_id_2, wqe_fence_2, wqe_priority_2, wqe_src_port_2, wqe_dst_qpn_2, wqe_raddr_2, wqe_laddr_2, wqe_rip_2, wqe_dma_total_len_2};
    s_axis_wqe_qpn                    <= 0;
    s_axis_wqe_id                     <= m_axis_wqe_req_id;
    s_axis_wqe_valid                  <= 1'b1;
  end
  else if(s_axis_wqe_ready && s_axis_wqe_valid) begin
    s_axis_wqe_data                   <= 0;
    s_axis_wqe_qpn                    <= 0;
    s_axis_wqe_id                     <= 0;
    s_axis_wqe_valid                  <= 1'b0;
  end
end


always @( posedge clk )begin
  if(rst) begin
    r_axis_dma_read_wqe_status_tag    <= 0;
    r_axis_dma_read_wqe_status_valid  <= 0;     
  end
  else if(m_axis_dma_read_wqe_valid && m_axis_dma_read_wqe_ready) begin
    r_axis_dma_read_wqe_status_tag    <= m_axis_dma_read_wqe_tag;
    r_axis_dma_read_wqe_status_valid  <= 1'b1;
  end
  else begin
    r_axis_dma_read_wqe_status_tag    <= 0;
    r_axis_dma_read_wqe_status_valid  <= 0;
  end
end

always @( posedge clk )begin
  if(rst) begin
    r_axis_dma_read_wqe_status_tag_1d    <= 0;
    r_axis_dma_read_wqe_status_valid_1d  <= 0; 
    r_axis_dma_read_wqe_status_tag_2d    <= 0;     
    r_axis_dma_read_wqe_status_valid_2d  <= 0; 
    s_axis_dma_read_wqe_status_tag       <= 0;
    s_axis_dma_read_wqe_status_valid     <= 0;
  end
  else begin    
    r_axis_dma_read_wqe_status_tag_1d    <= r_axis_dma_read_wqe_status_tag;    
    r_axis_dma_read_wqe_status_valid_1d  <= r_axis_dma_read_wqe_status_valid;  
    r_axis_dma_read_wqe_status_tag_2d    <= r_axis_dma_read_wqe_status_tag_1d  ; 
    r_axis_dma_read_wqe_status_valid_2d  <= r_axis_dma_read_wqe_status_valid_1d;
    s_axis_dma_read_wqe_status_tag       <= r_axis_dma_read_wqe_status_tag_2d  ;
    s_axis_dma_read_wqe_status_valid     <= r_axis_dma_read_wqe_status_valid_2d;
  end
end

endmodule

