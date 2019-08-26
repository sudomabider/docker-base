FROM php:7-alpine

ARG VERSION

RUN curl -L -o /usr/local/bin/phpab https://github.com/theseer/Autoload/releases/download/${VERSION}/phpab-${VERSION}.phar && \
chmod +x /usr/local/bin/phpab

ENTRYPOINT [ "phpab" ]
