#!/bin/sh
#docker buildx build --push --tag gauralab/ubuntu-common:20.04 --platform=linux/arm64,linux/amd64 .
docker buildx build --build-arg VERSION=20.04 --push --tag gauralab/ubuntu-common:20.04 --platform=linux/arm64,linux/amd64 --no-cache .
docker buildx build --build-arg VERSION=22.04 --push --tag gauralab/ubuntu-common:22.04 --tag gauralab/ubuntu-common:latest --tag gauralab/ubuntu-common --platform=linux/arm64,linux/amd64 --no-cache .