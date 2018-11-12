FROM fedora:29
MAINTAINER iaroki
RUN dnf install -y vifm vim && dnf clean all
RUN useradd -u 1000 iaroki
USER iaroki
WORKDIR /home/iaroki
ENTRYPOINT ["vifm"]
