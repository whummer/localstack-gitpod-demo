#!/bin/bash

# enable browser access from demo app to local APIs
export EXTRA_CORS_ALLOWED_ORIGINS=http://localhost:3000

# start LocalStack container in the background
DEBUG=1 localstack start -d
