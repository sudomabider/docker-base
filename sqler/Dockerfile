FROM alpine

ARG SQLER_VERSION

RUN cd /tmp && \
apk add --no-cache --virtual .build-deps curl unzip && \
curl -f -L https://github.com/alash3al/sqler/releases/download/v${SQLER_VERSION}/sqler_linux_amd64.zip -o sqler.zip && \
unzip sqler.zip && \
mv sqler_* /usr/local/bin/sqler && \
apk del .build-deps

WORKDIR /app

CMD sql \
-config="${SQLER_CONFIG:-/app/config/default.hcl}" \
-driver=${SQLER_DRIVER:-postgres} \
-dns=${SQLER_DSN:-postgres:postgres@tcp(postgres:5432)/postgres} \
-resp=${SQLER_HOST:-0.0.0.0:80} \
-workers=${SQLER_WORKERS:-1}
