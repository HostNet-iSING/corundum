module iverilog_dump();
initial begin
    $dumpfile("fpga_core.fst");
    $dumpvars(0, fpga_core);
end
endmodule
