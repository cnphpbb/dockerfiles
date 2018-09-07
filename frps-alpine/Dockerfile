FROM alpine:edge
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

RUN apk --no-cache add tini && rm -rf /var/cache/apk/*

RUN wget -P /usr/bin http://hk01.7y2.org/frp_0.21.0_linux_amd64/frps && chmod +x /usr/bin/frps

COPY ./frps.ini /etc/frps.ini

ENTRYPOINT ["/sbin/tini"]

CMD ["frps", "-c", "/etc/frps.ini"]