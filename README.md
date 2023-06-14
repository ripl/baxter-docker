# Baxter Docker

Docker containerization for developing Baxter apps. This image is based on `ripl/ros-docker:main-amd64`, but with packages for the Baxter robot.

## Build

    cpk build

## Run

    cpk run -c bash -X --net host -- -v /var/run/avahi-daemon/socket:/var/run/avahi-daemon/socket
    
    # Enable/disable Baxter
    rosrun baxter_tools enable_robot.py

    # Tuck/untuck Baxter's arms
    rosrun baxter_tools tuck_arms.py
