`timescale 1ns / 1ps

module pool#(
    parameter WQE_INDEX_WIDTH   = 10        ,
    parameter WQE_SOURCE_LENGTH = 11        ,
    parameter PSN_WIDTH         = 24        ,
    parameter SHRESHLOD_RETAIN  = 1000
)
(
    input       wire                                                            sys_clk                     ,
    input       wire                                                            sys_rst                     ,

    input       wire                                                            s_axis_Pallocate_valid      ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_Pallocate_id         ,
    input       wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_Pallocate_ptr        ,
    output      reg                                                             s_axis_Pallocate_ready      ,

    input       wire                                                            s_axis_Fapply_valid         ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_Fapply_id            ,
    input       wire    [WQE_SOURCE_LENGTH - 1:0]                               s_axis_Fapply_len           ,
    output      reg                                                             s_axis_Fapply_ready         ,

    output      reg     [WQE_SOURCE_LENGTH - 1:0]                               available_len               ,

    input       wire                                                            s_axis_tx_valid             ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_tx_id                ,
    input       wire    [PSN_WIDTH - 1:0]                                       s_axis_tx_psn               ,
    output      reg                                                             s_axis_tx_ready             ,

    output      reg                                                             m_axis_cpl_valid            ,
    input       wire                                                            m_axis_cpl_ready            ,
    output      reg     [WQE_INDEX_WIDTH - 1:0]                                 m_axis_cpl_id               ,

    input       wire                                                            s_axis_ack_valid            ,
    input       wire    [WQE_INDEX_WIDTH - 1:0]                                 s_axis_ack_id               ,
    input       wire    [PSN_WIDTH - 1:0]                                       s_axis_ack_psn              ,
    output      reg                                                             s_axis_ack_ready            ,

    output      reg                                                             m_axis_retran_valid         ,
    input       wire                                                            m_axis_retran_ready         ,
    output      reg     [WQE_INDEX_WIDTH - 1:0]                                 m_axis_retran_id            ,
    output      reg     [PSN_WIDTH - 1:0]                                       m_axis_retran_psn           ,

    output      wire                                                            m_axis_Brelease_valid       ,
    output      wire    [WQE_SOURCE_LENGTH - 1:0]                               m_axis_Brelease_ptr         ,
    input       wire                                                            m_axis_Brelease_ready
);


reg     [WQE_SOURCE_LENGTH - 1:0]                           block_addr              [1023:0]    ;
reg     [30:0]                                              block_time              [1023:0]    ;

reg     [1023:0]                                            block_ack                           ;
reg     [1023:0]                                            block_tx                            ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           start_ptr                           ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           last_ptr                            ;

reg     [30:0]                                              cnt_retran_0                        ;
reg     [30:0]                                              cnt_retran_1                        ;
reg     [30:0]                                              cnt_retran_2                        ;
reg     [30:0]                                              cnt_retran_3                        ;
reg     [30:0]                                              cnt_retran_4                        ;

reg     [4:0]                                               available_process                   ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           process_id_0                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           process_id_1                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           process_id_2                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           process_id_3                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           process_id_4                        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           start_addr_0                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           start_addr_1                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           start_addr_2                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           start_addr_3                        ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           start_addr_4                        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           tx_wr_cnt                           ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           tx_next_addr                        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           ack_wr_cnt                          ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           ack_next_addr                       ;



reg                                                         Allocate_busy                       ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_next_addr_Process0            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_next_addr_Process1            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_next_addr_Process2            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_next_addr_Process3            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_next_addr_Process4            ;


reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_psn_cnt_Process0              ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_psn_cnt_Process1              ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_psn_cnt_Process2              ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_psn_cnt_Process3              ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Tloop_psn_cnt_Process4              ;

reg                                                         tx_busy                             ;
reg                                                         ack_busy                            ;

reg                                                         Tloop_retran_flag_Process0          ;
reg                                                         Tloop_retran_flag_Process1          ;
reg                                                         Tloop_retran_flag_Process2          ;
reg                                                         Tloop_retran_flag_Process3          ;
reg                                                         Tloop_retran_flag_Process4          ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Rloop_next_addr_Process0            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Rloop_next_addr_Process1            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Rloop_next_addr_Process2            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Rloop_next_addr_Process3            ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Rloop_next_addr_Process4            ;

reg                                                         Brelease_busy                       ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Brelease_next_ptr                   ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Brelease_start_addr                 ;
reg     [WQE_SOURCE_LENGTH - 1:0]                           Brelease_len                        ;

reg     [PSN_WIDTH + WQE_SOURCE_LENGTH - 1:0]               tx_id_psn_que                       ;
reg     [PSN_WIDTH + WQE_SOURCE_LENGTH - 1:0]               ack_id_psn_que                      ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_tx_next_addr_Process0    ;
reg                                                         Ldetection_tx_flag_Process0         ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_tx_next_addr_Process1    ;
reg                                                         Ldetection_tx_flag_Process1         ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_tx_next_addr_Process2    ;
reg                                                         Ldetection_tx_flag_Process2         ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_tx_next_addr_Process3    ;
reg                                                         Ldetection_tx_flag_Process3         ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_tx_next_addr_Process4    ;
reg                                                         Ldetection_tx_flag_Process4         ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_ack_next_addr_Process0   ;
reg                                                         Ldetection_ack_flag_Process0        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_ack_next_addr_Process1   ;
reg                                                         Ldetection_ack_flag_Process1        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_ack_next_addr_Process2   ;
reg                                                         Ldetection_ack_flag_Process2        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_ack_next_addr_Process3   ;
reg                                                         Ldetection_ack_flag_Process3        ;

reg     [WQE_SOURCE_LENGTH - 1:0]                           Ldetection_ack_next_addr_Process4   ;
reg                                                         Ldetection_ack_flag_Process4        ;

reg                                                         Rloop_flag_0                        ;
reg                                                         Rloop_flag_1                        ;
reg                                                         Rloop_flag_2                        ;
reg                                                         Rloop_flag_3                        ;
reg                                                         Rloop_flag_4                        ;

reg                                                         cpl_Process0                        ;
reg                                                         cpl_Process1                        ;
reg                                                         cpl_Process2                        ;
reg                                                         cpl_Process3                        ;
reg                                                         cpl_Process4                        ;

reg                                                         cpl_Process0_reg                    ;
reg                                                         cpl_Process1_reg                    ;
reg                                                         cpl_Process2_reg                    ;
reg                                                         cpl_Process3_reg                    ;
reg                                                         cpl_Process4_reg                    ;

reg                                                         start_Tloop_Process0                ;
reg                                                         start_Tloop_Process1                ;
reg                                                         start_Tloop_Process2                ;
reg                                                         start_Tloop_Process3                ;
reg                                                         start_Tloop_Process4                ;

reg                                                         ack_fifo_rd_en_reg                  ;
reg                                                         ack_busy_reg                        ;

reg                                                         tx_fifo_rd_en_reg                   ;
reg                                                         tx_busy_reg                         ;

wire    [PSN_WIDTH + WQE_SOURCE_LENGTH - 1:0]               tx_id_psn                           ;
wire    [PSN_WIDTH + WQE_SOURCE_LENGTH - 1:0]               tx_wr_id_psn                        ;
wire    [PSN_WIDTH + WQE_SOURCE_LENGTH - 1:0]               ack_wr_id_psn                       ;
wire    [PSN_WIDTH + WQE_SOURCE_LENGTH - 1:0]               ack_id_psn                          ;

wire                                                        unack_flag_0                        ;
wire                                                        unack_flag_1                        ;
wire                                                        unack_flag_2                        ;
wire                                                        unack_flag_3                        ;
wire                                                        unack_flag_4                        ;

wire 							                            tx_empty			                ;
wire 							                            tx_full			                    ;

wire 							                            ack_empty			                ;
wire 							                            ack_full			                ;

wire  							                            cpl_Process0_pos                    ;
wire  							                            cpl_Process1_pos                    ;
wire  							                            cpl_Process2_pos                    ;
wire  							                            cpl_Process3_pos                    ;
wire  							                            cpl_Process4_pos                    ;

integer                                                     i                                   ;

assign tx_fifo_wr_en = s_axis_tx_valid && s_axis_tx_ready;
assign tx_fifo_rd_en = tx_busy && !tx_busy_reg;

assign ack_fifo_wr_en = s_axis_ack_valid && s_axis_ack_ready;
assign ack_fifo_rd_en = ack_busy && !ack_busy_reg;

assign unack_flag_0 = !block_ack[Rloop_next_addr_Process0] && block_tx[Rloop_next_addr_Process0];
assign unack_flag_1 = !block_ack[Rloop_next_addr_Process1] && block_tx[Rloop_next_addr_Process1];
assign unack_flag_2 = !block_ack[Rloop_next_addr_Process2] && block_tx[Rloop_next_addr_Process2];
assign unack_flag_3 = !block_ack[Rloop_next_addr_Process3] && block_tx[Rloop_next_addr_Process3];
assign unack_flag_4 = !block_ack[Rloop_next_addr_Process4] && block_tx[Rloop_next_addr_Process4];

assign m_axis_Brelease_ptr = Brelease_next_ptr;
assign ack_wr_id_psn       = {s_axis_ack_psn,s_axis_ack_id};
assign tx_wr_id_psn        = {s_axis_tx_psn,s_axis_tx_id};

assign cpl_Process0_pos = !cpl_Process0_reg && cpl_Process0;
assign cpl_Process1_pos = !cpl_Process1_reg && cpl_Process1;
assign cpl_Process2_pos = !cpl_Process2_reg && cpl_Process2;
assign cpl_Process3_pos = !cpl_Process3_reg && cpl_Process3;
assign cpl_Process4_pos = !cpl_Process4_reg && cpl_Process4;

assign m_axis_Brelease_valid = Brelease_busy;

// Block initial
initial begin
    for(i = 0; i < 1023; i = i + 1)begin
        block_addr[i] <= 'b0;
        block_time[i] <= 'b0;
    end
end



//Allocate

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        s_axis_Pallocate_ready <= 1'b0;
    else
        s_axis_Pallocate_ready <= 1'b1;
end


always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        s_axis_Fapply_ready <= 1'b0;
    else
        s_axis_Fapply_ready <= s_axis_Fapply_valid;
end


always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Allocate_busy <= 1'b0;
    else if(s_axis_Pallocate_valid && s_axis_Pallocate_ready)
        Allocate_busy <= 1'b1;
    else
        Allocate_busy <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        start_ptr <= 10'b0;
    else if(s_axis_Pallocate_valid && !Allocate_busy)
        start_ptr <= s_axis_Pallocate_ptr;
end

always@(posedge sys_clk or negedge sys_rst)begin
    if(!sys_rst && Allocate_busy)begin
        block_addr[last_ptr]  <= s_axis_Pallocate_ptr;
        block_addr[s_axis_Pallocate_ptr] <= start_ptr;
    end
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        last_ptr <= 10'b0;
    else if(s_axis_Pallocate_valid && s_axis_Pallocate_ready)
        last_ptr <= s_axis_Pallocate_ptr;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        available_len <= 'd1024;
    else if(s_axis_Fapply_valid && s_axis_Fapply_ready)
        available_len <= available_len - s_axis_Fapply_len;
    else if(Brelease_busy && block_addr[Brelease_next_ptr] == Brelease_start_addr)
        available_len <= available_len + Brelease_len;
end


//Tx

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)begin
        available_process <= 'b0;
        process_id_0 <= 'b0;
        process_id_1 <= 'b0;
        process_id_2 <= 'b0;
        process_id_3 <= 'b0;
        process_id_4 <= 'b0;
    end
    else if(Brelease_start_addr == start_addr_0 && Brelease_busy && block_addr[Brelease_next_ptr] == Brelease_start_addr)
        available_process[0] <= 1'b0;
    else if(Brelease_start_addr == start_addr_1 && Brelease_busy && block_addr[Brelease_next_ptr] == Brelease_start_addr)
        available_process[1] <= 1'b0;
    else if(Brelease_start_addr == start_addr_2 && Brelease_busy && block_addr[Brelease_next_ptr] == Brelease_start_addr)
        available_process[2] <= 1'b0;
    else if(Brelease_start_addr == start_addr_3 && Brelease_busy && block_addr[Brelease_next_ptr] == Brelease_start_addr)
        available_process[3] <= 1'b0;
    else if(Brelease_start_addr == start_addr_4 && Brelease_busy && block_addr[Brelease_next_ptr] == Brelease_start_addr)
        available_process[4] <= 1'b0;
    else if(!available_process[0] && s_axis_Fapply_valid && s_axis_Fapply_ready)begin
        available_process[0] <= 1'b1;
        process_id_0 <= s_axis_Fapply_id;
        start_addr_0 <= start_ptr;
    end
    else if(!available_process[1] && s_axis_Fapply_valid && s_axis_Fapply_ready)begin
        available_process[1] <= 1'b1;
        process_id_1 <= s_axis_Fapply_id;
        start_addr_1 <= start_ptr;
    end
    else if(!available_process[2] && s_axis_Fapply_valid && s_axis_Fapply_ready)begin
        available_process[2] <= 1'b1;
        process_id_2 <= s_axis_Fapply_id;
        start_addr_2 <= start_ptr;
    end
    else if(!available_process[3] && s_axis_Fapply_valid && s_axis_Fapply_ready)begin
        available_process[3] <= 1'b1;
        process_id_3 <= s_axis_Fapply_id;
        start_addr_3 <= start_ptr;
    end
    else if(!available_process[4] && s_axis_Fapply_valid && s_axis_Fapply_ready)begin
        available_process[4] <= 1'b1;
        process_id_4 <= s_axis_Fapply_id;
        start_addr_4 <= start_ptr;
    end
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cnt_retran_0 <= 'd0;
    else if(!available_process[0])
        cnt_retran_0 <= 'b0;
    else if(available_process[0])
        cnt_retran_0 <= cnt_retran_0 + 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cnt_retran_1 <= 'd0;
    else if(!available_process[1])
        cnt_retran_1 <= 'b0;
    else if(available_process[1])
        cnt_retran_1 <= cnt_retran_1 + 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cnt_retran_2 <= 'd0;
    else if(!available_process[2])
        cnt_retran_2 <= 'b0;
    else if(available_process[2])
        cnt_retran_2 <= cnt_retran_2 + 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cnt_retran_3 <= 'd0;
    else if(!available_process[3])
        cnt_retran_3 <= 'b0;
    else if(available_process[3])
        cnt_retran_3 <= cnt_retran_3 + 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cnt_retran_4 <= 'd0;
    else if(!available_process[4])
        cnt_retran_4 <= 'b0;
    else if(available_process[4])
        cnt_retran_4 <= cnt_retran_4 + 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        tx_id_psn_que <= 'd0;
    else if(!tx_empty)
        tx_id_psn_que <= tx_id_psn;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        block_tx <= 0;
    else if(!sys_rst && Brelease_busy)begin
        block_time[Brelease_next_ptr] <= 'b0;
        block_tx[Brelease_next_ptr] <= 1'b0;
    end
    else if(!sys_rst && unack_flag_0 && cnt_retran_0 - block_time[Rloop_next_addr_Process0] > SHRESHLOD_RETAIN)
        block_time[Rloop_next_addr_Process0] <= cnt_retran_0;
    else if(!sys_rst && unack_flag_1 && cnt_retran_1 - block_time[Rloop_next_addr_Process1] > SHRESHLOD_RETAIN)
        block_time[Rloop_next_addr_Process1] <= cnt_retran_1;
    else if(!sys_rst && unack_flag_2 && cnt_retran_2 - block_time[Rloop_next_addr_Process2] > SHRESHLOD_RETAIN)
        block_time[Rloop_next_addr_Process2] <= cnt_retran_2;
    else if(!sys_rst && unack_flag_3 && cnt_retran_3 - block_time[Rloop_next_addr_Process3] > SHRESHLOD_RETAIN)
        block_time[Rloop_next_addr_Process3] <= cnt_retran_3;
    else if(!sys_rst && unack_flag_4 && cnt_retran_4 - block_time[Rloop_next_addr_Process4] > SHRESHLOD_RETAIN)
        block_time[Rloop_next_addr_Process4] <= cnt_retran_4;
    else if(!sys_rst && tx_busy && tx_wr_cnt == 0 && tx_id_psn_que[WQE_INDEX_WIDTH - 1:0] == process_id_0)begin
        block_time[tx_next_addr] <= cnt_retran_0;
        block_tx[tx_next_addr] <= 1'b1;
    end
    else if(!sys_rst && tx_busy && tx_wr_cnt == 0 && tx_id_psn_que[WQE_INDEX_WIDTH - 1:0] == process_id_1)begin
        block_time[tx_next_addr] <= cnt_retran_1;
        block_tx[tx_next_addr] <= 1'b1;
    end
    else if(!sys_rst && tx_busy && tx_wr_cnt == 0 && tx_id_psn_que[WQE_INDEX_WIDTH - 1:0] == process_id_2)begin
        block_time[tx_next_addr] <= cnt_retran_2;
        block_tx[tx_next_addr] <= 1'b1;
    end
    else if(!sys_rst && tx_busy && tx_wr_cnt == 0 && tx_id_psn_que[WQE_INDEX_WIDTH - 1:0] == process_id_3)begin
        block_time[tx_next_addr] <= cnt_retran_3;
        block_tx[tx_next_addr] <= 1'b1;
    end
    else if(!sys_rst && tx_busy && tx_wr_cnt == 0 && tx_id_psn_que[WQE_INDEX_WIDTH - 1:0] == process_id_4)begin
        block_time[tx_next_addr] <= cnt_retran_4;
        block_tx[tx_next_addr] <= 1'b1;
    end
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        tx_busy <= 1'b0;
    else if(tx_busy_reg && tx_wr_cnt == 'b0)
        tx_busy <= 1'b0;
    else if(!tx_empty)
        tx_busy <= 1'b1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        tx_busy_reg <= 1'b0;
    else
        tx_busy_reg <= tx_busy;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        tx_fifo_rd_en_reg <= 1'b0;
    else
        tx_fifo_rd_en_reg <= tx_fifo_rd_en;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        tx_wr_cnt <= 'd1025;
    else if(tx_fifo_rd_en_reg)
        tx_wr_cnt <= tx_id_psn[WQE_INDEX_WIDTH + PSN_WIDTH - 1:WQE_INDEX_WIDTH];
    else if(tx_wr_cnt == 'd0 && tx_busy)
        tx_wr_cnt <= 'd1025;
    else if(tx_busy && tx_wr_cnt != 'd1025)
        tx_wr_cnt <= tx_wr_cnt - 1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)begin
        tx_next_addr <= 'b0;
    end
    else if(tx_fifo_rd_en_reg && tx_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_0 && available_process[0])begin
        tx_next_addr <= start_addr_0;
    end
    else if(tx_fifo_rd_en_reg && tx_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_1 && available_process[1])begin
        tx_next_addr <= start_addr_1;
    end
    else if(tx_fifo_rd_en_reg && tx_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_2 && available_process[2])begin
        tx_next_addr <= start_addr_2;
    end
    else if(tx_fifo_rd_en_reg && tx_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_3 && available_process[3])begin
        tx_next_addr <= start_addr_3;
    end
    else if(tx_fifo_rd_en_reg && tx_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_4 && available_process[4])begin
        tx_next_addr <= start_addr_4;
    end
    else if(tx_busy && tx_wr_cnt != 'b0 && tx_wr_cnt != 'd1025)begin
        tx_next_addr <= block_addr[tx_next_addr];
    end
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        s_axis_tx_ready <= 1'b1;
    else if(tx_full)
        s_axis_tx_ready <= 1'b0;
    else
        s_axis_tx_ready <= 1'b1;
end


// Ack
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        ack_id_psn_que <= 'd0;
    else if(!ack_busy && !ack_empty)
        ack_id_psn_que <= ack_id_psn;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        block_ack <= 0;
    else if(!sys_rst && m_axis_Brelease_valid && m_axis_Brelease_ready)
        block_ack[m_axis_Brelease_ptr] <= 1'b0;
    else if(!sys_rst && ack_wr_cnt == 0 && ack_busy)begin
        block_ack[ack_next_addr] <= 1'b1;
    end
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        ack_busy <= 1'b0;
    else if(ack_busy_reg && ack_wr_cnt == 'b0)
        ack_busy <= 1'b0;
    else if(!ack_empty)
        ack_busy <= 1'b1;
end
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        ack_busy_reg <= 1'b0;
    else
        ack_busy_reg <= ack_busy;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        ack_fifo_rd_en_reg <= 1'b0;
    else
        ack_fifo_rd_en_reg <= ack_fifo_rd_en;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        ack_wr_cnt <= 'd1025;
    else if(ack_fifo_rd_en_reg)
        ack_wr_cnt <= ack_id_psn[WQE_INDEX_WIDTH + PSN_WIDTH - 1:WQE_INDEX_WIDTH];
    else if(ack_wr_cnt == 'd0 && ack_busy)
        ack_wr_cnt <= 'd1025;
    else if(ack_busy && ack_wr_cnt != 'd1025)
        ack_wr_cnt <= ack_wr_cnt - 1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)begin
        ack_next_addr <= 'b0;
    end
    else if(ack_fifo_rd_en_reg && ack_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_0 && available_process[0])begin
        ack_next_addr <= start_addr_0;
    end
    else if(ack_fifo_rd_en_reg && ack_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_1 && available_process[1])begin
        ack_next_addr <= start_addr_1;
    end
    else if(ack_fifo_rd_en_reg && ack_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_2 && available_process[2])begin
        ack_next_addr <= start_addr_2;
    end
    else if(ack_fifo_rd_en_reg && ack_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_3 && available_process[3])begin
        ack_next_addr <= start_addr_3;
    end
    else if(ack_fifo_rd_en_reg && ack_id_psn[WQE_INDEX_WIDTH - 1:0] == process_id_4 && available_process[4])begin
        ack_next_addr <= start_addr_4;
    end
    else if(ack_busy && ack_wr_cnt != 'b0 && ack_wr_cnt != 'd1025)begin
        ack_next_addr <= block_addr[ack_next_addr];
    end
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        s_axis_ack_ready <= 1'd1;
    else if(ack_full)
        s_axis_ack_ready <= 1'd0;
    else
        s_axis_ack_ready <= 1'd1;
end


//Loop Detect
//Tx Loop
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_next_addr_Process0 <= 'b0;
    else if(available_process[0] && block_tx[Ldetection_tx_next_addr_Process0])
        Ldetection_tx_next_addr_Process0 <= block_addr[Ldetection_tx_next_addr_Process0];
    else if(available_process[0] && block_addr[Ldetection_tx_next_addr_Process0] == start_addr_0
        && block_tx[Ldetection_tx_next_addr_Process0])
        Ldetection_tx_next_addr_Process0 <= Ldetection_tx_next_addr_Process0;
    else
        Ldetection_tx_next_addr_Process0 <= start_addr_0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_next_addr_Process1 <= 'b0;
    else if(available_process[1] && block_tx[Ldetection_tx_next_addr_Process1])
        Ldetection_tx_next_addr_Process1 <= block_addr[Ldetection_tx_next_addr_Process1];
    else if(available_process[1] && block_addr[Ldetection_tx_next_addr_Process1] == start_addr_1
        && block_tx[Ldetection_tx_next_addr_Process1])
        Ldetection_tx_next_addr_Process1 <= Ldetection_tx_next_addr_Process1;
    else
        Ldetection_tx_next_addr_Process1 <= start_addr_1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_next_addr_Process2 <= 'b0;
    else if(available_process[2] && block_tx[Ldetection_tx_next_addr_Process2])
        Ldetection_tx_next_addr_Process2 <= block_addr[Ldetection_tx_next_addr_Process2];
    else if(available_process[2] && block_addr[Ldetection_tx_next_addr_Process2] == start_addr_2
        && block_tx[Ldetection_tx_next_addr_Process2])
        Ldetection_tx_next_addr_Process2 <= Ldetection_tx_next_addr_Process2;
    else
        Ldetection_tx_next_addr_Process2 <= start_addr_2;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_next_addr_Process3 <= 'b0;
    else if(available_process[3] && block_tx[Ldetection_tx_next_addr_Process3])
        Ldetection_tx_next_addr_Process3 <= block_addr[Ldetection_tx_next_addr_Process3];
    else if(available_process[3] && block_addr[Ldetection_tx_next_addr_Process3] == start_addr_3
        && block_tx[Ldetection_tx_next_addr_Process3])
        Ldetection_tx_next_addr_Process3 <= Ldetection_tx_next_addr_Process3;
    else
        Ldetection_tx_next_addr_Process3 <= start_addr_3;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_next_addr_Process4 <= 'b0;
    else if(available_process[4] && block_tx[Ldetection_tx_next_addr_Process4])
        Ldetection_tx_next_addr_Process4 <= block_addr[Ldetection_tx_next_addr_Process4];
    else if(available_process[4] && block_addr[Ldetection_tx_next_addr_Process4] == start_addr_4
        && block_tx[Ldetection_tx_next_addr_Process4])
        Ldetection_tx_next_addr_Process4 <= Ldetection_tx_next_addr_Process4;
    else
        Ldetection_tx_next_addr_Process4 <= start_addr_4;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_flag_Process0 <= 1'b0;
    else if(available_process[0] && block_addr[Ldetection_tx_next_addr_Process0] == start_addr_0
        && block_tx[Ldetection_tx_next_addr_Process0])
        Ldetection_tx_flag_Process0 <= 1'b1;
    else if(!available_process[0])
        Ldetection_tx_flag_Process0 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_flag_Process1 <= 1'b0;
    else if(available_process[1] && block_addr[Ldetection_tx_next_addr_Process1] == start_addr_1
        && block_tx[Ldetection_tx_next_addr_Process1])
        Ldetection_tx_flag_Process1 <= 1'b1;
    else if(!available_process[1])
        Ldetection_tx_flag_Process1 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_flag_Process2 <= 1'b0;
    else if(available_process[2] && block_addr[Ldetection_tx_next_addr_Process2] == start_addr_2
        && block_tx[Ldetection_tx_next_addr_Process2])
        Ldetection_tx_flag_Process2 <= 1'b1;
    else if(!available_process[2])
        Ldetection_tx_flag_Process2 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_flag_Process3 <= 1'b0;
    else if(available_process[3] && block_addr[Ldetection_tx_next_addr_Process3] == start_addr_3
        && block_tx[Ldetection_tx_next_addr_Process3])
        Ldetection_tx_flag_Process3 <= 1'b1;
    else if(!available_process[3])
        Ldetection_tx_flag_Process3 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_tx_flag_Process4 <= 1'b0;
    else if(available_process[4] && block_addr[Ldetection_tx_next_addr_Process4] == start_addr_4
        && block_tx[Ldetection_tx_next_addr_Process4])
        Ldetection_tx_flag_Process4 <= 1'b1;
    else if(!available_process[4])
        Ldetection_tx_flag_Process4 <= 1'b0;
end

//Ack Loop
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_next_addr_Process0 <= 'b0;
    else if(available_process[0] && block_ack[Ldetection_ack_next_addr_Process0])
        Ldetection_ack_next_addr_Process0 <= block_addr[Ldetection_ack_next_addr_Process0];
    else if(available_process[0] && block_addr[Ldetection_ack_next_addr_Process0] == start_addr_0 && block_ack[Ldetection_ack_next_addr_Process0])
        Ldetection_ack_next_addr_Process0 <= Ldetection_ack_next_addr_Process0;
    else
        Ldetection_ack_next_addr_Process0 <= start_addr_0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_next_addr_Process1 <= 'b0;
    else if(available_process[1] && block_ack[Ldetection_ack_next_addr_Process1])
        Ldetection_ack_next_addr_Process1 <= block_addr[Ldetection_ack_next_addr_Process1];
    else if(available_process[1] && block_addr[Ldetection_ack_next_addr_Process1] == start_addr_1 && block_ack[Ldetection_ack_next_addr_Process1])
        Ldetection_ack_next_addr_Process1 <= Ldetection_ack_next_addr_Process1;
    else
        Ldetection_ack_next_addr_Process1 <= start_addr_1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_next_addr_Process2 <= 'b0;
    else if(available_process[2] && block_ack[Ldetection_ack_next_addr_Process2])
        Ldetection_ack_next_addr_Process2 <= block_addr[Ldetection_ack_next_addr_Process2];
    else if(available_process[2] && block_addr[Ldetection_ack_next_addr_Process2] == start_addr_2 && block_ack[Ldetection_ack_next_addr_Process2])
        Ldetection_ack_next_addr_Process2 <= Ldetection_ack_next_addr_Process2;
    else
        Ldetection_ack_next_addr_Process2 <= start_addr_2;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_next_addr_Process3 <= 'b0;
    else if(available_process[3] && block_ack[Ldetection_ack_next_addr_Process3])
        Ldetection_ack_next_addr_Process3 <= block_addr[Ldetection_ack_next_addr_Process3];
    else if(available_process[3] && block_addr[Ldetection_ack_next_addr_Process3] == start_addr_3 && block_ack[Ldetection_ack_next_addr_Process3])
        Ldetection_ack_next_addr_Process3 <= Ldetection_ack_next_addr_Process3;
    else
        Ldetection_ack_next_addr_Process3 <= start_addr_3;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_next_addr_Process4 <= 'b0;
    else if(available_process[4] && block_ack[Ldetection_ack_next_addr_Process4])
        Ldetection_ack_next_addr_Process4 <= block_addr[Ldetection_ack_next_addr_Process4];
    else if(available_process[4] && block_addr[Ldetection_ack_next_addr_Process4] == start_addr_4 && block_ack[Ldetection_ack_next_addr_Process4])
        Ldetection_ack_next_addr_Process4 <= Ldetection_ack_next_addr_Process4;
    else
        Ldetection_ack_next_addr_Process4 <= start_addr_4;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_flag_Process0 <= 1'b0;
    else if(available_process[0] && block_addr[Ldetection_ack_next_addr_Process0] == start_addr_0 && block_ack[Ldetection_ack_next_addr_Process0])
        Ldetection_ack_flag_Process0 <= 1'b1;
    else if(!available_process[0])
        Ldetection_ack_flag_Process0 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_flag_Process1 <= 1'b0;
    else if(available_process[1] && block_addr[Ldetection_ack_next_addr_Process1] == start_addr_1 && block_ack[Ldetection_ack_next_addr_Process1])
        Ldetection_ack_flag_Process1 <= 1'b1;
    else if(!available_process[1])
        Ldetection_ack_flag_Process1 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_flag_Process2 <= 1'b0;
    else if(available_process[2] && block_addr[Ldetection_ack_next_addr_Process2] == start_addr_2 && block_ack[Ldetection_ack_next_addr_Process2])
        Ldetection_ack_flag_Process2 <= 1'b1;
    else if(!available_process[2])
        Ldetection_ack_flag_Process2 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_flag_Process3 <= 1'b0;
    else if(available_process[3] && block_addr[Ldetection_ack_next_addr_Process3] == start_addr_3 && block_ack[Ldetection_ack_next_addr_Process3])
        Ldetection_ack_flag_Process3 <= 1'b1;
    else if(!available_process[3])
        Ldetection_ack_flag_Process3 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Ldetection_ack_flag_Process4 <= 1'b0;
    else if(available_process[4] && block_addr[Ldetection_ack_next_addr_Process4] == start_addr_4 && block_ack[Ldetection_ack_next_addr_Process4])
        Ldetection_ack_flag_Process4 <= 1'b1;
    else if(!available_process[4])
        Ldetection_ack_flag_Process4 <= 1'b0;
end


//Retran Loop
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        start_Tloop_Process0 <= 1'b0;
    else if(!available_process[0] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        start_Tloop_Process0 <= 1'b1;
    else if(start_Tloop_Process0)
        start_Tloop_Process0 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_next_addr_Process0 <= 'b0;
    else if(Tloop_retran_flag_Process0)
        Tloop_next_addr_Process0 <= Tloop_next_addr_Process0;
    else if(start_Tloop_Process0)
        Tloop_next_addr_Process0 <= start_addr_0;
    else if(available_process[0])
        Tloop_next_addr_Process0 <= block_addr[Tloop_next_addr_Process0];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        start_Tloop_Process1 <= 1'b0;
    else if(!available_process[1] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        start_Tloop_Process1 <= 1'b1;
    else if(start_Tloop_Process1)
        start_Tloop_Process1 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_next_addr_Process1 <= 'b0;
    else if(Tloop_retran_flag_Process1)
        Tloop_next_addr_Process1 <= Tloop_next_addr_Process1;
    else if(start_Tloop_Process1)
        Tloop_next_addr_Process1 <= start_addr_1;
    else if(available_process[1])
        Tloop_next_addr_Process0 <= block_addr[Tloop_next_addr_Process1];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        start_Tloop_Process2 <= 1'b0;
    else if(!available_process[2] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        start_Tloop_Process2 <= 1'b1;
    else if(start_Tloop_Process2)
        start_Tloop_Process2 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_next_addr_Process2 <= 'b0;
    else if(Tloop_retran_flag_Process2)
        Tloop_next_addr_Process2 <= Tloop_next_addr_Process2;
    else if(start_Tloop_Process2)
        Tloop_next_addr_Process2 <= start_addr_2;
    else if(available_process[2])
        Tloop_next_addr_Process2 <= block_addr[Tloop_next_addr_Process2];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        start_Tloop_Process3 <= 1'b0;
    else if(!available_process[3] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        start_Tloop_Process3 <= 1'b1;
    else if(start_Tloop_Process3)
        start_Tloop_Process3 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_next_addr_Process3 <= 'b0;
    else if(Tloop_retran_flag_Process3)
        Tloop_next_addr_Process3 <= Tloop_next_addr_Process3;
    else if(start_Tloop_Process3)
        Tloop_next_addr_Process3 <= start_addr_3;
    else if(available_process[3])
        Tloop_next_addr_Process3 <= block_addr[Tloop_next_addr_Process3];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        start_Tloop_Process4 <= 1'b0;
    else if(!available_process[4] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        start_Tloop_Process4 <= 1'b1;
    else if(start_Tloop_Process4)
        start_Tloop_Process4 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_next_addr_Process4 <= 'b0;
    else if(Tloop_retran_flag_Process4)
        Tloop_next_addr_Process4 <= Tloop_next_addr_Process4;
    else if(start_Tloop_Process4)
        Tloop_next_addr_Process4 <= start_addr_4;
    else if(available_process[4])
        Tloop_next_addr_Process4 <= block_addr[Tloop_next_addr_Process4];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_psn_cnt_Process0 <= 'b0;
    else if(available_process[0] && block_addr[Rloop_next_addr_Process0] == start_addr_0)
        Tloop_psn_cnt_Process0 <= 'b0;
    else if(available_process[0])
        Tloop_psn_cnt_Process0 <= Tloop_psn_cnt_Process0 + 1'b1;
    else
        Tloop_psn_cnt_Process0 <= 'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_psn_cnt_Process1 <= 'b0;
    else if(available_process[1] && block_addr[Rloop_next_addr_Process1] == start_addr_1)
        Tloop_psn_cnt_Process1 <= 'b0;
    else if(available_process[1])
        Tloop_psn_cnt_Process1 <= Tloop_psn_cnt_Process1 + 1'b1;
    else
        Tloop_psn_cnt_Process1 <= 'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_psn_cnt_Process2 <= 'b0;
    else if(available_process[2] && block_addr[Rloop_next_addr_Process2] == start_addr_2)
        Tloop_psn_cnt_Process2 <= 'b0;
    else if(available_process[2])
        Tloop_psn_cnt_Process2 <= Tloop_psn_cnt_Process2 + 1'b1;
    else
        Tloop_psn_cnt_Process2 <= 'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_psn_cnt_Process3 <= 'b0;
    else if(available_process[3] && block_addr[Rloop_next_addr_Process3] == start_addr_3)
        Tloop_psn_cnt_Process3 <= 'b0;
    else if(available_process[3])
        Tloop_psn_cnt_Process3 <= Tloop_psn_cnt_Process3 + 1'b1;
    else
        Tloop_psn_cnt_Process3 <= 'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_psn_cnt_Process4 <= 'b0;
    else if(available_process[4] && block_addr[Rloop_next_addr_Process4] == start_addr_4)
        Tloop_psn_cnt_Process4 <= 'b0;
    else if(available_process[4])
        Tloop_psn_cnt_Process4 <= Tloop_psn_cnt_Process4 + 1'b1;
    else
        Tloop_psn_cnt_Process4 <= 'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_retran_flag_Process0 <= 1'b0;
    else if(unack_flag_0 && cnt_retran_0 - block_time[Rloop_next_addr_Process0] > SHRESHLOD_RETAIN)
        Tloop_retran_flag_Process0 <= 1'b1;
    else if(m_axis_retran_valid && m_axis_retran_ready && m_axis_retran_id == process_id_0)
        Tloop_retran_flag_Process0 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_flag_0 <= 1'b0;
    else if(!available_process[0] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        Rloop_flag_0 <= 1'b1;
    else
        Rloop_flag_0 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_next_addr_Process0 <= 'b0;
    else if(Rloop_flag_0)
        Rloop_next_addr_Process0 <= start_addr_0;
    else
        Rloop_next_addr_Process0 <= block_addr[Rloop_next_addr_Process0];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_retran_flag_Process1 <= 1'b0;
    else if(unack_flag_1 && cnt_retran_1 - block_time[Rloop_next_addr_Process1] > SHRESHLOD_RETAIN)
        Tloop_retran_flag_Process1 <= 1'b1;
    else if(m_axis_retran_valid && m_axis_retran_ready && m_axis_retran_id == process_id_1)
        Tloop_retran_flag_Process1 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_flag_1 <= 1'b0;
    else if(!available_process[1] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        Rloop_flag_1 <= 1'b1;
    else
        Rloop_flag_1 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_next_addr_Process1 <= 'b0;
    else if(Rloop_flag_1)
        Rloop_next_addr_Process1 <= start_addr_1;
    else
        Rloop_next_addr_Process1 <= block_addr[Rloop_next_addr_Process1];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_retran_flag_Process2 <= 1'b0;
    else if(unack_flag_2 && cnt_retran_2 - block_time[Rloop_next_addr_Process2] > SHRESHLOD_RETAIN)
        Tloop_retran_flag_Process2 <= 1'b1;
    else if(m_axis_retran_valid && m_axis_retran_ready && m_axis_retran_id == process_id_2)
        Tloop_retran_flag_Process2 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_flag_2 <= 1'b0;
    else if(!available_process[2] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        Rloop_flag_2 <= 1'b1;
    else
        Rloop_flag_2 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_next_addr_Process2 <= 'b0;
    else if(Rloop_flag_2)
        Rloop_next_addr_Process2 <= start_addr_2;
    else
        Rloop_next_addr_Process2 <= block_addr[Rloop_next_addr_Process2];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_retran_flag_Process3 <= 1'b0;
    else if(unack_flag_3 && cnt_retran_3 - block_time[Rloop_next_addr_Process3] > SHRESHLOD_RETAIN)
        Tloop_retran_flag_Process3 <= 1'b1;
    else if(m_axis_retran_valid && m_axis_retran_ready && m_axis_retran_id == process_id_3)
        Tloop_retran_flag_Process3 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_flag_3 <= 1'b0;
    else if(!available_process[3] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        Rloop_flag_3 <= 1'b1;
    else
        Rloop_flag_3 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_next_addr_Process3 <= 'b0;
    else if(Rloop_flag_3)
        Rloop_next_addr_Process3 <= start_addr_3;
    else
        Rloop_next_addr_Process3 <= block_addr[Rloop_next_addr_Process3];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Tloop_retran_flag_Process4 <= 1'b0;
    else if(unack_flag_4 && cnt_retran_4 - block_time[Rloop_next_addr_Process4] > SHRESHLOD_RETAIN)
        Tloop_retran_flag_Process4 <= 1'b1;
    else if(m_axis_retran_valid && m_axis_retran_ready && m_axis_retran_id == process_id_4)
        Tloop_retran_flag_Process4 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_flag_4 <= 1'b0;
    else if(!available_process[4] && s_axis_Fapply_valid && s_axis_Fapply_ready)
        Rloop_flag_4 <= 1'b1;
    else
        Rloop_flag_4 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Rloop_next_addr_Process4 <= 'b0;
    else if(Rloop_flag_4)
        Rloop_next_addr_Process4 <= start_addr_4;
    else
        Rloop_next_addr_Process4 <= block_addr[Rloop_next_addr_Process4];
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_retran_valid <= 1'd0;
    else if((unack_flag_0 && cnt_retran_0 - block_time[Rloop_next_addr_Process0] >SHRESHLOD_RETAIN) ||
        (unack_flag_1 && cnt_retran_1 - block_time[Rloop_next_addr_Process1] >SHRESHLOD_RETAIN) ||
        (unack_flag_2 && cnt_retran_2 - block_time[Rloop_next_addr_Process2] >SHRESHLOD_RETAIN) ||
        (unack_flag_3 && cnt_retran_3 - block_time[Rloop_next_addr_Process3] >SHRESHLOD_RETAIN) ||
        (unack_flag_4 && cnt_retran_4 - block_time[Rloop_next_addr_Process4] >SHRESHLOD_RETAIN))
        m_axis_retran_valid <= 1;
    else
        m_axis_retran_valid <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_retran_id <= 1'd0;
    else if(unack_flag_0 && cnt_retran_0 - block_time[Rloop_next_addr_Process0] >SHRESHLOD_RETAIN)
        m_axis_retran_id <= process_id_0;
    else if(unack_flag_1 && cnt_retran_1 - block_time[Rloop_next_addr_Process1] >SHRESHLOD_RETAIN)
        m_axis_retran_id <= process_id_1;
    else if(unack_flag_2 && cnt_retran_2 - block_time[Rloop_next_addr_Process2] >SHRESHLOD_RETAIN)
        m_axis_retran_id <= process_id_2;
    else if(unack_flag_3 && cnt_retran_3 - block_time[Rloop_next_addr_Process3] >SHRESHLOD_RETAIN)
        m_axis_retran_id <= process_id_3;
    else if(unack_flag_4 && cnt_retran_4 - block_time[Rloop_next_addr_Process4] >SHRESHLOD_RETAIN)
        m_axis_retran_id <= process_id_4;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_retran_psn <= 1'd0;
    else if(unack_flag_0 && cnt_retran_0 - block_time[Rloop_next_addr_Process0] >SHRESHLOD_RETAIN)
        m_axis_retran_psn <= Tloop_psn_cnt_Process0;
    else if(unack_flag_1 && cnt_retran_1 - block_time[Rloop_next_addr_Process1] >SHRESHLOD_RETAIN)
        m_axis_retran_psn <= Tloop_psn_cnt_Process1;
    else if(unack_flag_2 && cnt_retran_2 - block_time[Rloop_next_addr_Process2] >SHRESHLOD_RETAIN)
        m_axis_retran_psn <= Tloop_psn_cnt_Process2;
    else if(unack_flag_3 && cnt_retran_3 - block_time[Rloop_next_addr_Process3] >SHRESHLOD_RETAIN)
        m_axis_retran_psn <= Tloop_psn_cnt_Process3;
    else if(unack_flag_4 && cnt_retran_4 - block_time[Rloop_next_addr_Process4] >SHRESHLOD_RETAIN)
        m_axis_retran_psn <= Tloop_psn_cnt_Process4;
end


//Compelete
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process0 <= 1'b0;
    else if(available_process[0] && Ldetection_ack_flag_Process0 && Ldetection_tx_flag_Process0)
        cpl_Process0 <= 1'b1;
    else if(cpl_Process0 && m_axis_cpl_valid && m_axis_cpl_ready && m_axis_cpl_id == process_id_0)
        cpl_Process0 <= 1'b0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process1 <= 1'b0;
    else
        cpl_Process1 <= (available_process[1] && Ldetection_ack_flag_Process1 && Ldetection_tx_flag_Process1);
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process2 <= 1'b0;
    else
        cpl_Process2 <= available_process[2] && Ldetection_ack_flag_Process2 && Ldetection_tx_flag_Process2;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process3 <= 1'b0;
     else
        cpl_Process3 <= available_process[3] && Ldetection_ack_flag_Process3 && Ldetection_tx_flag_Process3;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process4 <= 1'b0;
     else
        cpl_Process4 <= available_process[4] && Ldetection_ack_flag_Process4 && Ldetection_tx_flag_Process4;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process0_reg <= 1'b0;
    else
        cpl_Process0_reg <= cpl_Process0;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process1_reg <= 1'b0;
    else
        cpl_Process1_reg <= cpl_Process1;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process2_reg <= 1'b0;
    else
        cpl_Process2_reg <= cpl_Process2;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process3_reg <= 1'b0;
    else
        cpl_Process3_reg <= cpl_Process3;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        cpl_Process4_reg <= 1'b0;
    else
        cpl_Process4_reg <= cpl_Process4;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_cpl_valid <= 1'd0;
    else if(m_axis_cpl_valid)
        m_axis_cpl_valid <= 1'b0;
    else
        m_axis_cpl_valid <= cpl_Process0_pos || cpl_Process1_pos || cpl_Process2_pos || cpl_Process3_pos || cpl_Process4_pos;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        m_axis_cpl_id <= 10'd0;
    else if(cpl_Process0)
        m_axis_cpl_id <= process_id_0;
    else if(cpl_Process1)
        m_axis_cpl_id <= process_id_1;
    else if(cpl_Process2)
        m_axis_cpl_id <= process_id_2;
    else if(cpl_Process3)
        m_axis_cpl_id <= process_id_3;
    else if(cpl_Process4)
        m_axis_cpl_id <= process_id_4;
end


//Bitmap Release
always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Brelease_busy <= 1'd0;
    else if(block_addr[Brelease_next_ptr] == Brelease_start_addr)
        Brelease_busy <= 1'b0;
    else if(m_axis_cpl_valid && m_axis_cpl_ready)
        Brelease_busy <= 1'b1;

end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Brelease_start_addr <= 10'd0;
    else if(m_axis_cpl_valid && m_axis_cpl_ready && cpl_Process0)
        Brelease_start_addr <= start_addr_0;
    else if(m_axis_cpl_valid && m_axis_cpl_ready && cpl_Process1)
        Brelease_start_addr <= start_addr_1;
    else if(m_axis_cpl_valid && m_axis_cpl_ready && cpl_Process2)
        Brelease_start_addr <= start_addr_2;
    else if(m_axis_cpl_valid && m_axis_cpl_ready && cpl_Process3)
        Brelease_start_addr <= start_addr_3;
    else if(m_axis_cpl_valid && m_axis_cpl_ready && cpl_Process4)
        Brelease_start_addr <= start_addr_4;
end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Brelease_next_ptr <= 10'd0;
        else if(block_addr[Brelease_next_ptr] == Brelease_start_addr)
        Brelease_next_ptr <= Brelease_next_ptr;
    else if(m_axis_Brelease_valid && m_axis_Brelease_ready)
        Brelease_next_ptr <= block_addr[Brelease_next_ptr];

    else
        Brelease_next_ptr <= Brelease_start_addr;

end

always@(posedge sys_clk or posedge sys_rst)begin
    if(sys_rst)
        Brelease_len <= 10'd0;
    else if(!Brelease_busy)
        Brelease_len <= 10'b0;
    else if(Brelease_busy && m_axis_Brelease_valid && m_axis_Brelease_ready)
        Brelease_len <= Brelease_len + 1'b1;
end

syn_fifo #(
  .DATA_WIDTH  ( WQE_SOURCE_LENGTH + PSN_WIDTH),
  .ADDR_WIDTH  ( 7                            ),
  .RAM_DEPTH   ( 128                          ),
  .TH_AFULL    ( 120                          ),
  .TH_AEMPTY   ( 8                            )
)u_tx_FIFO
(
  .i_clk       ( sys_clk                      ),
  .i_rst       ( sys_rst                      ),
  .i_data_in   ( tx_wr_id_psn                 ),
  .i_wr_en     ( tx_fifo_wr_en                ),
  .i_rd_en     ( tx_fifo_rd_en                ),
  .o_empty     ( tx_empty                     ),
  .o_full      ( tx_full                      ),
  .o_aempty    (                              ),
  .o_afull     (                              ),
  .o_data_out  ( tx_id_psn                    )
);

syn_fifo #(
  .DATA_WIDTH  ( WQE_SOURCE_LENGTH + PSN_WIDTH),
  .ADDR_WIDTH  ( 7                            ),
  .RAM_DEPTH   ( 128                          ),
  .TH_AFULL    ( 120                          ),
  .TH_AEMPTY   ( 8                            )
)u_ack_FIFO
(
  .i_clk       ( sys_clk                      ),
  .i_rst       ( sys_rst                      ),
  .i_data_in   ( ack_wr_id_psn                ),
  .i_wr_en     ( ack_fifo_wr_en               ),
  .i_rd_en     ( ack_fifo_rd_en               ),
  .o_empty     ( ack_empty                    ),
  .o_full      ( ack_full                     ),
  .o_aempty    (                              ),
  .o_afull     (                              ),
  .o_data_out  ( ack_id_psn                   )
);
endmodule
