# `php5.6.X` for alpine
===

## Supported tags

* `5.6.38`

## Usage

Run the container as a daemon

```sh
docker run -d \
--restart always \
-p 9010:9010 \    # 按实际情况
--name my-running-app \
-v /data/conf/php56/etc:/data/server/php5.6.38/etc:ro \
-v /data/webroot/admin:/var/www/admin \
cnphpbb/php-alpine:5.6.38
```

Enter to the container

```sh
docker exec -it my-running-app sh
```

Docker container help

```sh
docker container restart my-running-app
docker container stop my-running-app
docker container start my-running-app
```

