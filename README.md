# ROS URDF in Docker [![](https://img.shields.io/docker/pulls/frankjoshua/ros-urdf)](https://hub.docker.com/r/frankjoshua/ros-urdf) ![CI](https://github.com/frankjoshua/docker-ros-urdf/workflows/CI/badge.svg)

## Description

Runs a Docker container that launches joint state publisher and robot state publisher and sets the robot model param to [model.urdf.xacro](model.urdf.xacro). Need --network="host" because ROS uses ephemeral ports.

## Example

```
docker run -it \
    --network="host" \
    --env="ROS_IP=$ROS_IP" \
    --env="ROS_MASTER_URI=$ROS_MASTER_URI" \
    frankjoshua/ros-urdf
```

## Building

Use [build.sh](build.sh) to build the docker containers.

<br>Local builds are as follows:

```
./build.sh -t frankjoshua/ros-urdf -l
```

## Testing

Github Actions expects the DOCKERHUB_USERNAME and DOCKERHUB_TOKEN variables to be set in your environment.

## License

Apache 2.0

## Author Information

Joshua Frank [@frankjoshua77](https://www.twitter.com/@frankjoshua77)
<br>
[http://roboticsascode.com](http://roboticsascode.com)
