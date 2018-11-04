FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

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
                tini; \
        \
                \
        mkdir -p /data/server; \
        cd /data/server; \
        \
        wget http://10.188.12.21/alpine/php5.6/php-5.6.38-alpine.tgz; \
        \
        tar xf php-7.1.22-alpine.tgz; \
        addgroup -S www; \
        adduser -D -S -h /var/cache/nginx -s /sbin/nologin -G www www; \
        \
        ln -s /data/server/php5.6.38/bin/php /usr/bin/php; \
        ln -s /data/server/php5.6.38/sbin/php-fpm /usr/sbin/php-fpm; \
        \
        cd /data/server/php5.6.38/etc; \
        \
        wget http://10.188.12.21/alpine/php5.6/etc/php-fpm.conf; \
        \
        rm -f /data/server/php-5.6.38-alpine.tgz; \
        \
        rm -rf /var/cache/apk/*

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["php-fpm", "-R", "-F"]