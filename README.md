Transmission in Docker
======================

Installation
------------

```sh
docker pull auditemarlow/transmission
```

Usage example
-------------

```sh
$ docker run \
    --rm \
    --init \
    --detach \
    --publish 9091:9091 \
    --publish 51413:51413/tcp \
    --publish 51413:51413/udp \
    --env "USERNAME=admin" \
    --env "PASSWORD=password" \
    --volume /mnt/media:/transmission/downloads \
    --volume /mnt/media/incomplete:/transmission/incomplete \
    auditemarlow/transmission
```
