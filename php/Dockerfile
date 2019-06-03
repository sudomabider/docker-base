ARG VERSION
ARG FPM

FROM php:${VERSION}-${FPM:+fpm-}alpine

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

RUN composer global require hirak/prestissimo

WORKDIR /code

ENTRYPOINT [ "/entrypoint.sh" ]
