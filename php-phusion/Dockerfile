ARG PHP_VERSION
ARG PHP_TYPE=fpm

FROM sudomabider/php:${PHP_VERSION}-${PHP_TYPE}

RUN apk add --no-cache nginx

COPY --from=sudomabider/phusion /usr/local/bin/phusion /usr/local/bin/phusion
COPY filesystem /

EXPOSE 80

CMD [ "phusion" ]
