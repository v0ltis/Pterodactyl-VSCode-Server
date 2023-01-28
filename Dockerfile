# ----------------------------------
# Pterodactyl Core Dockerfile
# Minimum Panel Version: 0.6.0
# ----------------------------------

FROM ubuntu:22.04

MAINTAINER Voltis, <hello@voltis.me>

# install VSCode Server
RUN wget -q -O- https://aka.ms/install-vscode-server/setup.sh | sh

RUN adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
