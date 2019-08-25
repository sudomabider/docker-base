#!/bin/sh

set -e

cd php

IMAGE=sudomabider/php
VERSION=7.3

docker build --pull --build-arg VERSION=${VERSION} --build-arg FPM=1 -t ${IMAGE}:${VERSION}-fpm .
docker tag ${IMAGE}:${VERSION}-fpm ${IMAGE}:fpm
docker push ${IMAGE}:${VERSION}-fpm
docker push ${IMAGE}:fpm

docker build --pull --build-arg VERSION=${VERSION} -t ${IMAGE}:${VERSION} .
docker tag ${IMAGE}:${VERSION} ${IMAGE}
docker push ${IMAGE}:${VERSION}
docker push ${IMAGE}
