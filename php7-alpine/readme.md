# `php7.1.22` for alpine
===

## Supported tags

* `latest`,  `7.1.22`

## Usage

Run the container as a daemon

```shell
docker run -d \
-p 9000:9000 \
--name php7.1 \
-v /etc/confd/php.ini:/etc/php/php.ini:ro \
cnphpbb/php7.1-alpine
```

Enter to the container

```shell
docker exec -it php7.1 ash
```