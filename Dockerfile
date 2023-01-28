# ----------------------------------
# Pterodactyl Core Dockerfile
# Minimum Panel Version: 0.6.0
# ----------------------------------

FROM ubuntu:latest

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

RUN apt-get update && apt-get install -y wget

RUN wget -q https://aka.ms/install-vscode-server/setup.sh -O /setup.sh

RUN chmod +x /setup.sh

RUN /setup.sh

ENTRYPOINT ["/entrypoint.sh"]
