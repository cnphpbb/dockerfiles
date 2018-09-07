`frps` for alpine
===

## Supported tags

* `latest`,  `0.21.0`

## Usage

Run the container as a daemon

```shell
docker run -d \
-p 7000:7000 \
--name frps00 \
-v /etc/frps.ini:/etc/frps.ini:ro \
cnphpbb/frps-alpine
```

Enter to the container

```shell
docker exec -it frps00 ash
```