ARG VERSION
ARG FPM

FROM php:${VERSION}-${FPM:+fpm-}alpine

ENV COMPOSER_HOME=/composer

RUN docker-php-ext-install opcache

COPY --from=sudomabider/composer /usr/bin/composer /usr/bin/composer
COPY --from=sudomabider/composer /composer /composer

COPY filesystem/ /
RUN chmod +x /usr/local/bin/*

WORKDIR /app
