#!/bin/sh
docker buildx build --push --tag gauralab:php-common:7.4 --platform=linux/arm64,linux/amd64 .
