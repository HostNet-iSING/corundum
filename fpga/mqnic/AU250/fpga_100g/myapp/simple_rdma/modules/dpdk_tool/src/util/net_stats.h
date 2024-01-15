/*
 * Copyright (c) 2021-2022 Baidu.com, Inc. All Rights Reserved.
 * Copyright (c) 2022-2023 Jianzhang Peng. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * Author: Jianzhang Peng (pengjianzhang@baidu.com)
 *         Jianzhang Peng (pengjianzhang@gmail.com)
 */

#pragma once
#include "common.h"

namespace dperf{
struct net_stats {
    /* App level */
    uint64_t app_tx_msg_num;
    uint64_t app_rx_msg_num;
    uint64_t app_tx_start_tick;
    uint64_t app_tx_duration;
    uint64_t app_rx_start_tick;
    uint64_t app_rx_duration;

    /* Dispatcher level */
    uint64_t disp_tx_pkt_num;
    uint64_t disp_rx_pkt_num;
    uint64_t disp_tx_start_tick;
    uint64_t disp_tx_duration;
    uint64_t disp_rx_start_tick;
    uint64_t disp_rx_duration;

    /* NIC level */
    uint64_t nic_tx_pkt_num;
    uint64_t nic_rx_pkt_num;
    uint64_t nic_tx_start_tick;
    uint64_t nic_tx_duration;
    uint64_t nic_rx_start_tick;
    uint64_t nic_rx_duration;

    /* Diagnose */
    uint64_t app_apply_mbuf_stalls;
    uint64_t app_enqueue_drops;
};

struct perf_stats {
    double e2e_throughput_ = 0; // Mpps
    double e2e_latency_ = 0;    // us
    /// Breakdown
    double app_tx_throughput_ = 0;
    double app_rx_throughput_ = 0;
    double app_tx_latency_ = 0;
    double app_rx_latency_ = 0;

    double disp_tx_throughput_ = 0;
    double disp_rx_throughput_ = 0;
    double disp_tx_latency_ = 0;
    double disp_rx_latency_ = 0;

    double nic_tx_throughput_ = 0;
    double nic_rx_throughput_ = 0;
    double nic_tx_latency_ = 0;
    double nic_rx_latency_ = 0;

    public:
        void print_perf_stats(uint8_t duration) {
            std::cout << std::fixed;
            std::cout << std::setprecision(2);

            std::cout << "-------------------------------------------------------" << std::endl;
            std::cout << std::left << std::setw(20) << "DPerf Statistics" << std::setw(20) <<"Throughput (Mpps)" << std::setw(15) << "Latency (us)" << std::endl;
            std::cout << "-------------------------------------------------------" << std::endl;
            /// End-to-end
            std::cout << std::left << std::setw(20) << "End-to-end" << std::setw(20) << e2e_throughput_ / duration << std::setw(15) << e2e_latency_ / duration << std::endl;
            /// App
            std::cout << std::left << std::setw(20) << "app_tx" << std::setw(20) << app_tx_throughput_ / duration << std::setw(15) << app_tx_latency_ / duration << std::endl;
            std::cout << std::left << std::setw(20) << "app_rx" << std::setw(20) << app_rx_throughput_ / duration << std::setw(15) << app_rx_latency_ / duration << std::endl;
            /// Dispatcher
            std::cout << std::left << std::setw(20) << "disp_tx" << std::setw(20) << disp_tx_throughput_ / duration << std::setw(15) << disp_tx_latency_ / duration << std::endl;
            std::cout << std::left << std::setw(20) << "disp_rx" << std::setw(20) << disp_rx_throughput_ / duration << std::setw(15) << disp_rx_latency_ / duration << std::endl;
            /// NIC
            std::cout << std::left << std::setw(20) << "nic_tx" << std::setw(20) << nic_tx_throughput_ / duration << std::setw(15) << nic_tx_latency_ / duration << std::endl;
            std::cout << std::left << std::setw(20) << "nic_rx" << std::setw(20) << nic_rx_throughput_ / duration << std::setw(15) << nic_rx_latency_ / duration << std::endl;
            std::cout << "-------------------------------------------------------" << std::endl;
            std::cout << std::endl;
        }
};

#define net_stats_app_tx(n)      do {stats_->app_tx_msg_num += (n);} while (0)
#define net_stats_app_rx(n)     do {stats_->app_rx_msg_num += (n);} while (0)
#define net_stats_app_tx_start() do {stats_->app_tx_start_tick = rdtsc();} while (0)
#define net_stats_app_tx_duration() do {stats_->app_tx_duration += rdtsc() - stats_->app_tx_start_tick;} while (0)
#define net_stats_app_rx_start() do {stats_->app_rx_start_tick = rdtsc();} while (0)
#define net_stats_app_rx_duration() do {stats_->app_rx_duration += rdtsc() - stats_->app_rx_start_tick;} while (0)


#define net_stats_disp_tx(n)    do {stats_->disp_tx_pkt_num += (n);} while (0)
#define net_stats_disp_rx(n)    do {stats_->disp_rx_pkt_num += (n);} while (0)
#define net_stats_disp_tx_start() do {stats_->disp_tx_start_tick = rdtsc();} while (0)
#define net_stats_disp_tx_duration() do {stats_->disp_tx_duration += rdtsc() - stats_->disp_tx_start_tick;} while (0)
#define net_stats_disp_rx_start() do {stats_->disp_rx_start_tick = rdtsc();} while (0)
#define net_stats_disp_rx_duration() do {stats_->disp_rx_duration += rdtsc() - stats_->disp_rx_start_tick;} while (0)

#define net_stats_nic_tx(n)     do {stats_->nic_tx_pkt_num += (n);} while (0)
#define net_stats_nic_rx(n)     do {stats_->nic_rx_pkt_num += (n);} while (0)
#define net_stats_nic_tx_start() do {stats_->nic_tx_start_tick = rdtsc();} while (0)
#define net_stats_nic_tx_duration() do {stats_->nic_tx_duration += rdtsc() - stats_->nic_tx_start_tick;} while (0)
#define net_stats_nic_rx_start() do {stats_->nic_rx_start_tick = rdtsc();} while (0)
#define net_stats_nic_rx_duration() do {stats_->nic_rx_duration += rdtsc() - stats_->nic_rx_start_tick;} while (0)

/* Diagnose */
#define net_stats_app_apply_mbuf_stalls() do {stats_->app_apply_mbuf_stalls++;} while (0)
#define net_stats_app_drops(n)    do {stats_->app_enqueue_drops += n;} while (0)

static inline void net_stats_init(struct net_stats *stats) {
    memset(stats, 0, sizeof(struct net_stats));
}
static inline void perf_stats_init(struct perf_stats *stats) {
    memset(stats, 0, sizeof(struct perf_stats));
}

} // namespace dperf