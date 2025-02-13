`timescale 1ns / 1ps

module pool_apply
#(
    parameter WQE_INDEX_WIDTH   = 10      ,
    parameter WQE_SOURCE_LENGTH = 11
)
(
    input       wire                                                            sys_clk                     ,
    input       wire                                                            sys_rst                     ,

    input       wire                                                            s_axis_Papply_valid         ,
    input       wire    [WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:0]             s_axis_Papply_id_len        ,
    output      reg                                                             s_axis_Papply_ready         ,

    output      reg                                                             m_axis_Ptrapply_valid       ,
    output      wire    [WQE_INDEX_WIDTH - 1:0]                                 m_axis_Ptrapply_id          ,
    input       wire                                                            m_axis_Ptrapply_ready       ,

    output      reg                                                             m_axis_Fapply_valid         ,
    output      wire    [WQE_INDEX_WIDTH - 1:0]                                 m_axis_Fapply_id            ,
    output      wire    [WQE_SOURCE_LENGTH - 1:0]                               m_axis_Fapply_len           ,
    input       wire                                                            m_axis_Fapply_ready
);


wire                                                        Papply_FIFO_full            ;
wire                                                        Papply_FIFO_empty           ;
wire    [WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:0]         Papply_FIFO_id_len_out      ;

reg                                                         Papply_FIFO_wr_en           ;
reg                                                         Papply_busy                 ;
reg     [WQE_INDEX_WIDTH - 1:0]                             Papply_id                   ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Papply_len                  ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           allocated_len               ;




assign m_axis_Ptrapply_id = Papply_id;
assign m_axis_Fapply_id   = Papply_id;
assign m_axis_Fapply_len  = Papply_len;



always@(posedge sys_clk)begin
    if(sys_rst)
        s_axis_Papply_ready <= 1'b1;
    else if(Papply_FIFO_full)
        s_axis_Papply_ready <= 1'b0;
    else
        s_axis_Papply_ready <= 1'b1;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        Papply_FIFO_wr_en <= 1'b0;
    else if(s_axis_Papply_valid && s_axis_Papply_ready)
        Papply_FIFO_wr_en <= 1'b1;
    else
        Papply_FIFO_wr_en <= 1'b0;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        Papply_busy <= 1'b1;
    else if(!Papply_FIFO_empty && Papply_busy && allocated_len == 'd0)
        Papply_busy <= 1'b0;
    else if((allocated_len == Papply_len - 1) && m_axis_Fapply_valid && m_axis_Fapply_ready)
        Papply_busy <= 1'b1;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        Papply_len <= 'b0;
    else if(!Papply_busy)
        Papply_len <= Papply_FIFO_id_len_out[WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:WQE_INDEX_WIDTH];
end

always@(posedge sys_clk)begin
    if(sys_rst)
        Papply_id <= 'b0;
    else if(!Papply_busy)
        Papply_id <= Papply_FIFO_id_len_out[WQE_INDEX_WIDTH - 1:0];
end

always@(posedge sys_clk)begin
    if(sys_rst)
        allocated_len <= 'b0;
    else if(m_axis_Ptrapply_valid && m_axis_Ptrapply_ready && allocated_len < Papply_len)
        allocated_len <= allocated_len + 1'b1;
    else if(Papply_busy)
        allocated_len <= 'b0;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        m_axis_Ptrapply_valid <= 1'b0;
    else if(allocated_len < Papply_len - 2 && !Papply_busy && Papply_len != 0)
        m_axis_Ptrapply_valid <= 1'b1;
    else
        m_axis_Ptrapply_valid <= 1'b0;
end

always@(posedge sys_clk)begin
    if(sys_rst)
        m_axis_Fapply_valid <= 1'b0;
    else if(m_axis_Fapply_valid && m_axis_Fapply_ready)
        m_axis_Fapply_valid <= 1'b0;
    else if(allocated_len == Papply_len - 2 && !Papply_busy && Papply_len != 0)
        m_axis_Fapply_valid <= 1'b1;
end

syn_fifo #(
  .DATA_WIDTH  ( WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH),
  .ADDR_WIDTH  ( 7                                  ),
  .RAM_DEPTH   ( 128                                ),
  .TH_AFULL    ( 120                                ),
  .TH_AEMPTY   ( 8                                  )
)u_Papply_FIFO
(
  .i_clk       ( sys_clk                            ),
  .i_rst       ( sys_rst                            ),
  .i_data_in   ( s_axis_Papply_id_len               ),
  .i_wr_en     ( Papply_FIFO_wr_en                  ),
  .i_rd_en     ( Papply_busy                        ),
  .o_empty     ( Papply_FIFO_empty                  ),
  .o_full      ( Papply_FIFO_full                   ),
  .o_aempty    (                                    ),
  .o_afull     (                                    ),
  .o_data_out  ( Papply_FIFO_id_len_out             )
);
endmodule

