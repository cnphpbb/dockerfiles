FROM debian:latest

ENV container docker
ENV LC_ALL C
ARG DEBIAN_FRONTEND=noninteractive

ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install --assume-yes apt-utils vim net-tools tzdata \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*