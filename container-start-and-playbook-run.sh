#!/bin/bash

DOCKER_CONTAINER_NAME="ansible-test"

cd docker && docker build -t myubuntu .

docker run -ti --privileged --name $DOCKER_CONTAINER_NAME -d -p 5000:22 -p 80:80 -p 443:443 myubuntu

cd ../ansible && ansible-playbook -i env/local_docker myplaybook.yml
# docker stop $DOCKER_CONTAINER_NAME
#
# docker rm $DOCKER_CONTAINER_NAME
