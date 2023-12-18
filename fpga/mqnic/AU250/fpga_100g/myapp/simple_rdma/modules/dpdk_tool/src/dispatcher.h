/**
 * @file dispatcher.h
 * @brief General definitions for all dispatcher types. A Dispather instance encapsulate driver codes.
 */
#pragma once
#include "common.h"
#include "util/math_utils.h"
#include "dispatcher_impl/ethhdr.h"
#include "dispatcher_impl/iphdr.h"

#include <net/ethernet.h>
#include <netinet/ip.h>
#include <netinet/udp.h>

#include <functional>
#include <unordered_map>

namespace dperf {
/// The avialable transport backend implementations. RoCE transport is
/// implemented through minor modifications to InfiniBand transport via the
/// kIsRoCE config parameter.
enum class DispatcherType { kDPDK };

/// Generic dispatcher class defination
class Dispatcher {
  /**
   * ----------------------Parameters in dispatcher level----------------------
   */ 
  public:
    static constexpr size_t kNumRxRingEntries = 1024;
    static_assert(is_power_of_two<size_t>(kNumRxRingEntries), "The num of RX ring entries is not power of two.");
    static constexpr size_t kNumTxRingEntries = 1024;
    static_assert(is_power_of_two<size_t>(kNumTxRingEntries), "The num of TX ring entries is not power of two.");
    static constexpr size_t kSizeMemPool = 4096 - 1;  // mbuf pool size
    static constexpr size_t kMTU = 1024;
    static constexpr size_t kMaxPayloadSize = kMTU - sizeof(iphdr) - sizeof(udphdr);
    /// Maximum number of transmitted packets in tx_burst
    static constexpr size_t kTxBatchSize = 32;
    /// Maximum number of packets received in rx_burst
    static constexpr size_t kRxBatchSize = 32;
    static constexpr uint16_t kDefaultUdpPort = 10010;
    const char* kLocalIpStr = "10.0.2.102";
    const char* kRemoteIpStr = "10.0.2.101";
    static constexpr eth_addr kRemoteMac = {0x10, 0x70, 0xfd, 0x6b, 0x93, 0x5c};

  /**
   * ----------------------Dispatcher internal structures----------------------
   */ 
  public:

    /// Generic struct to store memory registration info for any dispatcher.
    template <typename T>
    struct mem_reg_info {
      void* dispatcher_mr_;     ///< The dispatcher-specific memory region (eg, ibv_mr, dpdk mempool)
      using alloc_t = T*(*)(void*);
      using de_alloc_t = void(*)(T*);
      using set_payload_t = void(*)(T*, char*, char*, char*, size_t);
      alloc_t alloc_;
      de_alloc_t de_alloc_;
      set_payload_t set_payload_;

      // Constructor to initialize the function pointer
      mem_reg_info(void* mr, alloc_t alloc, de_alloc_t de_alloc, set_payload_t set_payload) 
                    : dispatcher_mr_(mr), alloc_(alloc), de_alloc_(de_alloc), set_payload_(set_payload) {}
    };

  /**
   * ----------------------Dispatcher methods----------------------
   */ 
  public:
    /**
     * @brief Base class definiation of Dispatcher.
     *
     * @param phy_port An Workspace object uses one port on a "datapath" NIC, which
     * refers to a NIC that supports DPDK. phy_port is the zero-based index of 
     * that port among active ports, same as the one passed to
     * `rte_eth_dev_info_get` for the DPDK transpor. Multiple Workspace objects may 
     * use the same phy_port.
     *
     * @throw runtime_error if construction fails
     */
    Dispatcher(DispatcherType, uint8_t ws_id, uint8_t phy_port, size_t numa_node); // Fake dispatcher
    ~Dispatcher();

  /**
   * ----------------------Util methods----------------------
   */ 
  public:
    static std::string get_name(DispatcherType transport_type) {
      switch (transport_type) {
        case DispatcherType::kDPDK: return "[DPDK]";
      }
      throw std::runtime_error("eRPC: Invalid transport");
    }

  /**
   * ----------------------Internal Parameters----------------------
   */   
  public:
    const DispatcherType dispatcher_type_;
    const uint8_t phy_port_;  ///< 0-based index among active fabric ports  
    const size_t numa_node_;

};
}

/**
 * ----------------------Include sub-class of Dispatcher----------------------
 */ 
#include "dispatcher_impl/dpdk/dpdk_dispatcher.h"

