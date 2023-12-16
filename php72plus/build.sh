#!/bin/sh
docker buildx build --build-arg PHP_VERSION=7.4 --push --tag gauralab/php-common:7.4 --platform=linux/arm64,linux/amd64 --no-cache .
docker buildx build --build-arg PHP_VERSION=7.3 --push --tag gauralab/php-common:7.3 --platform=linux/arm64,linux/amd64 --no-cache .
docker buildx build --build-arg PHP_VERSION=7.2 --push --tag gauralab/php-common:7.2 --platform=linux/arm64,linux/amd64 --no-cache .
