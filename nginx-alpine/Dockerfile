FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

ENV PROURL="http://192.168.6.24:88" \
    DEVURL="http://10.188.12.21"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
        \
  	    apk add --no-cache libssl1.0 \
                tini; \
        \
        mkdir -p /data/server; \
        cd /data/server; \
        \
        wget $DEVURL/alpine/nginx/nginx-1.14.0-alpine.tgz; \
        \
        tar xf nginx-1.14.0-alpine.tgz; \
        addgroup www; \
        adduser -D -H -s /sbin/nologin -G www www; \
        \
        ln -s /data/server/nginx/sbin/nginx /usr/sbin/nginx; \
        \
        rm -f /data/server/nginx-1.14.0-alpine.tgz; \
        \
        rm -rf /var/cache/apk/*

EXPOSE 80
STOPSIGNAL SIGTERM
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["nginx", "-g", "daemon off;"]


