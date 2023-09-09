module iverilog_dump();
initial begin
    $dumpfile("AXI4tomem.fst");
    $dumpvars(0, AXI4tomem);
end
endmodule
