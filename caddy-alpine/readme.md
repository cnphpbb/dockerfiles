# Alpine image with Caddy

## Supported tags

* `latest`

## Usage

Run the container as a daemon

```shell
docker run -d \
-p 80:80 \
-p 443:443 \
--name web00 \
-v /etc/caddy/caddyconf:/etc/Caddyfile:ro \
-v /data/webroot:/var/www \
-v /etc/ssl/caddy:/root/.caddy \
cnphpbb/caddy-alpine
```

Enter to the container

```shell
docker exec -it web00 sh
```