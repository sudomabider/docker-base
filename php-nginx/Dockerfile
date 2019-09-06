ARG PHP_VERSION
ARG PHP_TYPE=fpm

FROM sudomabider/php-supervisor:${PHP_VERSION}-${PHP_TYPE}

RUN apk add --no-cache nginx

COPY 00-php-fpm.ini /etc/supervisor.d/
COPY 01-nginx.ini /etc/supervisor.d/
COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

ENV SUPERVISOR_ENABLE_CRON false
