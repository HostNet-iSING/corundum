// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2019-2023 The Regents of the University of California
 */

#include "mqnic.h"
#include "mqnic_hw.h"
#include "mqnic_ioctl.h"

#include <linux/uaccess.h>

static int mqnic_open(struct inode *inode, struct file *file)
{
	// struct miscdevice *miscdev = file->private_data;
	// struct mqnic_dev *mqnic = container_of(miscdev, struct mqnic_dev, misc_dev);

	return 0;
}

static int mqnic_release(struct inode *inode, struct file *file)
{
	// struct miscdevice *miscdev = file->private_data;
	// struct mqnic_dev *mqnic = container_of(miscdev, struct mqnic_dev, misc_dev);

	return 0;
}

static int mqnic_mmap(struct file *file, struct vm_area_struct *vma)
{
	struct miscdevice *miscdev = file->private_data;
	struct mqnic_dev *mqnic = container_of(miscdev, struct mqnic_dev, misc_dev);
	int index;
	u64 pgoff, req_len, req_start;

	index = vma->vm_pgoff >> (40 - PAGE_SHIFT);
	req_len = vma->vm_end - vma->vm_start;
	pgoff = vma->vm_pgoff & ((1U << (40 - PAGE_SHIFT)) - 1);
	req_start = pgoff << PAGE_SHIFT;

	if (vma->vm_end < vma->vm_start)
		return -EINVAL;

	if ((vma->vm_flags & VM_SHARED) == 0)
		return -EINVAL;

	switch (index) {
	case 0:
		if (req_start + req_len > mqnic->hw_regs_size)
			return -EINVAL;

		return io_remap_pfn_range(vma, vma->vm_start,
				(mqnic->hw_regs_phys >> PAGE_SHIFT) + pgoff,
				req_len, pgprot_noncached(vma->vm_page_prot));
	case 1:
		if (req_start + req_len > mqnic->app_hw_regs_size)
			return -EINVAL;

		return io_remap_pfn_range(vma, vma->vm_start,
				(mqnic->app_hw_regs_phys >> PAGE_SHIFT) + pgoff,
				req_len, pgprot_noncached(vma->vm_page_prot));
	case 2:
		if (req_start + req_len > mqnic->ram_hw_regs_size)
			return -EINVAL;

		return io_remap_pfn_range(vma, vma->vm_start,
				(mqnic->ram_hw_regs_phys >> PAGE_SHIFT) + pgoff,
				req_len, pgprot_noncached(vma->vm_page_prot));
	default:
		dev_err(mqnic->dev, "%s: Tried to map an unknown region at page offset 0x%lx",
				__func__, vma->vm_pgoff);
		return -EINVAL;
	}

	return -EINVAL;
}

static struct sg_table *sgt_list[1024];
static int sgt_list_idx = 0;

static struct page **page_list_list[1024];

struct user_mem
{
	unsigned long start;
	int length;
};

static long mqnic_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct miscdevice *miscdev = file->private_data;
	struct mqnic_dev *mqnic = container_of(miscdev, struct mqnic_dev, misc_dev);
	size_t minsz;
	struct user_mem mem;

	if (cmd == MQNIC_IOCTL_SEND)
	{
		struct mqnic_if *interface = mqnic->interface[0];
		if (!interface)
		{
			printk(KERN_ERR "cannot get interface\n");
			return -1;
		}
		struct mqnic_ring *ring = interface->ring;
		if (!ring)
		{
			printk(KERN_ERR "cannot get TX ring\n");
			return -1;
		}

		u32 cons_ptr = READ_ONCE(ring->cons_ptr);
		u32 index = ring->prod_ptr & ring->size_mask;

		struct mqnic_desc *tx_desc = (struct mqnic_desc *)(ring->buf + index * ring->stride);
		struct mqnic_tx_info *tx_info = &ring->tx_info[index];

		// 关掉硬件checksum和timestamp
		tx_info->ts_requested = 0;
		tx_desc->tx_csum_cmd = 0;

		int retval = 0;
		if (copy_from_user(&mem, (void *)arg, sizeof(struct user_mem)))
		{
			return -EFAULT;
		}
		int npages = (mem.length + PAGE_SIZE - 1) / PAGE_SIZE;
		printk(KERN_INFO "accept user mem: addr: %lx, length: %d, npages: %d\n"
			, mem.start, mem.length, npages);
		struct page **page_list = kmalloc(npages * sizeof(struct page), GFP_KERNEL);
		int pinned = pin_user_pages_fast(
			mem.start, 
			npages, 
			FOLL_LONGTERM, 
			page_list
		);
		if (pinned < 0)
		{
			retval = pinned;
			goto free_page_list;
		}
		printk(KERN_INFO "page in hugepage: %d\n", thp_nr_pages(page_list[0]));
		printk(KERN_INFO "pin user pages return: %d\n", pinned);

		struct sg_table *sgt = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
		retval = sg_alloc_table_from_pages(
			sgt, page_list, 
			pinned, 0, pinned << PAGE_SHIFT, GFP_KERNEL);
		if (retval < 0)
		{
			goto unpin_user_pages;
		}
		printk(KERN_INFO "sg table entry num: %d %d\n", sgt->orig_nents, sgt->nents);
		retval = dma_map_sgtable(ring->dev, sgt, DMA_TO_DEVICE, 0);
		if (retval < 0)
		{
			goto free_table;
		}
		printk(KERN_INFO "dma map success\n");
		sgt_list[sgt_list_idx] = sgt;
		page_list_list[sgt_list_idx] = page_list;
		sgt_list_idx++;

		tx_info->frag_count = 0;
		struct scatterlist *sg;
		int i;
		for_each_sgtable_dma_sg(sgt, sg, i)
		{
			if (i >= 1)
			{
				printk(KERN_ERR "buffer map to more than one dma buffer\n");
				break;
			}
			printk(KERN_INFO "block %d, dma addr: %llx, len: %d", i, sg_dma_address(sg), sg_dma_len(sg));
			tx_desc[i].len = cpu_to_le32(mem.length);
			tx_desc[i].addr = cpu_to_le64(sg->dma_address);

			tx_info->frag_count = i + 1;
			tx_info->frags[i].len = mem.length;
			tx_info->frags[i].dma_addr = sg->dma_address;
			tx_info->len = mem.length;
			tx_info->dma_addr = sg->dma_address;
		}
		for (i = tx_info->frag_count; i < ring->desc_block_size; i++) {
			tx_desc[i].len = 0;
			tx_desc[i].addr = 0;
		}

		// count packet
		ring->packets++;
		ring->bytes += tx_info->len;
		// enqueue
		ring->prod_ptr++;

		// check队列是否满了
		if(mqnic_is_tx_ring_full(ring))
		{
			goto destruction;
		}

		printk(KERN_INFO "write produce ptr\n");
		dma_wmb();
		// 写硬件寄存器
		mqnic_tx_write_prod_ptr(ring);

		printk(KERN_INFO "descriptor:\n");
		for (int i = 0; i < 4; i++)
		{
			for (int j = 0; j < 16; j++)
			{
				printk(KERN_CONT"%x ", ((char*)tx_desc)[i*16+j]);
			}
			printk(KERN_INFO "\n");
		}

		return 0;

destruction:
		sgt_list_idx--;
free_table:
		sg_free_table(sgt);
unpin_user_pages:
		kfree(sgt);
		unpin_user_pages(page_list, pinned);
free_page_list:
		kfree(page_list);
		return retval;

	}
	else if (cmd == MQNIC_IOCTL_DMA_MAP)
	{

	}
	else if (cmd == MQNIC_IOCTL_FREE_BUFFER) 
	{
		struct mqnic_if *interface = mqnic->interface[0];
		if (!interface)
		{
			printk(KERN_ERR "cannot get interface\n");
			return -1;
		}
		struct mqnic_ring *ring = interface->ring;
		if (!ring)
		{
			printk(KERN_ERR "cannot get TX ring\n");
			return -1;
		}
		for (int i = 0; i < sgt_list_idx; i++)
		{
			dma_unmap_sgtable(ring->dev, sgt_list[i], DMA_TO_DEVICE, 0);
			//int npages = sgt_list[i]->orig_nents;
			sg_free_table(sgt_list[i]);
			kfree(sgt_list[i]);
			//unpin_user_pages(page_list_list[sgt_list_idx], npages);
			kfree(page_list_list[sgt_list_idx]);
		}
		// 下标清零
		sgt_list_idx = 0;
		return 0;
	}
	else if (cmd == MQNIC_IOCTL_GET_API_VERSION) {
		// Get API version
		return MQNIC_IOCTL_API_VERSION;
	} else if (cmd == MQNIC_IOCTL_GET_DEVICE_INFO) {
		// Get device information
		struct mqnic_ioctl_device_info info;

		minsz = offsetofend(struct mqnic_ioctl_device_info, num_irqs);

		if (copy_from_user(&info, (void __user *)arg, minsz))
			return -EFAULT;

		if (info.argsz < minsz)
			return -EINVAL;

		info.flags = 0;
		info.fw_id = mqnic->fw_id;
		info.fw_ver = mqnic->fw_ver;
		info.board_id = mqnic->board_id;
		info.board_ver = mqnic->board_ver;
		info.build_date = mqnic->build_date;
		info.git_hash = mqnic->git_hash;
		info.rel_info = mqnic->rel_info;
		info.num_regions = 3;
		info.num_irqs = 0;

		return copy_to_user((void __user *)arg, &info, minsz) ? -EFAULT : 0;

	} else if (cmd == MQNIC_IOCTL_GET_REGION_INFO) {
		printk(KERN_INFO "Enter get region info\n");
		// Get region information
		struct mqnic_ioctl_region_info info;

		minsz = offsetofend(struct mqnic_ioctl_region_info, name);

		if (copy_from_user(&info, (void __user *)arg, minsz))
			return -EFAULT;

		if (info.argsz < minsz)
			return -EINVAL;

		info.flags = 0;
		info.type = MQNIC_REGION_TYPE_UNIMPLEMENTED;
		info.next = 0;
		info.child = 0;
		info.size = 0;
		info.offset = ((u64)info.index) << 40;
		info.name[0] = 0;

		switch (info.index) {
		case 0:
			info.type = MQNIC_REGION_TYPE_NIC_CTRL;
			info.next = 1;
			info.child = 0;
			info.size = mqnic->hw_regs_size;
			info.offset = ((u64)info.index) << 40;
			strlcpy(info.name, "ctrl", sizeof(info.name));
			break;
		case 1:
			info.type = MQNIC_REGION_TYPE_APP_CTRL;
			info.next = 2;
			info.child = 0;
			info.size = mqnic->app_hw_regs_size;
			info.offset = ((u64)info.index) << 40;
			strlcpy(info.name, "app", sizeof(info.name));
			break;
		case 2:
			info.type = MQNIC_REGION_TYPE_RAM;
			info.next = 3;
			info.child = 0;
			info.size = mqnic->ram_hw_regs_size;
			info.offset = ((u64)info.index) << 40;
			strlcpy(info.name, "ram", sizeof(info.name));
			break;
		default:
			return -EINVAL;
		}
		printk(KERN_INFO "switch case %d\n", info.index);

		return copy_to_user((void __user *)arg, &info, minsz) ? -EFAULT : 0;

	}

	return -EINVAL;
}

const struct file_operations mqnic_fops = {
	.owner = THIS_MODULE,
	.open = mqnic_open,
	.release = mqnic_release,
	.mmap = mqnic_mmap,
	.unlocked_ioctl = mqnic_ioctl,
};
