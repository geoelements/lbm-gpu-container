# Docker image for LBM GPU
> Krishna Kumar

[![Deploy Docker](https://github.com/geoelements/lbm-gpu-container/actions/workflows/deploy.yaml/badge.svg?branch=main)](https://github.com/geoelements/lbm-gpu-container/actions/workflows/deploy.yaml)
[![CircleCI](https://circleci.com/gh/geoelements/lbm-gpu-container.svg?style=svg)](https://circleci.com/gh/geoelements/lbm-gpu-container)

## Tools
* CUDA/11
* CMake 3

# Using the docker image
* The docker image can be used from GitHub Container Registry
* Pull the docker image `docker pull ghcr.io/geoelements/bm-gpu`
* To launch the `geoelements/lbm-gpu`  docker container, run `docker run -ti ghcr.io/geoelements/lbm-gpu:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "geoelements/lbm-gpu" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.
