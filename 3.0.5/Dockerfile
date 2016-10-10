FROM tomcat:8-jre8
MAINTAINER Oscar Fonts <oscar.fonts@geomati.co>

ENV VERSION 3.0.5
ENV GEONETWORK_DATA_DIR /var/local/geonetwork

WORKDIR /usr/local/tomcat/webapps

RUN set -x \
    && apt-get update \
    && apt-get -y upgrade \
    && rm -rf /var/lib/apt/lists/* \
    && wget http://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v${VERSION}/geonetwork.war \
    && unzip geonetwork.war -d geonetwork \
    && mkdir ${GEONETWORK_DATA_DIR} \
    && sed -i 's_jdbc:h2:_jdbc:h2:'${GEONETWORK_DATA_DIR}'/_' geonetwork/WEB-INF/config-db/h2.xml

# Tomcat environment
ENV CATALINA_OPTS "-server -Djava.awt.headless=true \
	-Xms256m -Xmx512m -XX:+UseConcMarkSweepGC \
	-Dgeonetwork.dir=${GEONETWORK_DATA_DIR}"

