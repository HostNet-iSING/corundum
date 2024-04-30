`timescale  1ns/10ps

module axi_cpu_bus(
    input               clk,
    input               rst,

    ////axil_signal
    input      [31 : 0] s_axil_awaddr,
    input               s_axil_awvalid,
    output              s_axil_awready,
    
    input      [31 : 0] s_axil_wdata,
    input      [3 : 0]  s_axil_wstrb,
    input               s_axil_wvalid,
    output              s_axil_wready,
    
    output     [1 : 0]  s_axil_bresp,
    output              s_axil_bvalid,
    input               s_axil_bready,

    input       [31 : 0] s_axil_araddr,
    input                s_axil_arvalid,
    output               s_axil_arready,
    
    output      [31 : 0] s_axil_rdata,
    output      [1 : 0]  s_axil_rresp,
    output               s_axil_rvalid,
    input                s_axil_rready,
    
    ////mailbox_signal
    output     [31:0]    mailbox_wen_din_portb,
    output     [31:0]    mailbox_wen_addr_portb,
    output               mailbox_wen_portb,
                         
    output     [31:0]    mailbox_ren_addr_portb,
    output               mailbox_ren_portb ,
    input                mailbox_ren_dout_vld,
    input      [31:0]    mailbox_ren_dout_portb
);


////mailbox_signal
reg     [31:0]  mailbox_wr_data;
reg     [31:0]  mailbox_wr_addr;
reg             mailbox_wr_en;
reg     [31:0]  mailbox_rd_addr;
wire    [31:0]  mailbox_rd_data;
  
//////read
wire            ar_full;
wire            ar_rd_en;
wire            ar_empty;
wire    [31:0]  ar_dout;
wire            ar_valid;
reg             ar_valid_ff1;

wire            rd_full;
wire            rd_rd_en;
wire            rd_empty;
wire    [31:0]  rd_dout;
wire            rd_valid;
reg             wait_bv_rdy;

//////write
wire            aw_full,w_full;
wire            aw_empty,w_empty,b_empty;
wire            rd_en,b_rd_en;
wire    [31:0]  aw_addr,w_data,b_dout;

////write assign
assign s_axil_awready = ~aw_full;
assign s_axil_wready = ~w_full;
assign s_axil_bresp = 2'b0;
assign rd_en = (~aw_empty)&(~w_empty);
assign b_rd_en = (~b_empty) & (~wait_bv_rdy);
assign s_axil_bvalid = (b_dout[0]&b_rd_en) | wait_bv_rdy;
assign s_axil_bresp = 2'b0;

always @(posedge clk)begin
    if(rst) begin
        wait_bv_rdy <= 1'b0;
	end
    else if ((s_axil_bvalid == 1'b1) && (s_axil_bready == 1'b1)) begin
        wait_bv_rdy <= 1'b0;
    end
    else if (s_axil_bvalid == 1'b1) begin
        wait_bv_rdy <= 1'b1;
    end
	else ;
end

////read assign
assign s_axil_arready = ~ar_full;
assign ar_rd_en = (~ar_empty);
assign rd_rd_en = s_axil_rready && (~rd_empty);
assign s_axil_rresp = 2'b0;

////interface signal assign
assign mailbox_wen_din_portb  = mailbox_wr_data;
assign mailbox_wen_addr_portb = mailbox_wr_addr;
assign mailbox_wen_portb      = mailbox_wr_en;

assign mailbox_rd_data        = mailbox_ren_dout_portb;
assign mailbox_ren_addr_portb = mailbox_rd_addr;
assign mailbox_ren_portb      = ar_valid_ff1;

////////////////////////////////////////////////////////////////////mailbox write
// fifo_w32xd32 U_AW_BUF(
//     .rst             (rst), 
//     .wr_clk          (clk),
//     .rd_clk          (clk),
//     .din             (s_axil_awaddr),
//     .wr_en           (s_axil_awvalid&s_axil_awready),
//     .rd_en           (rd_en),
//     .dout            (aw_addr),
//     .full            (),
//     .empty           (aw_empty),
//     .prog_full       (aw_full)
// );


syn_fifo #(
    .DATA_WIDTH                 (64                 ),
    .ADDR_WIDTH                 (6                  ),
    .RAM_DEPTH                  (64                 ),
    .OUT_DELAY                  (0                  ),
    .TH_AFULL                   (56                 ),
    .TH_AEMPTY                  (8                  )
) U_AW_BUF(
    .i_clk                      (clk                ),
    .i_rst_n                    (rst                ),
    .i_wr_en                    (s_axil_awvalid&s_axil_awready    ),
    .i_data_in                  (s_axil_awaddr        ),
    .o_full                     (),
    .o_afull                    (aw_full            ),
    .i_rd_en                    (rd_en              ),
    .o_data_out                 (aw_addr            ),
    .o_empty                    (aw_empty           ),
    .o_aempty                   ()
);

// fifo_w32xd32 U_W_BUF(
//     .rst             (rst), 
//     .wr_clk          (clk),
//     .rd_clk          (clk),
//     .din             (s_axil_wdata),
//     .wr_en           (s_axil_wvalid&s_axil_wready),
//     .rd_en           (rd_en),
//     .dout            (w_data),
//     .full            (),
//     .empty           (w_empty),
//     .prog_full       (w_full)
// );

syn_fifo #(
    .DATA_WIDTH                 (64                 ),
    .ADDR_WIDTH                 (6                  ),
    .RAM_DEPTH                  (64                 ),
    .OUT_DELAY                  (0                  ),
    .TH_AFULL                   (56                 ),
    .TH_AEMPTY                  (8                  )
) U_W_BUF(
    .i_clk                      (clk                ),
    .i_rst_n                    (rst                ),
    .i_wr_en                    (s_axil_wvalid&s_axil_wready    ),
    .i_data_in                  (s_axil_wdata        ),
    .o_full                     (),
    .o_afull                    (w_full             ),
    .i_rd_en                    (rd_en              ),
    .o_data_out                 (w_data             ),
    .o_empty                    (w_empty            ),
    .o_aempty                   ()
);

// fifo_w32xd32 U_B_BUF(
//     .rst             (rst), 
//     .wr_clk          (clk),
//     .rd_clk          (clk),
//     .din             (32'h1),
//     .wr_en           (mailbox_wr_en),
//     .rd_en           (b_rd_en),
//     .dout            (b_dout),
//     .full            (),
//     .empty           (b_empty),
//     .prog_full       ()
// );

syn_fifo #(
    .DATA_WIDTH                 (64                 ),
    .ADDR_WIDTH                 (6                  ),
    .RAM_DEPTH                  (64                 ),
    .OUT_DELAY                  (0                  ),
    .TH_AFULL                   (56                 ),
    .TH_AEMPTY                  (8                  )
) U_B_BUF(
    .i_clk                      (clk                ),
    .i_rst_n                    (rst                ),
    .i_wr_en                    (mailbox_wr_en      ),
    .i_data_in                  (32'h1              ),
    .o_full                     (),
    .o_afull                    (                   ),
    .i_rd_en                    (b_rd_en            ),
    .o_data_out                 (b_dout             ),
    .o_empty                    (b_empty            ),
    .o_aempty                   ()
);

always @(posedge clk)begin
    if(rst)begin
        mailbox_wr_data <= 32'b0;
        mailbox_wr_addr <= 32'b0;
        mailbox_wr_en <= 1'b0;
    end 
    else begin
        mailbox_wr_data <= w_data;
        mailbox_wr_addr <= aw_addr;
        mailbox_wr_en <= rd_en;
   end
end

////////////////////////////////////////////read operation
// fifo_w32xd32 U_AR_BUF(
//     .rst             (rst), 
//     .wr_clk          (clk),
//     .rd_clk          (clk),
//     .din             (s_axil_araddr),
//     .wr_en           (s_axil_arvalid&s_axil_arready),
//     .rd_en           (ar_rd_en),
//     .dout            (ar_dout),
//     .full            (),
//     .empty           (ar_empty),
//     .prog_full       (ar_full)
// );

syn_fifo #(
    .DATA_WIDTH                 (64                 ),
    .ADDR_WIDTH                 (6                  ),
    .RAM_DEPTH                  (64                 ),
    .OUT_DELAY                  (0                  ),
    .TH_AFULL                   (56                 ),
    .TH_AEMPTY                  (8                  )
) U_AR_BUF(
    .i_clk                      (clk                ),
    .i_rst_n                    (rst                ),
    .i_wr_en                    (s_axil_arvalid&s_axil_arready      ),
    .i_data_in                  (s_axil_araddr              ),
    .o_full                     (),
    .o_afull                    (ar_full                  ),
    .i_rd_en                    (ar_rd_en            ),
    .o_data_out                 (ar_dout             ),
    .o_empty                    (ar_empty            ),
    .o_aempty                   ()
);


always @(posedge clk)begin
    if(rst)begin
        mailbox_rd_addr <= 32'b0;
        ar_valid_ff1 <= 1'b0;
    end
    else begin
        mailbox_rd_addr <= ar_dout;
        ar_valid_ff1 <= ar_rd_en;
    end
end

// fifo_w32xd32 U_R_BUF(
//     .rst             (rst), 
//     .wr_clk          (clk),
//     .rd_clk          (clk),
//     .din             (mailbox_rd_data),
//     .wr_en           (mailbox_ren_dout_vld),
//     .rd_en           (rd_rd_en),
//     .dout            (rd_dout),
//     .full            (),
//     .empty           (rd_empty),
//     .prog_full       ()
// );

syn_fifo #(
    .DATA_WIDTH                 (64                 ),
    .ADDR_WIDTH                 (6                  ),
    .RAM_DEPTH                  (64                 ),
    .OUT_DELAY                  (0                  ),
    .TH_AFULL                   (56                 ),
    .TH_AEMPTY                  (8                  )
) U_R_BUF(
    .i_clk                      (clk                ),
    .i_rst_n                    (rst                ),
    .i_wr_en                    (mailbox_ren_dout_vld      ),
    .i_data_in                  (mailbox_rd_data    ),
    .o_full                     (),
    .o_afull                    (                   ),
    .i_rd_en                    (rd_rd_en           ),
    .o_data_out                 (rd_dout            ),
    .o_empty                    (rd_empty           ),
    .o_aempty                   ()
);

assign s_axil_rvalid = rd_rd_en;
assign s_axil_rdata = rd_dout;
/////////////////////read end


endmodule
