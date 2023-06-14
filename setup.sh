#!/bin/bash

# NOTE: this setup script will be executed right before the launcher file inside the container,
#       use it to configure your environment.

source ${CPK_CODE_DIR}/devel/setup.bash

export ROS_HOSTNAME=$(hostname).local
export ROS_MASTER_URI=http://10.0.0.10:11311
