module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/fpga_core.fst");
    $dumpvars(0, fpga_core);
end
endmodule
