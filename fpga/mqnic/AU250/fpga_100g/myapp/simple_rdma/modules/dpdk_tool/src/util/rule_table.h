#pragma once

#include "common.h"
#include <vector>
#include <unordered_map>
#include <algorithm>
namespace dperf {

struct RuleTable {
  std::unordered_map<uint8_t, std::vector<uint8_t>> table;        // map from workload type to the corresponding destination workspace id

  void add_route(uint8_t type, uint8_t ws_id) {
      table[type].push_back(ws_id);
  }

  void remove_route(uint8_t type, uint8_t ws_id) {
      auto& ws_ids = table[type];
      auto it = std::find(ws_ids.begin(), ws_ids.end(), ws_id);
      if (it != ws_ids.end()) {
      ws_ids.erase(it);
      }
  }

  std::vector<uint8_t> get_ws_ids(uint8_t type) {
      return table[type];
  }

  uint8_t random_select(uint8_t type) {
      auto& ws_ids = table[type];
      return ws_ids[rand() % ws_ids.size()];
  }
};

} // namespace dperf