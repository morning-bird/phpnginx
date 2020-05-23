FROM ubuntu:18.04
MAINTAINER dev-apps@gms.church

# install nginx
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN apt-get install nginx -y

# install php
RUN add-apt-repository universe
RUN apt update && apt install php-fpm -y

EXPOSE 80
EXPOSE 443