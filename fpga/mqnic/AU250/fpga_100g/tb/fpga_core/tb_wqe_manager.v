`timescale 1ns/1ps

module tb_wqe_manager();

localparam QUEUE_INDEX_WIDTH = 10;
localparam AXIL_ADDR_WIDTH = 16;
localparam AXIL_DATA_WIDTH = 32;  
localparam AXIL_STRB_WIDTH =  (AXIL_DATA_WIDTH/8); 
localparam QUEUE_RAM_DEPTH = 1024;                   
localparam QUEUE_RAM_AWIDTH = $clog2(QUEUE_RAM_DEPTH) ;

reg                             clk;                          
reg                             rst;                          

 /*                                                      
  * CQ commit input                                      
  */                                                     
reg  [QUEUE_RAM_AWIDTH-1:0]     s_axis_cq_id   ;
reg                             s_axis_cq_valid;
wire                            s_axis_cq_ready;
                                                         
 /*                                                      
  * WQE DATA output                                      
  */                                                     
wire [255:0]                    m_axis_wqe_data ;
wire [QUEUE_INDEX_WIDTH-1:0]    m_axis_wqe_qpn  ;
wire [QUEUE_RAM_AWIDTH-1:0]     m_axis_wqe_id   ;
wire                            m_axis_wqe_valid;
reg                             m_axis_wqe_ready;
                                                         
 /*                                                      
  * AXI-Lite slave interface                             
  */                                                     
reg  [AXIL_ADDR_WIDTH-1:0]      s_axil_awaddr;   
reg  [2:0]                      s_axil_awprot;   
reg                             s_axil_awvalid;  
wire                            s_axil_awready;  
reg  [AXIL_DATA_WIDTH-1:0]      s_axil_wdata;    
reg  [AXIL_STRB_WIDTH-1:0]      s_axil_wstrb;    
reg                             s_axil_wvalid;   
wire                            s_axil_wready;   
wire [1:0]                      s_axil_bresp;    
wire                            s_axil_bvalid;   
reg                             s_axil_bready;   
reg  [AXIL_ADDR_WIDTH-1:0]      s_axil_araddr;   
reg  [2:0]                      s_axil_arprot;   
reg                             s_axil_arvalid;  
wire                            s_axil_arready;  
wire [AXIL_DATA_WIDTH-1:0]      s_axil_rdata;    
wire [1:0]                      s_axil_rresp;    
wire                            s_axil_rvalid;   
reg                             s_axil_rready;   
                                                    
reg                             enable        ;   
reg  [32 -1:0]                  simcnt           ;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////
queue_manager_tx_0913 #(
    .PIPELINE          ( 2                      ),
    .QUEUE_INDEX_WIDTH ( 10                     ),
    .AXIL_DATA_WIDTH   ( 32                     ),
    .QUEUE_RAM_DEPTH   ( 1024                   )
)u_queue_manager_tx
(
    .clk               ( clk              ),
    .rst               ( rst              ),
    .s_axis_cq_id      ( s_axis_cq_id     ),
    .s_axis_cq_valid   ( s_axis_cq_valid  ),
    .s_axis_cq_ready   ( s_axis_cq_ready  ),   
    .m_axis_wqe_data   ( m_axis_wqe_data  ),
    .m_axis_wqe_qpn    ( m_axis_wqe_qpn   ),    
    .m_axis_wqe_id     ( m_axis_wqe_id    ),
    .m_axis_wqe_valid  ( m_axis_wqe_valid ),
    .m_axis_wqe_ready  ( m_axis_wqe_ready ),
    .s_axil_awaddr     ( s_axil_awaddr    ),
    .s_axil_awprot     ( s_axil_awprot    ),
    .s_axil_awvalid    ( s_axil_awvalid   ),
    .s_axil_awready    ( s_axil_awready   ),
    .s_axil_wdata      ( s_axil_wdata     ),
    .s_axil_wstrb      ( s_axil_wstrb     ),
    .s_axil_wvalid     ( s_axil_wvalid    ),
    .s_axil_wready     ( s_axil_wready    ),
    .s_axil_bresp      ( s_axil_bresp     ),
    .s_axil_bvalid     ( s_axil_bvalid    ),
    .s_axil_bready     ( s_axil_bready    ),
    .s_axil_araddr     ( s_axil_araddr    ),
    .s_axil_arprot     ( s_axil_arprot    ),
    .s_axil_arvalid    ( s_axil_arvalid   ),
    .s_axil_arready    ( s_axil_arready   ),
    .s_axil_rdata      ( s_axil_rdata     ),
    .s_axil_rresp      ( s_axil_rresp     ),
    .s_axil_rvalid     ( s_axil_rvalid    ),
    .s_axil_rready     ( s_axil_rready    ),
    .enable            ( enable           )
);



always #2.5 clk = ~clk;    

integer i;

initial
begin
  clk = 1'b1;
  rst = 1'b1;           
  
  s_axis_cq_id                      = 0;
  s_axis_cq_valid                   = 0;

  m_axis_wqe_ready                  = 1;
  
  s_axil_awaddr                    = 0;
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 0;     
  
  s_axil_wdata                      = 0;
  s_axil_wstrb                      = 0;
  s_axil_wvalid                     = 0;
    
  s_axil_bready                     = 1'b1;
  s_axil_araddr                     = 0;
  s_axil_arprot                     = 0;
  s_axil_arvalid                    = 1'b0;
  s_axil_rready                     = 1'b1;     
  enable                            = 1'b1; 


  #1005;
  rst= 1'b0;
  #1000;  
  s_axil_awaddr                    = {11'd1,3'd0,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1;     
  
  s_axil_wdata                      = 32'h00000001;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0;  
  
  #10;  
  s_axil_awaddr                    = {11'd1,3'd1,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000002;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0;  
  
  #10;  
  s_axil_awaddr                    = {11'd1,3'd2,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000003;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 

  #10;  
  s_axil_awaddr                    = {11'd1,3'd3,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000004;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 

  #10;  
  s_axil_awaddr                    = {11'd1,3'd4,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000005;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd1,3'd5,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000006;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd1,3'd6,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000007;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd1,3'd7,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000008;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd2,3'd0,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1;     
  
  s_axil_wdata                      = 32'h00000001;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0;  
  
  #10;  
  s_axil_awaddr                    = {11'd2,3'd1,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000002;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0;  
  
  #10;  
  s_axil_awaddr                    = {11'd2,3'd2,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000003;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 

  #10;  
  s_axil_awaddr                    = {11'd2,3'd3,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000004;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 

  #10;  
  s_axil_awaddr                    = {11'd2,3'd4,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000005;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd2,3'd5,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000006;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd2,3'd6,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000007;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0; 
  
  #10;  
  s_axil_awaddr                    = {11'd2,3'd7,2'b0};
  s_axil_awprot                    = 0;
  s_axil_awvalid                   = 1; 
  s_axil_wdata                      = 32'h00000009;
  s_axil_wstrb                      = 4'b1111;
  s_axil_wvalid                     = 1'b1;
  #5;  
  s_axil_awvalid                    = 1'b0; 
  s_axil_wvalid                     = 1'b0;        
  
  #100;
  s_axis_cq_id                        = 0;  
  s_axis_cq_valid                     = 1'b1;     
  #5;
  s_axis_cq_valid                     = 1'b0;   
                                      
  #100;
  s_axis_cq_id                        = 1;  
  s_axis_cq_valid                     = 1'b1;     
  #5;
  s_axis_cq_valid                     = 1'b0;  
  
  #10
  s_axil_araddr                       = {11'd0, 3'd0,2'b0};
  s_axil_arvalid                      = 1'b1;
  #5;
  s_axil_arvalid                      = 1'b0;
  
  #10
  s_axil_araddr                       = {11'd0, 3'd1,2'b0};
  s_axil_arvalid                      = 1'b1;
  #5;
  s_axil_arvalid                      = 1'b0; 
      
  #500000;  

end

always @( posedge clk )begin
  if(rst)
    simcnt <= 32'b0;
  else
    simcnt <= simcnt + 32'b1;
end


endmodule

