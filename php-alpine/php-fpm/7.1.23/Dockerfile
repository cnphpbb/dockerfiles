FROM cnphpbb/php7.1.22-alpine:1.2.3
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

RUN apk add --no-cache tini; \
        \
        cd /data/server/php7/etc; \
        wget http://10.188.12.21/alpine/php7.1/etc/php-fpm.conf; \
        \
        rm -rf /var/cache/apk/* ;

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["php-fpm", "-R", "-F"]