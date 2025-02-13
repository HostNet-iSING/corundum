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
module dma_read_req_arbiter #
(    
    // DMA RAM address width
    parameter RAM_ADDR_WIDTH = 16,
    // DMA address width
    parameter DMA_ADDR_WIDTH = 64,
    // DMA length field width
    parameter DMA_LEN_WIDTH = 20,
    // DMA client length field width
    parameter DMA_CLIENT_LEN_WIDTH = 20,
    // DMA tag field width
    parameter DMA_TAG_WIDTH = 10
)
(
    input  wire                             clk,
    input  wire                             rst,

    /*
     * tx_engine DMA req input
     */    
    input  wire [DMA_ADDR_WIDTH-1:0]        s_axis_tx_dma_read_wqe_dma_addr,
    input  wire [RAM_ADDR_WIDTH-1:0]        s_axis_tx_dma_read_wqe_ram_addr,
    input  wire [DMA_LEN_WIDTH-1:0]         s_axis_tx_dma_read_wqe_len,
    input  wire [DMA_TAG_WIDTH-1:0]         s_axis_tx_dma_read_wqe_tag,
    input  wire                             s_axis_tx_dma_read_wqe_valid,
    output wire                             s_axis_tx_dma_read_wqe_ready,    
    
    /*
     * re_trans DMA req input
     */    
    input  wire [DMA_ADDR_WIDTH-1:0]        s_axis_re_dma_read_wqe_dma_addr,
    input  wire [RAM_ADDR_WIDTH-1:0]        s_axis_re_dma_read_wqe_ram_addr,
    input  wire [DMA_LEN_WIDTH-1:0]         s_axis_re_dma_read_wqe_len,
    input  wire [DMA_TAG_WIDTH-1:0]         s_axis_re_dma_read_wqe_tag,
    input  wire                             s_axis_re_dma_read_wqe_valid,
    output wire                             s_axis_re_dma_read_wqe_ready,  
    
    /*
     * DMA read data output
     */
    output wire [DMA_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_dma_addr,
    output wire [RAM_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_ram_addr,
    output wire [DMA_LEN_WIDTH-1:0]         m_axis_dma_read_wqe_len,
    output wire [DMA_TAG_WIDTH:0]           m_axis_dma_read_wqe_tag,
    output wire                             m_axis_dma_read_wqe_valid,
    input  wire                             m_axis_dma_read_wqe_ready
);


reg [DMA_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_dma_addr_reg;
reg [RAM_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_ram_addr_reg;
reg [DMA_LEN_WIDTH-1:0]         m_axis_dma_read_wqe_len_reg     ;
reg [DMA_TAG_WIDTH:0]           m_axis_dma_read_wqe_tag_reg     ;
reg                             m_axis_dma_read_wqe_valid_reg   ;
reg                             s_axis_tx_dma_read_wqe_ready_reg;
reg                             s_axis_re_dma_read_wqe_ready_reg;

always @(*) begin
    if(m_axis_dma_read_wqe_ready)
        casex({s_axis_re_dma_read_wqe_valid,s_axis_tx_dma_read_wqe_valid})
            2'b00: begin
                m_axis_dma_read_wqe_dma_addr_reg  = 1'b0                             ;
                m_axis_dma_read_wqe_ram_addr_reg  = 1'b0                             ;
                m_axis_dma_read_wqe_len_reg       = 1'b0                             ;
                m_axis_dma_read_wqe_tag_reg       = 1'b0                             ;
                m_axis_dma_read_wqe_valid_reg     = 1'b0                             ;
                s_axis_tx_dma_read_wqe_ready_reg  = 1'b1                             ;
                s_axis_re_dma_read_wqe_ready_reg  = 1'b1                             ;
            end    
            2'bx1: begin
                m_axis_dma_read_wqe_dma_addr_reg  = s_axis_tx_dma_read_wqe_dma_addr  ;
                m_axis_dma_read_wqe_ram_addr_reg  = s_axis_tx_dma_read_wqe_ram_addr  ;
                m_axis_dma_read_wqe_len_reg       = s_axis_tx_dma_read_wqe_len       ;
                m_axis_dma_read_wqe_tag_reg       = {1'b0,s_axis_tx_dma_read_wqe_tag};
                m_axis_dma_read_wqe_valid_reg     = s_axis_tx_dma_read_wqe_valid     ;
                s_axis_tx_dma_read_wqe_ready_reg  = 1'b1                             ;
                s_axis_re_dma_read_wqe_ready_reg  = 1'b0                             ;
            end
            2'b10: begin
                m_axis_dma_read_wqe_dma_addr_reg  = s_axis_re_dma_read_wqe_dma_addr  ;
                m_axis_dma_read_wqe_ram_addr_reg  = s_axis_re_dma_read_wqe_ram_addr  ;
                m_axis_dma_read_wqe_len_reg       = s_axis_re_dma_read_wqe_len       ;
                m_axis_dma_read_wqe_tag_reg       = {1'b1,s_axis_re_dma_read_wqe_tag};
                m_axis_dma_read_wqe_valid_reg     = s_axis_re_dma_read_wqe_valid     ; 
                s_axis_tx_dma_read_wqe_ready_reg  = 1'b0                             ;
                s_axis_re_dma_read_wqe_ready_reg  = 1'b1                             ;     
            end                                                                      
            default: begin                                                           
                m_axis_dma_read_wqe_dma_addr_reg  = 1'b0                             ;
                m_axis_dma_read_wqe_ram_addr_reg  = 1'b0                             ;
                m_axis_dma_read_wqe_len_reg       = 1'b0                             ;
                m_axis_dma_read_wqe_tag_reg       = 1'b0                             ;
                m_axis_dma_read_wqe_valid_reg     = 1'b0                             ;
                s_axis_tx_dma_read_wqe_ready_reg  = 1'b1                             ;
                s_axis_re_dma_read_wqe_ready_reg  = 1'b1                             ;      
            end
        endcase
    else begin
        m_axis_dma_read_wqe_dma_addr_reg  = m_axis_dma_read_wqe_dma_addr_reg;
        m_axis_dma_read_wqe_ram_addr_reg  = m_axis_dma_read_wqe_ram_addr_reg;
        m_axis_dma_read_wqe_len_reg       = m_axis_dma_read_wqe_len_reg     ;
        m_axis_dma_read_wqe_tag_reg       = m_axis_dma_read_wqe_tag_reg     ;
        m_axis_dma_read_wqe_valid_reg     = m_axis_dma_read_wqe_valid_reg   ;
        s_axis_tx_dma_read_wqe_ready_reg  = 1'b0                            ;
        s_axis_re_dma_read_wqe_ready_reg  = 1'b0                            ;  
    end
end

assign m_axis_dma_read_wqe_dma_addr  = m_axis_dma_read_wqe_dma_addr_reg;
assign m_axis_dma_read_wqe_ram_addr  = m_axis_dma_read_wqe_ram_addr_reg;
assign m_axis_dma_read_wqe_len       = m_axis_dma_read_wqe_len_reg     ;
assign m_axis_dma_read_wqe_tag       = m_axis_dma_read_wqe_tag_reg     ;
assign m_axis_dma_read_wqe_valid     = m_axis_dma_read_wqe_valid_reg   ;
assign s_axis_tx_dma_read_wqe_ready  = s_axis_tx_dma_read_wqe_ready_reg;
assign s_axis_re_dma_read_wqe_ready  = s_axis_re_dma_read_wqe_ready_reg;

endmodule
                