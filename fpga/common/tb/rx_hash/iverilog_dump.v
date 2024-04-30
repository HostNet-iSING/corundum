module iverilog_dump();
initial begin
    $dumpfile("rx_hash.fst");
    $dumpvars(0, rx_hash);
end
endmodule
