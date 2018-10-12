FROM alpine:edge
MAINTAINER cnphpbb Gunn <moqiruyi@gmail.com>

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
      apk add --no-cache --virtual tini git openssh-client devs tar curl

#Install Caddy Server, and All Middleware
RUN curl "https://caddyserver.com/download/linux/amd64?plugins=docker,dyndns,http.authz,http.awses,http.awslambda,http.cache,http.cgi,http.cors,http.datadog,http.expires,http.filemanager,http.filter,http.forwardproxy,http.geoip,http.git,http.gopkg,http.grpc,http.hugo,http.ipfilter,http.jwt,http.locale,http.login,http.mailout,http.minify,http.nobots,http.prometheus,http.proxyprotocol,http.ratelimit,http.realip,http.reauth,http.restic,http.upload,net&license=personal&telemetry=on" \
    | tar --no-same-owner -C /usr/bin/ -xz caddy

#Remove build devs
RUN apk del devs && rm -rf /var/cache/apk/*

#Copy over a default Caddyfile
COPY ./Caddyfile /etc/Caddyfile

#USER caddy

ENTRYPOINT ["/sbin/tini", "--"]

CMD ["caddy", "-quic", "--conf", "/etc/Caddyfile"]