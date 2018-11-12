FROM alpine:latest
RUN apk --no-cache --update add xorg-server xf86-video-vesa xf86-input-evdev udev mesa-gl mesa-egl mesa-dri-swrast ttf-liberation dwm vim git openssh-client
RUN adduser -D -u 1000 iaroki
COPY ./entrypoint.sh /entrypoint.sh
WORKDIR /home/iaroki
CMD ["/entrypoint.sh"]
