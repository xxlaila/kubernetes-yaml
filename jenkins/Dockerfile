FROM cnych/jenkins:jnlp 
MAINTAINER xxlaila "cq_xxlaila@163.com"
# Install dependent plugin
ENV VERSION v10.15.1
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get install -y nodejs \
    && apt-get clean all \
    && apt-get autoclean

ADD kubectl /usr/local/bin/kubectl


EXPOSE 50000
