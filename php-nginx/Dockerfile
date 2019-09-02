ARG PHP_VERSION
ARG PHP_TYPE=fpm

FROM sudomabider/php-supervisor:${PHP_VERSION}-${PHP_TYPE}

RUN apk add --no-cache nginx && \
chown -R www-data:www-data /var/lib/nginx

COPY filesystem/ /

EXPOSE 80
