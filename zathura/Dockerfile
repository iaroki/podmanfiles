FROM alpine:latest
MAINTAINER iaroki
RUN apk --no-cache --update add \
	zathura-pdf-poppler \
    mesa-gl \
    dbus \
	ttf-opensans && \
	adduser -D -u 1000 iaroki
RUN dbus-uuidgen > /etc/machine-id
USER iaroki
WORKDIR /home/iaroki
ENTRYPOINT ["/usr/bin/zathura"]
