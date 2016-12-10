FROM elixir:1.3.4
MAINTAINER szymon.ciolkowski@gmail.com

RUN useradd -d /home/docker -m -s /bin/bash docker && echo "docker:docker" | chpasswd && adduser docker sudo \
&& chown -R docker:docker /home/docker \
&& mkdir -p /home/docker/udemy_elixir

WORKDIR /home/docker/udemy_elixir
USER docker
