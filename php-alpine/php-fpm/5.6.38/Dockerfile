FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

ENV PROURL="http://192.168.6.24:88" \
    DEVURL="http://10.188.12.21"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
        \
  	    apk add --no-cache libxml2 \
                curl \
                gd \
                libxpm \
                libvpx \
                re2c \
                libmcrypt \
                libldap \
                gcompat \
                geoip \
                tini; \
        \
        mkdir -p /data/server; \
        cd /data/server; \
        \
        wget $DEVURL/alpine/php5.6/php-5.6.38-alpine.tgz; \
        \
        tar xf php-5.6.38-alpine.tgz; \
        \
        ln -s /data/server/php5.6.38/bin/php /usr/bin/php; \
        ln -s /data/server/php5.6.38/sbin/php-fpm /usr/sbin/php-fpm; \
        \
        cd /data/server/php5.6.38/etc; \
        \
        wget $DEVURL/alpine/php5.6/etc/php-fpm.conf; \
        \
        rm -f /data/server/php-5.6.38-alpine.tgz; \
        \
        rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["php-fpm", "-R", "-F"]


