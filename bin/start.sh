#!/bin/bash

# start LocalStack container in the background
echo "Starting LocalStack instance ..."
cd localstack-demo
DEBUG=1 localstack start -d
localstack logs -f &
