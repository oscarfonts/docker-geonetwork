FROM tomcat:7.0
MAINTAINER Eliot Jordan <eliot.jordan@gmail.com>

RUN apt-get update

WORKDIR /usr/local/tomcat/webapps
RUN wget -O geonetwork.war http://sourceforge.net/projects/geonetwork/files/GeoNetwork_opensource/v3.0.0/geonetwork.war/download

WORKDIR /usr/local/tomcat

RUN touch Documents/setenv.sh && echo "CATALINA_OPTS=\"\$CATALINA_OPTS -Xmx4g -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC\"" >> Documents/setenv.sh

ENV JAVA_HOME /usr/lib/jvm/java-7-openjdk-amd64/bin/java
ENV JRE_HOME /usr/lib/jvm/java-7-openjdk-amd64/jre
ENV CATALINA_OPTS="$CATALINA_OPTS -Xmx4g -XX:MaxPermSize=512m -XX:+UseConcMarkSweepGC"

CMD ["catalina.sh", "run"]