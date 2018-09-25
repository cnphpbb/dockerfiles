FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

WORKDIR /data
VOLUME /data
COPY startup.sh /startup.sh

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
