FROM alpine

ARG SQLER_VERSION=v2.1

RUN apk add --no-cache curl unzip && \
curl -f -L https://github.com/alash3al/sqler/releases/download/${SQLER_VERSION}/sqler_linux_amd64.zip -o ~/sqler.zip && \
unzip ~/sqler.zip -d /usr/local/bin && \
mv /usr/local/bin/sqler_* /usr/local/bin/sqler && \
apk del curl unzip

WORKDIR /app

CMD sql \
-config="${SQLER_CONFIG}" \
-driver=${SQLER_DRIVER:-postgres} \
-dns=${SQLER_DSN:-postgres:postgres@tcp(postgres:5432)/postgres} \
-resp=${SQLER_HOST:-0.0.0.0:80} \
-workers=${SQLER_WORKERS:-1}
