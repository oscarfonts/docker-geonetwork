docker run -v $PWD/data_dir:/var/local/geonetwork --name geonetwork -d -p 8888:8080 oscarfonts/geonetwork:3.2.0
docker logs -f geonetwork 2>&1
