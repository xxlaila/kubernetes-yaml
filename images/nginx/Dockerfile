FROM docker.io/centos:latest
MAINTAINER xxlaila "cq_xxlaila@163.com"
# Install dependent plugin
RUN yum -y install wget \
    && wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo \
    && yum -y install epel-release \
    && yum install -y nginx \
    && yum -y install GeoIP \
    && yum clean all
# System variable setting
RUN echo "LANG=zh_CN.UTF-8" >> /etc/locale.conf \
    && source /etc/locale.conf \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/shanghai" >> /etc/timezone \
    && nginx

EXPOSE 80
