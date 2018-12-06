FROM alpine:latest  as builder
RUN apk --no-cache add ca-certificates
ADD https://alpha.de.repo.voidlinux.org/static/xbps-static-latest.x86_64-musl.tar.xz  /root
RUN tar -Jxvf /root/xbps-static-latest.x86_64-musl.tar.xz -C / \
    && mkdir -p /root/voidlinux/root /root/voidlinux/cache
RUN yes | /usr/bin/xbps-install -Syu -R https://alpha.de.repo.voidlinux.org/current \
    xbps-triggers \
    coreutils \
    base-files \
    glibc-locales \
    dash \
    grep \
    xbps \
    iana-etc \
    tzdata \
    sed \
    shadow \
     -r /root/voidlinux/root -c /root/voidlinux/cache
RUN rm -rf /root/voidlinux/var/cache/xbps

FROM scratch
WORKDIR /
COPY --from=builder root/voidlinux/root/ .
