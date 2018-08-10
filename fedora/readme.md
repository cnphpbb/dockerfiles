# Fedora latest stable image with systemd enabled

You can use this image as a base container to run systemd services inside.

## Supported tags

* `latest`

## Usage

Run the container as a daemon

```bash
docker run -d \
--privileged \
--name systemd-fedora \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
cnphpbb/systemd-fedora
```

Enter to the container

```bash
docker exec -it systemd-fedora bash
```