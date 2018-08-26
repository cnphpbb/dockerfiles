`shadowsocks-server - go` for alpine
===

## Supported tags

* `latest`

## Usage

Run the container as a daemon

```shell
docker run -d \
-p 58399:58399 \
--name sss00 \
-v /etc/shadowsocks-server/config.json:/etc/sss-config.json:ro \
cnphpbb/shadowsocks-server-go-alpine
```

Enter to the container

```shell
docker exec -it sss00 sh
```