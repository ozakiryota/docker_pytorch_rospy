#!/bin/bash

image_name="pytorch_rospy_noetic"
tag_name="nvidia_docker1"

docker build . \
	-t $image_name:$tag_name
