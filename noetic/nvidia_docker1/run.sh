#!/bin/bash

image_name="pytorch_rospy_noetic"
tag_name="nvidia_docker1"

xhost +
nvidia-docker run -it --rm \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
	--net=host \
	$image_name:$tag_name
