# `php7.1.22` for alpine

> 此 docker image 为企业内部使用，请不要外传。可能会出现各种问题哦。  
> **本人不提供企业外的技术支持。**  
> 此 docker 内使用的 PHP 为 7.1.22 版本。 是在内部的alpine镜像中手动编译的。
>
> 其目录结构也是为了运维人员的工作而制定的。

## 运行容器

```shell
docker run -d \
-p 9040:9040 \
--name php7.1 \
--restart always \
-v /etc/confd/php.ini:/etc/php/php.ini:ro \
-v /data/webapp/scan:/data/webapp/scan \
cnphpbb/php7.1-alpine
```

## 连接容器

```shell
docker exec -it php7.1 ash
```