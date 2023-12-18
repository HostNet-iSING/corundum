/**
 * @file config.h
 * @brief Load and store configuration parameters
 */
#pragma once
#include "common.h"
#include <iostream>
#include <fstream>
#include <map>
#include <string>
#include <vector>

namespace dperf {
class UserConfig {
/**
 * ----------------------Class Parameters----------------------
 */ 

/**
 * ----------------------Internal structures----------------------
 */ 
public:
    struct workloads_config {
        std::map<uint8_t, std::vector<std::string>> workload_pipephase_map;     // workload_type -> pipeline phase type
        std::map<uint8_t, std::vector<std::vector<uint8_t>*>> workload_appws_map; // workload_type -> app_ws_group
        std::map<uint8_t, std::vector<uint8_t>> workload_dispatcher_map;    // workload_type -> dispatcher_ws_group
        std::map<uint8_t, std::vector<uint8_t>> workload_remote_dispatcher_map;     // workload_type -> remote_dispatcher_ws_group
        std::map<uint8_t, uint8_t> ws_id_workload_map;  // ws_id -> workload_type
        std::map<uint8_t, uint8_t> ws_id_group_idx_map; // ws_id -> group_idx
        uint8_t get_size() {
            return workload_pipephase_map.size();
        }
        uint8_t get_type(uint8_t workload_idx) {
            auto it = workload_pipephase_map.begin();
            std::advance(it, workload_idx);
            return it->first;
        }
    };

    struct server_config {
        uint8_t numa;
        uint8_t phy_port;
        uint8_t iteration;
        uint8_t duration;
    };

/**
 * ----------------------Methods----------------------
 */ 
public:
    UserConfig(const std::string& filename) {
        printf("Load config file: %s\n", filename.c_str());
        load(filename);
    }

    std::vector<std::string> * get_value(std::string& key) {
        if (config_map_.count(key) > 0) {
            return &config_map_.at(key);
        }
        return nullptr;
    }
  /**
   * ----------------------Util methods----------------------
   */ 
    void print_config();
    uint8_t get_numa() {
        return server_config_->numa;
    }
    uint8_t get_phy_port() {
        return server_config_->phy_port;
    }
    uint8_t get_iteration() {
        return server_config_->iteration;
    }
    uint8_t get_duration() {
        return server_config_->duration;
    }

/**
 * ----------------------Internal Parameters----------------------
 */
public:
    std::map<std::string, std::vector<std::string>> config_map_;
    struct workloads_config *workloads_config_ = new workloads_config();
    struct server_config *server_config_ = new server_config();

/**
 * ----------------------Internal Methods----------------------
 */
private:
    void load(const std::string& filename) {
        std::ifstream file(filename);
        if (!file.is_open()) {
            std::cerr << "Failed to open config file: " << filename << std::endl;
            return;
        }

        std::string line;
        while (std::getline(file, line)) {
            std::vector<std::string> values = split(line, ':');     // get all parameter name/values in one line
            if (values.size() >= 2) {       // skip empty line
                std::string key = trim(values[0]);
                if (key == "workload") {
                    std::vector<std::string> infos;
                    for (size_t i = 1; i < values.size(); ++i) {
                        std::string value = trim(values[i]);
                        infos.push_back(value);
                    }
                    config_workload(infos);
                    continue;
                }
                for (size_t i = 1; i < values.size(); ++i) {
                    std::string value = trim(values[i]);
                    config_map_[key].push_back(value);
                }
            }
        }
        config_server();

        file.close();
    }

    std::vector<std::string> split(const std::string& str, char delimiter) {
        std::vector<std::string> tokens;
        std::string token;
        std::istringstream tokenStream(str);
        while (std::getline(tokenStream, token, delimiter)) {
            tokens.push_back(token);
        }
        return tokens;
    }

    std::string trim(const std::string& str) {
        size_t first = str.find_first_not_of(' ');
        size_t last = str.find_last_not_of(' ');
        return str.substr(first, (last - first + 1));
    }
    
    /// Config each parameters
    void config_workload(std::vector<std::string> values);
    void config_server();
    
};

} // namespace dperf