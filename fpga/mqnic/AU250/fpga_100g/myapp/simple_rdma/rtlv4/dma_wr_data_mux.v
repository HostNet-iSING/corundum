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
module dma_wr_data_mux #
(
    parameter RAM_ADDR_WIDTH = $clog2(32768),
    parameter RAM_SEG_COUNT = 2,
    parameter RAM_SEG_DATA_WIDTH = 256*2/RAM_SEG_COUNT,
    parameter RAM_SEG_BE_WIDTH = RAM_SEG_DATA_WIDTH/8,
    parameter RAM_SEG_ADDR_WIDTH = RAM_ADDR_WIDTH-$clog2(RAM_SEG_COUNT*RAM_SEG_BE_WIDTH)
    
)
(
    input  wire                                         clk                      ,    
    input  wire                                         rst                      ,    
    
    output wire [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]    cu_dma_ram_wr_cmd_be     ,
    output wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  cu_dma_ram_wr_cmd_addr   ,
    output wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  cu_dma_ram_wr_cmd_data   ,
    output wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_wr_cmd_valid  ,
    input  wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_wr_cmd_ready  ,
    input  wire [RAM_SEG_COUNT-1:0]                     cu_dma_ram_wr_done       ,
                                                                                
    output wire [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]    re_dma_ram_wr_cmd_be     ,
    output wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  re_dma_ram_wr_cmd_addr   ,
    output wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  re_dma_ram_wr_cmd_data   ,
    output wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_wr_cmd_valid  ,
    input  wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_wr_cmd_ready  ,
    input  wire [RAM_SEG_COUNT-1:0]                     re_dma_ram_wr_done       ,
                                                                                
    /*                                                                          
     * DMA wr data input                                                        
     */                                                                         
    input  wire [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]    dma_ram_wr_cmd_be        ,
    input  wire [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]  dma_ram_wr_cmd_addr      ,
    input  wire [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]  dma_ram_wr_cmd_data      ,
    input  wire [RAM_SEG_COUNT-1:0]                     dma_ram_wr_cmd_valid     ,
    output wire [RAM_SEG_COUNT-1:0]                     dma_ram_wr_cmd_ready     ,
    output wire [RAM_SEG_COUNT-1:0]                     dma_ram_wr_done          ,
    
    input  wire                                         m_axis_dma_read_wqe_tag  ,
    input  wire                                         m_axis_dma_read_wqe_valid,
    input  wire                                         m_axis_dma_read_wqe_ready

);

wire fifo_wr_en;
wire fifo_rd_en;
wire fifo_wdata; 
wire fifo_rdata;
wire fifo_empty;
wire fifo_full ;

reg  [RAM_SEG_COUNT*RAM_SEG_BE_WIDTH-1:0]     r_dma_ram_wr_cmd_be   ;
reg  [RAM_SEG_COUNT*RAM_SEG_ADDR_WIDTH-1:0]   r_dma_ram_wr_cmd_addr ;
reg  [RAM_SEG_COUNT*RAM_SEG_DATA_WIDTH-1:0]   r_dma_ram_wr_cmd_data ;
reg  [RAM_SEG_COUNT-1:0]                      r_dma_ram_wr_cmd_valid;



assign fifo_wdata = m_axis_dma_read_wqe_tag;
assign fifo_wr_en = m_axis_dma_read_wqe_valid && m_axis_dma_read_wqe_ready && (~fifo_full);
assign fifo_rd_en = dma_ram_wr_cmd_valid && dma_ram_wr_cmd_ready && (~fifo_empty);

syn_fifo #(
  .DATA_WIDTH  ( 1                ),
  .ADDR_WIDTH  ( 5                ),
  .RAM_DEPTH   ( 32               ),
  .TH_AFULL    ( 28               ),
  .TH_AEMPTY   ( 4                )
)u_wqe_tag_fifo
(
  .i_clk       ( clk              ),
  .i_rst       ( rst              ),
  .i_data_in   ( fifo_wdata       ),
  .i_wr_en     ( fifo_wr_en       ),
  .i_rd_en     ( fifo_rd_en       ),
  .o_empty     ( fifo_empty       ),
  .o_full      ( fifo_full        ),
  .o_aempty    (                  ),
  .o_afull     (                  ),
  .o_data_out  ( fifo_rdata       )
);

always@(posedge clk or posedge rst)begin
    if(rst) begin
        r_dma_ram_wr_cmd_be    <= 0;
        r_dma_ram_wr_cmd_addr  <= 0;
        r_dma_ram_wr_cmd_data  <= 0;
        r_dma_ram_wr_cmd_valid <= 0;
    end
    else begin
        r_dma_ram_wr_cmd_be    <= dma_ram_wr_cmd_be   ;
        r_dma_ram_wr_cmd_addr  <= dma_ram_wr_cmd_addr ;
        r_dma_ram_wr_cmd_data  <= dma_ram_wr_cmd_data ;
        r_dma_ram_wr_cmd_valid <= dma_ram_wr_cmd_valid;
    end
end

assign cu_dma_ram_wr_cmd_be     = (fifo_rdata==1'b0)? r_dma_ram_wr_cmd_be    : 0;
assign cu_dma_ram_wr_cmd_addr   = (fifo_rdata==1'b0)? r_dma_ram_wr_cmd_addr  : 0;
assign cu_dma_ram_wr_cmd_data   = (fifo_rdata==1'b0)? r_dma_ram_wr_cmd_data  : 0;
assign cu_dma_ram_wr_cmd_valid  = (fifo_rdata==1'b0)? r_dma_ram_wr_cmd_valid : 0;   

assign re_dma_ram_wr_cmd_be     = (fifo_rdata==1'b1)? r_dma_ram_wr_cmd_be    : 0;
assign re_dma_ram_wr_cmd_addr   = (fifo_rdata==1'b1)? r_dma_ram_wr_cmd_addr  : 0;
assign re_dma_ram_wr_cmd_data   = (fifo_rdata==1'b1)? r_dma_ram_wr_cmd_data  : 0;
assign re_dma_ram_wr_cmd_valid  = (fifo_rdata==1'b1)? r_dma_ram_wr_cmd_valid : 0;

assign dma_ram_wr_cmd_ready = (fifo_rdata==1'b0)? cu_dma_ram_wr_cmd_ready:re_dma_ram_wr_cmd_ready  ;
assign dma_ram_wr_done      = (fifo_rdata==1'b0)? cu_dma_ram_wr_done     :re_dma_ram_wr_done       ;
					
endmodule

`resetall

