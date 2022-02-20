#!/bin/sh
docker buildx build --push --tag gauralab/ubuntu-common:20.04 --platform=linux/arm64,linux/amd64 .