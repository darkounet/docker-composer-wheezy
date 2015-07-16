# Wheezy Dockerfile
# For dev use only

FROM debian:wheezy

MAINTAINER Antoine GUEVARA <me@antoine-guevara.fr>

ENV HOSTNAME composer.wheezy.docker.lan
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash

RUN apt-get update

RUN apt-get install -y -qq vim htop strace wget curl

RUN apt-get install -y -qq php5 php5-cli

RUN apt-get install -y -qq git

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer

ENTRYPOINT ["/bin/bash"]
