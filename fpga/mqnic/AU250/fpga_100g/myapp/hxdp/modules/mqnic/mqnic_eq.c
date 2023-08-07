// SPDX-License-Identifier: BSD-2-Clause-Views
/*
 * Copyright (c) 2019-2023 The Regents of the University of California
 */

#include "mqnic.h"

static int mqnic_eq_int(struct notifier_block *nb, unsigned long action, void *data)
{
	struct mqnic_eq *eq = container_of(nb, struct mqnic_eq, irq_nb);

	mqnic_process_eq(eq);
	mqnic_arm_eq(eq);

	return NOTIFY_DONE;
}

struct mqnic_eq *mqnic_create_eq(struct mqnic_if *interface)
{
	struct mqnic_eq *eq;

	eq = kzalloc(sizeof(*eq), GFP_KERNEL);
	if (!eq)
		return ERR_PTR(-ENOMEM);

	eq->dev = interface->dev;
	eq->interface = interface;

	eq->eqn = -1;
	eq->enabled = 0;

	eq->irq_nb.notifier_call = mqnic_eq_int;

	eq->hw_addr = NULL;
	eq->hw_ptr_mask = 0xffff;
	eq->hw_head_ptr = NULL;
	eq->hw_tail_ptr = NULL;

	eq->head_ptr = 0;
	eq->tail_ptr = 0;

	spin_lock_init(&eq->table_lock);

	INIT_RADIX_TREE(&eq->cq_table, GFP_KERNEL);

	return eq;
}

void mqnic_destroy_eq(struct mqnic_eq *eq)
{
	mqnic_close_eq(eq);

	kfree(eq);
}

int mqnic_open_eq(struct mqnic_eq *eq, struct mqnic_irq *irq, int size)
{
	int ret;

	if (eq->enabled || eq->hw_addr || eq->buf || !irq)
		return -EINVAL;

	eq->eqn = mqnic_res_alloc(eq->interface->eq_res);
	if (eq->eqn < 0)
		return -ENOMEM;

	eq->size = roundup_pow_of_two(size);
	eq->size_mask = eq->size - 1;
	eq->stride = roundup_pow_of_two(MQNIC_EVENT_SIZE);

	eq->buf_size = eq->size * eq->stride;
	eq->buf = dma_alloc_coherent(eq->dev, eq->buf_size, &eq->buf_dma_addr, GFP_KERNEL);
	if (!eq->buf) {
		ret = -ENOMEM;
		goto fail;
	}

	// register interrupt
	ret = atomic_notifier_chain_register(&irq->nh, &eq->irq_nb);
	if (ret)
		goto fail;

	eq->irq = irq;

	eq->hw_addr = mqnic_res_get_addr(eq->interface->eq_res, eq->eqn);
	eq->hw_head_ptr = eq->hw_addr + MQNIC_EQ_HEAD_PTR_REG;
	eq->hw_tail_ptr = eq->hw_addr + MQNIC_EQ_TAIL_PTR_REG;

	eq->head_ptr = 0;
	eq->tail_ptr = 0;

	memset(eq->buf, 1, eq->buf_size);

	// deactivate queue
	iowrite32(0, eq->hw_addr + MQNIC_EQ_ACTIVE_LOG_SIZE_REG);
	// set base address
	iowrite32(eq->buf_dma_addr, eq->hw_addr + MQNIC_EQ_BASE_ADDR_REG + 0);
	iowrite32(eq->buf_dma_addr >> 32, eq->hw_addr + MQNIC_EQ_BASE_ADDR_REG + 4);
	// set interrupt index
	iowrite32(eq->irq->index, eq->hw_addr + MQNIC_EQ_INTERRUPT_INDEX_REG);
	// set pointers
	iowrite32(eq->head_ptr & eq->hw_ptr_mask, eq->hw_addr + MQNIC_EQ_HEAD_PTR_REG);
	iowrite32(eq->tail_ptr & eq->hw_ptr_mask, eq->hw_addr + MQNIC_EQ_TAIL_PTR_REG);
	// set size
	iowrite32(ilog2(eq->size), eq->hw_addr + MQNIC_EQ_ACTIVE_LOG_SIZE_REG);
	// set size and activate queue
	iowrite32(ilog2(eq->size) | MQNIC_EQ_ACTIVE_MASK, eq->hw_addr + MQNIC_EQ_ACTIVE_LOG_SIZE_REG);

	eq->enabled = 1;

	return 0;

fail:
	mqnic_close_eq(eq);
	return ret;
}

void mqnic_close_eq(struct mqnic_eq *eq)
{
	int ret;

	if (eq->hw_addr) {
		// deactivate queue
		iowrite32(ilog2(eq->size), eq->hw_addr + MQNIC_EQ_ACTIVE_LOG_SIZE_REG);
		// disarm queue
		iowrite32(0, eq->hw_addr + MQNIC_EQ_INTERRUPT_INDEX_REG);
	}

	// unregister interrupt
	if (eq->irq)
		ret = atomic_notifier_chain_unregister(&eq->irq->nh, &eq->irq_nb);

	eq->irq = NULL;

	eq->hw_addr = NULL;
	eq->hw_head_ptr = NULL;
	eq->hw_tail_ptr = NULL;

	if (eq->buf) {
		dma_free_coherent(eq->dev, eq->buf_size, eq->buf, eq->buf_dma_addr);
		eq->buf = NULL;
		eq->buf_dma_addr = 0;
	}

	mqnic_res_free(eq->interface->eq_res, eq->eqn);
	eq->eqn = -1;

	eq->enabled = 0;
}

int mqnic_eq_attach_cq(struct mqnic_eq *eq, struct mqnic_cq *cq)
{
	int ret;
	int cqn = cq->cqn;
	if (cq->is_txcq)
		cqn |= 0x80000000;

	spin_lock_irq(&eq->table_lock);
	ret = radix_tree_insert(&eq->cq_table, cqn, cq);
	spin_unlock_irq(&eq->table_lock);
	return ret;
}

void mqnic_eq_detach_cq(struct mqnic_eq *eq, struct mqnic_cq *cq)
{
	struct mqnic_cq *item;
	int cqn = cq->cqn;
	if (cq->is_txcq)
		cqn |= 0x80000000;

	spin_lock_irq(&eq->table_lock);
	item = radix_tree_delete(&eq->cq_table, cqn);
	spin_unlock_irq(&eq->table_lock);

	if (IS_ERR(item)) {
		dev_err(eq->dev, "%s on IF %d EQ %d: radix_tree_delete failed: %ld",
				__func__, eq->interface->index, eq->eqn, PTR_ERR(item));
	} else if (!item) {
		dev_err(eq->dev, "%s on IF %d EQ %d: CQ %d not in table",
				__func__, eq->interface->index, eq->eqn, cqn);
	} else if (item != cq) {
		dev_err(eq->dev, "%s on IF %d EQ %d: entry mismatch when removing CQ %d",
				__func__, eq->interface->index, eq->eqn, cqn);
	}
}

void mqnic_eq_read_head_ptr(struct mqnic_eq *eq)
{
	eq->head_ptr += (ioread32(eq->hw_head_ptr) - eq->head_ptr) & eq->hw_ptr_mask;
}

void mqnic_eq_write_tail_ptr(struct mqnic_eq *eq)
{
	iowrite32(eq->tail_ptr & eq->hw_ptr_mask, eq->hw_tail_ptr);
}

void mqnic_arm_eq(struct mqnic_eq *eq)
{
	if (!eq->enabled)
		return;

	iowrite32(eq->irq->index | MQNIC_EQ_ARM_MASK, eq->hw_addr + MQNIC_EQ_INTERRUPT_INDEX_REG);
}

void mqnic_process_eq(struct mqnic_eq *eq)
{
	struct mqnic_if *interface = eq->interface;
	struct mqnic_event *event;
	struct mqnic_cq *cq;
	u32 eq_index;
	u32 eq_tail_ptr;
	int done = 0;
	int cqn;

	// read head pointer from NIC
	eq_tail_ptr = eq->tail_ptr;
	eq_index = eq_tail_ptr & eq->size_mask;

	while (1) {
		event = (struct mqnic_event *)(eq->buf + eq_index * eq->stride);

		if (!!(event->phase & cpu_to_le32(0x80000000)) == !!(eq_tail_ptr & eq->size))
			break;

		dma_rmb();

		if (event->type == MQNIC_EVENT_TYPE_TX_CPL) {
			// transmit completion event
			cqn = le16_to_cpu(event->source) | 0x80000000;

			rcu_read_lock();
			cq = radix_tree_lookup(&eq->cq_table, cqn);
			rcu_read_unlock();

			if (likely(cq)) {
				if (likely(cq->handler))
					cq->handler(cq);
			} else {
				dev_err(eq->dev, "%s on IF %d EQ %d: unknown event source %d (index %d, type %d)",
						__func__, interface->index, eq->eqn, le16_to_cpu(event->source),
						eq_index, le16_to_cpu(event->type));
				print_hex_dump(KERN_ERR, "", DUMP_PREFIX_NONE, 16, 1,
						event, MQNIC_EVENT_SIZE, true);
			}
		} else if (le16_to_cpu(event->type) == MQNIC_EVENT_TYPE_RX_CPL) {
			// receive completion event
			cqn = le16_to_cpu(event->source);

			rcu_read_lock();
			cq = radix_tree_lookup(&eq->cq_table, cqn);
			rcu_read_unlock();

			if (likely(cq)) {
				if (likely(cq->handler))
					cq->handler(cq);
			} else {
				dev_err(eq->dev, "%s on IF %d EQ %d: unknown event source %d (index %d, type %d)",
						__func__, interface->index, eq->eqn, le16_to_cpu(event->source),
						eq_index, le16_to_cpu(event->type));
				print_hex_dump(KERN_ERR, "", DUMP_PREFIX_NONE, 16, 1,
						event, MQNIC_EVENT_SIZE, true);
			}
		} else {
			dev_err(eq->dev, "%s on IF %d EQ %d: unknown event type %d (index %d, source %d)",
					__func__, interface->index, eq->eqn, le16_to_cpu(event->type),
					eq_index, le16_to_cpu(event->source));
			print_hex_dump(KERN_ERR, "", DUMP_PREFIX_NONE, 16, 1,
					event, MQNIC_EVENT_SIZE, true);
		}

		done++;

		eq_tail_ptr++;
		eq_index = eq_tail_ptr & eq->size_mask;
	}

	// update eq tail
	eq->tail_ptr = eq_tail_ptr;
	mqnic_eq_write_tail_ptr(eq);
}
