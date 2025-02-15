// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2022-2023 The Regents of the University of California
 */

#include "mqnic.h"
#include <linux/module.h>

MODULE_DESCRIPTION("mqnic DMA benchmark application driver");
MODULE_AUTHOR("Alex Forencich");
MODULE_LICENSE("Dual BSD/GPL");
MODULE_VERSION("0.1");

struct mqnic_app_dma_bench {
	struct device *dev;
	struct mqnic_dev *mdev;
	struct mqnic_adev *adev;

	struct device *nic_dev;

	void __iomem *nic_hw_addr;
	void __iomem *app_hw_addr;
	void __iomem *ram_hw_addr;

	struct mqnic_reg_block *rb_list;
	struct mqnic_reg_block *dma_bench_rb;

	// DMA buffer
	size_t dma_region_len;
	void *dma_region;
	dma_addr_t dma_region_addr;
};

const char *dma_bench_stats_names[] = {
	// PCIe stats
	"pcie_rx_tlp_mem_rd",      // index 0
	"pcie_rx_tlp_mem_wr",      // index 1
	"pcie_rx_tlp_io",          // index 2
	"pcie_rx_tlp_cfg",         // index 3
	"pcie_rx_tlp_msg",         // index 4
	"pcie_rx_tlp_cpl",         // index 5
	"pcie_rx_tlp_cpl_ur",      // index 6
	"pcie_rx_tlp_cpl_ca",      // index 7
	"pcie_rx_tlp_atomic",      // index 8
	"pcie_rx_tlp_ep",          // index 9
	"pcie_rx_tlp_hdr_dw",      // index 10
	"pcie_rx_tlp_req_dw",      // index 11
	"pcie_rx_tlp_payload_dw",  // index 12
	"pcie_rx_tlp_cpl_dw",      // index 13
	"",                        // index 14
	"",                        // index 15
	"pcie_tx_tlp_mem_rd",      // index 16
	"pcie_tx_tlp_mem_wr",      // index 17
	"pcie_tx_tlp_io",          // index 18
	"pcie_tx_tlp_cfg",         // index 19
	"pcie_tx_tlp_msg",         // index 20
	"pcie_tx_tlp_cpl",         // index 21
	"pcie_tx_tlp_cpl_ur",      // index 22
	"pcie_tx_tlp_cpl_ca",      // index 23
	"pcie_tx_tlp_atomic",      // index 24
	"pcie_tx_tlp_ep",          // index 25
	"pcie_tx_tlp_hdr_dw",      // index 26
	"pcie_tx_tlp_req_dw",      // index 27
	"pcie_tx_tlp_payload_dw",  // index 28
	"pcie_tx_tlp_cpl_dw",      // index 29
	"",                        // index 30
	"",                        // index 31

	// DMA statistics
	"dma_rd_op_count",         // index 0
	"dma_rd_op_bytes",         // index 1
	"dma_rd_op_latency",       // index 2
	"dma_rd_op_error",         // index 3
	"dma_rd_req_count",        // index 4
	"dma_rd_req_latency",      // index 5
	"dma_rd_req_timeout",      // index 6
	"dma_rd_op_table_full",    // index 7
	"dma_rd_no_tags",          // index 8
	"dma_rd_tx_limit",         // index 9
	"dma_rd_tx_stall",         // index 10
	"",                        // index 11
	"",                        // index 12
	"",                        // index 13
	"",                        // index 14
	"",                        // index 15
	"dma_wr_op_count",         // index 16
	"dma_wr_op_bytes",         // index 17
	"dma_wr_op_latency",       // index 18
	"dma_wr_op_error",         // index 19
	"dma_wr_req_count",        // index 20
	"dma_wr_req_latency",      // index 21
	"",                        // index 22
	"dma_wr_op_table_full",    // index 23
	"",                        // index 24
	"dma_wr_tx_limit",         // index 25
	"dma_wr_tx_stall",         // index 26
	"",                        // index 27
	"",                        // index 28
	"",                        // index 29
	"",                        // index 30
	"",                        // index 31
	0
};

static void print_counters(struct mqnic_app_dma_bench *app)
{
	struct device *dev = app->dev;

	int index = 0;
	u64 val;

	while (dma_bench_stats_names[index]) {
		if (strlen(dma_bench_stats_names[index]) > 0) {
			val = mqnic_stats_read(app->mdev, index);
			dev_info(dev, "%s: %lld", dma_bench_stats_names[index], val);
		}
		index++;
	}
}

static void dma_read(struct mqnic_app_dma_bench *app,
		dma_addr_t dma_addr, size_t ram_addr, size_t len)
{
	int tag = 0;
	int new_tag = 0;
	unsigned long t;

	tag = ioread32(app->dma_bench_rb->regs + 0x118); // dummy read
	tag = (ioread32(app->dma_bench_rb->regs + 0x118) & 0x7f) + 1;
	iowrite32(dma_addr & 0xffffffff, app->dma_bench_rb->regs + 0x100);
	iowrite32((dma_addr >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x104);
	iowrite32(ram_addr, app->dma_bench_rb->regs + 0x108);
	iowrite32(0, app->dma_bench_rb->regs + 0x10C);
	iowrite32(len, app->dma_bench_rb->regs + 0x110);
	iowrite32(tag, app->dma_bench_rb->regs + 0x114);

	// wait for transfer to complete
	t = jiffies + msecs_to_jiffies(200);
	while (time_before(jiffies, t)) {
		new_tag = (ioread32(app->dma_bench_rb->regs + 0x118) & 0xff);
		if (new_tag == tag)
			break;
	}

	if (tag != new_tag)
		dev_warn(app->dev, "%s: tag %d (expected %d)", __func__, new_tag, tag);
}

static void dma_write(struct mqnic_app_dma_bench *app,
		dma_addr_t dma_addr, size_t ram_addr, size_t len)
{
	int tag = 0;
	int new_tag = 0;
	unsigned long t;

	tag = ioread32(app->dma_bench_rb->regs + 0x218); // dummy read
	tag = (ioread32(app->dma_bench_rb->regs + 0x218) & 0x7f) + 1;
	iowrite32(dma_addr & 0xffffffff, app->dma_bench_rb->regs + 0x200);
	iowrite32((dma_addr >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x204);
	iowrite32(ram_addr, app->dma_bench_rb->regs + 0x208);
	iowrite32(0, app->dma_bench_rb->regs + 0x20C);
	iowrite32(len, app->dma_bench_rb->regs + 0x210);
	iowrite32(tag, app->dma_bench_rb->regs + 0x214);

	// wait for transfer to complete
	t = jiffies + msecs_to_jiffies(200);
	while (time_before(jiffies, t)) {
		new_tag = (ioread32(app->dma_bench_rb->regs + 0x218) & 0xff);
		if (new_tag == tag)
			break;
	}

	if (tag != new_tag)
		dev_warn(app->dev, "%s: tag %d (expected %d)", __func__, new_tag, tag);
}

static void dma_block_read(struct mqnic_app_dma_bench *app,
		dma_addr_t dma_addr, size_t dma_offset,
		size_t dma_offset_mask, size_t dma_stride,
		size_t ram_addr, size_t ram_offset,
		size_t ram_offset_mask, size_t ram_stride,
		size_t block_len, size_t block_count)
{
	unsigned long t;

	// DMA base address
	iowrite32(dma_addr & 0xffffffff, app->dma_bench_rb->regs + 0x380);
	iowrite32((dma_addr >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x384);
	// DMA offset address
	iowrite32(dma_offset & 0xffffffff, app->dma_bench_rb->regs + 0x388);
	iowrite32((dma_offset >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x38c);
	// DMA offset mask
	iowrite32(dma_offset_mask & 0xffffffff, app->dma_bench_rb->regs + 0x390);
	iowrite32((dma_offset_mask >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x394);
	// DMA stride
	iowrite32(dma_stride & 0xffffffff, app->dma_bench_rb->regs + 0x398);
	iowrite32((dma_stride >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x39c);
	// RAM base address
	iowrite32(ram_addr & 0xffffffff, app->dma_bench_rb->regs + 0x3c0);
	iowrite32((ram_addr >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x3c4);
	// RAM offset address
	iowrite32(ram_offset & 0xffffffff, app->dma_bench_rb->regs + 0x3c8);
	iowrite32((ram_offset >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x3cc);
	// RAM offset mask
	iowrite32(ram_offset_mask & 0xffffffff, app->dma_bench_rb->regs + 0x3d0);
	iowrite32((ram_offset_mask >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x3d4);
	// RAM stride
	iowrite32(ram_stride & 0xffffffff, app->dma_bench_rb->regs + 0x3d8);
	iowrite32((ram_stride >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x3dc);
	// clear cycle count
	iowrite32(0, app->dma_bench_rb->regs + 0x308);
	iowrite32(0, app->dma_bench_rb->regs + 0x30c);
	// block length
	iowrite32(block_len, app->dma_bench_rb->regs + 0x310);
	// block count
	iowrite32(block_count, app->dma_bench_rb->regs + 0x318);
	// start
	iowrite32(1, app->dma_bench_rb->regs + 0x300);

	// wait for transfer to complete
	t = jiffies + msecs_to_jiffies(20000);
	while (time_before(jiffies, t)) {
		if ((ioread32(app->dma_bench_rb->regs + 0x300) & 1) == 0)
			break;
	}

	if ((ioread32(app->dma_bench_rb->regs + 0x300) & 1) != 0)
		dev_warn(app->dev, "%s: operation timed out", __func__);
}

static void dma_block_write(struct mqnic_app_dma_bench *app,
		dma_addr_t dma_addr, size_t dma_offset,
		size_t dma_offset_mask, size_t dma_stride,
		size_t ram_addr, size_t ram_offset,
		size_t ram_offset_mask, size_t ram_stride,
		size_t block_len, size_t block_count)
{
	unsigned long t;

	// DMA base address
	iowrite32(dma_addr & 0xffffffff, app->dma_bench_rb->regs + 0x480);
	iowrite32((dma_addr >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x484);
	// DMA offset address
	iowrite32(dma_offset & 0xffffffff, app->dma_bench_rb->regs + 0x488);
	iowrite32((dma_offset >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x48c);
	// DMA offset mask
	iowrite32(dma_offset_mask & 0xffffffff, app->dma_bench_rb->regs + 0x490);
	iowrite32((dma_offset_mask >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x494);
	// DMA stride
	iowrite32(dma_stride & 0xffffffff, app->dma_bench_rb->regs + 0x498);
	iowrite32((dma_stride >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x49c);
	// RAM base address
	iowrite32(ram_addr & 0xffffffff, app->dma_bench_rb->regs + 0x4c0);
	iowrite32((ram_addr >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x4c4);
	// RAM offset address
	iowrite32(ram_offset & 0xffffffff, app->dma_bench_rb->regs + 0x4c8);
	iowrite32((ram_offset >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x4cc);
	// RAM offset mask
	iowrite32(ram_offset_mask & 0xffffffff, app->dma_bench_rb->regs + 0x4d0);
	iowrite32((ram_offset_mask >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x4d4);
	// RAM stride
	iowrite32(ram_stride & 0xffffffff, app->dma_bench_rb->regs + 0x4d8);
	iowrite32((ram_stride >> 32) & 0xffffffff, app->dma_bench_rb->regs + 0x4dc);
	// clear cycle count
	iowrite32(0, app->dma_bench_rb->regs + 0x408);
	iowrite32(0, app->dma_bench_rb->regs + 0x40c);
	// block length
	iowrite32(block_len, app->dma_bench_rb->regs + 0x410);
	// block count
	iowrite32(block_count, app->dma_bench_rb->regs + 0x418);
	// start
	iowrite32(1, app->dma_bench_rb->regs + 0x400);

	// wait for transfer to complete
	t = jiffies + msecs_to_jiffies(20000);
	while (time_before(jiffies, t)) {
		if ((ioread32(app->dma_bench_rb->regs + 0x400) & 1) == 0)
			break;
	}

	if ((ioread32(app->dma_bench_rb->regs + 0x400) & 1) != 0)
		dev_warn(app->dev, "%s: operation timed out", __func__);
}

static void dma_block_read_bench(struct mqnic_app_dma_bench *app,
		dma_addr_t dma_addr, u64 size, u64 stride, u64 count)
{
	u64 time;
	u64 op_count;
	u64 op_latency;
	u64 req_count;
	u64 req_latency;

	udelay(5);

	op_count = mqnic_stats_read(app->mdev, 32);
	op_latency = mqnic_stats_read(app->mdev, 34);
	req_count = mqnic_stats_read(app->mdev, 36);
	req_latency = mqnic_stats_read(app->mdev, 37);

	dma_block_read(app, dma_addr, 0, 0x3fff, stride,
			0, 0, 0x3fff, stride, size, count);

	time = mqnic_core_clk_cycles_to_ns(app->mdev, ioread32(app->dma_bench_rb->regs + 0x308));

	udelay(5);

	op_count = mqnic_stats_read(app->mdev, 32) - op_count;
	op_latency = mqnic_core_clk_cycles_to_ns(app->mdev, mqnic_stats_read(app->mdev, 34) - op_latency);
	req_count = mqnic_stats_read(app->mdev, 36) - req_count;
	req_latency = mqnic_core_clk_cycles_to_ns(app->mdev, mqnic_stats_read(app->mdev, 37) - req_latency);

	dev_info(app->dev, "read %lld blocks of %lld bytes (stride %lld) in %lld ns (%lld ns/op, %lld req, %lld ns/req): %lld Mbps",
			count, size, stride, time, op_latency / op_count, req_count,
			req_latency / req_count, size * count * 8 * 1000 / time);
}

static void dma_block_write_bench(struct mqnic_app_dma_bench *app,
		dma_addr_t dma_addr, u64 size, u64 stride, u64 count)
{
	u64 time;
	u64 op_count;
	u64 op_latency;
	u64 req_count;
	u64 req_latency;

	udelay(5);

	op_count = mqnic_stats_read(app->mdev, 48);
	op_latency = mqnic_stats_read(app->mdev, 50);
	req_count = mqnic_stats_read(app->mdev, 52);
	req_latency = mqnic_stats_read(app->mdev, 53);

	dma_block_write(app, dma_addr, 0, 0x3fff, stride,
			0, 0, 0x3fff, stride, size, count);

	time = mqnic_core_clk_cycles_to_ns(app->mdev, ioread32(app->dma_bench_rb->regs + 0x408));

	udelay(5);

	op_count = mqnic_stats_read(app->mdev, 48) - op_count;
	op_latency = mqnic_core_clk_cycles_to_ns(app->mdev, mqnic_stats_read(app->mdev, 50) - op_latency);
	req_count = mqnic_stats_read(app->mdev, 52) - req_count;
	req_latency = mqnic_core_clk_cycles_to_ns(app->mdev, mqnic_stats_read(app->mdev, 53) - req_latency);

	dev_info(app->dev, "wrote %lld blocks of %lld bytes (stride %lld) in %lld ns (%lld ns/op, %lld req, %lld ns/req): %lld Mbps",
			count, size, stride, time, op_latency / op_count, req_count,
			req_latency / req_count, size * count * 8 * 1000 / time);
}

static void mqnic_app_dma_bench_remove(struct auxiliary_device *adev);

static int mqnic_app_dma_bench_probe(struct auxiliary_device *adev,
		const struct auxiliary_device_id *id)
{
	int ret = 0;
	struct mqnic_app_dma_bench *app;
	struct mqnic_dev *mdev = container_of(adev, struct mqnic_adev, adev)->mdev;
	struct device *dev = &adev->dev;
	struct mqnic_reg_block *rb;

	int mismatch = 0;
	int k;
	int rb_index;

	dev_info(dev, "%s() called", __func__);

	if (!mdev->hw_addr || !mdev->app_hw_addr) {
		dev_err(dev, "Error: required region not present");
		return -EIO;
	}

	app = devm_kzalloc(dev, sizeof(*app), GFP_KERNEL);
	if (!app)
		return -ENOMEM;

	app->dev = dev;
	app->mdev = mdev;
	dev_set_drvdata(&adev->dev, app);

	app->nic_dev = mdev->dev;
	app->nic_hw_addr = mdev->hw_addr;
	app->app_hw_addr = mdev->app_hw_addr;
	app->ram_hw_addr = mdev->ram_hw_addr;

	// app info
	u32 type, version, active_read_count;
	size_t offset;
	type = ioread32(mdev->app_hw_addr + MQNIC_RB_REG_TYPE);
	version = ioread32(mdev->app_hw_addr + MQNIC_RB_REG_VER);
	offset = ioread32(mdev->app_hw_addr + MQNIC_RB_REG_NEXT_PTR);
	dev_info(dev, " type 0x%08x (v %d.%d.%d.%d)", type, version >> 24,
			(version >> 16) & 0xff, (version >> 8) & 0xff, version & 0xff);
	// write test reg
	u32 test_reg;
	test_reg = ioread32(mdev->app_hw_addr + 0x0000000c);
	dev_info(dev, "Before writing, test reg: 0x%08x", test_reg);
	iowrite32(0x0000ffff, mdev->app_hw_addr + 0x0000000c);
	test_reg = ioread32(mdev->app_hw_addr + 0x0000000c);
	dev_info(dev, "After writing, test reg: 0x%08x", test_reg);
	// instruction mem
	// iowrite32(0x00001111, mdev->app_hw_addr + 0x00010000);
	// iowrite32(0x00001111, mdev->app_hw_addr + 0x000100ff);
	// u32 imem_line;
	// for (int i=0; i<8; i++) {
	// 	imem_line = ioread32(mdev->app_hw_addr + 0x00010000 + i*4);
	// 	dev_info(dev, "%dth line of imem: 0x%08x", i+1, imem_line);
	// }
	// mapped mem
	// iowrite32(0x00001111, mdev->app_hw_addr + 0x00020000);
	// iowrite32(0x00001111, mdev->app_hw_addr + 0x000200ff);
	// u32 mmap_line;
	// for (int i=0; i<4; i++) {
	// 	mmap_line = ioread32(mdev->app_hw_addr + 0x00020000 + i*4);
	// 	dev_info(dev, "%dth line of mmap: 0x%08x", i+1, mmap_line);
	// }
	// counters
	u32 received_pkts, transmit_pkts, dropped_pkts;
	received_pkts = ioread32(mdev->app_hw_addr + 0x00030000);
	transmit_pkts = ioread32(mdev->app_hw_addr + 0x00030004);
	dropped_pkts = ioread32(mdev->app_hw_addr + 0x00030008);
	dev_info(dev, "Received Packets: 0x%08x", received_pkts);
	dev_info(dev, "Transmit Packets: 0x%08x", transmit_pkts);
	dev_info(dev, "Dropped Packets: 0x%08x", dropped_pkts);

	return 0;

fail_dma_alloc:
fail_rb_init:
	mqnic_app_dma_bench_remove(adev);
	return ret;
}	

static void mqnic_app_dma_bench_remove(struct auxiliary_device *adev)
{
	struct mqnic_app_dma_bench *app = dev_get_drvdata(&adev->dev);
	struct device *dev = app->dev;

	dev_info(dev, "%s() called", __func__);

	if (app->dma_region)
		dma_free_coherent(app->nic_dev, app->dma_region_len, app->dma_region,
				app->dma_region_addr);

	if (app->rb_list)
		mqnic_free_reg_block_list(app->rb_list);
}

static const struct auxiliary_device_id mqnic_app_dma_bench_id_table[] = {
	{ .name = "mqnic.app_12348001" },
	{},
};

MODULE_DEVICE_TABLE(auxiliary, mqnic_app_dma_bench_id_table);

static struct auxiliary_driver mqnic_app_dma_bench_driver = {
	.name = "mqnic_app_dma_bench",
	.probe = mqnic_app_dma_bench_probe,
	.remove = mqnic_app_dma_bench_remove,
	.id_table = mqnic_app_dma_bench_id_table,
};

static int __init mqnic_app_dma_bench_init(void)
{
	return auxiliary_driver_register(&mqnic_app_dma_bench_driver);
}

static void __exit mqnic_app_dma_bench_exit(void)
{
	auxiliary_driver_unregister(&mqnic_app_dma_bench_driver);
}

module_init(mqnic_app_dma_bench_init);
module_exit(mqnic_app_dma_bench_exit);
