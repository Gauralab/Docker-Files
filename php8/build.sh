#!/bin/sh
docker buildx build --build-arg PHP_VERSION=8.2 --push --tag gauralab/php-common:8.2 --tag gauralab/php-common:latest  --platform=linux/arm64,linux/amd64 --no-cache .
docker buildx build --build-arg PHP_VERSION=8.1 --push --tag gauralab/php-common:8.1 --platform=linux/arm64,linux/amd64 --no-cache .
docker buildx build --build-arg PHP_VERSION=8.0 --push --tag gauralab/php-common:8.0 --platform=linux/arm64,linux/amd64 --no-cache .