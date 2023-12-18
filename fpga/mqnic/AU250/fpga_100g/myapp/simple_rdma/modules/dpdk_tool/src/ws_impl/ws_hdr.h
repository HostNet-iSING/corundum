#pragma once

#include "common.h"
namespace dperf {
struct ws_hdr {
    /// BTH
    uint8_t opcode;
    uint8_t workload_type_;     // should be ignore
    uint16_t segment_num_;      // should be ignore
    uint32_t des_qpn;
    uint32_t psn;
    /// DETH
    uint32_t q_key;
    uint32_t src_qpn;
};

static inline void wshdr_init(struct ws_hdr *wshdr) {
    memset(wshdr, 0, sizeof(struct ws_hdr));
}

} // namespace dperf