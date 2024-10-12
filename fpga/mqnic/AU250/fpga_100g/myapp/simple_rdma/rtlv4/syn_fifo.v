module syn_fifo #(
parameter DATA_WIDTH = 32 ,
parameter ADDR_WIDTH = 5  ,
parameter RAM_DEPTH  = 32 ,
parameter TH_AFULL   = 24 ,
parameter TH_AEMPTY  = 8
)(
input                     i_clk      ,
input                     i_rst      ,
input [DATA_WIDTH-1:0]    i_data_in  ,
input                     i_wr_en    ,
input                     i_rd_en    ,
output reg                o_empty    ,
output reg                o_full     ,
output reg                o_aempty   ,
output reg                o_afull    ,
output [DATA_WIDTH-1:0]   o_data_out  
);


reg [ADDR_WIDTH-1:0] r_wr_addr ;
reg [ADDR_WIDTH-1:0] r_rd_addr ;
reg [ADDR_WIDTH:0]   r_count   ;

wire w_wen;
wire w_ren;

assign w_wen = i_wr_en && ((!i_rd_en && !o_full) || i_rd_en);
assign w_ren = !o_empty && i_rd_en;

//update read addr
always @ (posedge i_clk) begin
    if(i_rst)
        r_rd_addr<={(ADDR_WIDTH){1'b0}};
    else if (w_ren)
        r_rd_addr<=r_rd_addr+1;
    else
        r_rd_addr<=r_rd_addr;
end

//update write addr
always @ (posedge i_clk) begin
    if(i_rst)
        r_wr_addr<={(ADDR_WIDTH){1'b0}};
    else if (w_wen)
        r_wr_addr<=r_wr_addr+1;
    else
        r_wr_addr<=r_wr_addr;
end

//update FLAG
always @ (posedge i_clk) begin
    if(i_rst)
        r_count <= 0;    
    else begin
        case({w_wen,w_ren})
        2'b00:r_count<=r_count;
        2'b01:
            if(r_count!=0)
                r_count<=r_count-1;
        2'b10:
            if(r_count!= RAM_DEPTH) 
                r_count<=r_count+1;
        2'b11:r_count<=r_count;
        endcase
    end
end

//FULL FLAG
always @ (posedge i_clk) begin
    if(i_rst)
        o_full <= 1'b0;
    else if(r_count==RAM_DEPTH)
        o_full <= 1'b1;
    else
        o_full <= 1'b0;
end

//EMPTY FLAG
always @ (posedge i_clk) begin
    if(i_rst)
        o_empty <= 1'b1;
    else if(r_count=={(ADDR_WIDTH){1'b0}})
        o_empty <= 1'b1;
    else
        o_empty <= 1'b0;
end

//ALMOST FULL FLAG
always @ (posedge i_clk) begin
    if(i_rst)
        o_afull <= 1'b0;
    else if(r_count > TH_AFULL)
        o_afull <= 1'b1;
    else
        o_afull <= 1'b0;
end

//ALMOST EMPTY FLAG
always @ (posedge i_clk) begin
    if(i_rst)
        o_aempty <= 1'b0;
    else if(r_count < TH_AEMPTY)
        o_aempty <= 1'b1;
    else
        o_aempty <= 1'b0;
end

wrapper_dpram #(
.DATA_WIDTH( DATA_WIDTH  ),
.ADDR_WIDTH( ADDR_WIDTH  ),
.RAM_DEPTH ( RAM_DEPTH   )
) u_wrapper_dpram
(
.i_clk    (  i_clk      ),
.i_we_a   (  w_wen      ),
.i_addr_a (  r_wr_addr  ),
.i_data_a (  i_data_in  ),
.i_en_b   (  w_ren      ),
.i_addr_b (  r_rd_addr  ),
.o_data_b (  o_data_out )
);

endmodule
