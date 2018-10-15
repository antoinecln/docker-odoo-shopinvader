#!/bin/bash

set -e
IMAGE=quay.io/akretion/shopinvader-odoo

if [ "$TRAVIS_PULL_REQUEST" == "false" ]; then
  docker login --username="$DOCKER_USERNAME" --password="$DOCKER_PASSWORD"
  if
  if [ "$TRAVIS_BRANCH" == "10.0" ]; then
    docker tag current-latest $IMAGE:$TRAVIS_BRANCH-latest
    docker push $IMAGE:$TRAVIS_BRANCH-latest
    if [ ! -z "$TRAVIS_TAG" ]; then
      docker tag current-latest $IMAGE:$TRAVIS_TAG
      docker push $IMAGE:$TRAVIS_TAG
    fi
  else
    echo "Not pushing any image"
  fi
fi
