# Baxter Docker

Docker containerization for developing Baxter apps. This image is based on `ripl/ros-docker:main-amd64`, and with packages for the Baxter robot.

## Build

    git clone git@github.com:ripl/baxter-docker.git && cd baxter-docker/
    cpk build

## Run

    cpk run -c bash -X --net host -- -v /var/run/avahi-daemon/socket:/var/run/avahi-daemon/socket

## Usage

    # Enable/disable Baxter
    rosrun baxter_tools enable_robot.py

    # Tuck/untuck Baxter's arms
    rosrun baxter_tools tuck_arms.py
