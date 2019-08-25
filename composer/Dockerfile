ARG VERSION

FROM composer:${VERSION}

ENV COMPOSER_HOME=/composer

RUN composer global require hirak/prestissimo && composer clear-cache
