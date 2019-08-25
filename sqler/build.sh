#!/bin/sh

set -e

IMAGE=sudomabider/sqler
VERSION=2.1

docker build --pull --build-arg VERSION=${VERSION} -t ${IMAGE}:${VERSION} sqler
docker tag ${IMAGE}:${VERSION} ${IMAGE}
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}
