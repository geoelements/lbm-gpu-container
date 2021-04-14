FROM nvidia/cuda:11.2.2-devel-ubuntu20.04
MAINTAINER Krishna Kumar <krishnak@utexas.edu>

RUN apt-get update -y && apt-get upgrade -y

# Install CMake
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y clang-format cmake python

RUN /bin/bash "$@"
