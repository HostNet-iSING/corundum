#include <sys/types.h>
#include <stdio.h>
#include <unistd.h>
#include <thread>
#include "util/barrier.h"

#include "workspace.h"
#include "config.h"
#include "datapath_pipeline.h"

void ws_main(dperf::WsContext* context, uint8_t ws_id, uint8_t ws_type, std::vector<dperf::phase_t> *ws_loop, dperf::UserConfig *user_config) {
  if (ws_type == 0) {
    return;
  }
  dperf::Workspace<dperf::DISPATCHER_TYPE> ws(context, ws_id, ws_type, user_config->get_numa(), user_config->get_phy_port(), 
                                              ws_loop, user_config);   
  DPERF_INFO("-------------Workspace %u is running-------------\n", ws_id);
  ws.run_event_loop_timeout_st(user_config->get_iteration(), user_config->get_duration()); // duration seconds
  // DPERF_INFO("-------------Workspace %u has finished-------------\n", ws_id);
  return;
}

int main(int argc, char **argv) {

  /// Read config file
  dperf::UserConfig *user_config = new dperf::UserConfig("./config/only_rx");
  user_config->print_config();

  /// Init datapath pipeline
  dperf::DatapathPipeline *pipeline = new dperf::DatapathPipeline(user_config->workloads_config_);
  pipeline->print_pipeline();

  uint8_t total_thread_num = 0;
  for (uint8_t i = 0; i < dperf::kWorkspaceMaxNum; i++) {
    if (pipeline->get_workload_type(i) != dperf::kInvalidWorkloadType)
      total_thread_num++;
  }
  printf("Total launched %u threads!\n", total_thread_num);

  /// Init workspace context based on datapath pipeline
  dperf::ThreadBarrier *barrier = new dperf::ThreadBarrier(total_thread_num);
  dperf::WsContext *context = new dperf::WsContext(barrier);

  /// Init and launch workspaces
  dperf::clear_affinity_for_process();
  std::vector<std::thread> workspaces(dperf::kWorkspaceMaxNum);
  for (uint8_t i = 0; i < dperf::kWorkspaceMaxNum; i++) {
    /// Get workspace type and pipeline loop for a given workspace
    uint8_t ws_type = dperf::kInvaildWorkspaceType;
    std::vector<dperf::phase_t> *ws_loop = new std::vector<dperf::phase_t>();
    ws_type = pipeline->generate_ws_loop(i, ws_loop);

    // Launch workspace
    workspaces[i] = std::thread(ws_main, context, i, ws_type, ws_loop, user_config);
    dperf::bind_to_core(workspaces[i], user_config->get_numa(), i);
  }
  for (auto &workspace : workspaces) workspace.join();
  return 0;
}