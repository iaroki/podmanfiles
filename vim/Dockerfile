FROM alpine:latest
MAINTAINER iaroki
RUN apk --no-cache --update add vim
RUN adduser -D -u 1000 iaroki
USER iaroki
WORKDIR /home/iaroki
ENTRYPOINT ["vim"]
