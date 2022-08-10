#!/bin/sh
docker buildx build --push --tag gauralab/mailhog --platform=linux/arm64,linux/amd64 .