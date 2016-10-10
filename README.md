docker-geonetwork
=================

Docker container running [GeoNetwork](http://geonetwork-opensource.org/)

* [`3.2.0`, `latest` (*3.2.0/Dockerfile*)](https://github.com/oscarfonts/docker-geonetwork/tree/master/3.2.0/Dockerfile)
* [`3.0.5` (*3.0.5/Dockerfile*)](https://github.com/oscarfonts/docker-geonetwork/tree/master/3.0.5/Dockerfile)


Forked from [eliotjordan/geonetwork-docker](https://hub.docker.com/r/eliotjordan/geonetwork-docker/)


### Use  pre-built image

Pull image from docker hub.

    docker pull oscarfonts/geonetwork

### Build from scratch

Use local Dockerfile to build image.

    docker build -t geonetwork .

### Start the container

    docker run -v $PWD/data_dir:/var/local/geonetwork --name geonetwork -d -p 8888:8080 oscarfonts/geonetwork
    docker logs -f geonetwork 2>&1  # works as tail -f catalina.out

### Stop the container

    docker stop geonetwork
    docker rm geonetwork
