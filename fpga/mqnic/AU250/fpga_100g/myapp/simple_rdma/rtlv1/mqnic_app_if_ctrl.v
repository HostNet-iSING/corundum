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
    parameter DATA_WIDTH = 32,
    parameter ADDR_WIDTH = 16,
    parameter STRB_WIDTH = (DATA_WIDTH/8),
    parameter TIMEOUT = 4,

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
    input  wire [ADDR_WIDTH-1:0]          	            s_axil_app_ctrl_awaddr,
    input  wire [2:0]                                   s_axil_app_ctrl_awprot,
    input  wire                                         s_axil_app_ctrl_awvalid,
    output wire                                         s_axil_app_ctrl_awready,
    input  wire [DATA_WIDTH-1:0]                        s_axil_app_ctrl_wdata,
    input  wire [STRB_WIDTH-1:0]                        s_axil_app_ctrl_wstrb,
    input  wire                                         s_axil_app_ctrl_wvalid,
    output wire                                         s_axil_app_ctrl_wready,
    output wire [1:0]                                   s_axil_app_ctrl_bresp,
    output wire                                         s_axil_app_ctrl_bvalid,
    input  wire                                         s_axil_app_ctrl_bready,
    input  wire [ADDR_WIDTH-1:0]                        s_axil_app_ctrl_araddr,
    input  wire [2:0]                                   s_axil_app_ctrl_arprot,
    input  wire                                         s_axil_app_ctrl_arvalid,
    output wire                                         s_axil_app_ctrl_arready,
    output wire [DATA_WIDTH-1:0]                        s_axil_app_ctrl_rdata,
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
    input  wire [CONFIG_RAM_DWIDTH-1:0]                 tx_config_ram_wdata,


    //to data process
    output wire [ADDR_WIDTH-1:0]                        reg_wr_addr,
    output wire [DATA_WIDTH-1:0]                        reg_wr_data,
    output wire [STRB_WIDTH-1:0]                        reg_wr_strb,
    output wire                                         reg_wr_en,
    input  wire                                         reg_wr_wait,
    input  wire                                         reg_wr_ack,
    output wire [ADDR_WIDTH-1:0]                        reg_rd_addr,
    output wire                                         reg_rd_en,
    input  wire [DATA_WIDTH-1:0]                        reg_rd_data,
    input  wire                                         reg_rd_wait,
    input  wire                                         reg_rd_ack
);

localparam HPI_RD_DLY           = 2;//>=2
localparam RB_BASE_ADDR         = 0;//>=2
localparam RBB                  = 0;//>=2
localparam MQNIC_APP_VER        = 32'h20231206;//>=2

localparam ADDR_VER             = 'h0;
localparam ADDR_SQ_WQE_P_PTR    = 'h0;//
localparam ADDR_SQ_PHY_ADDR_L   = 'h1;
localparam ADDR_SQ_PHY_ADDR_H   = 'h1;
localparam ADDR_SQ_VLD          = 'h2;
localparam ADDR_RQ_WQE_P_PTR    = 'h6;
localparam ADDR_RQ_PHY_ADDR_L   = 'h7;
localparam ADDR_RQ_PHY_ADDR_H   = 'h7;
localparam ADDR_RQ_VLD          = 'h7;

wire [ADDR_WIDTH-1:0]       app_reg_wr_addr;
wire [DATA_WIDTH-1:0]       app_reg_wr_data;
wire [STRB_WIDTH-1:0]       app_reg_wr_strb;
wire                        app_reg_wr_en;
wire                        app_reg_wr_wait;
wire                        app_reg_wr_ack;
wire [ADDR_WIDTH-1:0]       app_reg_rd_addr;
wire                        app_reg_rd_en;
wire [DATA_WIDTH-1:0]       app_reg_rd_data;
wire                        app_reg_rd_wait;
wire                        app_reg_rd_ack;

wire [ADDR_WIDTH-1:0]       sys_reg_wr_addr;
wire [DATA_WIDTH-1:0]       sys_reg_wr_data;
wire [STRB_WIDTH-1:0]       sys_reg_wr_strb;
wire                        sys_reg_wr_en;
wire                        sys_reg_wr_wait;
wire                        sys_reg_wr_ack;
wire [ADDR_WIDTH-1:0]       sys_reg_rd_addr;
wire                        sys_reg_rd_en;
wire [DATA_WIDTH-1:0]       sys_reg_rd_data;
wire                        sys_reg_rd_wait;
wire                        sys_reg_rd_ack;

assign sys_reg_wr_wait = 1'b0;
assign sys_reg_rd_wait = 1'b0;

assign reg_wr_en = app_reg_wr_en && (app_reg_wr_addr[15:10] == 6'h1);
assign reg_wr_addr = app_reg_wr_addr;
assign reg_wr_data = app_reg_wr_data;
assign reg_wr_strb = app_reg_wr_strb;

assign reg_rd_en = app_reg_rd_en && (app_reg_rd_addr[15:10] == 6'h1);
assign reg_rd_addr = app_reg_rd_addr;

axil_reg_if #(
    .DATA_WIDTH(DATA_WIDTH),
    .ADDR_WIDTH(ADDR_WIDTH),
    .STRB_WIDTH(STRB_WIDTH),
    .TIMEOUT(TIMEOUT)
)
axil_reg_if_inst (
    .clk(clk),
    .rst(rst),

    /*
     * AXI-Lite slave interface
     */
    .s_axil_awaddr      (s_axil_app_ctrl_awaddr),
    .s_axil_awprot      (s_axil_app_ctrl_awprot),
    .s_axil_awvalid     (s_axil_app_ctrl_awvalid),
    .s_axil_awready     (s_axil_app_ctrl_awready),
    .s_axil_wdata       (s_axil_app_ctrl_wdata),
    .s_axil_wstrb       (s_axil_app_ctrl_wstrb),
    .s_axil_wvalid      (s_axil_app_ctrl_wvalid),
    .s_axil_wready      (s_axil_app_ctrl_wready),
    .s_axil_bresp       (s_axil_app_ctrl_bresp),
    .s_axil_bvalid      (s_axil_app_ctrl_bvalid),
    .s_axil_bready      (s_axil_app_ctrl_bready),
    .s_axil_araddr      (s_axil_app_ctrl_araddr),
    .s_axil_arprot      (s_axil_app_ctrl_arprot),
    .s_axil_arvalid     (s_axil_app_ctrl_arvalid),
    .s_axil_arready     (s_axil_app_ctrl_arready),
    .s_axil_rdata       (s_axil_app_ctrl_rdata),
    .s_axil_rresp       (s_axil_app_ctrl_rresp),
    .s_axil_rvalid      (s_axil_app_ctrl_rvalid),
    .s_axil_rready      (s_axil_app_ctrl_rready),

    /*
     * Register interface
     */
    .reg_wr_addr        (app_reg_wr_addr        ),
    .reg_wr_data        (app_reg_wr_data        ),
    .reg_wr_strb        (app_reg_wr_strb        ),
    .reg_wr_en          (app_reg_wr_en          ),
    .reg_wr_wait        (app_reg_wr_wait        ),
    .reg_wr_ack         (app_reg_wr_ack         ),

    .reg_rd_addr        (app_reg_rd_addr        ),
    .reg_rd_en          (app_reg_rd_en          ),
    .reg_rd_data        (app_reg_rd_data        ),
    .reg_rd_wait        (app_reg_rd_wait        ),
    .reg_rd_ack         (app_reg_rd_ack         )

);


assign app_reg_wr_wait = sys_reg_wr_wait | reg_wr_wait;
assign app_reg_wr_ack  = sys_reg_wr_ack_reg | reg_wr_ack;
assign app_reg_rd_data = sys_reg_rd_ack_reg ? sys_reg_rd_data_reg : reg_rd_data;
assign app_reg_rd_wait = sys_reg_rd_wait | reg_rd_wait;
assign app_reg_rd_ack  = sys_reg_rd_ack_reg | reg_rd_ack;

assign sys_reg_wr_en = app_reg_wr_en && (app_reg_wr_addr[15:10] == 6'h0);
assign sys_reg_wr_addr = app_reg_wr_addr;
assign sys_reg_wr_strb = app_reg_wr_strb;

assign sys_reg_rd_en = app_reg_rd_en && (app_reg_rd_addr[15:10] == 6'h0);
assign sys_reg_rd_addr = app_reg_rd_addr;

reg sys_reg_wr_ack_reg = 1'b0;
reg [DATA_WIDTH-1:0] sys_reg_rd_data_reg = {DATA_WIDTH{1'b0}};
reg sys_reg_rd_ack_reg = 1'b0;


//reg read
always @(posedge clk) begin
    sys_reg_rd_data_reg <= {DATA_WIDTH{1'b0}};
    sys_reg_rd_ack_reg <= 1'b0;

    if (sys_reg_rd_en && !sys_reg_rd_ack_reg) begin
        // read operation
        sys_reg_rd_ack_reg <= 1'b1;
        case ({sys_reg_rd_addr >> 2, 2'b00})
            // Interface control
            RBB+8'h00: sys_reg_rd_data_reg <= 32'h0000C001;                // IF ctrl: Type
            RBB+8'h04: sys_reg_rd_data_reg <= MQNIC_APP_VER;               // IF ctrl: Version
            RBB+8'h08: sys_reg_rd_data_reg <= RB_BASE_ADDR+8'h40;          // IF ctrl: Next header
            RBB+8'h10: sys_reg_rd_data_reg <= src_mac0;
            RBB+8'h14: sys_reg_rd_data_reg <= src_mac1;

            // Event queue manager
            RBB+8'h40: sys_reg_rd_data_reg <= 32'h0000C010;                // Event QM: Type
            RBB+8'h44: sys_reg_rd_data_reg <= MQNIC_APP_VER;               // Event QM: Version
            RBB+8'h48: sys_reg_rd_data_reg <= RB_BASE_ADDR+8'h60;          // Event QM: Next header
            // Completion queue manager
            RBB+8'h60: sys_reg_rd_data_reg <= 32'h0000C020;                // CPL QM: Type
            RBB+8'h64: sys_reg_rd_data_reg <= MQNIC_APP_VER;               // CPL QM: Version
            RBB+8'h68: sys_reg_rd_data_reg <= RB_BASE_ADDR+8'h80;          // CPL QM: Next header
            // Queue manager (SQ)
            RBB+8'h80: sys_reg_rd_data_reg <= 32'h0000C030;                // TX QM: Type
            RBB+8'h84: sys_reg_rd_data_reg <= MQNIC_APP_VER;               // TX QM: Version
            RBB+8'h88: sys_reg_rd_data_reg <= RB_BASE_ADDR+8'hA0;          // TX QM: Next header
            // Queue manager (RQ)
            RBB+8'hA0: sys_reg_rd_data_reg <= 32'h0000C031;                // RX QM: Type
            RBB+8'hA4: sys_reg_rd_data_reg <= MQNIC_APP_VER;               // RX QM: Version
            RBB+8'hA8: sys_reg_rd_data_reg <= RB_BASE_ADDR;                // RX QM: Next header
            default: sys_reg_rd_ack_reg <= 1'b0;
        endcase
    end

    if (rst) begin
        sys_reg_rd_ack_reg <= 1'b0;
    end
end



//reg write
wire    [47:0]              src_mac;
reg     [DATA_WIDTH-1:0]    src_mac0;
reg     [DATA_WIDTH-1:0]    src_mac1;
always @(posedge clk) begin
    sys_reg_wr_ack_reg <= 1'b0;
    if (sys_reg_wr_en && !sys_reg_wr_ack_reg) begin
        // write operation
        sys_reg_wr_ack_reg <= 1'b1;
        case ({sys_reg_wr_addr >> 2, 2'b00})
            // Interface control
            RBB+8'h10: src_mac0 <= reg_wr_data;                      // IF ctrl: TX MTU
            RBB+8'h14: src_mac1 <= reg_wr_data;                      // IF ctrl: RX MTU
            default:   ;
        endcase
    end

    if (rst) begin
        sys_reg_wr_ack_reg <= 1'b0;
    end
end

assign src_mac = {src_mac1,src_mac0};


//queue ram
wire                                        sq_en_a;
wire                                        sq_wen_a;
wire   [CONFIG_RAM_AWIDTH-1:0]              sq_num_a;
wire   [CONFIG_RAM_DWIDTH-1:0]              sq_wqe_config;
wire                                        sq_en_b;
wire                                        sq_wen_b;
wire   [CONFIG_RAM_AWIDTH-1:0]              sq_num_b;
wire   [CONFIG_RAM_DWIDTH-1:0]              sq_wqe_inb;
wire   [CONFIG_RAM_DWIDTH-1:0]              sq_wqe_outb;

assign sq_wen_a = sys_reg_wr_ack_reg;
assign sq_en_a = sys_reg_wr_ack_reg;
assign sq_num_a = {CONFIG_RAM_AWIDTH{1'b0}};

assign sq_wqe_config = {src_mac};

//requset SQ
wrapper_tdpram #(
   .DATA_WIDTH ( CONFIG_RAM_DWIDTH  ),
   .ADDR_WIDTH ( CONFIG_RAM_AWIDTH  ),
   .RAM_DEPTH  ( 16                 ),
   .OUT_DELAY  ( 1                  )
   ) u_sq_tdpram
   (
   .i_clk_a    ( clk                ),
   .i_en_a     ( sq_en_a            ),
   .i_wr_a     ( sq_wen_a           ),
   .i_addr_a   ( sq_num_a           ),
   .i_data_a   ( sq_wqe_config      ),
   .o_data_a   (   ),
   .i_clk_b    ( clk                ),
   .i_en_b     ( sq_en_b            ),
   .i_addr_b   ( sq_num_b           ),
   .o_data_b   ( sq_wqe_outb        )
   );

assign sq_en_b = tx_config_ram_ren ;
assign sq_wen_b = tx_config_ram_wen;
assign sq_num_b = tx_config_ram_raddr;
assign sq_wqe_inb = tx_config_ram_wdata;
assign tx_config_ram_rdata = sq_wqe_outb;

// wire                                        rq_en_a;
// reg                                         rq_wen_a;
// reg                                         rq_num_a;
// reg    [DATA_WIDTH-1:0]                     rq_wqe_config0;   
// wire   [DATA_WIDTH-1:0]                     rq_wqe_config;
// wire                                        rq_en_b;
// wire                                        rq_wen_b;
// wire   [CONFIG_RAM_AWIDTH-1:0]              rq_num_b;
// wire   [CONFIG_RAM_DWIDTH-1:0]              rq_wqe_inb;
// wire   [CONFIG_RAM_DWIDTH-1:0]              rq_wqe_outb;

// always @(posedge clk or posedge rst) begin
//     if (rst) 
//         rq_wen_a <= 1'b0;
//     else if(reg_wr_en & reg_wr_addr == ADDR_RQ_VLD)
//         rq_wen_a <= lite2hpi_wdata[0];
//     else
//         rq_wen_a <= 1'b0;
// end

// always @(posedge clk or posedge rst) begin
//     if (rst) 
//         rq_num_a <= 4'b0;
//     else if(reg_wr_en & reg_wr_addr == ADDR_RQ_WQE_P_PTR)
//         rq_num_a <= lite2hpi_wdata;
// end

// always @(posedge clk or posedge rst) begin
//     if (rst) 
//         rq_wqe_config0 <= 4'b0;
//     else if(reg_wr_en & reg_wr_addr == ADDR_RQ_WQE_P_PTR)
//         rq_wqe_config0 <= lite2hpi_wdata;
// end

//receive RQ

//wrapper_tdpram #(
//    .DATA_WIDTH ( CONFIG_RAM_DWIDTH  ),
//    .ADDR_WIDTH ( CONFIG_RAM_AWIDTH  ),
//    .RAM_DEPTH  ( 16       ),
//    .OUT_DELAY  ( 1   )
//    ) u_rq_tdpram
//    (
//    .i_clk_a    ( clk               ),
//    .i_en_a     ( rq_en_a           ),
//    .i_wr_a     ( rq_wen_a          ),
//    .i_addr_a   ( rq_num_a          ),
//    .i_data_a   ( rq_wqe_config     ),
//    .o_data_a   (   ),
//    .i_clk_b    ( clk               ),
//    .i_en_b     ( rq_en_b           ),
//    .i_addr_b   ( rq_num_b          ),
//    .o_data_b   ( rq_wqe_outb       )
//    );

assign rq_en_b = rx_config_ram_ren ;
assign rq_wen_b = rx_config_ram_wen;
assign rq_num_b = rx_config_ram_raddr;
assign rq_wqe_inb = rx_config_ram_wdata;
// assign tx_config_ram_rdata = rq_wqe_outb;

//WQE fifo

endmodule

