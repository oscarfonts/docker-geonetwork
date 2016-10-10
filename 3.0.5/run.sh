docker run -v $PWD/data_dir:/var/local/geonetwork --name geonetwork -d -p 8888:8080 oscarfonts/geonetwork
docker logs -f geonetwork 2>&1
