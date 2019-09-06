ARG VERSION
ARG TYPE

FROM sudomabider/php:${VERSION}-${TYPE}

ENV SUPERVISOR_ENABLE_CRON true

RUN apk add --no-cache supervisor && \
mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/
COPY cron.ini /etc/supervisor.d/

CMD [ "supervisord", "-c", "/etc/supervisord.conf" ]
