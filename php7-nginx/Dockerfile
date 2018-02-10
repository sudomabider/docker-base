FROM php:7-fpm-alpine

RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

RUN apk add --no-cache nginx supervisor

RUN adduser -D -u 1000 -g 'www' www && \
	mkdir /www && \
	chown -R www:www /var/lib/nginx && \
	chown -R www:www /www

WORKDIR /www

EXPOSE 80

COPY nginx.conf /etc/nginx/nginx.conf
COPY supervisord.conf /etc/supervisord.conf

CMD ["supervisord", "--nodaemon", "--configuration", "/etc/supervisord.conf"]