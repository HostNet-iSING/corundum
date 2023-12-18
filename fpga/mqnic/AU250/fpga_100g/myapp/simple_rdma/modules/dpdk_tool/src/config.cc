/**
 * @file config.cc
 * @brief Config each parameters
 */
#include "config.h"
#include "util/logger.h"

namespace dperf {

  void UserConfig::config_workload(std::vector<std::string> values) {
    uint8_t value_idx = 0;
    uint8_t workload_type = kInvalidWorkloadType;
    for (auto &value : values) {
      /// The first value is workload type
      if (value_idx == 0) {
        workload_type = std::stoi(value);
        rt_assert(workload_type < kInvalidWorkloadType, "Invalid workload type");
        value_idx++;
        continue;
      }
      rt_assert(workload_type != kInvalidWorkloadType, "Please specify workload type first");
      if (value_idx == 1) {
        std::vector<std::string> pipeline_phase = split(value, ',');
        for (auto &phase : pipeline_phase) {
          workloads_config_->workload_pipephase_map[workload_type].push_back(phase);
        }
        value_idx++;
        continue;
      }
      if (value_idx == 2) {
        std::vector<std::string> remote_ws = split(value, ',');
        for (auto &ws_id_str : remote_ws) {
          uint8_t ws_id = std::stoi(ws_id_str);
          rt_assert(ws_id < kInvalidWsId, "Invalid workspace id");
          workloads_config_->workload_remote_dispatcher_map[workload_type].push_back(ws_id);
        }
        value_idx++;
        continue;
      }
      /// The rest values are workload info, which is in the format of "group1|group2|group3..."
      std::vector<std::string> group_info = split(value, '|');
      uint8_t group_idx = 0;
      for (auto &workspace_info : group_info) {
        /// The second value is app workspace group
        if(value_idx == 3) {
          std::vector<std::string> workspace_ids = split(workspace_info, ',');
          if (workspace_ids.size() == 0) {
            DPERF_ERROR("Configuration for workload %s is not in the right format\n", workspace_info.c_str());
            continue;
          }
          std::vector<uint8_t> *app_ws_group = new std::vector<uint8_t>();
          for (auto &workspace_id : workspace_ids) {
            uint8_t ws_id = std::stoi(workspace_id);
            rt_assert(ws_id < kInvalidWsId, "Invalid workspace id");
            app_ws_group->push_back(ws_id);
            rt_assert(workloads_config_->ws_id_workload_map.find(ws_id) == workloads_config_->ws_id_workload_map.end(), 
                        "Workspace already assigned to a workload");
            workloads_config_->ws_id_workload_map[ws_id] = workload_type;
            workloads_config_->ws_id_group_idx_map[ws_id] = group_idx;
          }
          workloads_config_->workload_appws_map[workload_type].push_back(app_ws_group);
          group_idx++;
        }

        /// The third value is dispatcher workspace group
        else if(value_idx == 4) {
          uint8_t ws_id = std::stoi(workspace_info);
          rt_assert(ws_id < kInvalidWsId, "Invalid workspace id");
          workloads_config_->workload_dispatcher_map[workload_type].push_back(ws_id);
        } 
      }
      value_idx++;
    }
  }   

  void UserConfig::config_server() {
    for (auto &config : config_map_) {
      if (config.first == "numa") {
        server_config_->numa = std::stoi(config.second[0]);
      }
      else if (config.first == "phy_port") {
        server_config_->phy_port = std::stoi(config.second[0]);
      }
      else if (config.first == "iteration") {
        server_config_->iteration = std::stoi(config.second[0]);
      }
      else if (config.first == "duration") {
        server_config_->duration = std::stoi(config.second[0]);
      }
      else {
        DPERF_ERROR("Invalid server config key %s\n", config.first.c_str());
      }
    }
  }

  void UserConfig::print_config() {
    std::cout << "----------------------" << YELLOW << "Workload Configuration" << RESET << "----------------------" << std::endl;
    for (auto &workload_appws : workloads_config_->workload_appws_map) {
      uint8_t workload_type = workload_appws.first;
      printf("Workload type %u:\n", workload_type);
      printf("    Pipeline phase: ");
      for (auto &phase_type : workloads_config_->workload_pipephase_map[workload_type]) {
        printf("%s ", phase_type.c_str());
      }
      printf("\n"); 
      for (uint8_t group_idx = 0; group_idx < workload_appws.second.size(); group_idx++) {
        printf("    Workspace group %u: App ", group_idx);
        for (auto &ws_id : *workload_appws.second[group_idx]) {
          printf("%u ", ws_id);
        }
        printf("| Dispatcher %u\n", workloads_config_->workload_dispatcher_map[workload_type][group_idx]);
      }
    }

    std::cout << "----------------------" << YELLOW << "Server Configuration" << RESET << "----------------------" << std::endl;
    printf("NUMA node: %u\n", server_config_->numa);
    printf("Physical port: %u\n", server_config_->phy_port);

    std::cout << "----------------------" << YELLOW << "End of Configuration" << RESET << "----------------------\n" << std::endl;
  }
}