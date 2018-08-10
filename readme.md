# Docker images for running systemd

You can use this images as base containers to run systemd services inside.

## Usage

Run the container as a daemon

```bash
docker run -d \
--cap-add SYS_ADMIN \
-v /sys/fs/cgroup:/sys/fs/cgroup:ro \
cnphpbb/$IMAGE
```

Enter to the container

```bash
docker exec -it $CONTAINER_ID bash
```