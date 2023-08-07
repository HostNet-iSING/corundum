`timescale 1ns / 1ps

module ebpf4fpga_datapath #(
    parameter IF_COUNT = 0,
    parameter PORTS_PER_IF = 0,
    parameter SCHED_PER_IF = 0,
    parameter PORT_COUNT = 0,

    /* clock configuration */
    parameter CLK_PERIOD_NS_NUM = 0,
    parameter CLK_PERIOD_NS_DENOM = 0,
    
    /* ethernet interface configuration (direct, sync) */
    parameter AXIS_SYNC_DATA_WIDTH = 0,
    parameter AXIS_SYNC_KEEP_WIDTH = 0,
    parameter AXIS_SYNC_TX_USER_WIDTH = 0,
    parameter AXIS_SYNC_RX_USER_WIDTH = 0,

    /* register interface configuration */
    parameter REG_ADDR_WIDTH = 0,
    parameter REG_DATA_WIDTH = 0,
    parameter REG_STRB_WIDTH = 0,
    parameter RB_BASE_ADDR = 0,
    parameter RB_NEXT_PTR = 0,

    /* original parameters */
    parameter RESET_ACTIVE_LOW = 0,

    /* PAGE MUXING --> address(63 downto 60), up to 16 hosts on the bus */
    /* TODO(Zhuobin): this limits the #cores we can place on the NIC */
    parameter [3:0]QUEUES_PAGE 	= 4'b0000,
    parameter [3:0]XDP_MD_PAGE  = 4'b0001,
    parameter [3:0]STACK_PAGE 	= 4'b0010,
    parameter [3:0]MAPS_PAGE    = 4'b0011
)
(
    input clk,
    input reset,

    /*!
        @brief  ethernet interface
        @type   AXI-Stream bus interface
    */
    /* TX */
    input                                   m_axis_tready,
    output                                  m_axis_tvalid,
    output [AXIS_SYNC_DATA_WIDTH-1, 0]      m_axis_tdata,
    output [AXIS_SYNC_KEEP_WIDTH-1, 0]      m_axis_tkeep, 
    output                                  m_axis_tlast, 
    output [AXIS_SYNC_TX_USER_WIDTH, 0]     m_axis_tuser,
    /* RX */
    output                                  s_axis_tready,
    input                                   s_axis_tvalid,
    input [AXIS_SYNC_DATA_WIDTH-1, 0]       s_axis_tdata,
    input [AXIS_SYNC_KEEP_WIDTH-1, 0]       s_axis_tkeep,
    input                                   s_axis_tlast,
    input [AXIS_SYNC_RX_USER_WIDTH-1, 0]    s_axis_tuser,

    /*!
        @brief  register interface
        @type   cast from AXI-Lite bus interface
     */
    input [REG_ADDR_WIDTH-1, 0]         reg_wr_addr,
    input [REG_DATA_WIDTH-1, 0]         reg_wr_data,
    input [REG_STRB_WIDTH-1, 0]         reg_wr_strb,
    input                               reg_wr_en,
    output                              reg_wr_wait,
    output                              reg_wr_ack,
    input [REG_ADDR_WIDTH-1, 0]         reg_rd_addr,
    input                               reg_rd_en,
    input [REG_DATA_WIDTH-1, 0]         reg_rd_data,
    output                              reg_rd_wait,
    output                              reg_rd_ack
)



endmodule