#pragma once
#include "util/logger.h"
#include "dispatcher_impl/ethhdr.h"
#include "dispatcher_impl/iphdr.h"
#include "ws_impl/ws_hdr.h"
#include <netinet/udp.h>

namespace dperf {
#define TOTAL_HEADER_LEN sizeof(struct eth_hdr) + sizeof(struct iphdr) + sizeof(struct udphdr) + sizeof(struct ws_hdr)

#define mbuf_eth_hdr(m) rte_pktmbuf_mtod(m, struct eth_hdr *)
#define mbuf_ip_hdr(m) rte_pktmbuf_mtod_offset(m, struct iphdr*, sizeof(struct eth_hdr))
#define mbuf_tcp_hdr(m) ({                      \
    struct tcphdr *th = NULL;                   \
    struct eth_hdr *eth = mbuf_eth_hdr(m);      \
    if (eth->type == htons(ETHERTYPE_IP)) {  \
        th = rte_pktmbuf_mtod_offset(m, struct tcphdr*, sizeof(struct eth_hdr) + sizeof(struct iphdr));     \
    } else {    \
        th = rte_pktmbuf_mtod_offset(m, struct tcphdr*, sizeof(struct eth_hdr) + sizeof(struct ip6_hdr));   \
    }\
    th;})
#define mbuf_udp_hdr(m) rte_pktmbuf_mtod_offset(m, struct udphdr*, sizeof(struct eth_hdr) + sizeof(struct iphdr))
#define mbuf_ws_hdr(m) rte_pktmbuf_mtod_offset(m, struct ws_hdr*, sizeof(struct eth_hdr) + sizeof(struct iphdr) + sizeof(struct udphdr))
#define mbuf_ws_payload(m) rte_pktmbuf_mtod_offset(m, char*, sizeof(struct eth_hdr) + sizeof(struct iphdr) + sizeof(struct udphdr) + sizeof(struct ws_hdr))

#define mbuf_ip6_hdr(m) rte_pktmbuf_mtod_offset(m, struct ip6_hdr*, sizeof(struct eth_hdr))
#define mbuf_icmp6_hdr(m) rte_pktmbuf_mtod_offset(m, struct icmp6_hdr*, sizeof(struct eth_hdr) + sizeof(struct ip6_hdr))

#define RTE_PKTMBUF_PUSH(m, type) (type *)rte_pktmbuf_append(m, sizeof(type))
#define mbuf_push_eth_hdr(m) RTE_PKTMBUF_PUSH(m, struct eth_hdr)
#define mbuf_push_arphdr(m) RTE_PKTMBUF_PUSH(m, struct arphdr)
#define mbuf_push_iphdr(m) RTE_PKTMBUF_PUSH(m, struct iphdr)
#define mbuf_push_ip6_hdr(m) RTE_PKTMBUF_PUSH(m, struct ip6_hdr)
#define mbuf_push_tcphdr(m) RTE_PKTMBUF_PUSH(m, struct tcphdr)
#define mbuf_push_data(m, size) (uint8_t*)rte_pktmbuf_append(m, (size))

static void mbuf_print(struct rte_mbuf *m){
    uint8_t flags = 0;
    uint8_t fin = 0;
    uint8_t syn = 0;
    uint8_t ack = 0;
    uint8_t push = 0;
    uint8_t rst = 0;
    int len = 0;
    struct eth_hdr *eh = NULL;
    struct iphdr *iph = NULL;
    struct tcphdr *th = NULL;
    struct udphdr *uh = NULL;
    struct ws_hdr *wsh = NULL;
    struct ip6_hdr *ip6h = NULL;
    char smac[64];
    char dmac[64];
    eh = mbuf_eth_hdr(m);
    eth_addr_to_str(&eh->s_addr, smac);
    eth_addr_to_str(&eh->d_addr, dmac);

    char log[2048] = {0};
    if (eh->type == htons(ETHERTYPE_IP)) {
        iph = mbuf_ip_hdr(m); 
        uh = mbuf_udp_hdr(m);
        wsh = mbuf_ws_hdr(m);
        sprintf(log, "muf: %s -> %s " IPV4_FMT ":%u ->" IPV4_FMT ":%u proto %u ws_type: %u ws_seg: %u ws_op: %u ws_des_qpn: %u payload_size: %lu\n",
            smac, dmac, IPV4_STR(iph->saddr), ntohs(uh->source), IPV4_STR(iph->daddr), ntohs(uh->dest), iph->protocol, 
            wsh->workload_type_, wsh->segment_num_, wsh->opcode, wsh->des_qpn, strlen((char*)wsh + sizeof(struct ws_hdr))+1);
    } else if (eh->type == htons(ETHERTYPE_IPV6)) {
        ip6h = mbuf_ip6_hdr(m);
        sprintf(log, "muf: %s -> %s " IPV6_FMT " ->" IPV6_FMT " proto %u\n",
            smac, dmac, IPV6_STR(ip6h->ip6_src), IPV6_STR(ip6h->ip6_dst), ip6h->ip6_nxt);
    } else if (eh->type == htons(ETHERTYPE_ARP)) {
        sprintf(log, "muf: %s -> %s arp\n", smac, dmac);
    } else {
        sprintf(log, "muf: %s -> %s type %x\n", smac, dmac, ntohs(eh->type));
    }
    DPERF_INFO("%s", log);
}

} // namespace dperf