ARG PHP_VERSION

FROM php:${PHP_VERSION}-fpm-alpine

RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer && \
composer global require hirak/prestissimo && \
apk add --no-cache nginx supervisor

WORKDIR /app

EXPOSE 80

COPY filesystem/ /

CMD ["supervisord", "--configuration", "/etc/supervisord.conf"]
