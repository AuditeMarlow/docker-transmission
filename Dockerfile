FROM alpine:3.7

MAINTAINER "Audite Marlow <https://github.com/AuditeMarlow>"

RUN apk --no-cache --update add transmission-daemon

RUN mkdir -p /transmission/downloads \
	&& mkdir -p /transmission/incomplete \
	&& mkdir -p /etc/transmission-daemon

COPY src/ .

VOLUME ["/transmission/downloads"]
VOLUME ["/transmission/incomplete"]
VOLUME ["/etc/transmission-daemon"]

EXPOSE 9091 51413/tcp 51413/udp

ENV USERNAME admin
ENV PASSWORD password

RUN chmod +x /start-transmission.sh

CMD ["/start-transmission.sh"]
