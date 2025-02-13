`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2022 11:44:13 AM
// Design Name: 
// Module Name: wrapper_tdpram
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

module wrapper_tdpram #(
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

`ifdef ASIC
    assign o_data_a = {(DATA_WIDTH){1'b0}};
    assign o_data_b = {(DATA_WIDTH){1'b0}};

`else
    tdpram #(
    .DATA_WIDTH( DATA_WIDTH  ),
    .ADDR_WIDTH( ADDR_WIDTH  ),
    .RAM_DEPTH ( RAM_DEPTH   ),
    .OUT_DELAY ( OUT_DELAY   )
    ) u_tdpram
    (
    .i_clk_a  (  i_clk_a   ),
    .i_en_a   (  i_en_a    ),
    .i_wr_a   (  i_wr_a    ),
    .i_addr_a (  i_addr_a  ),
    .i_data_a (  i_data_a  ),
    .o_data_a (  o_data_a  ),
    .i_clk_b  (  i_clk_b   ),
    .i_en_b   (  i_en_b    ),
    .i_addr_b (  i_addr_b  ),
    .o_data_b (  o_data_b  )   
    );      
`endif

endmodule