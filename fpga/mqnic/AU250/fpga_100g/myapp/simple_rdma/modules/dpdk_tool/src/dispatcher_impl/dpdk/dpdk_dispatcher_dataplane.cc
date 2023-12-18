/**
 * @file dpdk_dispatcher_dataplane.cc
 * @brief Define Transmit / Receive functions of DPDK
 */
#include "dpdk_dispatcher.h"
namespace dperf{

/// Generate a IP+UDP packet
void DpdkDispatcher::set_pkt_hdr(rte_mbuf *m) {
  struct eth_hdr *eth = NULL;
  struct iphdr *iph = NULL;
  struct udphdr *uh = NULL;
  eth = mbuf_eth_hdr(m);
  iph = mbuf_ip_hdr(m);
  uh = mbuf_udp_hdr(m);

  /// set eth header
  eth->type = htons(ETHERTYPE_IP);
  rte_memcpy(eth->s_addr.bytes, resolve_.mac_addr_.bytes, ETH_ADDR_LEN);
  rte_memcpy(eth->d_addr.bytes, dmac_->bytes, ETH_ADDR_LEN);

  /// set ip header
  iph->saddr = resolve_.ipv4_addr_.ip;
  iph->daddr = daddr_->ip;

  /// set udp header completely
  uh->source += kDefaultUdpPort;
  uh->dest += kDefaultUdpPort;
}

uint8_t DpdkDispatcher::resolve_pkt_hdr(rte_mbuf *m) {
  struct ws_hdr *wh = NULL;
  wh = mbuf_ws_hdr(m);
  return wh->workload_type_;
}

/// Collect mbufs from all workers' tx queues with Round-Robin mode
size_t DpdkDispatcher::collect_tx_pkts() {
  size_t remain_ring_size = kNumTxRingEntries - tx_queue_idx_;
  uint8_t nb_collect_queue = 0;
  size_t nb_collect_num = 0;
  while (remain_ring_size && nb_collect_queue < ws_tx_queues_.size()) {
    /// select a workspace tx queue
    lock_free_queue *worker_queue = ws_tx_queues_[ws_queue_idx_];
    size_t tx_size = (worker_queue->get_size() > remain_ring_size) 
                          ? remain_ring_size : worker_queue->get_size();
    // printf("%lu, %lu\n", worker_queue->head_, worker_queue->tail_);
    for (size_t i = 0; i < tx_size; i++) {
      tx_queue_[tx_queue_idx_] = (rte_mbuf*)worker_queue->dequeue();
      set_pkt_hdr(tx_queue_[tx_queue_idx_]);
      tx_queue_idx_++;
    }
    ws_queue_idx_ = (ws_queue_idx_ + 1) % ws_tx_queues_.size();
    nb_collect_queue++;
    remain_ring_size -= tx_size;
    nb_collect_num += tx_size;
  }
  return nb_collect_num;
}

size_t DpdkDispatcher::dispatch_rx_pkts() {
  // /// dispatch rx_burst packets to worker rx queue; flush the rx queue
  // size_t dispatch_total = 0;
  // lock_free_queue *worker_queue = nullptr;
  // uint8_t worload_type = 0;
  // for (size_t i = 0; i < rx_queue_idx_; i++) {
  //   /// resolve pkt header to get workload_type
  //   worload_type = resolve_pkt_hdr(rx_queue_[i]);
  //   /// get corresponding workspace id
  //   uint8_t ws_id = rx_rule_table_->random_select(worload_type);
  //   /// get workspace rx queue
  //   worker_queue = ws_rx_queues_[ws_id];
  //   /// dispatch to worker rx queue
  //   while(!worker_queue->enqueue((uint8_t*)rx_queue_[i]));
  //   dispatch_total++;
  // }
  // // /// free rx-failed mbufs and reset the rx queue index
  // // for (size_t i = dispatch_total; i < rx_queue_idx_; i++)
  // //   rte_pktmbuf_free(rx_queue_[i]);

  /// ----------DEBUG---------
  size_t dispatch_total = 0;
  for (size_t i = 0; i < rx_queue_idx_; i++) {
    // char *payload = rte_pktmbuf_mtod_offset(rx_queue_[i], char*, 0);
    char *payload = mbuf_ws_payload(rx_queue_[i]);
    printf("payload: %s\n", payload);
    rte_pktmbuf_free(rx_queue_[i]);
    dispatch_total++;
  }


  rx_queue_idx_ = 0;
  return dispatch_total;
}

size_t DpdkDispatcher::tx_flush(){
  /// flush the tx queue
  size_t nb_tx = 0, tx_total = 0;
  rte_mbuf **tx = &tx_queue_[0];
  while(tx_total < tx_queue_idx_) {
    nb_tx = rte_eth_tx_burst(phy_port_, qp_id_, tx, tx_queue_idx_ - tx_total);
    tx += nb_tx;
    tx_total += nb_tx;
  }
  // rt_assert(tx_total == tx_queue_idx_, "Failed to transmit all packets\n");
  // /// free tx-failed mbufs and reset the tx queue index
  // for (size_t i = tx_total; i < tx_queue_idx_; i++)
  //   rte_pktmbuf_free(tx_queue_[i]);
  tx_queue_idx_ = 0;
  return tx_total;
}

size_t DpdkDispatcher::rx_burst(){
  size_t nb_rx = 0;
  rte_mbuf **rx = &rx_queue_[rx_queue_idx_];
  // insert rx pkts to rx queue
  nb_rx = rte_eth_rx_burst(phy_port_, qp_id_, rx, kNumRxRingEntries - rx_queue_idx_);
  rx_queue_idx_ += nb_rx;
  return nb_rx;
}

void DpdkDispatcher::drain_rx_queue(){
  struct rte_mbuf *rx_pkts[kRxBatchSize];
  while (true) {
    size_t nb_rx_new =
        rte_eth_rx_burst(phy_port_, qp_id_, rx_pkts, kRxBatchSize);
    if (nb_rx_new == 0) return;
    for (size_t i = 0; i < nb_rx_new; i++) rte_pktmbuf_free(rx_pkts[i]);
  }
}

} // namespace dperf
