# SPDX-License-Identifier: BSD-2-Clause-Views
# Copyright (c) 2023 The Regents of the University of California

# DRAM test channel timing constraints

foreach inst [get_cells -hier -filter {(ORIG_REF_NAME == IE_STAGE || REF_NAME == IE_STAGE)}] {
    puts "Inserting timing constraints for IE_STAGE instance $inst"

    proc constrain_sync_chain {inst driver args} {
        set sync_ffs [get_cells -hier [concat $driver $args] -filter "PARENT == $inst"]

        if {[llength $sync_ffs]} {
            set_property ASYNC_REG TRUE $sync_ffs

            set src_clk [get_clocks -of_objects [get_pins "$inst/$driver/C"]]

            set src_clk_period [if {[llength $src_clk]} {get_property -min PERIOD $src_clk} {expr 1.0}]

            set_max_delay -from [get_cells "$inst/$driver"] -to [get_cells "$inst/[lindex $args 0]"] -datapath_only $src_clk_period
        }
    }

    constrain_sync_chain $inst "exe_operand_src_s_reg[*]" "exe_result_s_reg[*]"
    constrain_sync_chain $inst "exe_operand_dst_s_reg[*]" "exe_result_s_reg[*]"
    constrain_sync_chain $inst "exe_immediate_s_reg[*]" "exe_result_s_reg[*]"
}
