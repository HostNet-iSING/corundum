/**
 * @file dpdk_externs.h
 *
 * @brief Externs for DPDK dispatcher implementation. These globals are shared
 * among different DpdkDispatcher objects
 */
#pragma once

#include "dpdk_dispatcher.h"

#include <atomic>
#include <set>
#include "common.h"

namespace dperf {
/**
 * ----------------------Global parameters (shared by all threads)----------------------
 */
extern std::mutex g_dpdk_lock;
extern bool g_dpdk_initialized;
extern bool g_port_initialized[RTE_MAX_ETHPORTS];
extern DpdkDispatcher::ownership_memzone_t *g_memzone;
}  // namespace dperf
