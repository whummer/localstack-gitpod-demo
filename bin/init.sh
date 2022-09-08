#!/bin/bash

echo "Pulling Docker image ..."
docker pull localstack/localstack
pip install localstack awscli awscli-local

# start LocalStack container in the background
echo "Starting LocalStack instance ..."
DEBUG=1 localstack start -d

# install demo
echo "Install demo ..."
cd localstack-demo
make install

echo "Done."
