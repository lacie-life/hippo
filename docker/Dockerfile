FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu20.04

LABEL maintainer="Lacie"

# Install basic packages
RUN apt-get update
RUN apt-get install -y wget vim git
RUN apt install nlohmann-json3-dev
 
# Minimal setup
RUN apt-get update \
 && apt-get install -y locales lsb-release
ARG DEBIAN_FRONTEND=noninteractive
RUN dpkg-reconfigure locales
 
# ==================================================================
# Install ROS Noetic
WORKDIR /
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
RUN apt-get update \
 && apt-get install -y --no-install-recommends ros-noetic-desktop-full
RUN apt-get install -y --no-install-recommends python3-rosdep
RUN rosdep init \
 && rosdep fix-permissions \
 && rosdep update
RUN echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc

RUN apt update && \
    apt install -y \
        python3-pip \
        python3-tk \
        ros-noetic-desktop-full \
        build-essential \
        ros-noetic-joy \
        ros-noetic-tf2-sensor-msgs \
        ros-noetic-rosbash \
        ros-noetic-rviz \
        ros-noetic-teleop-twist-joy \
        ros-noetic-teleop-twist-keyboard \
        ros-noetic-laser-proc \
        ros-noetic-rgbd-launch \
        ros-noetic-depthimage-to-laserscan \
        ros-noetic-rosserial-arduino \
        ros-noetic-rosserial-python \
        ros-noetic-rosserial-server \
        ros-noetic-rosserial-client \
        ros-noetic-rosserial-msgs \
        ros-noetic-amcl \
        ros-noetic-map-server \
        ros-noetic-move-base \
        ros-noetic-urdf \
        ros-noetic-robot-state-publisher \
        ros-noetic-xacro \
        ros-noetic-compressed-image-transport \
        ros-noetic-rqt-image-view \
        ros-noetic-gmapping \
        ros-noetic-navigation \
        ros-noetic-interactive-markers

# ==================================================================
# Setup GUI dependencies

WORKDIR /${USER}

RUN git clone git://code.qt.io/qt/qtmqtt.git
RUN cd qtmqtt
RUN git checkout v5.12.5
RUN apt-get -y install qtbase5-private-dev
RUN qmake 
RUN make 
RUN make install

WORKDIR /
RUN apt-get install -y ros-noetic-move-base-msgs
RUN apt-get install -y python3-catkin-tools
RUN apt-get install -y qtmultimedia5-dev








