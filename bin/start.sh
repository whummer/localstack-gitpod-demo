#!/bin/bash

# start LocalStack container in the background
echo "Starting LocalStack instance ..."
DEBUG=1 localstack start -d
localstack logs -f &

# start up demo app
echo "Deploying and starting up demo app ..."
cd localstack-demo && make start
