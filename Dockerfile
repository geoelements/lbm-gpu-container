FROM nvidia/cuda:11.2.2-devel-ubuntu20.04
MAINTAINER Krishna Kumar <krishnak@utexas.edu>

RUN apt-get update -y && apt-get upgrade -y

# Install dependencies
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y clang-format-11 cmake cppcheck curl \
    lcov ninja-build python

# Create symbolic link for clang-format
RUN ln -s /usr/bin/clang-format-11 /usr/bin/clang-format

RUN /bin/bash "$@"
