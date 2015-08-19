FROM tomcat:7.0
MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

RUN apt-get update

WORKDIR /usr/local/tomcat/webapps
RUN wget -O geonetwork.war http://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v3.0.0/geonetwork.war/download

WORKDIR /usr/local/tomcat

ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom -Djava.awt.headless=true -Xms48m -Xss2M -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC"

CMD ["catalina.sh", "run"]
