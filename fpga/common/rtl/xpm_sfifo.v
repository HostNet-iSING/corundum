//Module Note
//Description	:instance Xilinx XPM_FIFO_SYNC Macro to generate a sync FIFO.
//				 parameter are configurable within limits requires.
//Corporation	:Clustar
//Auther 		:yizhuo.ww
//Date			:2018-06
//Notice		:parameter more limits requires see "Attribute And Port Descriptions" on the bottom
`timescale 1ns / 10ps

module xpm_sfifo
#(
 parameter		WDAT_WDH	=288	,
 parameter		WDAT_DEP	=4096	,//the value must be power of two,and Allowed Values is 16~4194304.
 parameter		RDAT_WDH	=288	,
 parameter		RAM_STYLE	="auto"	,//"auto", "block", "distributed", "ultra"
 parameter		RD_MODE		="std"	,//"std" ->standard read mode,"fwft" ->First Word Fall Through read mode
 parameter		RD_LATENCY	=1		,//values range is 0~100,If READ_MODE = "fwft", then the only applicable value is 0.
 parameter		PROG_FULL	=10		,//DECIMAL,Min_Value=3("std") or 5("fwft"),more limits see module bottom description.
 parameter		PROG_EMPTY	=10		 //DECIMAL,Min_Value=3("std") or 5("fwft"),more limits see module bottom description.
)
(
 input					clk			,
 input					rst			,
 //wt port
 input					wen			,
 input	[WDAT_WDH-1:0]	din			,
 output					full		,
 output					prog_full	,
 output					overflow	,
 //rd port 
 input					ren			,
 output	[RDAT_WDH-1:0]	dout		,
 output					empty		,
 output					prog_empty	,
 output					underflow	
);

//The following function calculates the address width based on specified RAM depth
function integer clogb2(input integer depth);
begin
    for(clogb2=0; depth>0; clogb2=clogb2+1)
		depth = depth >> 1;
end
endfunction

//parameter define
parameter	WDAT_COUNT_WDH=clogb2(WDAT_DEP);
parameter	RDAT_COUNT_WDH=clogb2((WDAT_WDH*WDAT_DEP)/RDAT_WDH);

//unused signals
`ifndef VIVADO_2016
wire	almost_empty	;//use only in vivado 2018.*/2019.* 
wire	almost_full		;//use only in vivado 2018.*/2019.* 
wire	data_valid		;//use only in vivado 2018.*/2019.* 
`endif 
wire	wr_ack			;//use only in vivado 2018.*/2019.* 
wire	dbiterr			;
wire	sbiterr			;
//wire	overflow		;
//wire	underflow		;
wire	rd_rst_busy		;
wire	wr_rst_busy		;
wire	[RDAT_COUNT_WDH-1:0]	rd_data_count;
wire	[WDAT_COUNT_WDH-1:0] 	wr_data_count;

// xpm_fifo_sync: Synchronous FIFO
`ifdef VIVADO_2016
    xpm_fifo_sync #(
       .DOUT_RESET_VALUE	("0"			),// String
       .ECC_MODE			("no_ecc"		),// String
       .FIFO_MEMORY_TYPE	(RAM_STYLE		),// String,default:"auto"
       .FIFO_READ_LATENCY	(RD_LATENCY		),// DECIMAL
       .FIFO_WRITE_DEPTH	(WDAT_DEP		),// DECIMAL
       .FULL_RESET_VALUE	(0				),// DECIMAL
       .PROG_EMPTY_THRESH	(PROG_EMPTY		),// DECIMAL,default:10
       .PROG_FULL_THRESH	(PROG_FULL		),// DECIMAL,default:10
       .RD_DATA_COUNT_WIDTH	(RDAT_COUNT_WDH	),// DECIMAL
       .READ_DATA_WIDTH		(RDAT_WDH		),// DECIMAL
       .READ_MODE			(RD_MODE		),// String,"std" ->standard read mode,"fwft" ->First Word Fall Through read mode
       .WAKEUP_TIME			(0				),// DECIMAL 
       .WRITE_DATA_WIDTH	(WDAT_WDH		),// DECIMAL
       .WR_DATA_COUNT_WIDTH	(WDAT_COUNT_WDH	) // DECIMAL
    ) xpm_fifo_sync_inst 
    (
       .dbiterr		    (dbiterr		),// 1-bit output
       .dout		    (dout			),// READ_DATA_WIDTH-bit output
       .empty		    (empty			),// 1-bit output
       .full		    (full			),// 1-bit output
       .overflow	    (overflow		),// 1-bit output
       .prog_empty	    (prog_empty		),// 1-bit output
       .prog_full	    (prog_full		),// 1-bit output
       .rd_data_count   (rd_data_count	),// RD_DATA_COUNT_WIDTH-bit output
       .rd_rst_busy	    (rd_rst_busy	),// 1-bit output
       .sbiterr		    (sbiterr		),// 1-bit output
       .underflow	    (underflow		),// 1-bit output
       .wr_data_count   (wr_data_count	),// WR_DATA_COUNT_WIDTH-bit output
       .wr_rst_busy	    (wr_rst_busy	),// 1-bit output
       .din			    (din			),// WRITE_DATA_WIDTH-bit input
       .injectdbiterr   (1'b0			),// 1-bit input
       .injectsbiterr   (1'b0			),// 1-bit input
       .rd_en		    (ren			),// 1-bit input
       .rst			    (rst			),// 1-bit input
       .sleep		    (1'b0			),// 1-bit input
       .wr_clk		    (clk			),// 1-bit input
       .wr_en		    (wen			) // 1-bit input
    );

`elsif VIVADO_2018
    xpm_fifo_sync #(
       .DOUT_RESET_VALUE	("0"			),// String
       .ECC_MODE			("no_ecc"		),// String
       .FIFO_MEMORY_TYPE	(RAM_STYLE		),// String,default:"auto"
       .FIFO_READ_LATENCY	(RD_LATENCY		),// DECIMAL
       .FIFO_WRITE_DEPTH	(WDAT_DEP		),// DECIMAL
       .FULL_RESET_VALUE	(0				),// DECIMAL
       .PROG_EMPTY_THRESH	(PROG_EMPTY		),// DECIMAL,default:10
       .PROG_FULL_THRESH	(PROG_FULL		),// DECIMAL,default:10
       .RD_DATA_COUNT_WIDTH(RDAT_COUNT_WDH	),// DECIMAL
       .READ_DATA_WIDTH	    (RDAT_WDH		),// DECIMAL
       .READ_MODE			(RD_MODE		),// String,"std" ->standard read mode,"fwft" ->First Word Fall Through read mode
       .USE_ADV_FEATURES	("0707"			),// String,use only in vivado 2018.3
       .WAKEUP_TIME		    (0				),// DECIMAL 
       .WRITE_DATA_WIDTH	(WDAT_WDH		),// DECIMAL
       .WR_DATA_COUNT_WIDTH(WDAT_COUNT_WDH	) // DECIMAL
    ) xpm_fifo_sync_inst 
    (
       .almost_empty	(almost_empty	),// 1-bit output, use only in vivado 2018.3
       .almost_full	    (almost_full	),// 1-bit output, use only in vivado 2018.3
       .data_valid	    (data_valid		),// 1-bit output, use only in vivado 2018.3
       .dbiterr		    (dbiterr		),// 1-bit output
       .dout		    (dout			),// READ_DATA_WIDTH-bit output
       .empty		    (empty			),// 1-bit output
       .full		    (full			),// 1-bit output
       .overflow	    (overflow		),// 1-bit output
       .prog_empty	    (prog_empty		),// 1-bit output
       .prog_full	    (prog_full		),// 1-bit output
       .rd_data_count   (rd_data_count	),// RD_DATA_COUNT_WIDTH-bit output
       .rd_rst_busy	    (rd_rst_busy	),// 1-bit output
       .sbiterr		    (sbiterr		),// 1-bit output
       .wr_ack		    (wr_ack			),// 1-bit output, use only in vivado 2018.3
       .underflow	    (underflow		),// 1-bit output
       .wr_data_count   (wr_data_count	),// WR_DATA_COUNT_WIDTH-bit output
       .wr_rst_busy	    (wr_rst_busy	),// 1-bit output
       .din			    (din			),// WRITE_DATA_WIDTH-bit input
       .injectdbiterr   (1'b0			),// 1-bit input
       .injectsbiterr   (1'b0			),// 1-bit input
       .rd_en		    (ren			),// 1-bit input
       .rst			    (rst			),// 1-bit input
       .sleep		    (1'b0			),// 1-bit input
       .wr_clk		    (clk			),// 1-bit input
       .wr_en		    (wen			) // 1-bit input
    );

`else 
    xpm_fifo_sync #(
       .DOUT_RESET_VALUE	("0"			),// String
       .ECC_MODE			("no_ecc"		),// String
       .FIFO_MEMORY_TYPE	(RAM_STYLE		),// String,default:"auto"
       .FIFO_READ_LATENCY	(RD_LATENCY		),// DECIMAL
       .FIFO_WRITE_DEPTH	(WDAT_DEP		),// DECIMAL
       .FULL_RESET_VALUE	(0				),// DECIMAL
       .PROG_EMPTY_THRESH	(PROG_EMPTY		),// DECIMAL,default:10
       .PROG_FULL_THRESH	(PROG_FULL		),// DECIMAL,default:10
       .RD_DATA_COUNT_WIDTH(RDAT_COUNT_WDH	),// DECIMAL
       .READ_DATA_WIDTH	    (RDAT_WDH		),// DECIMAL
       .READ_MODE			(RD_MODE		),// String,"std" ->standard read mode,"fwft" ->First Word Fall Through read mode
       .SIM_ASSERT_CHK      (0              ),// use only in vivado 2019.*
       .USE_ADV_FEATURES	("0707"			),// String,use only in vivado 2018.3
       .WAKEUP_TIME		    (0				),// DECIMAL 
       .WRITE_DATA_WIDTH	(WDAT_WDH		),// DECIMAL
       .WR_DATA_COUNT_WIDTH(WDAT_COUNT_WDH	) // DECIMAL
    ) xpm_fifo_sync_inst 
    (
       .almost_empty	(almost_empty	),// 1-bit output, use only in vivado 2018.3
       .almost_full	    (almost_full	),// 1-bit output, use only in vivado 2018.3
       .data_valid	    (data_valid		),// 1-bit output, use only in vivado 2018.3
       .dbiterr		    (dbiterr		),// 1-bit output
       .dout		    (dout			),// READ_DATA_WIDTH-bit output
       .empty		    (empty			),// 1-bit output
       .full		    (full			),// 1-bit output
       .overflow	    (overflow		),// 1-bit output
       .prog_empty	    (prog_empty		),// 1-bit output
       .prog_full	    (prog_full		),// 1-bit output
       .rd_data_count   (rd_data_count	),// RD_DATA_COUNT_WIDTH-bit output
       .rd_rst_busy	    (rd_rst_busy	),// 1-bit output
       .sbiterr		    (sbiterr		),// 1-bit output
       .wr_ack		    (wr_ack			),// 1-bit output, use only in vivado 2018.3
       .underflow	    (underflow		),// 1-bit output
       .wr_data_count   (wr_data_count	),// WR_DATA_COUNT_WIDTH-bit output
       .wr_rst_busy	    (wr_rst_busy	),// 1-bit output
       .din			    (din			),// WRITE_DATA_WIDTH-bit input
       .injectdbiterr   (1'b0			),// 1-bit input
       .injectsbiterr   (1'b0			),// 1-bit input
       .rd_en		    (ren			),// 1-bit input
       .rst			    (rst			),// 1-bit input
       .sleep		    (1'b0			),// 1-bit input
       .wr_clk		    (clk			),// 1-bit input
       .wr_en		    (wen			) // 1-bit input
    );
`endif

endmodule
 
//Attribute And Port Descriptions 
// XPM_FIFO instantiation template for Synchronous FIFO configurations
// Refer to the targeted device family architecture libraries guide for XPM_FIFO documentation
// =======================================================================================================================

// Parameter usage table, organized as follows:
// +---------------------------------------------------------------------------------------------------------------------+
// | Parameter name       | Data type          | Restrictions, if applicable                                             |
// |---------------------------------------------------------------------------------------------------------------------|
// | Description                                                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// +---------------------------------------------------------------------------------------------------------------------+
// | DOUT_RESET_VALUE     | String             | Default value = 0.                                                      |
// |---------------------------------------------------------------------------------------------------------------------|
// | Reset value of read data path.                                                                                      |
// +---------------------------------------------------------------------------------------------------------------------+
// | ECC_MODE             | String             | Allowed values: no_ecc, en_ecc. Default value = no_ecc.                 |
// |---------------------------------------------------------------------------------------------------------------------|
// |                                                                                                                     |
// |  "no_ecc" - Disables ECC                                                                                            |
// |   "en_ecc" - Enables both ECC Encoder and Decoder                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | FIFO_MEMORY_TYPE     | String             | Allowed values: auto, block, distributed, ultra. Default value = auto.  |
// |---------------------------------------------------------------------------------------------------------------------|
// | Designate the fifo memory primitive (resource type) to use-                                                         |
// |                                                                                                                     |
// |  "auto"- Allow Vivado Synthesis to choose                                                                           |
// |   "block"- Block RAM FIFO                                                                                           |
// |   "distributed"- Distributed RAM FIFO                                                                               |
// |   "ultra"- URAM FIFO                                                                                                |
// +---------------------------------------------------------------------------------------------------------------------+
// | FIFO_READ_LATENCY    | Integer            | Range: 0 - 100. Default value = 1.                                      |
// |---------------------------------------------------------------------------------------------------------------------|
// | Number of output register stages in the read data path                                                              |
// |                                                                                                                     |
// |  If READ_MODE = "fwft", then the only applicable value is 0                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// | FIFO_WRITE_DEPTH     | Integer            | Range: 16 - 4194304. Default value = 2048.                              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the FIFO Write Depth, must be power of two                                                                  |
// |                                                                                                                     |
// |  In standard READ_MODE, the effective depth = FIFO_WRITE_DEPTH                                                      |
// |   In First-Word-Fall-Through READ_MODE, the effective depth = FIFO_WRITE_DEPTH+2                                    |
// +---------------------------------------------------------------------------------------------------------------------+
// | FULL_RESET_VALUE     | Integer            | Range: 0 - 1. Default value = 0.                                        |
// |---------------------------------------------------------------------------------------------------------------------|
// | Sets full, almost_full and prog_full to FULL_RESET_VALUE during reset                                               |
// +---------------------------------------------------------------------------------------------------------------------+
// | PROG_EMPTY_THRESH    | Integer            | Range: 3 - 4194304. Default value = 10.                                 |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the minimum number of read words in the FIFO at or below which prog_empty is asserted.                    |
// |                                                                                                                     |
// |  Min_Value = 3 + (READ_MODE_VAL*2)                                                                                  |
// |   Max_Value = (FIFO_WRITE_DEPTH-3) - (READ_MODE_VAL*2)                                                              |
// |                                                                                                                     |
// | If READ_MODE = "std", then READ_MODE_VAL = 0; Otherwise READ_MODE_VAL = 1                                           |
// | NOTE: The default threshold value is dependent on default FIFO_WRITE_DEPTH value. If FIFO_WRITE_DEPTH value is      |
// | changed, ensure the threshold value is within the valid range though the programmable flags are not used.           |
// +---------------------------------------------------------------------------------------------------------------------+
// | PROG_FULL_THRESH     | Integer            | Range: 3 - 4194301. Default value = 10.                                 |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the maximum number of write words in the FIFO at or above which prog_full is asserted.                    |
// |                                                                                                                     |
// |  Min_Value = 3 + (READ_MODE_VAL*2*(FIFO_WRITE_DEPTH/FIFO_READ_DEPTH))                                               |
// |   Max_Value = (FIFO_WRITE_DEPTH-3) - (READ_MODE_VAL*2*(FIFO_WRITE_DEPTH/FIFO_READ_DEPTH))                           |
// |                                                                                                                     |
// | If READ_MODE = "std", then READ_MODE_VAL = 0; Otherwise READ_MODE_VAL = 1                                           |
// | NOTE: The default threshold value is dependent on default FIFO_WRITE_DEPTH value. If FIFO_WRITE_DEPTH value is      |
// | changed, ensure the threshold value is within the valid range though the programmable flags are not used.           |
// +---------------------------------------------------------------------------------------------------------------------+
// | RD_DATA_COUNT_WIDTH  | Integer            | Range: 1 - 23. Default value = 1.                                       |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the width of rd_data_count                                                                                |
// |                                                                                                                     |
// |  FIFO_READ_DEPTH = FIFO_WRITE_DEPTH*WRITE_DATA_WIDTH/READ_DATA_WIDTH                                                |
// +---------------------------------------------------------------------------------------------------------------------+
// | READ_DATA_WIDTH      | Integer            | Range: 1 - 4096. Default value = 32.                                    |
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the width of the read data port, dout                                                                       |
// +---------------------------------------------------------------------------------------------------------------------+
// | READ_MODE            | String             | Allowed values: std, fwft. Default value = std.                         |
// |---------------------------------------------------------------------------------------------------------------------|
// |                                                                                                                     |
// |  "std"- standard read mode                                                                                          |
// |   "fwft"- First-Word-Fall-Through read mode                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// | USE_ADV_FEATURES     | String             | Default value = 0707.                                                   |
// |---------------------------------------------------------------------------------------------------------------------|
// | Enables data_valid, almost_empty, rd_data_count, prog_empty, underflow, wr_ack, almost_full, wr_data_count,         |
// | prog_full, overflow features.                                                                                       |
// |                                                                                                                     |
// |  Setting USE_ADV_FEATURES[0]  to 1 enables overflow flag;     Default value of this bit is 1                        |
// |   Setting USE_ADV_FEATURES[1]  to 1 enables prog_full flag;    Default value of this bit is 1                       |
// |   Setting USE_ADV_FEATURES[2]  to 1 enables wr_data_count;     Default value of this bit is 1                       |
// |   Setting USE_ADV_FEATURES[3]  to 1 enables almost_full flag;  Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[4]  to 1 enables wr_ack flag;       Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[8]  to 1 enables underflow flag;    Default value of this bit is 1                       |
// |   Setting USE_ADV_FEATURES[9]  to 1 enables prog_empty flag;   Default value of this bit is 1                       |
// |   Setting USE_ADV_FEATURES[10] to 1 enables rd_data_count;     Default value of this bit is 1                       |
// |   Setting USE_ADV_FEATURES[11] to 1 enables almost_empty flag; Default value of this bit is 0                       |
// |   Setting USE_ADV_FEATURES[12] to 1 enables data_valid flag;   Default value of this bit is 0                       |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | WAKEUP_TIME          | Integer            | Range: 0 - 2. Default value = 0.                                        |
// |---------------------------------------------------------------------------------------------------------------------|
// |                                                                                                                     |
// |  0 - Disable sleep                                                                                                  |
// |   2 - Use Sleep Pin                                                                                                 |
// +---------------------------------------------------------------------------------------------------------------------+
// | WRITE_DATA_WIDTH     | Integer            | Range: 1 - 4096. Default value = 32.                                    |
// |---------------------------------------------------------------------------------------------------------------------|
// | Defines the width of the write data port, din                                                                       |
// +---------------------------------------------------------------------------------------------------------------------+
// | WR_DATA_COUNT_WIDTH  | Integer            | Range: 1 - 23. Default value = 1.                                       |
// |---------------------------------------------------------------------------------------------------------------------|
// | Specifies the width of wr_data_count                                                                                |
// +---------------------------------------------------------------------------------------------------------------------+

// Port usage table, organized as follows:
// +---------------------------------------------------------------------------------------------------------------------+
// | Port name      | Direction | Size, in bits                         | Domain  | Sense       | Handling if unused     |
// |---------------------------------------------------------------------------------------------------------------------|
// | Description                                                                                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// +---------------------------------------------------------------------------------------------------------------------+
// | almost_empty   | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Almost Empty : When asserted, this signal indicates that only one more read can be performed before the FIFO goes to|
// | empty.                                                                                                              |
// +---------------------------------------------------------------------------------------------------------------------+
// | almost_full    | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Almost Full: When asserted, this signal indicates that only one more write can be performed before the FIFO is full.|
// +---------------------------------------------------------------------------------------------------------------------+
// | data_valid     | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Read Data Valid: When asserted, this signal indicates that valid data is available on the output bus (dout).        |
// +---------------------------------------------------------------------------------------------------------------------+
// | dbiterr        | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Double Bit Error: Indicates that the ECC decoder detected a double-bit error and data in the FIFO core is corrupted.|
// +---------------------------------------------------------------------------------------------------------------------+
// | din            | Input     | WRITE_DATA_WIDTH                      | wr_clk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write Data: The input data bus used when writing the FIFO.                                                          |
// +---------------------------------------------------------------------------------------------------------------------+
// | dout           | Output    | READ_DATA_WIDTH                       | wr_clk  | NA          | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Read Data: The output data bus is driven when reading the FIFO.                                                     |
// +---------------------------------------------------------------------------------------------------------------------+
// | empty          | Output    | 1                                     | wr_clk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Empty Flag: When asserted, this signal indicates that the FIFO is empty.                                            |
// | Read requests are ignored when the FIFO is empty, initiating a read while empty is not destructive to the FIFO.     |
// +---------------------------------------------------------------------------------------------------------------------+
// | full           | Output    | 1                                     | wr_clk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Full Flag: When asserted, this signal indicates that the FIFO is full.                                              |
// | Write requests are ignored when the FIFO is full, initiating a write when the FIFO is full is not destructive       |
// | to the contents of the FIFO.                                                                                        |
// +---------------------------------------------------------------------------------------------------------------------+
// | injectdbiterr  | Input     | 1                                     | wr_clk  | Active-high | Tie to 1'b0            |
// |---------------------------------------------------------------------------------------------------------------------|
// | Double Bit Error Injection: Injects a double bit error if the ECC feature is used on block RAMs or                  |
// | UltraRAM macros.                                                                                                    |
// +---------------------------------------------------------------------------------------------------------------------+
// | injectsbiterr  | Input     | 1                                     | wr_clk  | Active-high | Tie to 1'b0            |
// |---------------------------------------------------------------------------------------------------------------------|
// | Single Bit Error Injection: Injects a single bit error if the ECC feature is used on block RAMs or                  |
// | UltraRAM macros.                                                                                                    |
// +---------------------------------------------------------------------------------------------------------------------+
// | overflow       | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Overflow: This signal indicates that a write request (wren) during the prior clock cycle was rejected,              |
// | because the FIFO is full. Overflowing the FIFO is not destructive to the contents of the FIFO.                      |
// +---------------------------------------------------------------------------------------------------------------------+
// | prog_empty     | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Programmable Empty: This signal is asserted when the number of words in the FIFO is less than or equal              |
// | to the programmable empty threshold value.                                                                          |
// | It is de-asserted when the number of words in the FIFO exceeds the programmable empty threshold value.              |
// +---------------------------------------------------------------------------------------------------------------------+
// | prog_full      | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Programmable Full: This signal is asserted when the number of words in the FIFO is greater than or equal            |
// | to the programmable full threshold value.                                                                           |
// | It is de-asserted when the number of words in the FIFO is less than the programmable full threshold value.          |
// +---------------------------------------------------------------------------------------------------------------------+
// | rd_data_count  | Output    | RD_DATA_COUNT_WIDTH                   | wr_clk  | NA          | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Read Data Count: This bus indicates the number of words read from the FIFO.                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// | rd_en          | Input     | 1                                     | wr_clk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Read Enable: If the FIFO is not empty, asserting this signal causes data (on dout) to be read from the FIFO.        |
// |                                                                                                                     |
// |  Must be held active-low when rd_rst_busy is active high.                                                           |
// | .                                                                                                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | rd_rst_busy    | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Read Reset Busy: Active-High indicator that the FIFO read domain is currently in a reset state.                     |
// +---------------------------------------------------------------------------------------------------------------------+
// | rst            | Input     | 1                                     | wr_clk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Reset: Must be synchronous to wr_clk. Must be applied only when wr_clk is stable and free-running.                  |
// +---------------------------------------------------------------------------------------------------------------------+
// | sbiterr        | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Single Bit Error: Indicates that the ECC decoder detected and fixed a single-bit error.                             |
// +---------------------------------------------------------------------------------------------------------------------+
// | sleep          | Input     | 1                                     | NA      | Active-high | Tie to 1'b0            |
// |---------------------------------------------------------------------------------------------------------------------|
// | Dynamic power saving- If sleep is High, the memory/fifo block is in power saving mode.                              |
// +---------------------------------------------------------------------------------------------------------------------+
// | underflow      | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Underflow: Indicates that the read request (rd_en) during the previous clock cycle was rejected                     |
// | because the FIFO is empty. Under flowing the FIFO is not destructive to the FIFO.                                   |
// +---------------------------------------------------------------------------------------------------------------------+
// | wr_ack         | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write Acknowledge: This signal indicates that a write request (wr_en) during the prior clock cycle is succeeded.    |
// +---------------------------------------------------------------------------------------------------------------------+
// | wr_clk         | Input     | 1                                     | NA      | Rising edge | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write clock: Used for write operation. wr_clk must be a free running clock.                                         |
// +---------------------------------------------------------------------------------------------------------------------+
// | wr_data_count  | Output    | WR_DATA_COUNT_WIDTH                   | wr_clk  | NA          | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write Data Count: This bus indicates the number of words written into the FIFO.                                     |
// +---------------------------------------------------------------------------------------------------------------------+
// | wr_en          | Input     | 1                                     | wr_clk  | Active-high | Required               |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write Enable: If the FIFO is not full, asserting this signal causes data (on din) to be written to the FIFO         |
// |                                                                                                                     |
// |  Must be held active-low when rst or wr_rst_busy or rd_rst_busy is active high                                      |
// +---------------------------------------------------------------------------------------------------------------------+
// | wr_rst_busy    | Output    | 1                                     | wr_clk  | Active-high | DoNotCare              |
// |---------------------------------------------------------------------------------------------------------------------|
// | Write Reset Busy: Active-High indicator that the FIFO write domain is currently in a reset state.                   |
// +---------------------------------------------------------------------------------------------------------------------+
