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
module axis_dma_read_wqe_mux #
(
    parameter DMA_ADDR_WIDTH        = 64 ,
    parameter RAM_ADDR_WIDTH        = 16 ,
    parameter DMA_TAG_WIDTH         = 16 ,
    parameter DMA_LEN_WIDTH         = 20 ,
    parameter DMA_CLIENT_LEN_WIDTH  = 20 ,
    parameter DMA_CLIENT_TAG_WIDTH  = 10 
    
)
(
    input  wire [DMA_ADDR_WIDTH-1:0]        m_axis_cu_dma_read_wqe_dma_addr ,
    input  wire [RAM_ADDR_WIDTH-1:0]        m_axis_cu_dma_read_wqe_ram_addr ,
    input  wire [DMA_LEN_WIDTH-1:0]         m_axis_cu_dma_read_wqe_len      ,
    input  wire [DMA_TAG_WIDTH-1:0]         m_axis_cu_dma_read_wqe_tag      ,
    input  wire                             m_axis_cu_dma_read_wqe_valid    ,
    output wire                             m_axis_cu_dma_read_wqe_ready    ,
                                                                            
    input  wire [DMA_ADDR_WIDTH-1:0]        m_axis_re_dma_read_wqe_dma_addr ,
    input  wire [RAM_ADDR_WIDTH-1:0]        m_axis_re_dma_read_wqe_ram_addr ,
    input  wire [DMA_LEN_WIDTH-1:0]         m_axis_re_dma_read_wqe_len      ,
    input  wire [DMA_TAG_WIDTH-1:0]         m_axis_re_dma_read_wqe_tag      ,
    input  wire                             m_axis_re_dma_read_wqe_valid    ,
    output wire                             m_axis_re_dma_read_wqe_ready    ,

    /*                                                  
     * DMA read data output                             
     */                                                 
    output wire [DMA_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_dma_addr    ,
    output wire [RAM_ADDR_WIDTH-1:0]        m_axis_dma_read_wqe_ram_addr    ,
    output wire [DMA_LEN_WIDTH-1:0]         m_axis_dma_read_wqe_len         ,
    output wire [DMA_TAG_WIDTH:0]           m_axis_dma_read_wqe_tag         ,
    output wire                             m_axis_dma_read_wqe_valid       ,
    input  wire                             m_axis_dma_read_wqe_ready

);


assign m_axis_dma_read_wqe_dma_addr  =  (m_axis_re_dma_read_wqe_valid)?  m_axis_re_dma_read_wqe_dma_addr   : m_axis_cu_dma_read_wqe_dma_addr  ;
assign m_axis_dma_read_wqe_ram_addr  =  (m_axis_re_dma_read_wqe_valid)?  m_axis_re_dma_read_wqe_ram_addr   : m_axis_cu_dma_read_wqe_ram_addr  ;
assign m_axis_dma_read_wqe_len       =  (m_axis_re_dma_read_wqe_valid)?  m_axis_re_dma_read_wqe_len        : m_axis_cu_dma_read_wqe_len       ;
assign m_axis_dma_read_wqe_tag       =  (m_axis_re_dma_read_wqe_valid)?  {1'b1,m_axis_re_dma_read_wqe_tag} : {1'b0,m_axis_cu_dma_read_wqe_tag};
assign m_axis_dma_read_wqe_valid     =  (m_axis_re_dma_read_wqe_valid)?  m_axis_re_dma_read_wqe_valid      : m_axis_cu_dma_read_wqe_valid     ;

assign m_axis_re_dma_read_wqe_ready  =  m_axis_dma_read_wqe_ready;
assign m_axis_cu_dma_read_wqe_ready  =  (m_axis_re_dma_read_wqe_valid==1'b0)? m_axis_dma_read_wqe_ready : 1'b0;
					
endmodule

`resetall
