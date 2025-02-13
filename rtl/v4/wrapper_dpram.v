`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2022 06:11:29 PM
// Design Name: 
// Module Name: wrapper_dpram
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

module wrapper_dpram #(
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


dpram #(
.DATA_WIDTH( DATA_WIDTH  ),
.ADDR_WIDTH( ADDR_WIDTH  ),
.RAM_DEPTH ( RAM_DEPTH   ),
.OUT_DELAY ( OUT_DELAY   )
) u_dpram
(
.i_clk    (  i_clk     ),
.i_we_a   (  i_we_a    ),
.i_addr_a (  i_addr_a  ),
.i_data_a (  i_data_a  ),
.i_en_b   (  i_en_b    ),
.i_addr_b (  i_addr_b  ),
.o_data_b (  o_data_b  )
);      

endmodule