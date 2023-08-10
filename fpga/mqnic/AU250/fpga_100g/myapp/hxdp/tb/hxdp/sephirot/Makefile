TOPLEVEL_LANG = verilog

SIM ?= icarus
WAVES ?= 1

COCOTB_HDL_TIMEUNIT = 1ns
COCOTB_HDL_TIMEPRECISION = 1ps

DUT      = AXI4tomem
TOPLEVEL = $(DUT)
MODULE   = test_$(DUT)
VERILOG_SOURCES += ../../../rtl/hxdp_src/vhdl_sources/sephirot/src/$(DUT).v


# module parameters

# Register interface
export PARAM_REG_ADDR_WIDTH ?= 32
export PARAM_REG_DATA_WIDTH ?= 32
export PARAM_RB_BASE_ADDR ?= 0
export PARAM_RB_NEXT_PTR ?= 0

PLUSARGS += -fst

COMPILE_ARGS += -P $(TOPLEVEL).REG_ADDR_WIDTH=$(PARAM_REG_ADDR_WIDTH)
COMPILE_ARGS += -P $(TOPLEVEL).REG_DATA_WIDTH=$(PARAM_REG_DATA_WIDTH)
COMPILE_ARGS += -P $(TOPLEVEL).RB_BASE_ADDR=$(PARAM_RB_BASE_ADDR)
COMPILE_ARGS += -P $(TOPLEVEL).RB_NEXT_PTR=$(PARAM_RB_NEXT_PTR)

ifeq ($(WAVES), 1)
	VERILOG_SOURCES += iverilog_dump.v
	COMPILE_ARGS += -s iverilog_dump
endif

include $(shell cocotb-config --makefiles)/Makefile.sim

iverilog_dump.v:
	echo 'module iverilog_dump();' > $@
	echo 'initial begin' >> $@
	echo '    $$dumpfile("$(TOPLEVEL).fst");' >> $@
	echo '    $$dumpvars(0, $(TOPLEVEL));' >> $@
	echo 'end' >> $@
	echo 'endmodule' >> $@

clean::
	@rm -rf iverilog_dump.v
	@rm -rf dump.fst $(TOPLEVEL).fst