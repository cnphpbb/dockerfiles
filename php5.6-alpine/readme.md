# `php5.6.X` for alpine
===

## Supported tags

* `5.6.37`

## Usage

Run the container as a daemon

```shell
docker run -d \
--restart always \
-p 9000:9000 \    # 按实际情况
--name <$project_name>_php_<$id> \
-v /data/conf/php56:/etc/php:ro \
-v /data/webroot/<$project_name>:/var/www/<$project_name> \
cnphpbb/php5.6-alpine:5.6.37
```

Enter to the container

```shell
docker exec -it php5.6 ash
```