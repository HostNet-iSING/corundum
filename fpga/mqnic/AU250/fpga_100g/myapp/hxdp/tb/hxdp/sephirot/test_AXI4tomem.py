import logging
import os

import cocotb_test.simulator
import pytest

import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge
from cocotb.regression import TestFactory

from cocotbext.axi import AxiBus, AxiRam

class TB(object):
    def __init__(self, dut):
        self.dut = dut

        self.log = logging.getLogger("cocotb.tb")
        self.log.setLevel(logging.DEBUG)

        # setup initial value of register contron signals
        dut.reg_wr_addr.setimmediatevalue(0)
        dut.reg_wr_data.setimmediatevalue(0)
        dut.reg_wr_strb.setimmediatevalue(0)
        dut.reg_wr_en.setimmediatevalue(0)
        dut.reg_rd_addr.setimmediatevalue(0)
        dut.reg_rd_en.setimmediatevalue(0)

        # setup main clock
        cocotb.start_soon(Clock(dut.clk, 4, units="ns").start())

    async def reset(self):
        self.dut.rst.setimmediatevalue(0)

        for k in range(10):
            await RisingEdge(self.dut.clk)
        self.dut.rst.value = 1

        for k in range(10):
            await RisingEdge(self.dut.clk)
        self.dut.rst.value = 0

        for k in range(10):
            await RisingEdge(self.dut.clk)

    async def write_reg(self, addr, data):
        await RisingEdge(self.dut.clk)
        self.dut.reg_wr_addr.value = addr
        self.dut.reg_wr_data.value = data
        self.dut.reg_wr_strb.value = 0xf
        self.dut.reg_wr_en.value = 1
        await RisingEdge(self.dut.clk)

        k = 4
        while k > 0:
            if self.dut.reg_wr_ack.value:
                break
            if not self.dut.reg_wr_wait.value:
                k -= 1
            await RisingEdge(self.dut.clk)

        self.dut.reg_wr_en.value = 0

    async def read_reg(self, addr):
        self.dut.reg_rd_addr.value = addr
        self.dut.reg_rd_en.value = 1
        await RisingEdge(self.dut.clk)

        k = 4
        while k > 0:
            if self.dut.reg_rd_ack.value:
                break
            if not self.dut.reg_rd_wait.value:
                k -= 1
            await RisingEdge(self.dut.clk)

        self.dut.reg_rd_en.value = 0
        return self.dut.reg_rd_data.value.integer
        
async def run_test(dut):
    tb = TB(dut)
    await tb.reset()
    await tb.write_reg(0x68, 1024)

    for k in range(10):
        await RisingEdge(dut.clk)

if cocotb.SIM_NAME:
    for test in [
                run_test,
            ]:

        factory = TestFactory(test)
        factory.generate_tests()

tests_dir = os.path.dirname(__file__)
hxdp_dir = os.path.abspath(os.path.join(tests_dir, '..', '..', '..', 'rtl', 'hxdp_src', 'vhdl_sources'))
sephirot_dir = os.path.abspath(os.path.join(hxdp_dir, 'sephirot', 'src'))

@pytest.mark.parametrize("data_width", [256, 512])
def test_AXI4tomem(request, data_width):
    dut = "AXI4tomem"
    module = os.path.splitext(os.path.basename(__file__))[0]
    toplevel = dut

    verilog_sources = [
        os.path.join(sephirot_dir, f"{dut}.v"),
    ]

    parameters = {}

    # Register interface
    parameters['REG_ADDR_WIDTH'] = 32
    parameters['REG_DATA_WIDTH'] = 32
    parameters['REG_STRB_WIDTH'] = parameters['REG_DATA_WIDTH'] // 8
    parameters['RB_BASE_ADDR'] = 0
    parameters['RB_NEXT_PTR'] = 0

    extra_env = {f'PARAM_{k}': str(v) for k, v in parameters.items()}

    sim_build = os.path.join(tests_dir, "sim_build",
        request.node.name.replace('[', '-').replace(']', ''))
    
    cocotb_test.simulator.run(
        python_search=[tests_dir],
        verilog_sources=verilog_sources,
        toplevel=toplevel,
        module=module,
        parameters=parameters,
        sim_build=sim_build,
        extra_env=extra_env,
    )