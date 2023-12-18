/**
 * @file workspace.h
 * @brief A workspace is an executor for datapath pipeline, 
 * it will be launched by thread/datapath OS/DOCA
 */

#pragma once
#include "common.h"
#include "config.h"
#include "dispatcher.h"
#include "util/logger.h"
#include "util/lock_free_queue.h"
#include "util/rule_table.h"
#include "util/net_stats.h"
#include "util/timer.h"
#include "util/numautils.h"

#include "ws_impl/workspace_context.h"
#include "ws_impl/ws_hdr.h"

#include <mutex>
#include <vector>
#include <unordered_map>
#include <algorithm>

namespace dperf{
/**
 * ----------------------General definations----------------------
 */ 
#define DISPATCHER 1
#define WORKER 2
#define NIC_OFFLOAD 4
#define DISPATCHER_AND_WORKER 3

using phase_t = void (Workspace<DISPATCHER_TYPE>::*)();

template <class TDispatcher>
class Workspace {
  /**
   * ----------------------Parameters in Application level----------------------
   */ 
  static constexpr size_t kAppPayloadSize = 22;   // Corresponding MAC frame len: 22 -> 64; 86 -> 128; 214 -> 256; 470 -> 512; 982 -> 1024; 1458 -> 1500
  static constexpr size_t kAppGeneratePktsNum = ceil((double)kAppPayloadSize / (double)Dispatcher::kMaxPayloadSize);
  static constexpr size_t kAppFullPaddingSize = Dispatcher::kMaxPayloadSize - sizeof(ws_hdr);
  static constexpr size_t kAppLastPaddingSize = kAppPayloadSize - (kAppGeneratePktsNum - 1) * Dispatcher::kMaxPayloadSize - sizeof(ws_hdr);
  static constexpr double kAvgAppPktSize = (double)kAppPayloadSize / (double)kAppGeneratePktsNum;

  static constexpr size_t kAppBatchSize = 32;
  
  /**
   * ----------------------Workspace internal structures----------------------
   */ 
  
  /**
   * ----------------------Workerspace methods----------------------
   */ 
  public:
    /**
     * @brief Construct the Workspace object.
     *
     * @param context pointer to the workspace context
     * @param ws_id The workspace id, which is unique among all workspaces
     * @param ws_type The workspace type, can be dispatcher, worker, or both
     * @param numa_node The numa node that the workspace is located
     * @param phy_port An Workspace object uses one port on a "datapath" NIC, which
     * refers to a NIC that supports DPDK. phy_port is the zero-based index of 
     * that port among active ports, same as the one passed to
     * `rte_eth_dev_info_get` for the DPDK dispatcher. Multiple Workspace objects may 
     * use the same phy_port.
     *
     * @throw runtime_error if construction fails
     */
    Workspace(WsContext *context, uint8_t ws_id, uint8_t ws_type, uint8_t numa_node, uint8_t phy_port, 
              std::vector<dperf::phase_t> *ws_loop, UserConfig *user_config);

    /**
     * @brief Register current workspace to workspace_context
     * 
     * @throw runtime_error if workspace is already registered
    */
    void register_ws();
    void set_mem_reg();
    void set_dispatcher_config();

    /**
     * @brief Launch the workspace to execute datapath pipeline
     * @param context pointer to the workspace context
    */
    void launch();
    void run_event_loop_timeout_st(uint8_t iteration, uint8_t seconds);
    void update_stats();
    void aggregate_stats(perf_stats *g_stats, double freq);

    // Functions used in pipeline execution
    /// App tx phase
    void apply_mbufs() {
      net_stats_app_tx_start();
      for (size_t i = 0; i < kAppGeneratePktsNum * kAppBatchSize; i++) {
        MEM_REG_TYPE *temp_mbuf = NULL;
        temp_mbuf = alloc();
        while(unlikely(temp_mbuf == NULL)) {
          temp_mbuf = alloc();
          net_stats_app_apply_mbuf_stalls();
        }
        tx_mbuf_[i] = temp_mbuf;
      }
    }
    void generate_pkts() {
      /// partially set udp header
      udphdr uh;
      uh.source = ws_id_;
      uh.dest = tx_rule_table_->random_select(workload_type_);
      /// set workspace header
      ws_hdr hdr;
      wshdr_init(&hdr);
      hdr.des_qpn = uh.dest;
      hdr.workload_type_ = workload_type_;
      hdr.segment_num_ = kAppGeneratePktsNum;
      MEM_REG_TYPE **mbuf_ptr = tx_mbuf_;
      /// Insert payload to mbufs
      for (size_t msg_idx = 0; msg_idx < kAppBatchSize; msg_idx++) {
        /// TBD: Perform extra memory access and calculation for each message
        /// Iterate all messages in a batch
        for (size_t seg_idx = 0; seg_idx < kAppGeneratePktsNum - 1; seg_idx++) {
          /// Iterate all segments in a message
          char full_payload[kAppFullPaddingSize] = {0};
          memset(full_payload, 'a', kAppFullPaddingSize - 1);
          full_payload[kAppFullPaddingSize - 1] = '\0';
          set_payload(*mbuf_ptr, (char*)&uh, (char*)&hdr, full_payload, kAppFullPaddingSize);
          mbuf_ptr++;
        }
        char last_payload[kAppLastPaddingSize] = {0};
        memset(last_payload, 'a', kAppLastPaddingSize - 1);
        last_payload[kAppLastPaddingSize - 1] = '\0';
        set_payload(*mbuf_ptr, (char*)&uh, (char*)&hdr, last_payload, kAppLastPaddingSize);
        mbuf_ptr++;
      }
      /// Insert packets to worker tx queue
      for (size_t i = 0; i < kAppGeneratePktsNum * kAppBatchSize; i++) {
        while(unlikely(!tx_queue_->enqueue((uint8_t*)tx_mbuf_[i]))) {
          net_stats_app_enqueue_stalls();
        }
      }
      net_stats_app_tx(kAppBatchSize * kAppGeneratePktsNum);
      net_stats_app_tx_duration();
    }

    /// App rx phase
    void app_handler() {
      net_stats_app_rx_start();
      size_t rx_size = rx_queue_->get_size();
      if (rx_size < kAppGeneratePktsNum)
        return;

      size_t msg_num = rx_size / kAppGeneratePktsNum;
      MEM_REG_TYPE *rx_mbuf[kAppGeneratePktsNum] = {nullptr};
      for (size_t i = 0; i < msg_num; i++) {
        for (size_t j = 0; j < kAppGeneratePktsNum; j++) {
          rx_mbuf[j] = (MEM_REG_TYPE*)rx_queue_->dequeue();
          rt_assert(rx_mbuf != nullptr, "Get invalid mbuf!");
        }
        /// TBD: handle the received message
        mbuf_print(rx_mbuf[0]);
        /// release the mbufs
        for (size_t j = 0; j < kAppGeneratePktsNum; j++) {
          de_alloc(rx_mbuf[j]);
        }
      }
      net_stats_app_rx(msg_num * kAppGeneratePktsNum);
      net_stats_app_rx_duration();
    }

    /// Dispatcher tx phase
    void bursted_tx() {
      net_stats_disp_tx_start();
      size_t nb_tx = 0, nb_collect = 0;
      nb_collect = dispatcher_->collect_tx_pkts();
      if (unlikely(nb_collect == 0))
        return;
      if (dispatcher_->get_tx_queue_size() > Dispatcher::kTxBatchSize) {
        nb_tx = dispatcher_->tx_flush();
        // DPERF_INFO("Workspace %u successfully transmit %lu packets\n", ws_id_, nb_tx); 
        net_stats_disp_tx(nb_tx);
      }
      net_stats_disp_tx_duration();
    }

    /// Dispatcher tx phase
    void bursted_rx() {
      net_stats_disp_rx_start();
      size_t nb_rx = 0, nb_dispatched = 0;
      nb_rx = dispatcher_->rx_burst();
      if (likely(nb_rx)){
        // DPERF_INFO("Workspace %u successfully receive %lu packets\n", ws_id_, nb_rx);
        /// TBD: add dispatcher func
      }
      else
        return;
      if (dispatcher_->get_rx_queue_size() > Dispatcher::kRxBatchSize) {
        nb_dispatched = dispatcher_->dispatch_rx_pkts();
        // DPERF_INFO("Workspace %u successfully dispatch %lu packets\n", ws_id_, nb_rx);
        net_stats_disp_rx(nb_dispatched);
      }
      net_stats_disp_rx_duration();
    }
    

  /**
   * ----------------------Util methods----------------------
   */ 
  public:
    /// Sync workspaces within the same workspace context
    void wait() {
      rt_assert(context_ != nullptr, "Workspace is not registered!");
      context_->barrier_->wait();
    }

    /**
     * @brief Methods to allocate/de-allocate/modify mbufs
     * @param mbuf The mbuf is defined by the dispatcher
     * @param mem_reg_ Registered by the dispatcher
    */
    MEM_REG_TYPE * alloc() {
      MEM_REG_TYPE *mbuf = mem_reg_->alloc_(mem_reg_->dispatcher_mr_);
      return mbuf;
    }

    void de_alloc(MEM_REG_TYPE *mbuf) {
      mem_reg_->de_alloc_(mbuf);
    }

    void set_payload(MEM_REG_TYPE *mbuf, char* udp_header, char* ws_header, char *payload, size_t payload_size) {
      mem_reg_->set_payload_(mbuf, udp_header, ws_header, payload, payload_size);
    }
    
    size_t get_RX_ring_size() {
      return dispatcher_->kNumRxRingEntries;
    }

    uint8_t get_ws_id() {
      return ws_id_;
    }

    uint8_t get_ws_type() {
      return ws_type_;
    }

    uint8_t get_workload_type() {
      rt_assert(workload_type_ != kInvalidWorkloadType, "This workspace has no workload type!");
      return workload_type_;
    }

    double get_freq() {
      return freq_ghz_;
    }

    /**
     * @brief Get the memory_region_info from workspace->dispatcher
     * @throw runtime_error if workspace is not a dispatcher
    */
    Dispatcher::mem_reg_info<MEM_REG_TYPE> * get_mem_reg() {
      rt_assert(ws_type_ & DISPATCHER, "Cannot get memory region, invalid workspace type");
      return dispatcher_->get_mem_reg();
    }
  
  /**
   * ----------------------Internal Parameters----------------------
   */
  public:
    /// Tx/Rx queues in application level
    lock_free_queue* rx_queue_ = new lock_free_queue();
    lock_free_queue* tx_queue_ = new lock_free_queue();
  private:   
    const uint8_t ws_id_;
    const uint8_t ws_type_;     // ws type: dispatcher (2b'01), worker (2b'10), or both (2b'11)
    const uint8_t numa_node_;   // numa node that the workspace is located
    const uint8_t phy_port_;    // datapath physical port, typically refers to a NIC port
    WsContext *context_ = nullptr;
    // size_t loop_tsc_ = 0;

    /// Parameters for pipeline
    std::vector<phase_t> *ws_loop_ = nullptr;
    /// Application related parameters
    Dispatcher::mem_reg_info<MEM_REG_TYPE> *mem_reg_ = nullptr;     // registered by the dispatcher
    MEM_REG_TYPE *tx_mbuf_[kAppGeneratePktsNum * kAppBatchSize] = {nullptr};
    uint8_t workload_type_ = kInvalidWorkloadType; 
    uint8_t dispatcher_ws_id_ = kInvalidWsId;                  // A group of worker workspaces only have one dispatcher
    RuleTable *tx_rule_table_ = new RuleTable();
    /// Dispatcher related parameters
    TDispatcher *dispatcher_ = nullptr;

    /// Statistical parameters
    double freq_ghz_ = 0.0;
    struct net_stats *stats_ = new struct net_stats();
    bool stats_init_ws_ = false;
};

#define FORCE_COMPILE_DISPATCHER template class Workspace<DpdkDispatcher>;
}
