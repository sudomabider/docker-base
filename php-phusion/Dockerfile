ARG PHP_VERSION
ARG PHP_TYPE=fpm

FROM sudomabider/php:${PHP_VERSION}-${PHP_TYPE}

RUN apk add --no-cache nginx

COPY --from=sudomabider/phusion /usr/local/bin/phusion /usr/local/bin/phusion
COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

CMD [ "phusion" ]
