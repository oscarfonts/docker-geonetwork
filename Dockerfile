FROM tomcat:8-jre8
MAINTAINER Oscar Fonts <oscar.fonts@geomati.co>

ENV VERSION 3.0.4
ENV GEONETWORK_DATA_DIR /var/local/geonetwork

WORKDIR /usr/local/tomcat/webapps

RUN set -x \
    && apt-get update \
    && apt-get upgrade \
    && rm -rf /var/lib/apt/lists/* \
    && wget http://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${VERSION}/geonetwork.war \
    && mkdir ${GEONETWORK_DATA_DIR}

# Tomcat environment
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-Xms512m -Xmx1560m -XX:+UseConcMarkSweepGC \
	-Dgeonetwork.dir=${GEONETWORK_DATA_DIR}"

