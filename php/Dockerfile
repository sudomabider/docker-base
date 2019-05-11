ARG VERSION

FROM php:${VERSION}-alpine

COPY --from=composer:1 /usr/bin/composer /usr/bin/composer

RUN composer global require hirak/prestissimo

WORKDIR /app

ENTRYPOINT [ "/entrypoint.sh" ]
