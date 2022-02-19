#!/bin/sh
docker buildx build --push --tag gauralab:php-common:8.0 --platform=linux/arm64,linux/amd64 .