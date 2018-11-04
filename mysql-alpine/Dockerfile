FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>


RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
     apk add --update mysql mysql-client && rm -f /var/cache/apk/*; \
     apk add --update tzdata && rm -f /var/cache/apk/*; \
     ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \ 
     echo "Asia/Shanghai" > /etc/timezone

COPY my.cnf /etc/mysql/my.cnf
COPY startup.sh /startup.sh

WORKDIR /data
VOLUME /data

EXPOSE 3306
CMD ["/startup.sh"]
