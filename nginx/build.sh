#!/bin/sh

IMAGE=sudomabider/nginx
VERSION=1

docker build --pull --build-arg VERSION=${VERSION} -t ${IMAGE}:${VERSION} nginx
docker tag ${IMAGE}:${VERSION} ${IMAGE}
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}
