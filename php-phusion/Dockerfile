ARG VERSION
ARG TYPE=fpm

FROM sudomabider/php:${VERSION}-${TYPE}

RUN apk add --no-cache nginx

COPY --from=sudomabider/phusion /usr/local/bin/phusion /usr/local/bin/phusion
COPY filesystem /

CMD [ "phusion" ]
