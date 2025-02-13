`timescale 1ns / 1ps

module resource_pool
#(
    parameter WQE_INDEX_WIDTH    = 10           ,
    parameter WQE_SOURCE_LENGTH  = 11           ,
    parameter PSN_WIDTH          = 24           ,
    parameter SHRESHLOD_RETAIN   = 1000
)
(
    input       wire                                                            sys_clk                     ,
    input       wire                                                            sys_rst                     ,

    input       wire                                                            s_axis_tx_valid             ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_tx_id                ,
    input       wire    [PSN_WIDTH - 1:0]                                       s_axis_tx_psn               ,
    output      wire                                                            s_axis_tx_ready             ,

    output      wire                                                            m_axis_cpl_valid            ,
    input       wire                                                            m_axis_cpl_ready            ,
    output      wire    [WQE_INDEX_WIDTH - 1:0]                                 m_axis_cpl_id               ,

    input       wire                                                            s_axis_ack_valid            ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_ack_id               ,
    input       wire    [PSN_WIDTH - 1:0]                                       s_axis_ack_psn              ,
    output      wire                                                            s_axis_ack_ready            ,

    output      wire                                                            m_axis_retran_valid         ,
    input       wire                                                            m_axis_retran_ready         ,
    output      wire    [WQE_INDEX_WIDTH - 1:0]                                 m_axis_retran_id            ,
    output      wire    [PSN_WIDTH - 1:0]                                       m_axis_retran_psn           ,

    input       wire                                                            s_axis_wqe_valid            ,
    input       wire    [WQE_INDEX_WIDTH  - 1:0]                                s_axis_wqe_id               ,
    input       wire    [20:0]                                                  s_axis_wqe_len              ,
    output      wire                                                            s_axis_wqe_ready
);

wire    [10:0]       s_axis_wqe_len_ac           ;

assign s_axis_wqe_len_ac = s_axis_wqe_len[20:10] + (s_axis_wqe_len[9:0] > 0);

wire    [WQE_SOURCE_LENGTH - 1:0]                               available_len           ;

wire                                                            s_axis_Papply_valid     ;
wire    [WQE_INDEX_WIDTH + WQE_SOURCE_LENGTH - 1:0]             s_axis_Papply_id_len    ;
wire                                                            s_axis_Papply_ready     ;

wire                                                            s_axis_Ptrapply_valid   ;
wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_Ptrapply_id      ;
wire                                                            s_axis_Ptrapply_ready   ;

wire                                                            s_axis_Fapply_valid     ;
wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_Fapply_id        ;
wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_Fapply_len       ;
wire                                                            s_axis_Fapply_ready     ;

wire                                                            s_axis_Pallocate_valid  ;
wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_Pallocate_id     ;
wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_Pallocate_ptr    ;
wire                                                            s_axis_Pallocate_ready  ;

wire                                                            s_axis_Brelease_valid   ;
wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_Brelease_ptr     ;
wire                                                            s_axis_Brelease_ready   ;


pool #(
    .WQE_INDEX_WIDTH(WQE_INDEX_WIDTH),
    .WQE_SOURCE_LENGTH(WQE_SOURCE_LENGTH),
    .PSN_WIDTH(PSN_WIDTH),
    .SHRESHLOD_RETAIN(SHRESHLOD_RETAIN)
) my_pool_instance (
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),

    .s_axis_Pallocate_valid(s_axis_Pallocate_valid),
    .s_axis_Pallocate_id(s_axis_Pallocate_id),
    .s_axis_Pallocate_ptr(s_axis_Pallocate_ptr),
    .s_axis_Pallocate_ready(s_axis_Pallocate_ready),

    .s_axis_Fapply_valid(s_axis_Fapply_valid),
    .s_axis_Fapply_id(s_axis_Fapply_id),
    .s_axis_Fapply_len(s_axis_Fapply_len),
    .s_axis_Fapply_ready(s_axis_Fapply_ready),

    .available_len(available_len),

    .s_axis_tx_valid(s_axis_tx_valid),
    .s_axis_tx_id(s_axis_tx_id),
    .s_axis_tx_psn(s_axis_tx_psn),
    .s_axis_tx_ready(s_axis_tx_ready),

    .m_axis_cpl_valid(m_axis_cpl_valid),
    .m_axis_cpl_ready(m_axis_cpl_ready),
    .m_axis_cpl_id(m_axis_cpl_id),

    .s_axis_ack_valid(s_axis_ack_valid),
    .s_axis_ack_id(s_axis_ack_id),
    .s_axis_ack_psn(s_axis_ack_psn),
    .s_axis_ack_ready(s_axis_ack_ready),

    .m_axis_retran_valid(m_axis_retran_valid),
    .m_axis_retran_ready(m_axis_retran_ready),
    .m_axis_retran_id(m_axis_retran_id),
    .m_axis_retran_psn(m_axis_retran_psn),

    .m_axis_Brelease_valid(s_axis_Brelease_valid),
    .m_axis_Brelease_ptr(s_axis_Brelease_ptr),
    .m_axis_Brelease_ready(s_axis_Brelease_ready)
);



pool_apply #(
    .WQE_INDEX_WIDTH(WQE_INDEX_WIDTH),
    .WQE_SOURCE_LENGTH(WQE_SOURCE_LENGTH)
) my_pool_apply (
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),

    .s_axis_Papply_valid(s_axis_Papply_valid),
    .s_axis_Papply_id_len(s_axis_Papply_id_len),
    .s_axis_Papply_ready(s_axis_Papply_ready),

    .m_axis_Ptrapply_valid(s_axis_Ptrapply_valid),
    .m_axis_Ptrapply_id(s_axis_Ptrapply_id),
    .m_axis_Ptrapply_ready(s_axis_Ptrapply_ready),

    .m_axis_Fapply_valid(s_axis_Fapply_valid),
    .m_axis_Fapply_id(s_axis_Fapply_id),
    .m_axis_Fapply_len(s_axis_Fapply_len),
    .m_axis_Fapply_ready(s_axis_Fapply_ready)
);

source_apply #(
    .WQE_INDEX_WIDTH(WQE_INDEX_WIDTH),
    .WQE_SOURCE_LENGTH(WQE_SOURCE_LENGTH)
) source_apply_inst (
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),
    .s_axis_wqe_valid(s_axis_wqe_valid),
    .s_axis_wqe_id(s_axis_wqe_id),
    .s_axis_wqe_len(s_axis_wqe_len_ac),
    .s_axis_wqe_ready(s_axis_wqe_ready),
    .source_available(available_len),
    .m_axis_Papply_valid(s_axis_Papply_valid),
    .m_axis_Papply_id_len(s_axis_Papply_id_len),
    .m_axis_Papply_ready(s_axis_Papply_ready)
);

bitmap #(
    .WQE_INDEX_WIDTH(WQE_INDEX_WIDTH),
    .WQE_SOURCE_LENGTH(WQE_SOURCE_LENGTH)
) bitmap_inst (
    .sys_clk(sys_clk),
    .sys_rst(sys_rst),

    .s_axis_Ptrapply_valid(s_axis_Ptrapply_valid),
    .s_axis_Ptrapply_id(s_axis_Ptrapply_id),
    .s_axis_Ptrapply_ready(s_axis_Ptrapply_ready),

    .s_axis_Brelease_valid(s_axis_Brelease_valid),
    .s_axis_Brelease_ptr(s_axis_Brelease_ptr),
    .s_axis_Brelease_ready(s_axis_Brelease_ready),

    .m_axis_Pallocate_valid(s_axis_Pallocate_valid),
    .m_axis_Pallocate_id(s_axis_Pallocate_id),
    .m_axis_Pallocate_ptr(s_axis_Pallocate_ptr),
    .m_axis_Pallocate_ready(s_axis_Pallocate_ready)
);
endmodule

