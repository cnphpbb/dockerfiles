FROM alpine:edge
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

RUN apk --no-cache add tini && rm -rf /var/cache/apk/*

RUN wget -P /usr/bin http://hk01.7y2.org/shadowsocks-server && chmod +x /usr/bin/shadowsocks-server

COPY ./config.json /etc/Sss-config.json

ENTRYPOINT ["/sbin/tini"]

CMD ["shadowsocks-server", "-c", "/etc/Sss-config.json"]