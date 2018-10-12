# `nginx 1.14.0` for alpine
===

## Supported tags

* `1.14.0`

## Usage

Run the container as a daemon

```sh
docker run -d \
--restart always \
-p 8080:8080 \    # 按实际情况
--name my-running-nginx \
-v /data/conf/nginx/conf:/data/server/nginx/conf:ro \
-v /data/webroot/admin:/var/www/admin \
cnphpbb/nginx-alpine:1.14.0
```

Enter to the container

```sh
docker exec -it my-running-nginx sh
```

Docker container help

```sh
docker container restart my-running-app
docker container stop my-running-app
docker container start my-running-app
```

