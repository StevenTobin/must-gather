#!/bin/bash

###############
# Parameters
###############
DOCKER_REGISTRY=quay.io
DOCKER_ORG=rhoas
DOCKER_TAG=latest

###############
# Executing  build 
###############

docker build -t ${DOCKER_REGISTRY}/${DOCKER_ORG}/must-gather:${DOCKER_TAG} .
docker login ${DOCKER_REGISTRY} --username ${RHOAS_QUAY_USER} --password ${RHOAS_QUAY_TOKEN}
docker push ${DOCKER_REGISTRY}/${DOCKER_ORG}/mk-token-refresher:${DOCKER_TAG}
