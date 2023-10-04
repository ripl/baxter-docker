# Baxter Docker

Docker containerization for developing Baxter apps. This image is based on [`ripl/ros-docker:main`](https://github.com/ripl/ros-docker), and with packages for the Baxter robot.

## Build

```bash
git clone --recurse-submodules https://github.com/ripl/baxter-docker.git && cd baxter-docker/
cpk build
```

## Run

```bash
cpk run -c bash -X --net host
```

## Usage Examples

```bash
# Enable/disable Baxter
rosrun baxter_tools enable_robot.py

# Tuck/untuck Baxter's arms
rosrun baxter_tools tuck_arms.py

# Disable Baxter's head sonars
rostopic pub -1 /robot/sonar/head_sonar/set_sonars_enabled std_msgs/UInt16 0

# Enable Baxter's head sonars
rostopic pub -1 /robot/sonar/head_sonar/set_sonars_enabled std_msgs/UInt16 4095
```
