/**
 * @file dpdk_datapath.h
 * @brief Transmit / Receive packets with a DPDK NIC
 */
#pragma once
#include "common.h"
#include "dispatcher.h"
#include "util/logger.h"
#include "util/numautils.h"
#include "util/lock_free_queue.h"
#include "util/rule_table.h"
#include "dispatcher_impl/ethhdr.h"
#include "dispatcher_impl/iphdr.h"
#include "ws_impl/ws_hdr.h"
#include "mbuf_util.h"

#include <rte_common.h>
#include <rte_config.h>
#include <rte_errno.h>
#include <rte_ethdev.h>
#include <rte_ip.h>
#include <rte_mbuf.h>
#include <rte_thash.h>
#include <signal.h>
#include <iomanip>
#include <set>
#include <stdexcept>
#include <netinet/udp.h>
#include <unordered_map>
#include <vector>

namespace dperf {

class DpdkDispatcher : public Dispatcher {
  /**
   * ----------------------Parameters of DPDK----------------------
   */ 
  public:
    enum class DpdkProcType { kPrimary, kSecondary };
    static constexpr size_t kInvalidQpId = SIZE_MAX;
     // XXX: ixgbe does not support fast free offload, but i40e does
    static constexpr uint32_t kOffloads = RTE_ETH_TX_OFFLOAD_MULTI_SEGS;

    /// Number of mbufs in each mempool (one per Transport instance). The DPDK
    /// docs recommend power-of-two minus one mbufs per pool for best utilization.
    // static constexpr size_t kNumMbufs = (kNumRxRingEntries * 2 - 1);

    /// Per-element size for the packet buffer memory pool
    static constexpr size_t kMbufSize =
        (static_cast<uint32_t>(sizeof(struct rte_mbuf)) + RTE_PKTMBUF_HEADROOM + 2048); 

    /// Maximum data bytes (i.e., non-header) in a packet
    // static constexpr size_t kMaxDataPerPkt = (kMTU - sizeof(pkthdr_t));

    static constexpr size_t kRssKeySize = 40;  /// RSS key size in bytes
    /// Key used for RSS hashing
    static constexpr uint8_t kDefaultRssKey[kRssKeySize] = {
        0x2c, 0xc6, 0x81, 0xd1, 0x5b, 0xdb, 0xf4, 0xf7, 0xfc, 0xa2,
        0x83, 0x19, 0xdb, 0x1a, 0x3e, 0x94, 0x6b, 0x9e, 0x38, 0xd9,
        0x2c, 0x9c, 0x03, 0xd1, 0xad, 0x99, 0x44, 0xa7, 0xd9, 0x56,
        0x3d, 0x59, 0x06, 0x3c, 0x25, 0xf3, 0xfc, 0x1f, 0xdc, 0x2a,
    };

  /**
   * ----------------------DPDK internal structures----------------------
   */ 
  public:
    /**
     * @brief Memzone created by the DPDK daemon process, shared by all DPDK processes.
     * Memzone maintains the queue pair status.
     */
    struct ownership_memzone_t {
      private:
        std::mutex mutex_;  /// Guard for reading/writing to the memzone
        size_t epoch_;      /// Incremented after each QP ownership change attempt
        size_t num_qps_available_;

        struct {
          /// pid_ is the PID of the process that owns QP #i. Zero means
          /// the corresponding QP is free.
          int pid_;

          /// proc_random_id_ is a random number installed by the process that owns
          /// QP #i. This is used to defend against PID reuse.
          size_t proc_random_id_;
        } owner_[kMaxPhyPorts][kMaxQueuesPerPort];

      public:
        struct rte_eth_link link_[kMaxPhyPorts];  /// Resolved link status

        void init() {
          new (&mutex_) std::mutex();  // Fancy in-place construction
          num_qps_available_ = kMaxQueuesPerPort;
          epoch_ = 0;
          memset(owner_, 0, sizeof(owner_));
        }

        size_t get_epoch() {
          const std::lock_guard<std::mutex> guard(mutex_);
          return epoch_;
        }

        size_t get_num_qps_available() {
          const std::lock_guard<std::mutex> guard(mutex_);
          return num_qps_available_;
        }

        std::string get_summary(size_t phy_port) {
          const std::lock_guard<std::mutex> guard(mutex_);
          std::ostringstream ret;
          ret << "[" << num_qps_available_ << " QPs of " << kMaxQueuesPerPort
              << " available] ";

          if (num_qps_available_ < kMaxQueuesPerPort) {
            ret << "[Ownership: ";
            for (size_t i = 0; i < kMaxQueuesPerPort; i++) {
              auto &owner = owner_[phy_port][i];
              if (owner.pid_ != 0) {
                ret << "[QP #" << i << ", "
                    << "PID " << owner.pid_ << "] ";
              }
            }
            ret << "]";
          }

          return ret.str();
        }

        /**
         * @brief Try to get a free QP
         *
         * @param phy_port The DPDK port ID to try getting a free QP from
         * @param proc_random_id A unique random process ID of the calling process
         *
         * @return If successful, the machine-wide global index of the free QP
         * reserved on phy_port. Else return kInvalidQpId.
         */
        size_t get_qp(size_t phy_port, size_t proc_random_id) {
          const std::lock_guard<std::mutex> guard(mutex_);
          epoch_++;
          const int my_pid = getpid();

          // Check for sanity
          for (size_t i = 0; i < kMaxQueuesPerPort; i++) {
            auto &owner = owner_[phy_port][i];
            if (owner.pid_ == my_pid && owner.proc_random_id_ != proc_random_id) {
              DPERF_ERROR(
                  "DPerf Dispatcher: Found another process with same PID (%d) as "
                  "mine. Process random IDs: mine %zu, other: %zu\n",
                  my_pid, proc_random_id, owner.proc_random_id_);
              return kInvalidQpId;
            }
          }

          for (size_t i = 0; i < kMaxQueuesPerPort; i++) {
            auto &owner = owner_[phy_port][i];
            if (owner.pid_ == 0) {
              owner.pid_ = my_pid;
              owner.proc_random_id_ = proc_random_id;
              num_qps_available_--;
              return i;
            }
          }
          return kInvalidQpId;
        }

        /**
         * @brief Try to return a QP that was previously reserved from this
         * ownership manager
         *
         * @param phy_port The DPDK port ID to try returning the QP to
         * @param qp_id The QP ID returned by this manager during reservation
         *
         * @return 0 if success, else errno
         */
        int free_qp(size_t phy_port, size_t qp_id) {
          const std::lock_guard<std::mutex> guard(mutex_);
          const int my_pid = getpid();
          epoch_++;
          auto &owner = owner_[phy_port][qp_id];
          if (owner.pid_ == 0) {
            DPERF_ERROR("DPerf Dispatcher: PID %d tried to already-free QP %zu.\n",
                      my_pid, qp_id);
            return EALREADY;
          }

          if (owner.pid_ != my_pid) {
            DPERF_ERROR(
                "DPerf Dispatcher: PID %d tried to free QP %zu owned by PID "
                "%d. Disallowed.\n",
                my_pid, qp_id, owner.pid_);
            return EPERM;
          }

          num_qps_available_++;
          owner_[phy_port][qp_id].pid_ = 0;
          return 0;
        }

        /// Free-up QPs reserved by processes that exited before freeing a QP.
        /// This is safe, but it can leak QPs because of PID reuse.
        void daemon_reclaim_qps_from_crashed(size_t phy_port) {
          const std::lock_guard<std::mutex> guard(mutex_);

          for (size_t i = 0; i < kMaxQueuesPerPort; i++) {
            auto &owner = owner_[phy_port][i];
            if (kill(owner.pid_, 0) != 0) {
              // This means that owner.pid_ is dead
              DPERF_WARN("DPerf Primary Dispatcher: Reclaiming QP %zu from crashed PID %d\n",
                        i, owner.pid_);
              num_qps_available_++;
              owner_[phy_port][i].pid_ = 0;
            }
          }
        }
    };

    /**
     * ----------------------DpdkDispatcher methods----------------------
     */ 
    public:
    // Class Init
    DpdkDispatcher(uint8_t ws_id, uint8_t phy_port, size_t numa_node);
    ~DpdkDispatcher();

    // DPDK Setup
    /// Do DPDK initialization for \p phy_port as a primary or secondary DPDK
    /// process type. \p phy_port must not have been already initialized.
    static void setup_phy_port(uint16_t phy_port, size_t numa_node,
                              DpdkProcType proc_type);

    // Defined in dpdk_dispatcher_dataplane.cc
    /**
     * @brief This method will iterate all workspaces in the workspace context 
     * and collect packets from their worker queues. 
    */
    size_t collect_tx_pkts();

    /**
     * @brief Flush the dispatcher tx queue to the NIC. Workspace will be blocked
     * until all packets are sent
    */
    size_t tx_flush();

    /// Generate a IP+UDP packet
    void set_pkt_hdr(rte_mbuf *m);
    /// return UDP dport
    uint8_t resolve_pkt_hdr(rte_mbuf *m);

    /**
     * @brief Receive packets from the NIC and put them into the dispatcher rx queue.
    */
    size_t rx_burst();
    /// resolve IP+IP packets
    // static inline void resolve_pkt_hdr(rte_mbuf *m);

    /**
     * @brief Dispatch packets from the dispatcher rx queue to the worker rx queue 
     * based on packet UDP field. Workspace will be blocked until all packets are
     * dispatched.
    */
    size_t dispatch_rx_pkts();

  /**
   * ----------------------Util methods----------------------
   */ 
  public:
    /// Get the mempool name to use for this port and queue pair ID
    static std::string get_mempool_name(size_t phy_port, size_t qp_id) {
      const std::string ret = std::string("dperf-mp-") + std::to_string(phy_port) +
                              std::string("-") + std::to_string(qp_id);
      rt_assert(ret.length() < RTE_MEMPOOL_NAMESIZE, "Mempool name too long");
      return ret;
    }

    static std::string dpdk_strerror() {
      return std::string(rte_strerror(rte_errno));
    }

    mem_reg_info<rte_mbuf> * get_mem_reg() {
      return mem_reg_info_;
    }

    rte_mempool * get_mempool() {
      return mempool_;
    }

    size_t get_tx_queue_size() {
      return tx_queue_idx_;
    }

    size_t get_rx_queue_size() {
      return rx_queue_idx_;
    }

    void add_ws_tx_queue(lock_free_queue *queue) {
      ws_tx_queues_.push_back(queue);
    }

    uint8_t get_ws_tx_queue_size() {
      return ws_tx_queues_.size();
    }

    void add_ws_rx_queue(uint8_t ws_id, lock_free_queue *queue) {
      ws_rx_queues_[ws_id] = queue;
    }

    void add_rx_rule(uint8_t workload_type, uint8_t ws_id) {
      rx_rule_table_->add_route(workload_type, ws_id);
    }

  /**
   * ----------------------Internal Parameters----------------------
   */ 
  private:
    DpdkDispatcher::DpdkProcType dpdk_proc_type_;
    size_t qp_id_ = kInvalidQpId;    ///< The RX/TX queue pair for this Transport
    // We don't use DPDK's lcore threads, so a shared mempool with per-lcore
    // cache won't work. Instead, we use per-thread pools with zero cached mbufs.
    rte_mempool *mempool_;
    mem_reg_info<rte_mbuf> *mem_reg_info_;
    /// Info resolved from \p phy_port, must be filled by constructor.
    struct {
      ipaddr_t ipv4_addr_;   // The port's IPv4 address in host-byte order
      eth_addr mac_addr_;    // The port's MAC address
      size_t bandwidth_;     // Link bandwidth in bytes per second
      size_t reta_size_;     // Number of entries in NIC RX indirection table
    } resolve_;
    eth_addr *dmac_ = nullptr;
    ipaddr_t *daddr_ = nullptr;
    /// tx / rx queue in dispatcher level
    struct rte_mbuf *tx_queue_[kNumTxRingEntries];
    struct rte_mbuf *rx_queue_[kNumRxRingEntries];
    size_t tx_queue_idx_ = 0, rx_queue_idx_ = 0;

    /// worker queues
    uint8_t ws_queue_idx_ = 0;
    std::vector<lock_free_queue*> ws_tx_queues_;
    lock_free_queue* ws_rx_queues_[kWorkspaceMaxNum] = {nullptr};  // Map ws_id to ws_queue

    /// Rule table for tx/rx packets to/from remote workspaces
    RuleTable *rx_rule_table_ = new RuleTable();

  /**
   * ----------------------Internal Methods----------------------
   */
  private:
    /**
     * @brief Resolve fields in \p resolve using \p phy_port
     * @throw runtime_error if the port cannot be resolved
     */
    void resolve_phy_port();

    /// Initialize the memory registration and deregistration functions
    void init_mem_reg_funcs();

    /// dpdk dataplane methods
    /// Poll for packets on this transport's RX queue until there are no more
    /// packets left
    void drain_rx_queue();
};

}