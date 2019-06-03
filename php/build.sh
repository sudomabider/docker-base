#!/bin/sh

IMAGE=sudomabider/php
VERSION=7.3

docker build --pull --build-arg VERSION=${VERSION} --build-arg FPM=1 -t ${IMAGE}:${VERSION}-fpm php
docker tag ${IMAGE}:${VERSION}-fpm ${IMAGE}:fpm
docker push ${IMAGE}:${VERSION}-fpm
docker push ${IMAGE}:fpm

docker build --pull --build-arg VERSION=${VERSION} -t ${IMAGE}:${VERSION} php
docker tag ${IMAGE}:${VERSION} ${IMAGE}
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}
