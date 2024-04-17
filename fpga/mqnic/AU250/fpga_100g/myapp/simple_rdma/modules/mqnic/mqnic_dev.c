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

DEFINE_MUTEX(mqnic_lock);

static int dma_map_buffer(struct device *dev, struct user_mem *mem)
{
	int retval = 0;
	int npages = (mem->length + PAGE_SIZE - 1) / PAGE_SIZE;
	struct page **page_list = kmalloc(npages * sizeof(struct page), GFP_KERNEL);
	int pinned = pin_user_pages_fast(
		mem->start,
		npages, 
		FOLL_LONGTERM, 
		page_list
	);
	if (pinned < 0)
	{
		retval = pinned;
		goto free_page_list;
	}
	//printk(KERN_INFO "page in hugepage: %d\n", thp_nr_pages(page_list[0]));
	//printk(KERN_INFO "pin user pages return: %d\n", pinned);

	struct sg_table *sgt = kmalloc(sizeof(struct sg_table), GFP_KERNEL);
	retval = sg_alloc_table_from_pages(
		sgt, page_list, 
		pinned, 0, pinned << PAGE_SHIFT, GFP_KERNEL);
	if (retval < 0)
	{
		goto unpin_user_pages;
	}
	//printk(KERN_INFO "sg table entry num: %d %d\n", sgt->orig_nents, sgt->nents);
	retval = dma_map_sgtable(dev, sgt, DMA_TO_DEVICE, 0);
	if (retval < 0)
	{
		goto free_table;
	}
	//printk(KERN_INFO "dma map success\n");

	struct scatterlist *sg;
	int i;
	for_each_sgtable_dma_sg(sgt, sg, i)
	{
		if (i >= 1)
		{
			printk(KERN_ERR "buffer map to more than one dma buffer");
			retval = -EINVAL;
			goto dma_unmap_table;
		}
		mem->dma_addr = sg_dma_address(sg);
	}
	return 0;

dma_unmap_table:
	dma_unmap_sgtable(dev, sgt, DMA_TO_DEVICE, 0);
free_table:
	sg_free_table(sgt);
unpin_user_pages:
	kfree(sgt);
	unpin_user_pages(page_list, pinned);
free_page_list:
	kfree(page_list);
	return retval;
}

static int send_message_with_ring(struct mqnic_ring *ring, struct user_mem mem)
{
	mqnic_tx_read_cons_ptr(ring);
	printk(KERN_INFO "current consumer ptr: %d producer ptr: %d\n", 
		ring->cons_ptr, ring->prod_ptr);
	
	// get descriptor to be written to
	u32 index = ring->prod_ptr & ring->size_mask;
	struct mqnic_desc *tx_desc = (struct mqnic_desc *)(ring->buf + index * ring->stride);
	struct mqnic_tx_info *tx_info = &ring->tx_info[index];

	// 关掉硬件checksum和timestamp
	tx_info->ts_requested = 0;
	tx_desc->tx_csum_cmd = 0;

	tx_desc->len = cpu_to_le32(mem.length);
	tx_desc->addr = cpu_to_le64(mem.dma_addr);
	tx_desc->raddr = cpu_to_le64(mem.remote_addr);
	tx_desc->udp_dst_port = cpu_to_le16(4791);

	tx_info->frag_count = 1;
	tx_info->frags->len = mem.length;
	tx_info->frags->dma_addr = mem.dma_addr;
	tx_info->len = mem.length;
	tx_info->dma_addr = mem.dma_addr;
	
	// 看上去不需要，先ban了看看会不会出问题
	/*for (i = tx_info->frag_count; i < ring->desc_block_size; i++) {
		tx_desc[i].len = 0;
		tx_desc[i].addr = 0;
	}*/

	// count packet
	ring->packets++;
	ring->bytes += tx_info->len;
	// enqueue
	ring->prod_ptr++;

	//printk(KERN_INFO "write produce ptr %d\n", ring->prod_ptr);
	dma_wmb();
	// 写硬件寄存器
	// 当前tx_ring producer只有这里，所以不用二次检查队列是不是满了
	mqnic_tx_write_prod_ptr(ring);

	/*printk(KERN_INFO "descriptor:\n");
	for (int i = 0; i < 4; i++)
	{
		for (int j = 0; j < 16; j++)
		{
			printk(KERN_CONT"%02x ", ((char*)tx_desc)[i*16+j]);
		}
		printk(KERN_INFO "\n");
	}*/

	return 0;
}

static long mqnic_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct miscdevice *miscdev = file->private_data;
	struct mqnic_dev *mqnic = container_of(miscdev, struct mqnic_dev, misc_dev);
	size_t minsz;
	struct user_mem mem;
	int retval = 0;

	if (cmd == MQNIC_IOCTL_SEND)
	{
		struct mqnic_if *interface = mqnic->interface[0];
		if (!interface)
		{
			printk(KERN_ERR "cannot get interface\n");
			return -1;
		}

		// 解析用户参数
		if (copy_from_user(&mem, (void *)arg, sizeof(struct user_mem)))
		{
			return -EFAULT;
		}
		int npages = (mem.length + PAGE_SIZE - 1) / PAGE_SIZE;
		//printk(KERN_INFO "accept user mem: addr: %lx, length: %d, npages: %d\n"
		//	, mem.start, mem.length, npages);
		if (npages <= 0 || npages > 512)
		{
			printk(KERN_WARNING "unacceptable buffer length: %d, quit.\n", mem.length);
			return -EINVAL;
		}
		// check if buffer is DMA mapped
		if (mem.dma_addr == (dma_addr_t)NULL)
		{
			printk(KERN_WARNING "buffer %lx is not dma mapped.\n", mem.start);
			return -EINVAL;
		}

		// 上锁
		if (mutex_lock_interruptible(&mqnic_lock))
		{
			printk(KERN_ERR "Failed to aquire device lock, exiting...\n");
			return -EAGAIN;
		}

		int used_ring = -1;
		for (int i = 0; i < interface->ring_num; i++)
		{
			if (interface->ring[i] == NULL)
			{
				printk(KERN_WARNING "NULL ring ptr detected, ring_num maybe corrupted.\n");
				continue;
			}
			// check队列是否满了
			if(mqnic_is_tx_ring_full(interface->ring[i]))
			{
				continue;
			}
			retval = send_message_with_ring(interface->ring[i], mem);
			if (retval == 0)
			{
				used_ring = i;
				break;
			}
		}

		if (used_ring == -1 && retval == 0)
		{
			printk(KERN_INFO "All tx_ring busy, current message is not sended.\n");
			retval = -EAGAIN;
		}
		else if (used_ring != -1)
		{
			printk(KERN_INFO "Message sended at ring %d\n", used_ring);
		}

		mutex_unlock(&mqnic_lock);
		return retval;

	}
	else if (cmd == MQNIC_IOCTL_DMA_MAP)
	{		
		if (copy_from_user(&mem, (void *)arg, sizeof(struct user_mem)))
		{
			return -EFAULT;
		}
		int npages = (mem.length + PAGE_SIZE - 1) / PAGE_SIZE;
		if (npages <= 0 || npages > 512)
		{
			printk(KERN_WARNING "unacceptable buffer length: %d, quit.\n", mem.length);
			return -EINVAL;
		}
		retval = dma_map_buffer(mqnic->dev, &mem);
		if (retval < 0)
		{
			return retval;
		}

		if (copy_to_user((void *)arg, &mem, sizeof(struct user_mem)))
		{
			printk(KERN_ERR "failed to copy to user.\n");
			dma_unmap_single(mqnic->dev, mem.dma_addr, mem.length, DMA_TO_DEVICE);
			mem.dma_addr = (dma_addr_t)NULL;
			return -EFAULT;
		}
		
		return 0;
	}
	else if (cmd == MQNIC_IOCTL_DMA_UNMAP)
	{
		if (copy_from_user(&mem, (void *)arg, sizeof(struct user_mem)))
		{
			return -EFAULT;
		}
		int npages = (mem.length + PAGE_SIZE - 1) / PAGE_SIZE;
		if (npages <= 0 || npages > 512)
		{
			printk(KERN_WARNING "unacceptable buffer length: %d, quit.\n", mem.length);
			return -EINVAL;
		}

		if (mem.dma_addr == (dma_addr_t)NULL)
		{
			printk(KERN_ERR "Trying to unmap a non-DMA buffer: 0x%lx\n", mem.start);
			return -EFAULT;
		}
		dma_unmap_single(mqnic->dev, mem.dma_addr, mem.length, DMA_TO_DEVICE);
		mem.dma_addr = (dma_addr_t)NULL;
		
		if (copy_to_user((void *)arg, &mem, sizeof(struct user_mem)))
		{
			printk(KERN_ERR "failed to copy to user.\n");
			return -EFAULT;
		}
		
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
