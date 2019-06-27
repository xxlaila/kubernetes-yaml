FROM docker.io/xxlaila/centos7.6-jdk1.8:latest
MAINTAINER xxlaila "cq_xxlaila@163.com"
# Install dependent plugin

ADD target/kxl-eureka.jar /opt/webapps/kxl-eureka.jar
ADD application.yaml /opt/webapps/application.yaml

WORKDIR /opt/webapps

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=${RUN_ENV}", "kxl-eureka.jar"]
