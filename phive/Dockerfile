FROM php:7-alpine

RUN apk add --no-cache ncurses

ARG VERSION

RUN curl -L -o /usr/local/bin/phive https://github.com/phar-io/phive/releases/download/${VERSION}/phive-${VERSION}.phar && \
chmod +x /usr/local/bin/phive

ENTRYPOINT [ "phive" ]
