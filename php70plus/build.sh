#!/bin/sh
docker buildx build --build-arg PHP_VERSION=7.1 --push --tag gauralab/php-common:7.1 --platform=linux/arm64,linux/amd64 --no-cache .
docker buildx build --build-arg PHP_VERSION=7.0 --push --tag gauralab/php-common:7.0 --platform=linux/arm64,linux/amd64 --no-cache .
