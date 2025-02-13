# 假设 mqnic.py 和 Interface 类已经正确定义了 set_mtu 方法

import cocotb
from cocotbext.axi import AxiBus, AxiMaster
import mqnic
# 模拟硬件寄存器对象
class SimulatedHwRegs:
    def __init__(self):
        self.regs = {}

    def write_dword(self, address, value):
        # 模拟写入操作
        self.regs[address] = value

    def read_dword(self, address):
        # 模拟读取操作
        return self.regs.get(address, 0)

# 模拟驱动程序对象
class SimulatedDriver:
    def __init__(self):
        self.pool = None

    def alloc_pkt(self):
        # 模拟分配数据包
        return "Packet"

    def free_pkt(self, pkt):
        # 模拟释放数据包
        pass

# 创建模拟的硬件寄存器和驱动程序
hw_regs = SimulatedHwRegs()
driver = SimulatedDriver()

# 创建 Interface 实例
interface = mqnic.Interface(driver, 0, hw_regs)

# 测试 set_mtu 方法
async def test_set_mtu():
    mtu_value = 1500
    await interface.set_mtu(mtu_value)
    assert hw_regs.regs[0x0] == mtu_value, "MTU value not set correctly"

# 运行测试
cocotb.start_soon(test_set_mtu())

