module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/rx_hash.fst");
    $dumpvars(0, rx_hash);
end
endmodule
