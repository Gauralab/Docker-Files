#!/bin/sh
docker buildx build --push --tag gauralab:php-common:8.1 --platform=linux/arm64,linux/amd64 .