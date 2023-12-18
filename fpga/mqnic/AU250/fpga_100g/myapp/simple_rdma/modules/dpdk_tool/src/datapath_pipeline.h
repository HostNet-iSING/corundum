/**
 * @file datapath_pipeline.h
 * @brief Define datapath pipeline and its components. The pipeline will be launched by workspaces.
 */
#pragma once
#include "common.h"
#include "config.h"
#include "workspace.h"
#include "util/logger.h"

#include <vector>
#include <map>
#include <iostream>

namespace dperf{

class DatapathPipeline {
  /**
   * ----------------------General Parameters----------------------
   */ 
  static constexpr uint8_t kInvalidPhaseType = 6;
  
  /**
   * ----------------------Internal structures----------------------
   */ 
  public:
    struct PipePhase {
      uint8_t phase_type_;
      std::vector<uint8_t> launch_wss_;
      std::vector<phase_t> loop_;
      std::vector<std::string> loop_name_;

      public:
        bool check_ws_id(uint8_t ws_id) {
          if (launch_wss_.size() == 0)
            return false;
          for (auto &ws : launch_wss_) {
            if (ws == ws_id)
              return true;
          }
          return false;
        }
    };

    struct WorkloadPipe {
      uint8_t workload_type_;
      std::vector<PipePhase*> pipeline_;
    };

  /**
   * ----------------------Methods----------------------
   */   
  public:
    DatapathPipeline(UserConfig::workloads_config *config) : workloads_config_(config) {
      for (uint8_t workload_idx = 0; workload_idx < workloads_config_->get_size(); workload_idx++) {
        auto workload_pipe = workloads_config_->workload_pipephase_map.begin();
        std::advance(workload_pipe, workload_idx);
        auto app_ws_group = workloads_config_->workload_appws_map.begin();
        std::advance(app_ws_group, workload_idx);
        auto dispatcher_group = workloads_config_->workload_dispatcher_map.begin();
        std::advance(dispatcher_group, workload_idx);

        uint8_t workload_type = workload_pipe->first;
        /// create workload
        new_workload(workload_type);
        /// create pipeline phases
        for (auto &phase_name : workload_pipe->second) {
          uint8_t phase_type = name_phase_type_map_[phase_name];
          if (phase_type == kTxApplicationType || phase_type == kRxApplicationType) {
            new_pipe_phase(workload_type, phase_type, &app_ws_group->second);
          }
          else if (phase_type == kTxDispatcherType || phase_type == kRxDispatcherType) {
            new_pipe_phase(workload_type, phase_type, &dispatcher_group->second);
          }
          else if (phase_type == kTxNICType || phase_type == kRxNICType) {
            /// TBD: create NIC pipeline phase
            new_pipe_phase(workload_type, phase_type);
          }
          else {
            DPERF_ERROR("Invalid pipeline phase type %u\n", phase_type);
            return;
          }
        }
      }
    }
    ~DatapathPipeline(){}

    void new_workload(uint8_t workload_type) {
      if(workload_pipe_map_.count(workload_type) > 0) {
        DPERF_ERROR("Workload type %u already exists\n", workload_type);
        return;
      }
      WorkloadPipe *workload_pipe = new WorkloadPipe();
      workload_pipe->workload_type_ = workload_type;
      workload_pipe_map_.insert(std::make_pair(workload_type, workload_pipe));
    }

    void new_pipe_phase (uint8_t workload_type, uint8_t phase_type, std::vector<uint8_t> *ws_group) {
      if(workload_pipe_map_.count(workload_type) == 0) {
        DPERF_ERROR("Workload type %u does not exist in the pipeline\n", workload_type);
        return;
      }
      rt_assert(phase_type < kInvalidPhaseType, "Invalid pipeline phase type\n");
      PipePhase *pipe_phase = new PipePhase();
      pipe_phase->phase_type_ = phase_type;
      if (ws_group != nullptr) {
        for (auto &ws_id : *ws_group) {
          pipe_phase->launch_wss_.push_back(ws_id);
        }
      }
      /// set loop functions
      for (auto &func : phase_loop_map_[phase_type]) {
        pipe_phase->loop_.push_back(func);
      }
      /// set loop function names
      for (auto &func_name : phase_loop_name_map_[phase_type]) {
        pipe_phase->loop_name_.push_back(func_name);
      }
      workload_pipe_map_[workload_type]->pipeline_.push_back(pipe_phase);
    }

    void new_pipe_phase (uint8_t workload_type, uint8_t phase_type, std::vector<std::vector<uint8_t>*> *ws_group) {
      if(workload_pipe_map_.count(workload_type) == 0) {
        DPERF_ERROR("Workload type %u does not exist in the pipeline\n", workload_type);
        return;
      }
      rt_assert(phase_type < kInvalidPhaseType, "Invalid pipeline phase type\n");
      PipePhase *pipe_phase = new PipePhase();
      pipe_phase->phase_type_ = phase_type;
      if (ws_group != nullptr) {
        for (auto &wss_id : *ws_group) {
          for (auto &ws_id : *wss_id)
            pipe_phase->launch_wss_.push_back(ws_id);
        }
      }
      /// set loop functions
      for (auto &func : phase_loop_map_[phase_type]) {
        pipe_phase->loop_.push_back(func);
      }
      /// set loop function names
      for (auto &func_name : phase_loop_name_map_[phase_type]) {
        pipe_phase->loop_name_.push_back(func_name);
      }
      workload_pipe_map_[workload_type]->pipeline_.push_back(pipe_phase);
    }

    void new_pipe_phase (uint8_t workload_type, uint8_t phase_type) {
      if(workload_pipe_map_.count(workload_type) == 0) {
        DPERF_ERROR("Workload type %u does not exist in the pipeline\n", workload_type);
        return;
      }
      rt_assert(phase_type < kInvalidPhaseType, "Invalid pipeline phase type\n");
      PipePhase *pipe_phase = new PipePhase();
      pipe_phase->phase_type_ = phase_type;
      /// set loop functions
      for (auto &func : phase_loop_map_[phase_type]) {
        pipe_phase->loop_.push_back(func);
      }
      /// set loop function names
      for (auto &func_name : phase_loop_name_map_[phase_type]) {
        pipe_phase->loop_name_.push_back(func_name);
      }
      workload_pipe_map_[workload_type]->pipeline_.push_back(pipe_phase);
    }


  /**
   * ----------------------Util methods----------------------
   */ 
  public:
    void print_pipeline() {
      std::cout << "----------------------" << YELLOW << "Pipeline Configuration" << RESET << "----------------------" << std::endl;
      for (auto &workload_pipe : workload_pipe_map_) {
        printf("Workload type %u:\n", workload_pipe.first);
        for (auto &pipe_phase : workload_pipe.second->pipeline_) {
          printf("  Phase type %s (launched at workspace", reverse_name_phase_type_map_[pipe_phase->phase_type_].c_str());
          for (auto &ws_id : pipe_phase->launch_wss_) {
            printf(" %u", ws_id);
          }
          printf("):\n");
          for (auto &func_name : pipe_phase->loop_name_) {
            printf("    Func executed: ");
            std::cout << BLUE << func_name << RESET << std::endl;
          }
        }
      }
      std::cout << "----------------------" << YELLOW << "Pipeline Configuration END" << RESET << "----------------------" << std::endl;
    }

    uint8_t generate_ws_loop(uint8_t ws_id, std::vector<phase_t> *ws_loop) {
      uint8_t ws_type = 0;
      /// iterate workload types
      for (auto &workload_pipe : workload_pipe_map_) {
        /// iterate pipeline phases
        for (auto &pipe_phase : workload_pipe.second->pipeline_) {
          /// if ws_id exists in launch_wss_id
          if (pipe_phase->check_ws_id(ws_id)) {
            /// set ws_type
            if (pipe_phase->phase_type_ == kTxApplicationType || pipe_phase->phase_type_ == kRxApplicationType)
              ws_type |= WORKER;
            else if (pipe_phase->phase_type_ == kTxDispatcherType || pipe_phase->phase_type_ == kRxDispatcherType)
              ws_type |= DISPATCHER;
            else if (pipe_phase->phase_type_ == kTxNICType || pipe_phase->phase_type_ == kRxNICType)
              ws_type |= NIC_OFFLOAD;
            else {
              DPERF_ERROR("Invalid pipeline phase type %u\n", pipe_phase->phase_type_);
            }
            /// iterate loop functions
            for (auto &func : pipe_phase->loop_) {
              /// if func is not in ws_loop
              if (std::find(ws_loop->begin(), ws_loop->end(), func) == ws_loop->end()) {
                /// add loop functions to ws_loop
                ws_loop->push_back(func);
              }
            }
          }
        }        
      }
      return ws_type;
    }

    uint8_t get_workload_type(uint8_t ws_id) {
      /// iterate workload types
      for (auto &workload_pipe : workload_pipe_map_) {
        /// iterate pipeline phases
        for (auto &pipe_phase : workload_pipe.second->pipeline_) {
          /// if ws_id exists in launch_wss_id
          if (pipe_phase->check_ws_id(ws_id)) {
            return workload_pipe.first;
          }
        }        
      }
      return kInvalidWorkloadType;
    }
    
  /**
   * ----------------------Internal Parameters----------------------
   */
  private:
    std::map<uint8_t, WorkloadPipe*> workload_pipe_map_;
    struct UserConfig::workloads_config *workloads_config_;

    std::map<std::string, uint8_t> name_phase_type_map_ = {
      {"TxApplication", kTxApplicationType},
      {"TxDispatcher", kTxDispatcherType},
      {"TxNIC", kTxNICType},
      {"RXNIC", kRxNICType},
      {"RXDispatcher", kRxDispatcherType},
      {"RxApplication", kRxApplicationType},
    };

    std::map<uint8_t, std::string> reverse_name_phase_type_map_ = {
      {kTxApplicationType, "TxApplication"},
      {kTxDispatcherType, "TxDispatcher"},
      {kTxNICType, "TxNIC"},
      {kRxNICType, "RXNIC"},
      {kRxDispatcherType, "RXDispatcher"},
      {kRxApplicationType, "RxApplication"},
    };

    std::map<uint8_t, std::vector<phase_t>> phase_loop_map_ = {
      {kTxApplicationType, {&Workspace<DISPATCHER_TYPE>::apply_mbufs, &Workspace<DISPATCHER_TYPE>::generate_pkts}},
      {kTxDispatcherType, {&Workspace<DISPATCHER_TYPE>::bursted_tx}},
      {kTxNICType, {}},
      {kRxNICType, {}},
      {kRxApplicationType, {&Workspace<DISPATCHER_TYPE>::app_handler}},
      {kRxDispatcherType, {&Workspace<DISPATCHER_TYPE>::bursted_rx}},
    };

    std::map<uint8_t, std::vector<std::string>> phase_loop_name_map_ = {
      {kTxApplicationType, {"apply_mbufs", "generate_pkts"}},
      {kTxDispatcherType, {"bursted_tx"}},
      {kTxNICType, {}},
      {kRxNICType, {}},
      {kRxApplicationType, {"app_handler"}},
      {kRxDispatcherType, {"bursted_rx"}},
    };
};


} // namespace dperf