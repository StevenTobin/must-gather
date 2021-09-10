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
