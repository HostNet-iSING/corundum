`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2022 06:32:32 PM
// Design Name: 
// Module Name: tdpram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tdpram #(
parameter DATA_WIDTH = 32,
parameter ADDR_WIDTH = 10,
parameter RAM_DEPTH = 1024,
parameter OUT_DELAY = 1

)(
input                   i_clk_a  ,
input                   i_en_a   ,
input                   i_wr_a   ,
input  [ADDR_WIDTH-1:0] i_addr_a ,
input  [DATA_WIDTH-1:0] i_data_a ,
output [DATA_WIDTH-1:0] o_data_a ,

input                   i_clk_b  ,
input                   i_en_b   ,
input  [ADDR_WIDTH-1:0] i_addr_b ,
output [DATA_WIDTH-1:0] o_data_b 

);

reg [DATA_WIDTH-1:0] r_mem[RAM_DEPTH-1:0];
reg [DATA_WIDTH-1:0] r_rd_data_a;
reg [DATA_WIDTH-1:0] r_rd_data_b;
reg [DATA_WIDTH-1:0] r_rd_data_a_1d;
reg [DATA_WIDTH-1:0] r_rd_data_b_1d;

//A PORT WRITE 
always @(posedge i_clk_a) begin
  if(i_en_a == 1'b1 && i_wr_a == 1'b1)
      r_mem[i_addr_a] <= i_data_a;
end


//A PORT READ
always @(posedge i_clk_a) begin
  if(i_en_a == 1'b1)
      r_rd_data_a <= r_mem[i_addr_a];
end

//B PORT READ
always @(posedge i_clk_b) begin
  if(i_en_b == 1'b1)
      r_rd_data_b <= r_mem[i_addr_b];
end

//DELAY
always @(posedge i_clk_a) begin
    r_rd_data_a_1d <= r_rd_data_a;
end

always @(posedge i_clk_b) begin
    r_rd_data_b_1d <= r_rd_data_b;
end

assign o_data_a = (OUT_DELAY == 1)?r_rd_data_a : r_rd_data_a_1d;
assign o_data_b = (OUT_DELAY == 1)?r_rd_data_b : r_rd_data_b_1d;


endmodule