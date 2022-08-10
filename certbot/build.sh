#!/bin/sh
docker buildx build --push --tag gauralab/certbot --platform=linux/arm64,linux/amd64 .