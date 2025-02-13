`timescale 1ns / 1ps

module source_apply
#(
    parameter WQE_INDEX_WIDTH   = 10      ,
    parameter WQE_SOURCE_LENGTH = 11
)
(
    input       wire                                                            sys_clk                     ,
    input       wire                                                            sys_rst                     ,

    input       wire                                                            s_axis_wqe_valid            ,
    input       wire    [WQE_INDEX_WIDTH  - 1:0]                                s_axis_wqe_id               ,
    input       wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_wqe_len              ,
    output      reg                                                             s_axis_wqe_ready            ,

    input       wire    [WQE_SOURCE_LENGTH  - 1:0]                              source_available            ,

    output      reg                                                             m_axis_Papply_valid         ,
    output      reg     [WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:0]             m_axis_Papply_id_len        ,
    input       wire                                                            m_axis_Papply_ready

);

wire                                                        Sapply_FIFO_full            ;
wire                                                        Sapply_FIFO_empty           ;
wire                                                        Sapply_FIFO_rd_en           ;

wire        [WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:0]     Sapply_FIFO_id_len          ;
wire        [WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:0]     Sapply_FIFO_id_len_out      ;

reg                                                         Sapply_FIFO_wr_en           ;

assign Sapply_FIFO_id_len   = {s_axis_wqe_len, s_axis_wqe_id};
assign Sapply_FIFO_rd_en    = !Sapply_FIFO_empty && m_axis_Papply_ready && !Sapply_FIFO_wr_en;


always@(posedge sys_clk)begin
    if(sys_rst)
        s_axis_wqe_ready <= 1'b1;
    else if(s_axis_wqe_len >= source_available || Sapply_FIFO_full)
        s_axis_wqe_ready <= 1'b0;
    else
        s_axis_wqe_ready <= 1'b1;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        Sapply_FIFO_wr_en <= 1'b0;
    else if(s_axis_wqe_valid && s_axis_wqe_ready && !Sapply_FIFO_full && s_axis_wqe_len < source_available)
        Sapply_FIFO_wr_en <= 1'b1;
    else
        Sapply_FIFO_wr_en <= 1'b0;
end


always@(posedge sys_clk)begin
    if(sys_rst)
        m_axis_Papply_valid <= 1'b0;
    else if(Sapply_FIFO_rd_en)
        m_axis_Papply_valid <= 1'b1;
    else
        m_axis_Papply_valid <= 1'b0;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        m_axis_Papply_id_len <= 'b0;
    else if(Sapply_FIFO_rd_en)
        m_axis_Papply_id_len <= Sapply_FIFO_id_len_out;
end

syn_fifo #(
  .DATA_WIDTH  ( WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH    ),
  .ADDR_WIDTH  ( 7                                      ),
  .RAM_DEPTH   ( 128                                    ),
  .TH_AFULL    ( 120                                    ),
  .TH_AEMPTY   ( 8                                      )
)u_Sapply_FIFO
(
  .i_clk       ( sys_clk                                ),
  .i_rst       ( sys_rst                                ),
  .i_data_in   ( Sapply_FIFO_id_len                     ),
  .i_wr_en     ( Sapply_FIFO_wr_en                      ),
  .i_rd_en     ( Sapply_FIFO_rd_en                      ),
  .o_empty     ( Sapply_FIFO_empty                      ),
  .o_full      ( Sapply_FIFO_full                       ),
  .o_aempty    (                                        ),
  .o_afull     (                                        ),
  .o_data_out  ( Sapply_FIFO_id_len_out                 )
);
endmodule



