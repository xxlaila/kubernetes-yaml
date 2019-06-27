FROM docker.io/xxlaila/centos7.6-jdk1.8:latest
MAINTAINER xxlaila "cq_xxlaila@163.com"
# Install dependent plugin

ADD target/<BUILD_NAME>.jar /opt/webapps/<BUILD_NAME>.jar

WORKDIR /opt/webapps

EXPOSE 8000

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${RUN_ENV}", "<BUILD_NAME>.jar"]
