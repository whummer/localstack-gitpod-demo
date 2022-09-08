#!/bin/bash

docker pull localstack/localstack
pip install localstack awscli awscli-local
# start LocalStack container in the background
DEBUG=1 localstack start -d
cd localstack-demo
make install
