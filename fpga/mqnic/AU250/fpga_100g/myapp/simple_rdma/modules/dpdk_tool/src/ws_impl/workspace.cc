/**
 * @file workspace.cc
 * @brief Executing workspace of a datapath pipeline. In theory, workspace can
 * be called by various thread library such as pthread, datapath OS, DOCA, etc.
 */
#include "workspace.h"

namespace dperf {

template <class TDispatcher>
Workspace<TDispatcher>::Workspace(WsContext *context, uint8_t ws_id, uint8_t ws_type, 
                                  uint8_t numa_node, uint8_t phy_port, 
                                  std::vector<dperf::phase_t> *ws_loop,
                                  UserConfig *user_config)
    : context_(context),
      ws_id_(ws_id),
      ws_type_(ws_type),
      numa_node_(numa_node),
      phy_port_(phy_port),
      ws_loop_(ws_loop) {

  if (ws_type_ == 0) {
    DPERF_INFO("Workspace %u is not used\n", ws_id_);
    return;
  }

  // Parameter Check
  rt_assert(ws_type_ != kInvaildWorkspaceType, "Invalid workspace type");
  rt_assert(phy_port < kMaxPhyPorts, "Invalid physical port");
  rt_assert(numa_node_ < kMaxNumaNodes, "Invalid NUMA node");

  /* Init workspace, phase 1 */
  if (ws_type_ & WORKER) {
    workload_type_ = user_config->workloads_config_->ws_id_workload_map[ws_id_];
    uint8_t group_idx = user_config->workloads_config_->ws_id_group_idx_map[ws_id_];
    dispatcher_ws_id_ = user_config->workloads_config_->workload_dispatcher_map[workload_type_][group_idx];
    /// config tx rule table
    for (auto &remote_dispatcher_ws_id : user_config->workloads_config_->workload_remote_dispatcher_map[workload_type_]) {
      tx_rule_table_->add_route(workload_type_, remote_dispatcher_ws_id);
    }
    printf("Workspace %u is assigned to workload %u, dispatcher %u\n", ws_id_, workload_type_, dispatcher_ws_id_);
  }
  if (ws_type_ & DISPATCHER) {
    dispatcher_ = new TDispatcher(ws_id_, phy_port_, numa_node_);
  }
  // Register this workspace to ws context. Then, workspace can communicate with
  // each other through ws context.
  register_ws();

  // Wait for all workspaces to be registered
  wait();

  /* Init workspace, phase 2 */
  if (ws_type_ & WORKER) {
    set_mem_reg();
    if (mem_reg_ == nullptr) {
      DPERF_ERROR("Workspace %u cannot get mem_reg\n", ws_id_);
      return;
    }
  }
  if (ws_type_ & DISPATCHER) {
    /// config rx rule table and workspace queues
    set_dispatcher_config();
    if (dispatcher_->get_ws_tx_queue_size() == 0) {
      DPERF_ERROR("Failed to config dispatcher %u\n", ws_id_);
      return;
    }
  }
  wait();   // Force sync before launch
}

template <class TDispatcher>
void Workspace<TDispatcher>::register_ws() {
  std::lock_guard<std::mutex> lock(context_->mutex_);
  rt_assert(context_->ws_[ws_id_] == nullptr, "Workspace already registered!");
  context_->ws_[ws_id_] = this;
  context_->active_ws_id_.push_back(ws_id_);
  if (ws_type_ & WORKER) {
    context_->ws_tx_queue_map_[ws_id_] = tx_queue_;
    context_->ws_rx_queue_map_[ws_id_] = rx_queue_;
    context_->ws_id_dispatcher_map_[ws_id_] = dispatcher_ws_id_;
  }
  if (ws_type_ & DISPATCHER) {
    if (context_->mem_reg_map_.find(ws_id_) != context_->mem_reg_map_.end()) {
      DPERF_ERROR("Dispatcher %u already registered\n", ws_id_);
      return;
    }
    context_->mem_reg_map_.insert(std::make_pair(ws_id_, dispatcher_->get_mem_reg()));
  }
}

template <class TDispatcher>
void Workspace<TDispatcher>::set_mem_reg() {
  std::lock_guard<std::mutex> lock(context_->mutex_);
  mem_reg_ = context_->mem_reg_map_[dispatcher_ws_id_];
}

template <class TDispatcher>
void Workspace<TDispatcher>::set_dispatcher_config() {
  std::lock_guard<std::mutex> lock(context_->mutex_);
  for (auto &ws_id : context_->active_ws_id_) {
    auto it = context_->ws_id_dispatcher_map_.find(ws_id);
    if (it != context_->ws_id_dispatcher_map_.end() && it->second == ws_id_) {
      /// get one worker assigned to this dispatcher
      uint8_t workload_type = context_->ws_[ws_id]->get_workload_type();
      dispatcher_->add_ws_tx_queue(context_->ws_tx_queue_map_[ws_id]);
      dispatcher_->add_ws_rx_queue(ws_id, context_->ws_rx_queue_map_[ws_id]);
      dispatcher_->add_rx_rule(workload_type, ws_id);
    }
  }
}

template <class TDispatcher>
void Workspace<TDispatcher>::launch() {
  for (auto &phase : *ws_loop_) {
    (this->*phase)();
  }
}

template <class TDispatcher>
void Workspace<TDispatcher>::aggregate_stats(perf_stats *g_stats, double freq){
  /// App
  g_stats->app_tx_throughput_ += (double)stats_->app_tx_msg_num / 1e6;
  g_stats->app_rx_throughput_ += (double)stats_->app_rx_msg_num / 1e6;
  if (stats_->app_tx_msg_num )
    g_stats->app_tx_latency_ += to_usec(stats_->app_tx_duration, freq) / stats_->app_tx_msg_num;
  if (stats_->app_rx_msg_num )
    g_stats->app_rx_latency_ += to_usec(stats_->app_rx_duration, freq) / stats_->app_rx_msg_num;

  /// Dispatcher
  g_stats->disp_tx_throughput_ += (double)stats_->disp_tx_pkt_num / 1e6;
  g_stats->disp_rx_throughput_ += (double)stats_->disp_rx_pkt_num / 1e6;
  if (stats_->disp_tx_pkt_num)
    g_stats->disp_tx_latency_ += to_usec(stats_->disp_tx_duration, freq) / stats_->disp_tx_pkt_num;
  if (stats_->disp_rx_pkt_num)
    g_stats->disp_rx_latency_ += to_usec(stats_->disp_rx_duration, freq) / stats_->disp_rx_pkt_num;

  /// NIC
  g_stats->nic_tx_throughput_ += (double)stats_->nic_tx_pkt_num / 1e6;
  g_stats->nic_rx_throughput_ += (double)stats_->nic_rx_pkt_num / 1e6;
  if (stats_->nic_tx_pkt_num)
    g_stats->nic_tx_latency_ += to_usec(stats_->nic_tx_duration, freq) / stats_->nic_tx_pkt_num;
  if (stats_->nic_rx_pkt_num)
    g_stats->nic_rx_latency_ += to_usec(stats_->nic_rx_duration, freq) / stats_->nic_rx_pkt_num;

  /// Diagnose Stats for debugging
  printf("[Workspace %u] Apply mbuf stalls: %lu, App tx drop: %lu\n", ws_id_, stats_->app_apply_mbuf_stalls, stats_->app_enqueue_drops);
  printf("[Workspace %u] TX Breakdown: throughput(App%.2f, Disp%.2f, NIC%.2f), latency(%.2f, %.2f, %.2f)\n", ws_id_, (double)stats_->app_tx_msg_num / 1e6, (double)stats_->disp_tx_pkt_num / 1e6, (double)stats_->nic_tx_pkt_num / 1e6, to_usec(stats_->app_tx_duration, freq) / stats_->app_tx_msg_num, to_usec(stats_->disp_tx_duration, freq) / stats_->disp_tx_pkt_num, to_usec(stats_->nic_tx_duration, freq) / stats_->nic_tx_pkt_num);
  printf("[Workspace %u] RX Breakdown: throughput(App%.2f, Disp%.2f, NIC%.2f), latency(%.2f, %.2f, %.2f)\n", ws_id_, (double)stats_->app_rx_msg_num / 1e6, (double)stats_->disp_rx_pkt_num / 1e6, (double)stats_->nic_rx_pkt_num / 1e6, to_usec(stats_->app_rx_duration, freq) / stats_->app_rx_msg_num, to_usec(stats_->disp_rx_duration, freq) / stats_->disp_rx_pkt_num, to_usec(stats_->nic_rx_duration, freq) / stats_->nic_rx_pkt_num);
}

template <class TDispatcher>
void Workspace<TDispatcher>::update_stats() {
  std::lock_guard<std::mutex> lock(context_->mutex_);
  context_->completed_ws_num_++;
  if (context_->end_signal_) {
    return;
  }
  context_->end_signal_ = true;
  /// The first ws will collect all ws stats
  uint8_t worker_num = 0, dispatcher_num = 0;
  std::vector<double> ws_freq;
  for (auto &ws_id : context_->active_ws_id_) {
    double freq = context_->ws_[ws_id]->get_freq();
    context_->ws_[ws_id]->aggregate_stats(context_->perf_stats_, freq);
    if (context_->ws_[ws_id]->get_ws_type() & WORKER) {
      worker_num++;
    }
    if (context_->ws_[ws_id]->get_ws_type() & DISPATCHER) {
      dispatcher_num++;
    }
    ws_freq.push_back(freq);
  }
  /// Print ws freq for debug
  printf("Workspace freqs: ");
  for (auto &freq : ws_freq) {
    printf("%.2f ", freq);
  }
  printf("\n");
  /// Update latency
  context_->perf_stats_->app_tx_latency_ /= worker_num;
  context_->perf_stats_->app_rx_latency_ /= worker_num;
  context_->perf_stats_->disp_tx_latency_ /= dispatcher_num;
  context_->perf_stats_->disp_rx_latency_ /= dispatcher_num;
  context_->perf_stats_->nic_tx_latency_ /= dispatcher_num;
  context_->perf_stats_->nic_rx_latency_ /= dispatcher_num;
  stats_init_ws_ = true;
}

template <class TDispatcher>
void Workspace<TDispatcher>::run_event_loop_timeout_st(uint8_t iteration, uint8_t seconds) {
  size_t core_idx = get_global_index(numa_node_, ws_id_);
  /// Warmup CPU
  set_cpu_freq_max(core_idx);
  /// Sync and print stats for each one second
  for (size_t i = 0; i < iteration; i++) {
    /// Loop init
    net_stats_init(stats_);
    freq_ghz_  = get_cpu_freq_ghz(core_idx);
    // printf("Ws %u: Current CPU freq is %.2f\n", ws_id_, freq);
    size_t timeout_tsc = ms_to_cycles(1000*seconds, freq_ghz_);
    size_t interval_tsc = us_to_cycles(1.0, freq_ghz_);  // launch an event loop once per one us
    wait();
    /* Start loop */
    size_t start_tsc = rdtsc();
    size_t loop_tsc = start_tsc;
    while (true) {
      if (rdtsc() - loop_tsc > interval_tsc) {
        loop_tsc = rdtsc();
        launch();
      }
      if (unlikely(rdtsc() - start_tsc > timeout_tsc)) {
        size_t duration_tsc = rdtsc() - start_tsc;
        /// Only the first workspace records the stats
        update_stats();
        break;
      }
    }
    /* Loop End */
    /// continue loop until all workspaces are completed
    while (context_->completed_ws_num_ != context_->active_ws_id_.size()) {
      launch();
    }
    /// Print and reset stats
    if (stats_init_ws_) {
      context_->perf_stats_->print_perf_stats(seconds);
      context_->init_perf_stats();
      context_->end_signal_ = false;
      context_->completed_ws_num_ = 0;
      stats_init_ws_ = false;
    }
  }
  set_cpu_freq_normal(core_idx);
}

FORCE_COMPILE_DISPATCHER
}  // namespace dperf