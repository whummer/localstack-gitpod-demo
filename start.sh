

# TODO: add config option to skip --privileged flag!
# DEBUG=1 localstack start -d
docker run -d --rm --name localstack_main -v /tmp/localstack/var_libs:/var/lib/localstack/var_libs -v /tmp/localstack/cache:/var/lib/localstack/cache -v /tmp/localstack:/tmp/localstack -v /var/run/docker.sock:/var/run/docker.sock -p 127.0.0.1:4566:4566 -p 127.0.0.1:4571:4571 -p 127.0.0.1:12121:12121 -e LOCALSTACK_HOSTNAME=localhost -e TEST_AWS_ACCOUNT_ID=000000000000 -e HOSTNAME=whummer-localstackgitpo-r9stv0t40cx -e DEFAULT_REGION=us-east-1 -e DEBUG=1 -e DOCKER_HOST=unix:///var/run/docker.sock -e HOST_TMP_FOLDER=/tmp/localstack -e SET_TERM_HANDLER=1 localstack/localstack
