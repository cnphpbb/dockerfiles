# Debian image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags

* `latest`, `8`

## Usage

Run the container as a daemon

```shell
docker run -d \
--privileged \
--name systemd-debian \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
cnphpbb/systemd-debian:8
```

Enter to the container

```shell
docker exec -it systemd-debian bash
```