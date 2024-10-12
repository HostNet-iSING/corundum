module bitmap#(
    parameter WQE_INDEX_WIDTH    = 10      ,
    parameter WQE_SOURCE_LENGTH  = 11
)
(
    input       wire                                                            sys_clk                     ,
    input       wire                                                            sys_rst                     ,


    input       wire                                                            s_axis_Ptrapply_valid       ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_Ptrapply_id          ,
    output      reg                                                             s_axis_Ptrapply_ready       ,

    input       wire                                                            s_axis_Brelease_valid       ,
    input       wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_Brelease_ptr         ,
    output      reg                                                             s_axis_Brelease_ready       ,

    output      reg                                                             m_axis_Pallocate_valid      ,
    output      reg     [WQE_INDEX_WIDTH - 1:0]                                 m_axis_Pallocate_id         ,
    output      wire    [WQE_SOURCE_LENGTH - 1:0]                               m_axis_Pallocate_ptr        ,
    input       wire                                                            m_axis_Pallocate_ready
);

wire                                available_ptr_wr_en         ;
reg                                 available_ptr_rd_en         ;
wire    [WQE_SOURCE_LENGTH - 1:0]   available_ptr               ;
wire 							    available_ptr_fifo_empty	;
wire							    available_ptr_fifo_full	    ;


reg     [1023:0]                    bitmap                      ;
reg     [WQE_SOURCE_LENGTH - 1:0]   pointer                     ;

assign available_ptr_wr_en  = !bitmap[pointer] && !available_ptr_fifo_full;
assign m_axis_Pallocate_ptr = available_ptr;

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        pointer <= 'b0;
    else if(pointer == 11'd1023)
        pointer <= 'd0;
    else
        pointer <= pointer + bitmap[pointer];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        bitmap <= 1024'b0;
    else if(s_axis_Brelease_valid && s_axis_Brelease_ready)
        bitmap[s_axis_Brelease_ptr] <= 1'b0;
    else if(!bitmap[pointer] && !available_ptr_fifo_full)
        bitmap[pointer] <= 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        available_ptr_rd_en <= 1'b0;
    else if(!available_ptr_fifo_empty && s_axis_Ptrapply_ready)
        available_ptr_rd_en <= 1'b1;
    else
        available_ptr_rd_en <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        s_axis_Ptrapply_ready <= 1'b0;
    else if(!available_ptr_fifo_full && s_axis_Ptrapply_valid)
        s_axis_Ptrapply_ready <= 1'b1;
    else
        s_axis_Ptrapply_ready <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_Pallocate_valid <= 1'b0;
    else if(available_ptr_rd_en)
        m_axis_Pallocate_valid <= 1'b1;
    else if(m_axis_Pallocate_valid && m_axis_Pallocate_ready)
        m_axis_Pallocate_valid <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_Pallocate_id <= 'b0;
    else
        m_axis_Pallocate_id <= s_axis_Ptrapply_id;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        s_axis_Brelease_ready <= 1'b0;
    else if(s_axis_Brelease_valid)
        s_axis_Brelease_ready <= 1'b1;
    else
        s_axis_Brelease_ready <= 1'b0;
end

syn_fifo #(
  .DATA_WIDTH  ( WQE_SOURCE_LENGTH          ),
  .ADDR_WIDTH  ( 7                          ),
  .RAM_DEPTH   ( 128                        ),
  .TH_AFULL    ( 120                        ),
  .TH_AEMPTY   ( 8                          )
)u_Pavailable_FIFO
(
  .i_clk       ( sys_clk                    ),
  .i_rst       ( sys_rst                    ),
  .i_data_in   ( pointer                    ),
  .i_wr_en     ( available_ptr_wr_en        ),
  .i_rd_en     ( available_ptr_rd_en        ),
  .o_empty     ( available_ptr_fifo_empty   ),
  .o_full      ( available_ptr_fifo_full    ),
  .o_aempty    (                            ),
  .o_afull     (                            ),
  .o_data_out  ( available_ptr              )
);
endmodule
