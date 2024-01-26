# Hippo

The open source robot control gui written by Qt/QML

## App Install

```bash

mkdir -p ~/hippo_ws/src
cd ~/hippo_ws/src

git clone git@github.com:lacie-life/hippo.git

cd hippo/docker

docker build no-cache --tag hippo:latest .

# run docker
./start_docker.sh

# stop docker
./stop_docker.sh
```

## App run

```bash
# run docker
./start_docker.sh

# Build app
cd ~/hippo_ws/
catkin_make

# Run
source devel/setup.bash
rosrun hippo hippo

```

### Main Class

- <b> class AppModel </b> : App Manager 
    
- <b> class QNode </b> : Ros Interface
    
- <b> class QDatabaseManager, QUserDAO, QDeliveryTargetDAO </b> : SQLite Interface
    
- <b> UI Classes </b> : QRobotItem, MainWindow, QLoginWidget, QCustomWidget

- <b> Object Classes </b> : QUser, QRobotMission, QDeliveryTarget

- <b> Other Classes </b> : AppConstants, QRobotMission, QRobotUtils




