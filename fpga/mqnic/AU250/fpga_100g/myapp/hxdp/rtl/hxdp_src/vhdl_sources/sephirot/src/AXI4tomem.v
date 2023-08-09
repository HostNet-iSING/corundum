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

/* 
    -------------------registers-------------------
*/
// control registers
reg reg_wr_ack_reg = 1'b0, reg_wr_ack_next;
reg [REG_DATA_WIDTH-1:0] reg_rd_data_reg = 0, reg_rd_data_next;
reg reg_rd_ack_reg = 1'b0, reg_rd_ack_next;
// mem addr reg
reg [31:0] address_out_reg = 0, address_out_next;
// intruction memory regs
reg [255:0] instruction_to_be_written = 0, imem_data_out_reg = 0, imem_data_out_next;
reg we_INSTR_reg = 1'b0, we_INSTR_next;
// map memory regs
reg [127:0] maps_line_to_be_written = 0, maps_data_out_reg = 0, maps_data_out_next;
reg we_MAPS_reg = 1'b0, we_MAPS_next;

/* 
    -------------------output signals-------------------
*/
// control 
assign reg_wr_wait = 1'b0;
assign reg_wr_ack = reg_wr_ack_reg;
assign reg_rd_data = reg_rd_data_reg;
assign reg_rd_wait = 1'b0;
assign reg_rd_ack = reg_rd_ack_reg;
// mem addr 
assign address_out = address_out_reg;
// imem 
assign imem_data_out = imem_data_out_reg;
assign we_INSTR = we_INSTR_reg;
// map mem
assign maps_data_out = maps_data_out_reg;
assign we_MAPS = we_MAPS_reg;

/* 
    -------------------processing read/write input logic-------------------
*/
always @* begin
    reg_wr_ack_next = 1'b0;
    reg_rd_data_next = 0;
    reg_rd_ack_next = 1'b0;

    address_out_next = 0;
    imem_data_out_next = 0;
    we_INSTR_next = 1'b0;
    maps_data_out_next = 0;
    we_MAPS_next = 0;

    if (reg_rd_en && !reg_rd_ack_reg) begin
        // read operation
        reg_rd_ack_next = 1'b1;
        if (reg_rd_addr[19:16] == 4'h0) begin
            // register block info
            case ({reg_rd_addr >> 2, 2'b00})
                RBB+8'h00: reg_rd_data_next = 32'h12348101;  // Type
                RBB+8'h04: reg_rd_data_next = 32'h00000100;  // Version
                RBB+8'h08: reg_rd_data_next = RB_NEXT_PTR;   // Next header
                default: reg_rd_ack_next = 1'b0;
            endcase   
        end
        else if (reg_rd_addr[19:16] == 4'h1) begin
            // imem read
            case ({reg_rd_addr >> 2, 2'b00})
                RBB+8'h00: reg_rd_data_next = imem_data_in[31:0];
                RBB+8'h04: reg_rd_data_next = imem_data_in[63:32];
                RBB+8'h08: reg_rd_data_next = imem_data_in[95:64];
                RBB+8'h0c: reg_rd_data_next = imem_data_in[127:96];
                RBB+8'h10: reg_rd_data_next = imem_data_in[159:128];
                RBB+8'h14: reg_rd_data_next = imem_data_in[191:160];
                RBB+8'h18: reg_rd_data_next = imem_data_in[223:192];
                RBB+8'h1c: reg_rd_data_next = imem_data_in[255:224];
                default: reg_rd_ack_next = 1'b0;
            endcase
        end
        else if (reg_rd_addr[19:16] == 4'h2) begin
            // map memory read
            case ({reg_rd_addr >> 2, 2'b00})
                RBB+8'h00: reg_rd_data_next = maps_data_in[31:0];
                RBB+8'h04: reg_rd_data_next = maps_data_in[63:32];
                RBB+8'h08: reg_rd_data_next = maps_data_in[95:64];
                RBB+8'h0c: reg_rd_data_next = maps_data_in[127:96];
                default: reg_rd_ack_next = 1'b0;
            endcase
        end
        else if (reg_rd_addr[19:16] == 4'h3) begin
            // counter read
            case ({reg_rd_addr >> 2, 2'b00})
                RBB+8'h00: reg_rd_data_next = received_packets;
                RBB+8'h04: reg_rd_data_next = transmitted_packets;
                RBB+8'h08: reg_rd_data_next = dropped_packets;
                RBB+8'h0c: reg_rd_data_next = start_SPH;
                RBB+8'h10: reg_rd_data_next = datapath_reset;
                default: reg_rd_ack_next = 1'b0;
            endcase
        end
        else begin
            reg_rd_ack_next = 1'b0;
        end
    end
    if (reg_wr_en && !reg_wr_ack_reg) begin
        // write operation
        reg_wr_ack_next = 1'b1;
        if (reg_wr_addr[19:16] == 4'h1) begin
            // imem write
            case ({reg_wr_addr >> 2, 2'b00})
                RBB+8'h00: instruction_to_be_written[31:0] = reg_wr_data;
                RBB+8'h04: instruction_to_be_written[63:32] = reg_wr_data;
                RBB+8'h08: instruction_to_be_written[95:64] = reg_wr_data;
                RBB+8'h0c: instruction_to_be_written[127:96] = reg_wr_data;
                RBB+8'h10: instruction_to_be_written[159:128] = reg_wr_data;
                RBB+8'h14: instruction_to_be_written[191:160] = reg_wr_data;
                RBB+8'h18: instruction_to_be_written[223:192] = reg_wr_data;
                RBB+8'h1c: instruction_to_be_written[255:224] = reg_wr_data;
                RBB+8'hff: begin
                    imem_data_out_next = instruction_to_be_written;
                    we_INSTR_next = 1'b1;
                    address_out_next = {24'h000000, reg_wr_addr[15:8]};
                end
                default: reg_wr_ack_next = 1'b0;
            endcase
        end
        else if (reg_wr_addr[19:16] == 4'h2) begin
            // map mem write
            case ({reg_wr_addr >> 2, 2'b00})
                RBB+8'h00: maps_line_to_be_written[31:0] = reg_wr_data;
                RBB+8'h04: maps_line_to_be_written[63:32] = reg_wr_data;
                RBB+8'h08: maps_line_to_be_written[95:64] = reg_wr_data;
                RBB+8'h0c: maps_line_to_be_written[127:96] = reg_wr_data;
                RBB+8'hff: begin
                    maps_data_out_next = maps_line_to_be_written;
                    we_MAPS_next = 1'b1;
                    address_out_next = {24'h000000, reg_wr_addr[15:8]};
                end
                default: reg_wr_ack_next = 1'b0;
            endcase
        end
        else begin
            reg_wr_ack_next = 1'b0;
        end
    end
end

/* 
    -------------------processing read/write output logic-------------------
*/
always @(posedge clk) begin
    reg_wr_ack_reg <= reg_wr_ack_next;
    reg_rd_data_reg <= reg_rd_data_next;
    reg_rd_ack_reg <= reg_rd_ack_next;

    address_out_reg <= address_out_next;
    imem_data_out_reg <= imem_data_out_next;
    we_INSTR_reg <= we_INSTR_next;
    maps_data_out_reg <= maps_data_out_next;
    we_MAPS_reg <= we_MAPS_next;
    
    if (rst) begin
        reg_wr_ack_reg <= 1'b0;
        reg_rd_ack_reg <= 1'b0;
        address_out_reg <= 32'b0;
        instruction_to_be_written <= 256'b0;
        we_INSTR_reg <= 1'b0;
        maps_line_to_be_written <= 128'b0;
        we_MAPS_reg <= 1'b0;
    end
end

endmodule

`resetall
