# SPDX-License-Identifier: BSD-2-Clause-Views
# Copyright (c) 2023 The Regents of the University of California

# hXDP reset timing constraints

foreach inst [get_cells -hier -filter {(ORIG_REF_NAME == mqnic_app_block || REF_NAME == mqnic_app_block)}] {
    puts "Inserting timing constraints for hXDP instance $inst"

    proc constrain_sync {inst driver} {
        set sync_ffs [get_cells -hier $driver -filter "PARENT == $inst"]

        if {[llength $sync_ffs]} {
           set_property ASYNC_REG TRUE $sync_ffs

           set src_clk [get_clocks -of_objects [get_pins "$inst/$driver/C"]]

           set src_clk_period [if {[llength $src_clk]} {get_property -min PERIOD $src_clk} {expr 1.0}]

           set_max_delay -from [get_cells "$inst/$driver"] -datapath_only $src_clk_period
        }
    }

    constrain_sync $inst "hxdp_reset_reg_2_reg"
}
