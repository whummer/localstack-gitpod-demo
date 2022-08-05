FROM gitpod/workspace-full

WORKDIR /usr/src/app

RUN pip install localstack awscli awscli-local

ADD start.sh /usr/local/bin/start-localstack
