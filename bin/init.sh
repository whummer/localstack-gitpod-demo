#!/bin/bash

echo "Pulling Docker images ..."
docker pull localstack/localstack
pip install localstack awscli awscli-local
docker pull mlupin/docker-lambda:nodejs14.x &
docker pull lambci/lambda:ruby2.7 &
docker pull lambci/lambda:python3.7 &

# start LocalStack container in the background
echo "Starting LocalStack instance ..."
DEBUG=1 localstack start -d

# install demo
echo "Install demo ..."
cd localstack-demo
make install

echo "Done."
