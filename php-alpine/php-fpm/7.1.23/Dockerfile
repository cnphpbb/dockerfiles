FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

FROM alpine:latest
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

ENV PROURL="http://192.168.6.24:88" \
    DEVURL="http://10.188.12.21"

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
        \
        apk add --no-cache libxml2 \
        re2c \
        libmcrypt \
        gettext \
        curl \
        gd \
        libxpm \
        tini \
        tzdata; \
        \
        mkdir -p /data/server; \
        cd /data/server; \
        \
        wget $DEVURL/alpine/php7.1/php-7.1.22.tar.bz2; \
        wget $DEVURL/alpine/php7.1/rabbitmq-c-0.9.0.tar.bz2; \
        \
        tar xf php-7.1.22.tar.bz2; \
        \
        rm -f php-7.1.22.tar.bz2; \
        \
        cd /usr/local; \
        \
        tar xf /data/server/rabbitmq-c-0.9.0.tar.bz2; \
        \
        rm -f /data/server/rabbitmq-c-0.9.0.tar.bz2; \
        \
        cp /usr/local/rabbitmq-c/lib64/librabbitmq.so.4.3.0 /usr/lib/librabbitmq.so.4.3.0; \
        ln -s /usr/lib/librabbitmq.so.4.3.0 /usr/lib/librabbitmq.so.4; \
        ln -s /usr/lib/librabbitmq.so.4.3.0 /usr/lib/librabbitmq.so; \
        \
        ln -s /data/server/php7/bin/php /usr/bin/php; \
        ln -s /data/server/php7/bin/phpize /usr/bin/phpize; \
        ln -s /data/server/php7/bin/php-config /usr/bin/php-config; \
        ln -s /data/server/php7/bin/php-cgi /usr/bin/php-cgi; \
        ln -s /data/server/php7/sbin/php-fpm /usr/sbin/php-fpm; \
        \
        cd /data/server/php7/etc; \
        rm -vf php.ini php-fpm.conf; \
        wget $DEVURL/alpine/php7.1/etc/php.ini; \
        wget $DEVURL/alpine/php7.1/etc/php-fpm.conf; \
        \
        rm -rf /var/cache/apk/* ; \
        ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \ 
        echo "Asia/Shanghai" > /etc/timezone

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["php-fpm", "-R", "-F"]