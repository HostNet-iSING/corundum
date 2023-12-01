// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2021-2023 The Regents of the University of California
 */

// Language: Verilog 2001

`timescale 1ns / 1ps
  
/*
 * axi-lite control
 */
module mqnic_app_if_ctrl #
(

    // AXI lite interface (application control from host)
    parameter AXIL_APP_CTRL_DATA_WIDTH = 32,
    parameter AXIL_APP_CTRL_ADDR_WIDTH = 16,
    parameter AXIL_APP_CTRL_STRB_WIDTH = (AXIL_APP_CTRL_DATA_WIDTH/8),

    //Config ram interface
    parameter IF_COUNT = 1,
    parameter CONFIG_RAM_AWIDTH = 4,
    parameter CONFIG_RAM_DWIDTH = 512
)
(
    input  wire                                         clk,
    input  wire                                         rst,

    /*
     * AXI-Lite slave interface (control from host)
     */
    input  wire [AXIL_APP_CTRL_ADDR_WIDTH-1:0]          s_axil_app_ctrl_awaddr,
    input  wire [2:0]                                   s_axil_app_ctrl_awprot,
    input  wire                                         s_axil_app_ctrl_awvalid,
    output wire                                         s_axil_app_ctrl_awready,
    input  wire [AXIL_APP_CTRL_DATA_WIDTH-1:0]          s_axil_app_ctrl_wdata,
    input  wire [AXIL_APP_CTRL_STRB_WIDTH-1:0]          s_axil_app_ctrl_wstrb,
    input  wire                                         s_axil_app_ctrl_wvalid,
    output wire                                         s_axil_app_ctrl_wready,
    output wire [1:0]                                   s_axil_app_ctrl_bresp,
    output wire                                         s_axil_app_ctrl_bvalid,
    input  wire                                         s_axil_app_ctrl_bready,
    input  wire [AXIL_APP_CTRL_ADDR_WIDTH-1:0]          s_axil_app_ctrl_araddr,
    input  wire [2:0]                                   s_axil_app_ctrl_arprot,
    input  wire                                         s_axil_app_ctrl_arvalid,
    output wire                                         s_axil_app_ctrl_arready,
    output wire [AXIL_APP_CTRL_DATA_WIDTH-1:0]          s_axil_app_ctrl_rdata,
    output wire [1:0]                                   s_axil_app_ctrl_rresp,
    output wire                                         s_axil_app_ctrl_rvalid,
    input  wire                                         s_axil_app_ctrl_rready,

    /*
     * Config ram interface (w/r from data proc)
     */
    input  wire                                         rx_config_ram_ren,
    input  wire                                         rx_config_ram_wen,
    input  wire [CONFIG_RAM_AWIDTH-1:0]                 rx_config_ram_raddr,
    output wire [CONFIG_RAM_DWIDTH-1:0]                 rx_config_ram_rdata,   
    input  wire [CONFIG_RAM_DWIDTH-1:0]                 rx_config_ram_wdata,   

    input  wire                                         tx_config_ram_ren,
    input  wire                                         tx_config_ram_wen,
    input  wire [CONFIG_RAM_AWIDTH-1:0]                 tx_config_ram_raddr,
    output wire [CONFIG_RAM_DWIDTH-1:0]                 tx_config_ram_rdata,
    input  wire [CONFIG_RAM_DWIDTH-1:0]                 tx_config_ram_wdata 

);

localparam DATA_WIDTH           = 256;

localparam ADDR_VER             = 'h0;
localparam ADDR_SQ_WQE_P_PTR    = 'h0;//
localparam ADDR_SQ_PHY_ADDR_L   = 'h1;
localparam ADDR_SQ_PHY_ADDR_H   = 'h1;
localparam ADDR_SQ_VLD          = 'h2;
localparam ADDR_RQ_WQE_P_PTR    = 'h6;
localparam ADDR_RQ_PHY_ADDR_L   = 'h7;
localparam ADDR_RQ_PHY_ADDR_H   = 'h7;
localparam ADDR_RQ_VLD          = 'h7;


wire    [AXIL_APP_CTRL_DATA_WIDTH-1:0]  lite2hpi_wdata;
wire    [AXIL_APP_CTRL_ADDR_WIDTH-1:0]  lite2hpi_waddr;
wire                                    lite2hpi_wen;

wire    [AXIL_APP_CTRL_ADDR_WIDTH-1:0]  lite2hpi_raddr;
wire                                    lite2hpi_ren;
wire    [AXIL_APP_CTRL_DATA_WIDTH-1:0]  hpi2lite_rdata_vld;
wire    [AXIL_APP_CTRL_DATA_WIDTH-1:0]  hpi2lite_rdata;

/////to local bus
axi_cpu_bus u_axi_cpu_bus
(
    .clk                    ( clk                               ) ,
    .rst                    ( rst                               ) ,

    .s_axil_awaddr          ( s_axil_app_ctrl_awaddr            ) ,  //input
    .s_axil_awvalid         ( s_axil_app_ctrl_awvalid           ) ,  //input
    .s_axil_awready         ( s_axil_app_ctrl_awready           ) ,  //output
    .s_axil_wdata           ( s_axil_app_ctrl_wdata[31:0]       ) ,  //input  [31 : 0]
    .s_axil_wstrb           ( s_axil_app_ctrl_wstrb[3:0]        ) ,  //input  [3 : 0] 
    .s_axil_wvalid          ( s_axil_app_ctrl_wvalid            ) ,  //input          
    .s_axil_wready          ( s_axil_app_ctrl_wready            ) ,  //output

    .s_axil_bresp           ( s_axil_app_ctrl_bresp[1:0]        ) ,  //output [1 : 0]  
    .s_axil_bvalid          ( s_axil_app_ctrl_bvalid            ) ,  //output          
    .s_axil_bready          ( s_axil_app_ctrl_bready            ) ,  //input    

    .s_axil_araddr          ( s_axil_app_ctrl_araddr            ) ,  //input
    .s_axil_arvalid         ( s_axil_app_ctrl_arvalid           ) ,  //input   
    .s_axil_arready         ( s_axil_app_ctrl_arready           ) ,  //output
    .s_axil_rdata           ( s_axil_app_ctrl_rdata[31:0]       ) ,  //output  [31 : 0] 
    .s_axil_rresp           ( s_axil_app_ctrl_rresp[1:0]        ) ,  //output  [1 : 0] 
    .s_axil_rvalid          ( s_axil_app_ctrl_rvalid            ) ,  //output  
    .s_axil_rready          ( s_axil_app_ctrl_rready            ) ,  //input   

    .mailbox_wen_din_portb  ( lite2hpi_wdata                    ) ,  //output
    .mailbox_wen_addr_portb ( lite2hpi_waddr                    ) ,  //output
    .mailbox_wen_portb      ( lite2hpi_wen                      ) ,  //output
        
    .mailbox_ren_addr_portb ( lite2hpi_raddr                    ) ,  //output
    .mailbox_ren_portb      ( lite2hpi_ren                      ) ,  //output
    .mailbox_ren_dout_vld   ( hpi2lite_rdata_vld                ) ,  //input
    .mailbox_ren_dout_portb ( hpi2lite_rdata                    )    //input
);

wire                                        sq_en_a;
reg                                         sq_wen_a;
reg                                         sq_num_a;
reg    [AXIL_APP_CTRL_DATA_WIDTH-1:0]       sq_wqe_config0;   
wire   [DATA_WIDTH-1:0]                     sq_wqe_config;
wire                                        sq_en_b;
wire                                        sq_wen_b;
wire   [CONFIG_RAM_AWIDTH-1:0]              sq_num_b;
wire   [CONFIG_RAM_DWIDTH-1:0]              sq_wqe_inb;
wire   [CONFIG_RAM_DWIDTH-1:0]              sq_wqe_outb;


always @(posedge clk or posedge rst) begin
    if (rst) 
        sq_wen_a <= 1'b0;
    else if(lite2hpi_wen & lite2hpi_waddr == ADDR_SQ_VLD)
        sq_wen_a <= lite2hpi_wdata[0];
    else
        sq_wen_a <= 1'b0;
end

always @(posedge clk or posedge rst) begin
    if (rst) 
        sq_num_a <= 4'b0;
    else if(lite2hpi_wen & lite2hpi_waddr == ADDR_SQ_WQE_P_PTR)
        sq_num_a <= lite2hpi_wdata;
end

always @(posedge clk or posedge rst) begin
    if (rst) 
        sq_wqe_config0 <= 4'b0;
    else if(lite2hpi_wen & lite2hpi_waddr == ADDR_SQ_WQE_P_PTR)
        sq_wqe_config0 <= lite2hpi_wdata;
end

//requset SQ
wrapper_tdpram #(
    .DATA_WIDTH ( CONFIG_RAM_DWIDTH  ),
    .ADDR_WIDTH ( CONFIG_RAM_AWIDTH  ),
    .RAM_DEPTH  ( 16       ),
    .OUT_DELAY  ( 1   )
    ) u_sq_tdpram
    (
    .i_clk_a    ( clk               ),
    .i_en_a     ( sq_en_a           ),
    .i_wr_a     ( sq_wen_a          ),
    .i_addr_a   ( sq_num_a          ),
    .i_data_a   ( sq_wqe_config     ),
    .o_data_a   (   ),
    .i_clk_b    ( clk               ),
    .i_en_b     ( sq_en_b           ),
    .i_addr_b   ( sq_num_b          ),
    .o_data_b   ( sq_wqe_outb       )
    );

assign sq_en_b = tx_config_ram_ren ;
assign sq_wen_b = tx_config_ram_wen;
assign sq_num_b = tx_config_ram_raddr;
assign sq_wqe_inb = tx_config_ram_wdata;
assign tx_config_ram_rdata = sq_wqe_outb;

wire                                        rq_en_a;
reg                                         rq_wen_a;
reg                                         rq_num_a;
reg    [AXIL_APP_CTRL_DATA_WIDTH-1:0]       rq_wqe_config0;   
wire   [DATA_WIDTH-1:0]                     rq_wqe_config;
wire                                        rq_en_b;
wire                                        rq_wen_b;
wire   [CONFIG_RAM_AWIDTH-1:0]              rq_num_b;
wire   [CONFIG_RAM_DWIDTH-1:0]              rq_wqe_inb;
wire   [CONFIG_RAM_DWIDTH-1:0]              rq_wqe_outb;

always @(posedge clk or posedge rst) begin
    if (rst) 
        rq_wen_a <= 1'b0;
    else if(lite2hpi_wen & lite2hpi_waddr == ADDR_RQ_VLD)
        rq_wen_a <= lite2hpi_wdata[0];
    else
        rq_wen_a <= 1'b0;
end

always @(posedge clk or posedge rst) begin
    if (rst) 
        rq_num_a <= 4'b0;
    else if(lite2hpi_wen & lite2hpi_waddr == ADDR_RQ_WQE_P_PTR)
        rq_num_a <= lite2hpi_wdata;
end

always @(posedge clk or posedge rst) begin
    if (rst) 
        rq_wqe_config0 <= 4'b0;
    else if(lite2hpi_wen & lite2hpi_waddr == ADDR_RQ_WQE_P_PTR)
        rq_wqe_config0 <= lite2hpi_wdata;
end

//receive RQ

wrapper_tdpram #(
    .DATA_WIDTH ( CONFIG_RAM_DWIDTH  ),
    .ADDR_WIDTH ( CONFIG_RAM_AWIDTH  ),
    .RAM_DEPTH  ( 16       ),
    .OUT_DELAY  ( 1   )
    ) u_rq_tdpram
    (
    .i_clk_a    ( clk               ),
    .i_en_a     ( rq_en_a           ),
    .i_wr_a     ( rq_wen_a          ),
    .i_addr_a   ( rq_num_a          ),
    .i_data_a   ( rq_wqe_config     ),
    .o_data_a   (   ),
    .i_clk_b    ( clk               ),
    .i_en_b     ( rq_en_b           ),
    .i_addr_b   ( rq_num_b          ),
    .o_data_b   ( rq_wqe_outb       )
    );

assign rq_en_b = rx_config_ram_ren ;
assign rq_wen_b = rx_config_ram_wen;
assign rq_num_b = rx_config_ram_raddr;
assign rq_wqe_inb = rx_config_ram_wdata;
assign tx_config_ram_rdata = rq_wqe_outb;

//WQE fifo

endmodule

