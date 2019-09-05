ARG PHP_VERSION
ARG PHP_TYPE=fpm

FROM sudomabider/php-supervisor:${PHP_VERSION}-${PHP_TYPE}

RUN apk add --no-cache nginx

COPY filesystem/ /

EXPOSE 80

ENV SUPERVISOR_ENABLE_CRON false
