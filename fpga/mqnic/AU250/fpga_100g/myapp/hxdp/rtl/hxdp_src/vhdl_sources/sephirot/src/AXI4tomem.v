`resetall
`timescale 1ns / 1ps
`default_nettype none

module AXI4tomem #
(

    // Register interface
    parameter REG_ADDR_WIDTH = 7,
    parameter REG_DATA_WIDTH = 32,
    parameter REG_STRB_WIDTH = (REG_DATA_WIDTH/8),
    parameter RB_BASE_ADDR = 0,
    parameter RB_NEXT_PTR = 0
)
(
    input  wire                                         clk,
    input  wire                                         rst,

    /*
     * Register interface
     */
    input  wire [REG_ADDR_WIDTH-1:0]                    reg_wr_addr,
    input  wire [REG_DATA_WIDTH-1:0]                    reg_wr_data,
    input  wire [REG_STRB_WIDTH-1:0]                    reg_wr_strb,
    input  wire                                         reg_wr_en,
    output wire                                         reg_wr_wait,
    output wire                                         reg_wr_ack,
    input  wire [REG_ADDR_WIDTH-1:0]                    reg_rd_addr,
    input  wire                                         reg_rd_en,
    output wire [REG_DATA_WIDTH-1:0]                    reg_rd_data,
    output wire                                         reg_rd_wait,
    output wire                                         reg_rd_ack,

    // DEBUG SIGNALS
    input wire                                          start_SPH,
    input wire                                          datapath_reset,
    input wire [31:0]                                   received_packets,
    input wire [31:0]                                   transmitted_packets,
    input wire [31:0]                                   dropped_packets,

    output wire [255:0]                                 imem_data_out,
    input wire [255:0]                                  imem_data_in,
    input wire [127:0]                                  maps_data_in,
    output wire [127:0]                                 maps_data_out,
    output wire [31:0]                                  address_out,
    output wire                                         we_INSTR,
    output wire                                         we_MAPS
);

localparam RBB = RB_BASE_ADDR & {REG_ADDR_WIDTH{1'b1}};

// check configuration
initial begin
    if (REG_DATA_WIDTH != 32) begin
        $error("Error: Register interface width must be 32 (instance %m)");
        $finish;
    end

    if (REG_STRB_WIDTH * 8 != REG_DATA_WIDTH) begin
        $error("Error: Register interface requires byte (8-bit) granularity (instance %m)");
        $finish;
    end

    if (REG_ADDR_WIDTH < 12) begin
        $error("Error: Register address width too narrow (instance %m)");
        $finish;
    end

    if (RB_NEXT_PTR && RB_NEXT_PTR >= RB_BASE_ADDR && RB_NEXT_PTR < RB_BASE_ADDR + 13'h1000) begin
        $error("Error: RB_NEXT_PTR overlaps block (instance %m)");
        $finish;
    end
end

// control registers
reg reg_wr_ack_reg = 1'b0, reg_wr_ack_next;
reg [REG_DATA_WIDTH-1:0] reg_rd_data_reg = 0, reg_rd_data_next;
reg reg_rd_ack_reg = 1'b0, reg_rd_ack_next;

// output signals
assign reg_wr_wait = 1'b0;
assign reg_wr_ack = reg_wr_ack_reg;
assign reg_rd_data = reg_rd_data_reg;
assign reg_rd_wait = 1'b0;
assign reg_rd_ack = reg_rd_ack_reg;

always @* begin
    reg_wr_ack_next = 1'b0;
    reg_rd_data_next = 0;
    reg_rd_ack_next = 1'b0;
    if (reg_rd_en && !reg_rd_ack_reg) begin
        // read operation
        reg_rd_ack_next = 1'b1;
        case ({reg_rd_addr >> 2, 2'b00})
            RBB+12'h000: reg_rd_data_next = 32'h12348101;  // Type
            RBB+12'h004: reg_rd_data_next = 32'h00000100;  // Version
            RBB+12'h008: reg_rd_data_next = RB_NEXT_PTR;   // Next header
            default: reg_rd_ack_next = 1'b0;
        endcase   
    end
    if (reg_wr_en && !reg_wr_ack_reg) begin
        // write operation
        reg_wr_ack_next = 1'b1;
        case ({reg_wr_addr >> 2, 2'b00})
            default: reg_wr_ack_next = 1'b0;
        endcase
    end
end

always @(posedge clk) begin
    reg_wr_ack_reg <= reg_wr_ack_next;
    reg_rd_data_reg <= reg_rd_data_next;
    reg_rd_ack_reg <= reg_rd_ack_next;
    
    if (rst) begin
        reg_wr_ack_reg <= 1'b0;
        reg_rd_ack_reg <= 1'b0;
    end
end

endmodule

`resetall
