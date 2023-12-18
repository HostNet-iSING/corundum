#pragma once
#include "common.h"

namespace dperf {
/**
 * @brief A lock-free queue for storing Application-generated packets. 
 * For TX, application is producer, and dispatcher is consumer. Application 
 * can only operate on the tail of the queue, and dispatcher can only operate
 * on the head of the queue. 
 * For RX, dispatcher is producer, and application is consumer. Similarly, 
 * dispatcher can only operate on the tail of the queue, and application can
 * only operate on the head of the queue.
*/
struct lock_free_queue {
    uint8_t* queue_[kWsQueueSize];
    volatile size_t head_ = 0;  
    volatile size_t tail_ = 0;
    public:
    lock_free_queue() {
        memset(queue_, 0, sizeof(queue_));
//         printf("%p, %p\n", &head_, &tail_);
    }
    inline bool enqueue(uint8_t *pkt) {
        size_t next_tail = (tail_ + 1) % kWsQueueSize;
        if (next_tail == head_) return false;
        queue_[tail_] = pkt;
        tail_ = next_tail;
        return true;
    }
    inline uint8_t* dequeue() {
        if (head_ == tail_) return nullptr;
        uint8_t* ret = queue_[head_];
        head_ = (head_ + 1) % kWsQueueSize;
        return ret;
    }
    inline size_t get_size() {
        return (tail_ + kWsQueueSize - head_) % kWsQueueSize;
    }
};
} // namespace dperf