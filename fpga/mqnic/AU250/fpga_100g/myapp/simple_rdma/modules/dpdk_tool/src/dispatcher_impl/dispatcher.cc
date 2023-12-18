/**
 * @file dispatcher.cc
 * @brief General definitions for all dispatcher types. A Dispather instance encapsulate driver codes.
 */
#include "dispatcher.h"

namespace dperf {

Dispatcher::Dispatcher(DispatcherType dispatcher_type, uint8_t ws_id, 
                            uint8_t phy_port, size_t numa_node)
    : dispatcher_type_(dispatcher_type),
      phy_port_(phy_port),
      numa_node_(numa_node) {}

Dispatcher::~Dispatcher() {}

}