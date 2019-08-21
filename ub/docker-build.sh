#!/bin/bash

DOCKER_IMAGE=tiramisu

docker run --rm \
  -v ${PWD}:${PWD} \
  -w ${PWD} \
  ${DOCKER_IMAGE} \
  bash ub/docker-build-internal.sh
