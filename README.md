# Docker image for LBM GPU
> Krishna Kumar


## Tools
* CUDA/11
* CMake 3

# Using the docker image
* The docker image can be used directly from the Docker Hub or Quay.io
* Pull the docker image `docker pull quay.io/geoelements/lbmgpu`
* To launch the `geoelements/lbmgpu`  docker container, run `docker run -ti quay.io/geoelements/lbmgpu:latest /bin/bash`

# To login as root
* Launching docker as root user: `docker exec -u 0 -ti <containerid> /bin/bash`

# Creating an image from the docker file
* To build an image from docker file run as root `docker build -t "geoelements/lbmgpu" /path/to/Dockerfile`
* `docker history` will show you the effect of each command has on the overall size of the file.
