FROM tomcat:7.0
MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

RUN apt-get update

WORKDIR /usr/local/tomcat/webapps
RUN wget -O geonetwork.war http://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v3.0.1/geonetwork.war/download

WORKDIR /usr/local/tomcat
CMD ["catalina.sh", "run"]