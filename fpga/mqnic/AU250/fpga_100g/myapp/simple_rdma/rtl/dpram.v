`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2022 06:58:12 PM
// Design Name: 
// Module Name: dpram
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


module dpram #(
parameter DATA_WIDTH = 32,
parameter ADDR_WIDTH = 10,
parameter RAM_DEPTH = 1024,
parameter OUT_DELAY = 1

)(
input                   i_clk    ,
input                   i_we_a   ,
input  [ADDR_WIDTH-1:0] i_addr_a ,
input  [DATA_WIDTH-1:0] i_data_a ,

input                   i_en_b   ,
input  [ADDR_WIDTH-1:0] i_addr_b ,
output [DATA_WIDTH-1:0] o_data_b 
);

reg [DATA_WIDTH-1:0] r_mem[RAM_DEPTH-1:0];
reg [DATA_WIDTH-1:0] r_rd_data;
reg [DATA_WIDTH-1:0] r_rd_data_dly[OUT_DELAY-1:0];
//reg [DATA_WIDTH-1:0] r_rd_data_1d;

//WRITE
always @(posedge i_clk) begin
  if(i_we_a == 1'b1)
      r_mem[i_addr_a] <= i_data_a;
end


//READ
always @(posedge i_clk) begin
  if(i_en_b == 1'b1)
      r_rd_data <= r_mem[i_addr_b];
end

//DELAY
//always @(posedge i_clk) begin
//    r_rd_data_1d <= r_rd_data;
//end

//assign o_data_b = (OUT_DELAY == 1)?r_rd_data : r_rd_data_1d;

generate
    case(OUT_DELAY)
            0: begin assign o_data_b  =  r_mem[i_addr_b]        ;end
            1: begin assign o_data_b  =  r_rd_data        ;end
            2: begin 
                   always @(posedge i_clk) begin
                       r_rd_data_dly[0] <= r_rd_data;
                   end
                   assign o_data_b  =  r_rd_data_dly[0] ;
               end
            3: begin 
                   always @(posedge i_clk) begin
                       r_rd_data_dly[0] <= r_rd_data;
                       r_rd_data_dly[1] <= r_rd_data_dly[0];
                   end
                   assign o_data_b  =  r_rd_data_dly[1] ;
               end
            4: begin 
                   always @(posedge i_clk) begin
                       r_rd_data_dly[0] <= r_rd_data;
                       r_rd_data_dly[1] <= r_rd_data_dly[0];
                       r_rd_data_dly[2] <= r_rd_data_dly[1];
                   end
                   assign o_data_b  =  r_rd_data_dly[2] ;
               end
      default: assign o_data_b  =  r_rd_data        ;
    endcase
endgenerate

endmodule
