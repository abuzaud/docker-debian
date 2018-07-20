FROM debian:stretch

MAINTAINER Antoine Buzaud <antoine.buzaud@gmail.com>

RUN apt-get update
RUN apt-get install -y
RUN apt-get install libapache2-mod-php mysql-server php-mysql php-gd php-json php-mbstring php-xml php-zip --yes --force-yes
RUN apt-get update && apt-get upgrade --yes --force-yes

COPY service_start.sh /home/docker/script/service_start.sh
RUN chmod 744 /home/docker/script/service_start.sh

ENTRYPOINT /home/docker/script/service_start.sh
WORKDIR /home/docker

RUN /bin/bash

