FROM php:7-fpm-alpine

RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

RUN apk add --no-cache nginx supervisor

WORKDIR /app

EXPOSE 80

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "--configuration", "/etc/supervisord.conf"]
