/**
 * @file common.h
 * @brief Common header file with convenience definitions
 */
#pragma once

#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <cerrno>
#include <limits>
#include <mutex>
#include <sstream>
#include <string>
#include <thread>
#include <vector>
#include <cmath>

namespace dperf {

#define _unused(x) ((void)(x))  // Make production build happy
#define likely(x) __builtin_expect(!!(x), 1)
#define unlikely(x) __builtin_expect(!!(x), 0)

#define KB(x) (static_cast<size_t>(x) << 10)
#define MB(x) (static_cast<size_t>(x) << 20)
#define GB(x) (static_cast<size_t>(x) << 30)

/**
 * ----------------------Server constants----------------------
 */ 
static constexpr size_t kMaxPhyPorts = 2;
static constexpr size_t kMaxNumaNodes = 2;
static constexpr size_t kMaxQueuesPerPort = 16;

/**
 * ----------------------Perf Test constants----------------------
 */ 
#define PERF_TEST 0       // 1: enable perf test, 0: disable perf test
#define PERF_TEST_LAT 0
#define PERF_TEST_THR 0
#define PERF_TEST_BREAKDOWN 0

/**
 * ----------------------General constants----------------------
 */ 
#define DISPATCHER_TYPE DpdkDispatcher
#define MEM_REG_TYPE rte_mbuf
#define DPERF_LOG_LEVEL 3

static constexpr uint8_t kWorkspaceTypeNum = 3;
static constexpr uint8_t kInvaildWorkspaceType = std::pow(2, kWorkspaceTypeNum);
static constexpr uint8_t kWorkspaceMaxNum = 16;
static constexpr uint8_t kInvalidWsId = kWorkspaceMaxNum + 1;
static constexpr size_t kWsQueueSize = 1024;

/// Parameters for datapath pipeline
static constexpr uint8_t kMaxWorkloadNum = kWorkspaceMaxNum;
static constexpr uint8_t kInvalidWorkloadType = kMaxWorkloadNum + 1;

static constexpr uint8_t kTxNICType = 0;
static constexpr uint8_t kTxDispatcherType = 1;
static constexpr uint8_t kTxApplicationType = 2;
static constexpr uint8_t kRxNICType = 3;
static constexpr uint8_t kRxDispatcherType = 4;
static constexpr uint8_t kRxApplicationType = 5;


/**
 * ----------------------Simple methods----------------------
 */ 
static inline void rt_assert(bool condition, std::string throw_str, char *s) {
  if (unlikely(!condition)) {
    fprintf(stderr, "%s %s\n", throw_str.c_str(), s);
    exit(-1);
  }
}

static inline void rt_assert(bool condition, const char *throw_str) {
  if (unlikely(!condition)) {
    fprintf(stderr, "%s\n", throw_str);
    exit(-1);
  }
}

static inline void rt_assert(bool condition, std::string throw_str) {
  if (unlikely(!condition)) {
    fprintf(stderr, "%s\n", throw_str.c_str());
    exit(-1);
  }
}

static inline void rt_assert(bool condition) {
  if (unlikely(!condition)) {
    fprintf(stderr, "Error\n");
    assert(false);
    exit(-1);
  }
}

/**
 * ----------------------Print related----------------------
 */ 
const std::string RESET = "\033[0m";
const std::string RED = "\033[31m";
const std::string GREEN = "\033[32m";
const std::string YELLOW = "\033[33m";
const std::string BLUE = "\033[34m";
}