// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2019-2023 The Regents of the University of California
 */

// Language: Verilog 2001

`resetall
`timescale 1ns / 1ps
`default_nettype none

/*
 * Queue manager
 */
module queue_manager_tx_0913 #
(
    // Pipeline stages
    parameter PIPELINE = 2,
    //WQE index width
    parameter QUEUE_INDEX_WIDTH = 10,
    // Width of AXI lite data bus in bits
    parameter AXIL_DATA_WIDTH = 32,
    // Width of AXI lite address bus in bits
    parameter AXIL_ADDR_WIDTH = QUEUE_INDEX_WIDTH+5,
    // Width of AXI lite wstrb (width of data bus in words)
    parameter AXIL_STRB_WIDTH = (AXIL_DATA_WIDTH/8),
    
    //v4
    parameter QUEUE_RAM_DEPTH = 1024,                    
    parameter QUEUE_RAM_AWIDTH = $clog2(QUEUE_RAM_DEPTH) 
)
(
    input  wire                            clk,
    input  wire                            rst,

    /*
     * CQ commit input
     */
    input  wire [QUEUE_RAM_AWIDTH-1:0]     s_axis_cq_id    ,
    input  wire                            s_axis_cq_valid ,
    output wire                            s_axis_cq_ready ,

    /*
     * WQE DATA output
     */    
    output wire [255:0]                    m_axis_wqe_data ,
    output wire [QUEUE_INDEX_WIDTH-1:0]    m_axis_wqe_qpn  ,    
    output wire [QUEUE_RAM_AWIDTH-1:0]     m_axis_wqe_id   ,
    output wire                            m_axis_wqe_valid,
    input  wire                            m_axis_wqe_ready,

    /*
     * AXI-Lite slave interface
     */
    input  wire [AXIL_ADDR_WIDTH-1:0]      s_axil_awaddr,
    input  wire [2:0]                      s_axil_awprot,
    input  wire                            s_axil_awvalid,
    output wire                            s_axil_awready,
    input  wire [AXIL_DATA_WIDTH-1:0]      s_axil_wdata,
    input  wire [AXIL_STRB_WIDTH-1:0]      s_axil_wstrb,
    input  wire                            s_axil_wvalid,
    output wire                            s_axil_wready,
    output wire [1:0]                      s_axil_bresp,
    output wire                            s_axil_bvalid,
    input  wire                            s_axil_bready,
    input  wire [AXIL_ADDR_WIDTH-1:0]      s_axil_araddr,
    input  wire [2:0]                      s_axil_arprot,
    input  wire                            s_axil_arvalid,
    output wire                            s_axil_arready,
    output wire [AXIL_DATA_WIDTH-1:0]      s_axil_rdata,
    output wire [1:0]                      s_axil_rresp,
    output wire                            s_axil_rvalid,
    input  wire                            s_axil_rready,

    /*
     * Configuration
     */
    input  wire                            enable
);

localparam QUEUE_RAM_BE_WIDTH = 34;
localparam QUEUE_RAM_WIDTH = QUEUE_RAM_BE_WIDTH*8;


reg [PIPELINE-1:0] op_axil_write_pipe_reg = {PIPELINE{1'b0}}, op_axil_write_pipe_next;
reg [PIPELINE-1:0] op_axil_read_pipe_reg = {PIPELINE{1'b0}}, op_axil_read_pipe_next;
reg [PIPELINE-1:0] op_commit_pipe_reg = {PIPELINE{1'b0}}, op_commit_pipe_next;

reg [QUEUE_INDEX_WIDTH-1:0] queue_index_pipeline_reg[PIPELINE-1:0], queue_index_pipeline_next[PIPELINE-1:0];
reg [2:0] axil_reg_pipeline_reg[PIPELINE-1:0], axil_reg_pipeline_next[PIPELINE-1:0];
reg [AXIL_DATA_WIDTH-1:0] write_data_pipeline_reg[PIPELINE-1:0], write_data_pipeline_next[PIPELINE-1:0];
reg [AXIL_STRB_WIDTH-1:0] write_strobe_pipeline_reg[PIPELINE-1:0], write_strobe_pipeline_next[PIPELINE-1:0];

reg s_axil_awready_reg = 0, s_axil_awready_next;
reg s_axil_wready_reg = 0, s_axil_wready_next;
reg s_axil_bvalid_reg = 0, s_axil_bvalid_next;
reg s_axil_arready_reg = 0, s_axil_arready_next;
reg [AXIL_DATA_WIDTH-1:0] s_axil_rdata_reg = 0, s_axil_rdata_next;
reg s_axil_rvalid_reg = 0, s_axil_rvalid_next;

(* ramstyle = "no_rw_check" *)
reg [QUEUE_RAM_WIDTH-1:0] queue_ram[QUEUE_RAM_DEPTH-1:0];
reg [QUEUE_RAM_AWIDTH-1:0] queue_ram_write_ptr_reg, queue_ram_write_ptr_next;     
reg [QUEUE_RAM_AWIDTH-1:0] queue_ram_read_ptr_reg, queue_ram_read_ptr_next;  
reg [QUEUE_RAM_WIDTH-1:0] queue_ram_write_data;
reg queue_ram_wr_en;
reg [QUEUE_RAM_BE_WIDTH-1:0] queue_ram_be;
reg [QUEUE_RAM_WIDTH-1:0] queue_ram_read_data_reg = 0;
reg [QUEUE_RAM_WIDTH-1:0] queue_ram_read_data_pipeline_reg[PIPELINE-1:1];

reg [QUEUE_RAM_AWIDTH-1:0] queue_ram_read_data_prod_ptr, queue_ram_read_data_prod_next;
reg [QUEUE_RAM_AWIDTH-1:0] queue_ram_read_data_cons_ptr, queue_ram_read_data_cons_next;

reg [255:0]                    m_axis_wqe_data_reg ,  m_axis_wqe_data_next  ;
reg [QUEUE_INDEX_WIDTH-1:0]    m_axis_wqe_qpn_reg  ,  m_axis_wqe_qpn_next   ;
reg [QUEUE_RAM_AWIDTH-1:0]     m_axis_wqe_id_reg   ,  m_axis_wqe_id_next    ;
reg                            m_axis_wqe_valid_reg,  m_axis_wqe_valid_next ;

(* ramstyle = "no_rw_check" *)
reg [QUEUE_INDEX_WIDTH-1:0] index_ram[QUEUE_RAM_DEPTH-1:0];
reg                         index_ram_wen   ;
reg [QUEUE_INDEX_WIDTH-1:0] index_ram_wdata ;
reg [QUEUE_RAM_DEPTH-1:0]   index_ram_waddr ;
reg                         index_ram_ren   ;
reg [QUEUE_INDEX_WIDTH-1:0] index_ram_rdata ;
reg [QUEUE_RAM_DEPTH-1:0]   index_ram_raddr ;

reg                          fifo_wen, fifo_wen_next;
wire                         fifo_ren   ;
wire                         fifo_empty ;
wire                         fifo_full  ;
wire                         fifo_aempty;
wire                         fifo_afull ;
wire [QUEUE_INDEX_WIDTH-1:0] fifo_rdata ;


assign s_axil_awready = s_axil_awready_reg;
assign s_axil_wready = s_axil_wready_reg;
assign s_axil_bresp = 2'b00;
assign s_axil_bvalid = s_axil_bvalid_reg;
assign s_axil_arready = s_axil_arready_reg;
assign s_axil_rdata = s_axil_rdata_reg;
assign s_axil_rresp = 2'b00;
assign s_axil_rvalid = s_axil_rvalid_reg;

assign m_axis_wqe_data   = m_axis_wqe_data_reg  ;
assign m_axis_wqe_qpn    = m_axis_wqe_qpn_reg   ;
assign m_axis_wqe_id     = m_axis_wqe_id_reg    ;
assign m_axis_wqe_valid  = m_axis_wqe_valid_reg ;

assign s_axis_cq_ready   = 1'b1;

wire [QUEUE_INDEX_WIDTH-1:0] s_axil_awaddr_queue = s_axil_awaddr >> 5;
wire [2:0] s_axil_awaddr_reg = s_axil_awaddr >> 2;

wire [QUEUE_INDEX_WIDTH-1:0] s_axil_araddr_queue = s_axil_araddr >> 5;
wire [2:0] s_axil_araddr_reg = s_axil_araddr >> 2;


integer i, j;

initial begin
    // break up loop to work around iteration termination
    for (i = 0; i < 2**QUEUE_INDEX_WIDTH; i = i + 2**(QUEUE_INDEX_WIDTH/2)) begin
        for (j = i; j < i + 2**(QUEUE_INDEX_WIDTH/2); j = j + 1) begin
            queue_ram[j] = 0;
        end
    end

    for (i = 0; i < PIPELINE; i = i + 1) begin
        queue_index_pipeline_reg[i] = 0;
        axil_reg_pipeline_reg[i] = 0;
        write_data_pipeline_reg[i] = 0;
        write_strobe_pipeline_reg[i] = 0;
    end

end

always @* begin
    op_axil_write_pipe_next = {op_axil_write_pipe_reg, 1'b0};
    op_axil_read_pipe_next = {op_axil_read_pipe_reg, 1'b0};
    op_commit_pipe_next = {op_commit_pipe_reg, 1'b0};

    queue_index_pipeline_next[0] = 0;
    axil_reg_pipeline_next[0] = 0;
    write_data_pipeline_next[0] = 0;
    write_strobe_pipeline_next[0] = 0;
    
    for (j = 1; j < PIPELINE; j = j + 1) begin
        queue_index_pipeline_next[j] = queue_index_pipeline_reg[j-1];
        axil_reg_pipeline_next[j] = axil_reg_pipeline_reg[j-1];
        write_data_pipeline_next[j] = write_data_pipeline_reg[j-1];
        write_strobe_pipeline_next[j] = write_strobe_pipeline_reg[j-1];
    end

    s_axil_awready_next = 1'b0;
    s_axil_wready_next = 1'b0;
    s_axil_bvalid_next = s_axil_bvalid_reg && !s_axil_bready;

    s_axil_arready_next = 1'b0;
    s_axil_rdata_next = s_axil_rdata_reg;
    s_axil_rvalid_next = s_axil_rvalid_reg && !s_axil_rready;

    queue_ram_write_data = queue_ram_read_data_pipeline_reg[PIPELINE-1];
    queue_ram_wr_en = 0;
    queue_ram_be = 0;
    
    queue_ram_write_ptr_next = queue_ram_write_ptr_reg;   
    queue_ram_read_ptr_next  = (m_axis_wqe_valid && m_axis_wqe_ready)? (queue_ram_read_ptr_reg+1):queue_ram_read_ptr_reg ;        
    m_axis_wqe_data_next     = queue_ram[queue_ram_read_ptr_reg][255:0]    ;
    m_axis_wqe_qpn_next      = queue_ram[queue_ram_read_ptr_reg][10+256-1:256] ;
    m_axis_wqe_id_next       = queue_ram_read_ptr_reg;
    m_axis_wqe_valid_next    = (m_axis_wqe_valid && m_axis_wqe_ready)? 1'b0 :(queue_ram_write_ptr_reg !=  queue_ram_read_ptr_reg)?1'b1:1'b0  ;  
    
    queue_ram_read_data_cons_next = queue_ram_read_data_cons_ptr;
    queue_ram_read_data_prod_next = queue_ram_read_data_prod_ptr;
    
    index_ram_wen   = 0;
    index_ram_wdata = 0;
    index_ram_waddr = 0;
    index_ram_ren   = 0;
    index_ram_raddr = 0;
    
    fifo_wen_next = 0;

    // pipeline stage 0 - receive request
    if (s_axil_awvalid && s_axil_wvalid && (!s_axil_bvalid || s_axil_bready) && !op_axil_write_pipe_reg) begin
        // AXIL write
        op_axil_write_pipe_next[0] = 1'b1;

        s_axil_awready_next = 1'b1;
        s_axil_wready_next = 1'b1;

        write_data_pipeline_next[0] = s_axil_wdata;
        write_strobe_pipeline_next[0] = s_axil_wstrb;

        queue_index_pipeline_next[0] = s_axil_awaddr_queue;
        axil_reg_pipeline_next[0] = s_axil_awaddr_reg;
    end 
    else if (s_axil_arvalid && (!s_axil_rvalid || s_axil_rready) && !op_axil_read_pipe_reg) begin
        // AXIL read
        op_axil_read_pipe_next[0] = 1'b1;

        s_axil_arready_next = 1'b1;

        queue_index_pipeline_next[0] = s_axil_araddr_queue;
        axil_reg_pipeline_next[0] = s_axil_araddr_reg;
    end 
    else if (s_axis_cq_valid && s_axis_cq_ready) begin
        // commit
				queue_ram_read_data_cons_next = queue_ram_read_data_cons_ptr + 1;

				index_ram_ren = 1'b1;
				index_ram_raddr = s_axis_cq_id;
				fifo_wen_next = 1'b1;
				
    end 
    else if (op_axil_write_pipe_reg[PIPELINE-1]) begin
        // AXIL write
        s_axil_bvalid_next = 1'b1;
        queue_ram_wr_en = 1'b1;

        // TODO parametrize
        case (axil_reg_pipeline_reg[PIPELINE-1])
            3'd0: begin
                queue_ram_write_data[31:0] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[3:0] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd1: begin
                queue_ram_write_data[63:32] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[7:4] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd2: begin
                queue_ram_write_data[95:64] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[11:8] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd3: begin
                queue_ram_write_data[127:96] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[15:12] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd4: begin
                queue_ram_write_data[159:128] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[19:16] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd5: begin
                queue_ram_write_data[191:160] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[23:20] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd6: begin
                queue_ram_write_data[223:192] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_be[27:24] = write_strobe_pipeline_reg[PIPELINE-1][3:0];
            end
            3'd7: begin
                queue_ram_write_data[255:224] = write_data_pipeline_reg[PIPELINE-1];
                queue_ram_write_data[271:256] = {{(16-QUEUE_INDEX_WIDTH){1'b0}},queue_index_pipeline_reg[PIPELINE-1]};
                queue_ram_be[33:28] = {2'b1,write_strobe_pipeline_reg[PIPELINE-1][3:0]};
                queue_ram_write_ptr_next = queue_ram_write_ptr_reg + 1;
                queue_ram_read_data_prod_next = queue_ram_read_data_prod_ptr + 1;
                
                index_ram_wen   = 1'b1;
                index_ram_wdata = queue_index_pipeline_reg[PIPELINE-1];
                index_ram_waddr = queue_ram_write_ptr_reg;
            end
        endcase
    end else if (op_axil_read_pipe_reg[PIPELINE-1]) begin
        // AXIL read
        s_axil_rvalid_next = 1'b1;
        s_axil_rdata_next = 0;

        // TODO parametrize
        case (axil_reg_pipeline_reg[PIPELINE-1])
            3'd0: begin
                // producer pointer
                s_axil_rdata_next[15:0] = queue_ram_read_data_prod_ptr;
                // consumer pointer
                s_axil_rdata_next[31:16] = queue_ram_read_data_cons_ptr;
            end
            3'd1: begin
                // CQ id
                s_axil_rdata_next[QUEUE_INDEX_WIDTH-1:0] = fifo_rdata;
            end
            default:begin
                s_axil_rdata_next = 0;
            end            
        endcase
    end

end

always @(posedge clk) begin
    if (rst) begin
        op_axil_write_pipe_reg <= {PIPELINE{1'b0}};
        op_axil_read_pipe_reg <= {PIPELINE{1'b0}};

        s_axil_awready_reg <= 1'b0;
        s_axil_wready_reg <= 1'b0;
        s_axil_bvalid_reg <= 1'b0;
        s_axil_arready_reg <= 1'b0;
        s_axil_rvalid_reg <= 1'b0;
        
        queue_ram_write_ptr_reg <= 0;
        queue_ram_read_ptr_reg  <= 0;
        m_axis_wqe_data_reg     <= 0;
        m_axis_wqe_qpn_reg      <= 0;        
        m_axis_wqe_id_reg       <= 0;
        m_axis_wqe_valid_reg    <= 0;
        
        queue_ram_read_data_prod_ptr <= 0;
        queue_ram_read_data_cons_ptr <= 0;        
        
    end else begin
        op_axil_write_pipe_reg <= op_axil_write_pipe_next;
        op_axil_read_pipe_reg <= op_axil_read_pipe_next;

        s_axil_awready_reg <= s_axil_awready_next;
        s_axil_wready_reg <= s_axil_wready_next;
        s_axil_bvalid_reg <= s_axil_bvalid_next;
        s_axil_arready_reg <= s_axil_arready_next;
        s_axil_rvalid_reg <= s_axil_rvalid_next;
        
        queue_ram_write_ptr_reg <= queue_ram_write_ptr_next; 
        queue_ram_read_ptr_reg  <= queue_ram_read_ptr_next ;   
        m_axis_wqe_data_reg     <= m_axis_wqe_data_next    ;
        m_axis_wqe_qpn_reg      <= m_axis_wqe_qpn_next     ;
        m_axis_wqe_id_reg       <= m_axis_wqe_id_next      ;
        m_axis_wqe_valid_reg    <= m_axis_wqe_valid_next   ;     
        
        queue_ram_read_data_prod_ptr <= queue_ram_read_data_prod_next;
        queue_ram_read_data_cons_ptr <= queue_ram_read_data_cons_next;    

    end

    for (i = 0; i < PIPELINE; i = i + 1) begin
        queue_index_pipeline_reg[i] <= queue_index_pipeline_next[i];
        axil_reg_pipeline_reg[i] <= axil_reg_pipeline_next[i];
        write_data_pipeline_reg[i] <= write_data_pipeline_next[i];
        write_strobe_pipeline_reg[i] <= write_strobe_pipeline_next[i];
    end

    s_axil_rdata_reg <= s_axil_rdata_next;

    if (queue_ram_wr_en) begin
        for (i = 0; i < QUEUE_RAM_BE_WIDTH; i = i + 1) begin
            if (queue_ram_be[i]) begin
                queue_ram[queue_ram_write_ptr_reg][i*8 +: 8] <= queue_ram_write_data[i*8 +: 8];
            end
        end
    end
    queue_ram_read_data_reg <= queue_ram[queue_ram_read_ptr_reg];
    queue_ram_read_data_pipeline_reg[1] <= queue_ram_read_data_reg;
    for (i = 2; i < PIPELINE; i = i + 1) begin
        queue_ram_read_data_pipeline_reg[i] <= queue_ram_read_data_pipeline_reg[i-1];
    end
    
    if (index_ram_wen) begin
        index_ram[index_ram_waddr]<= index_ram_wdata;
    end
    if (index_ram_ren) begin
        index_ram_rdata <= index_ram[index_ram_raddr];
    end
    fifo_wen <= fifo_wen_next;  

end

assign fifo_ren = op_axil_read_pipe_reg[PIPELINE-2] && axil_reg_pipeline_reg[PIPELINE-2] == 1;

syn_fifo #(
  .DATA_WIDTH  ( QUEUE_INDEX_WIDTH      ),
  .ADDR_WIDTH  ( QUEUE_RAM_AWIDTH       ),
  .RAM_DEPTH   ( 2**QUEUE_RAM_AWIDTH    ),
  .TH_AFULL    ( 2**QUEUE_RAM_AWIDTH-8  ),
  .TH_AEMPTY   ( 8                      )
)u_inst_fifo
(
  .i_clk       ( clk             ),
  .i_rst       ( rst             ),
  .i_data_in   ( index_ram_rdata ),
  .i_wr_en     ( fifo_wen        ),
  .i_rd_en     ( fifo_ren        ),
  .o_empty     ( fifo_empty      ),
  .o_full      ( fifo_full       ),
  .o_aempty    ( fifo_aempty     ),
  .o_afull     ( fifo_afull      ),
  .o_data_out  ( fifo_rdata      ) 
);
/*
ila_3 u_ila_app_tx_data_proc   (
    .clk    ( clk                              ),
    .probe0 ( s_axil_awaddr[15:0]              ), //[15:0]
    .probe1 ( s_axil_awvalid                   ), //[0 :0]     
    .probe2 ( s_axil_wdata                     ), //[31:0]
    .probe3 ( s_axil_wvalid                    ), //[0:0] 
    .probe4 ( queue_ram_wr_en                  ), //[0 :0]
    .probe5 ( write_data_pipeline_reg[PIPELINE-1]          ), //[31:0]
    .probe6 ( queue_ram_write_ptr_reg          ), //[9 :0]     
    .probe7 ( queue_ram_read_ptr_reg           ), //[9 :0]
    .probe8 ( m_axis_wqe_data_reg              ),  //[255:0] 
    .probe9 ( m_axis_wqe_qpn_reg               ), //[9 :0] 
    .probe10( m_axis_wqe_id_reg                ), //[9 :0] 
    .probe11( m_axis_wqe_valid_reg             )  //[0 :0]          

);*/

endmodule

`resetall
