module cocotb_iverilog_dump();
initial begin
    $dumpfile("sim_build/mqnic_core_pcie_us.fst");
    $dumpvars(0, mqnic_core_pcie_us);
end
endmodule
