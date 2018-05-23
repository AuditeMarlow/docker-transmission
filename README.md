# Transmission on Alpine Linux

Run the container:

```sh
$ docker build -t alpine-transmission:latest Dockerfile

$ docker run -d --name transmission \
-p 9091:9091 \
-p 51413:51413/tcp \
-p 51413:51413/udp \
-e "USERNAME=admin" \
-e "PASSWORD=password" \
-v /mnt/media:/transmission/downloads \
-v /mnt/media/incomplete:/transmission/incomplete \
alpine-transmission
```
