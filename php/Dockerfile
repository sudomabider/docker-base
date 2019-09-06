ARG VERSION
ARG TYPE

FROM php:${VERSION}-${TYPE}-alpine

ENV COMPOSER_HOME=/composer
ENV PHP_ENABLE_OPCACHE=0
RUN docker-php-ext-install opcache

COPY --from=sudomabider/composer /usr/bin/composer /usr/bin/composer
COPY --from=sudomabider/composer /composer /composer
COPY --from=sudomabider/dope:latest /usr/local/bin/dope /usr/local/bin/dope

COPY opcache.ini /usr/local/etc/php/conf.d/
RUN cp $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini

WORKDIR /app
