FROM ros:noetic-ros-base


RUN apt-get update &&\
    apt-get install -y ros-$ROS_DISTRO-joint-state-publisher ros-$ROS_DISTRO-robot-state-publisher ros-$ROS_DISTRO-xacro &&\
    apt-get -y clean &&\
    apt-get -y purge &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

HEALTHCHECK CMD /ros_entrypoint.sh rostopic list || exit 1

RUN mkdir -p /app
COPY ./app /app
WORKDIR /app
CMD ["roslaunch", "--wait", "ros.launch"]
