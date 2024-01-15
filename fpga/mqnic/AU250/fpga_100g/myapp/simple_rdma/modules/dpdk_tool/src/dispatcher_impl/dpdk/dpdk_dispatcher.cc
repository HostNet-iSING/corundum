#include "dpdk_dispatcher.h"
#include "dpdk_externs.h"

namespace dperf {
/**
 * ----------------------DpdkDispatcher methods----------------------
 */ 
DpdkDispatcher::DpdkDispatcher(uint8_t ws_id, uint8_t phy_port, size_t numa_node)
  : Dispatcher(DispatcherType::kDPDK, ws_id, phy_port, numa_node) {
  // The first thread to grab the lock initializes DPDK (as DPDK daemon process)
  g_dpdk_lock.lock();
  if (g_dpdk_initialized) {
    DPERF_INFO("DPDK dispatcher for Workspace %u is skipping DPDK EAL initialization.\n", ws_id);
    dpdk_proc_type_ = ((rte_eal_process_type() == RTE_PROC_PRIMARY)
                        ? DpdkProcType::kPrimary
                        : DpdkProcType::kSecondary);
  } else {
    DPERF_INFO("DPDK dispatcher for Workspace %u is initializing DPDK EAL.\n", ws_id);
    // clang-format off
    const char *rte_argv[] = {
        "-c",            "0x0",
        "-n",            "6",  // Memory channels
        "-m",            "1024", // Max memory in megabytes
        "-a",            "0000:17:00.0",
        "--proc-type",   "auto",
        "--log-level",   (DPERF_LOG_LEVEL >= DPERF_LOG_LEVEL_INFO) ? "8" : "0",
        nullptr};
    // clang-format on
    const int rte_argc =
        static_cast<int>(sizeof(rte_argv) / sizeof(rte_argv[0])) - 1;
    int ret = rte_eal_init(rte_argc, const_cast<char **>(rte_argv));
    rt_assert(ret >= 0, "Failed to initialize DPDK");
    dpdk_proc_type_ = ((rte_eal_process_type() == RTE_PROC_PRIMARY)
                            ? DpdkProcType::kPrimary
                            : DpdkProcType::kSecondary);
    // Create a fake memzone
    g_memzone = new ownership_memzone_t();
    g_memzone->init();
    g_dpdk_initialized = true;
  }
  // Get an available queue on phy_port
  qp_id_ = g_memzone->get_qp(phy_port, 33 /* XXX */);
  if (qp_id_ != kInvalidQpId) {
    DPERF_INFO("DPDK dispatcher for Ws %u got QP %zu\n", ws_id, qp_id_);
  } else {
    DPERF_ERROR(
        "DPDK dispatcher for Ws %u failed to get a free TX/RQ queue pair. "
        "All %zu available queue pairs are in use by Workspace objects.\n",
        ws_id, kMaxQueuesPerPort);
    throw std::runtime_error("Failed to get DPDK QP");
  }
  // Init mempool
  const std::string mempool_name = get_mempool_name(phy_port, qp_id_);
  if (dpdk_proc_type_ == DpdkProcType::kSecondary) {
    // The DPerf DPDK management daemon has already initialized phy_port
    mempool_ = rte_mempool_lookup(mempool_name.c_str());
    rt_assert(mempool_ != nullptr,
            std::string("Failed to find DPerf DPDK daemon's mempool ") +
                mempool_name.c_str());
    drain_rx_queue();

    const size_t n_avail = rte_mempool_avail_count(mempool_);
    if (n_avail < kSizeMemPool) {
      DPERF_WARN(
          "DPDK dispatcher for Ws %u: Mempool has only %zu free mbufs "
          "out of %zu. %zu mbufs have been leaked by previous processes that "
          "owned this mempool.\n",
          ws_id, n_avail, kSizeMemPool, (kSizeMemPool - n_avail));
    }
  } else {
    if (!g_port_initialized[phy_port]) {
      g_port_initialized[phy_port] = true;
      setup_phy_port(phy_port, numa_node, DpdkProcType::kPrimary);
      setup_corundum(phy_port);
    }

    mempool_ = rte_mempool_lookup(mempool_name.c_str());
    rt_assert(
        mempool_ != nullptr,
        std::string("Failed to find self's mempool ") + mempool_name.c_str());
  }
  g_dpdk_lock.unlock();

  resolve_phy_port();
  dmac_ = new eth_addr;
  memcpy(dmac_, &kRemoteMac, sizeof(eth_addr));
  daddr_ = new ipaddr_t;
  ipaddr_init(daddr_, kRemoteIpStr);
  init_mem_reg_funcs();

  DPERF_WARN(
      "DpdkDispatcher created for Workspace ID %u, queue %zu\n",
      ws_id, qp_id_);
}
DpdkDispatcher::~DpdkDispatcher(){
  DPERF_INFO("Destroying dispatcher for ID %lu\n", qp_id_);
  drain_rx_queue();

  int ret = g_memzone->free_qp(phy_port_, qp_id_);
  rt_assert(ret == 0, "Failed to free QP\n");
}

void DpdkDispatcher::resolve_phy_port() {
  struct rte_ether_addr mac;
  rte_eth_macaddr_get(phy_port_, &mac);
  memcpy(&resolve_.mac_addr_.bytes, &mac.addr_bytes, sizeof(resolve_.mac_addr_.bytes));

  ipaddr_init(&resolve_.ipv4_addr_, kLocalIpStr);

  // Resolve RSS indirection table size
  struct rte_eth_dev_info dev_info;
  rte_eth_dev_info_get(phy_port_, &dev_info);

  const std::string drv_name = dev_info.driver_name;
  // rt_assert(drv_name == "net_mlx4" or drv_name == "net_mlx5" or
  //               drv_name == "mlx5_pci",
  //           "DPerf supports only mlx4 or mlx5 devices with DPDK");

  // if (std::string(dev_info.driver_name) == "net_mlx4") {
  //   // MLX4 NICs report a reta size of zero, but they use 128 internally
  //   rt_assert(dev_info.reta_size == 0,
  //             "Unexpected RETA size for MLX4 NIC (expected zero)");
  //   resolve_.reta_size_ = 128;
  // } else {
  //   resolve_.reta_size_ = dev_info.reta_size;
  //   rt_assert(resolve_.reta_size_ >= kMaxQueuesPerPort,
  //             "Too few entries in NIC RSS indirection table");
  // }

  // Resolve bandwidth. XXX: For some reason, rte_eth_link_get() does not work
  // in secondary DPDK processes (up to DPDK 21.05).
  struct rte_eth_link link;
  if (dpdk_proc_type_ == DpdkProcType::kPrimary) {
    rte_eth_link_get(static_cast<uint8_t>(phy_port_), &link);
    rt_assert(link.link_status == RTE_ETH_LINK_UP,
              "Port " + std::to_string(phy_port_) + " is down.");
  } else {
    link = g_memzone->link_[phy_port_];
  }

  if (link.link_speed != RTE_ETH_SPEED_NUM_NONE) {
    // link_speed is in Mbps. The 10 Gbps check below is just a sanity check.
    rt_assert(link.link_speed >= 10000, "Link too slow");
    resolve_.bandwidth_ =
        static_cast<size_t>(link.link_speed) * 1000 * 1000 / 8.0;
  } else {
    DPERF_WARN(
        "Port %u bandwidth not reported by DPDK. Using default 10 Gbps.\n",
        phy_port_);
    link.link_speed = 10000;
    resolve_.bandwidth_ = 10.0 * (1000 * 1000 * 1000) / 8.0;
  }

  char mac_str[64];
  eth_addr_to_str(&resolve_.mac_addr_, mac_str);
  DPERF_INFO(
      "Resolved port %u: MAC %s, IPv4 %u.%u.%u.%u, RETA size %zu entries, bandwidth "
      "%.1f Gbps\n",
      phy_port_, mac_str,
      IPV4_STR(resolve_.ipv4_addr_.ip), resolve_.reta_size_,
      resolve_.bandwidth_ * 8.0 / (1000 * 1000 * 1000));
}

/// Mbuf allocation function
rte_mbuf * dpdk_mbuf_alloc(void *mempool) {
  rte_mbuf *mbuf = rte_pktmbuf_alloc((rte_mempool*)(mempool));
  return mbuf;
}

/// Mbuf de-allocation function
void dpdk_mbuf_de_alloc(rte_mbuf *mbuf) { 
  rte_pktmbuf_free(mbuf);  
  return;
}

/// Set mbuf payload
void dpdk_set_mbuf_paylod(rte_mbuf *mbuf, char* uh, char* ws_header, size_t payload_size) {
  uint8_t *ret = NULL;
  ret = mbuf_push_data(mbuf, TOTAL_HEADER_LEN + payload_size);

  rte_memcpy(mbuf_udp_hdr(mbuf), uh, sizeof(udphdr)); 
  rte_memcpy(mbuf_ws_hdr(mbuf), ws_header, sizeof(ws_hdr));
  char* payload_ptr = mbuf_ws_payload(mbuf);
  memset(payload_ptr, 'a', payload_size - 1);
  payload_ptr[payload_size - 1] = '\0'; 
}

void DpdkDispatcher::init_mem_reg_funcs() {
  mem_reg_info_ = new mem_reg_info<rte_mbuf>(mempool_, &dpdk_mbuf_alloc, &dpdk_mbuf_de_alloc, &dpdk_set_mbuf_paylod);
}

}