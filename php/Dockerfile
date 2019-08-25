ARG VERSION
ARG TYPE

FROM php:${VERSION}-${TYPE}-alpine

ENV COMPOSER_HOME=/composer
ENV ENABLE_OPCACHE=0
RUN docker-php-ext-install opcache

COPY --from=sudomabider/composer /usr/bin/composer /usr/bin/composer
COPY --from=sudomabider/composer /composer /composer

COPY filesystem/ /
RUN cp $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini

WORKDIR /app
