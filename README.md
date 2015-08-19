geonetwork-docker
===========

Docker container running [GeoNetwork](http://geonetwork-opensource.org/)

### Use  pre-built image
Pull image from docker hub.

    $ docker pull eliotjordan/geonetwork-docker

### Build from scratch
Use local Dockerfile to build image.

    $ docker build -t your_image_name .

### Start the container

    $ docker run --name geonetwork -itd  -p 8888:8080 eliotjordan/geonetwork-docker
