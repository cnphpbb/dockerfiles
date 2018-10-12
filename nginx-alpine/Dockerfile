FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
        \
  	    apk add --no-cache libssl1.0 \
                tini; \
        \
        mkdir -p /data/server; \
        cd /data/server; \
        \
        wget http://10.188.12.21/alpine/nginx/nginx-1.14.0-alpine.tgz; \
        \
        tar xf nginx-1.14.0-alpine.tgz; \
        addgroup -S www; \
        adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G www www; \
        \
        ln -s /data/server/nginx/sbin/nginx /usr/sbin/nginx; \
        \
        rm -f /data/server/nginx-1.14.0-alpine.tgz; \
        \
        rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/usr/sbin/nginx"]


