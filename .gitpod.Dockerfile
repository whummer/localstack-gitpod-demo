FROM gitpod/workspace-full

WORKDIR /usr/src/app

# RUN pip install localstack awscli awscli-local

ENV EXTRA_CORS_ALLOWED_ORIGINS '*'
ENV DISABLE_CORS_CHECKS 1
ENV DISABLE_CUSTOM_CORS_APIGATEWAY 1
