#!/bin/bash

# enable browser access from demo app to local APIs
export EXTRA_CORS_ALLOWED_ORIGINS='*'
export DISABLE_CORS_CHECKS=1
export DISABLE_CUSTOM_CORS_APIGATEWAY=1

# start LocalStack container in the background
DEBUG=1 localstack start -d
