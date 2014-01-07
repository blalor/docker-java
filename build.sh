#!/bin/bash

set -e

IMAGE="localhost:5000/core/java"

docker build -t ${IMAGE} .
docker push ${IMAGE}
