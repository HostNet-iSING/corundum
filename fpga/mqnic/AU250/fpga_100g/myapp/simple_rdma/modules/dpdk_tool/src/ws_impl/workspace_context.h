/**
 * @file workspace_context.h
 * @brief Store shared parameters among a group of workspaces
 */
#pragma once
#include "common.h"
#include "dispatcher.h"
#include "util/barrier.h"
#include "util/lock_free_queue.h"
#include "util/net_stats.h"

#include <mutex>
#include <vector>
#include <unordered_map>
#include <map>

namespace dperf {
template <class TDispatcher>
class Workspace;

class WsContext {
  /**
   * ----------------------Parameters of WsContext----------------------
   */ 
  
  /**
   * ----------------------Internal structures----------------------
   */ 

  /**
   * ----------------------Methods----------------------
   */ 
  public:
    /// Init
    WsContext(ThreadBarrier *barrier) : barrier_(barrier) {
      for (size_t i = 0; i < kWorkspaceMaxNum; i++)
        ws_[i] = nullptr;
      perf_stats_init(perf_stats_);
    }

  /**
   * ----------------------Util methods----------------------
   */ 
  void init_perf_stats() {
    perf_stats_init(perf_stats_);
  }

  /**
   * ----------------------Internal Parameters----------------------
   */
  /// Parameters shared by all workspaces
  public:
    Workspace<DISPATCHER_TYPE> *ws_[kWorkspaceMaxNum];              // When init a workspace, register it here
    std::vector<uint8_t>active_ws_id_;                              // Workspaces that are active
    std::unordered_map<uint8_t, lock_free_queue*> ws_tx_queue_map_; // Map ws_id to ws_queue
    std::unordered_map<uint8_t, lock_free_queue*> ws_rx_queue_map_; // Map ws_id to ws_queue
    std::mutex mutex_;

    std::map<uint8_t, Dispatcher::mem_reg_info<MEM_REG_TYPE>*> mem_reg_map_; // Map ws_id to mem_reg_info
    std::map<uint8_t, uint8_t> ws_id_dispatcher_map_;               // ws_id -> dispatcher_ws_id
    ThreadBarrier *barrier_ = nullptr;                              // barrier for all workspaces

    /// Statistics
    struct perf_stats *perf_stats_ = new struct perf_stats();

    /// End
    bool end_signal_ = false;
    uint8_t completed_ws_num_ = 0;
};
}