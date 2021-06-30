FROM debian:latest

ENV container docker
ENV LC_ALL C
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install --assume-yes vim net-tools tzdata ca-certificates apt-transport-https; \
    \
    apt-get clean; \
    \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ; \
    \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \ 
    echo "Asia/Shanghai" > /etc/timezone

ADD sources.list /etc/apt/sources.list
