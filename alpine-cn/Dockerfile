FROM alpine:3.14
LABEL Author="cnphpbb@hotmail.com"
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories; \
        apk upgrade --no-cache; \
        apk add --no-cache vim tzdata curl; \
        ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime; \ 
        echo "Asia/Shanghai" > /etc/timezone; \
        rm -rf /var/cache/apk/*
