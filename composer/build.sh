#!/bin/sh

set -e

IMAGE=sudomabider/composer
VERSION=1

docker build --pull --build-arg VERSION=${VERSION} -t ${IMAGE}:${VERSION} composer
docker tag ${IMAGE}:${VERSION} ${IMAGE}
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}
