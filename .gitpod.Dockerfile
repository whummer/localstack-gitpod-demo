FROM python:3

WORKDIR /usr/src/app

RUN pip install localstack awscli awscli-local
