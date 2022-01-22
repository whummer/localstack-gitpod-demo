FROM python:3

WORKDIR /usr/src/app

RUN pip install localstack awscli awscli-local

# TODO fix below
# RUN curl -fsSL https://download.docker.com/linux/debian/gpg | \
#   gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# RUN echo \
#     "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
#   https://download.docker.com/linux/debian \
#     $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
# RUN apt-get update
# RUN apt-get install docker-ce-cli

RUN wget -O /tmp/docker-ce-cli.deb https://download.docker.com/linux/debian/dists/bullseye/pool/stable/amd64/docker-ce-cli_20.10.12~3-0~debian-bullseye_amd64.deb
RUN dpkg -i /tmp/docker-ce-cli.deb