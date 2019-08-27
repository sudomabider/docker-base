FROM php:7-alpine

RUN apk add --no-cache ncurses gnupg

ARG VERSION

RUN curl -L -o /usr/local/bin/phive https://github.com/phar-io/phive/releases/download/${VERSION}/phive-${VERSION}.phar && \
chmod +x /usr/local/bin/phive

# Don't bother with verify
# RUN cd /tmp && \
# curl --silent -L -o phive.phar https://github.com/phar-io/phive/releases/download/${VERSION}/phive-${VERSION}.phar && \
# curl --silent -L -o phive.phar.asc https://github.com/phar-io/phive/releases/download/${VERSION}/phive-${VERSION}.phar.asc && \
# gpg --keyserver pool.sks-keyservers.net --recv-keys 0x9D8A98B29B2D5D79 && \
# gpg --verify phive.phar.asc phive.phar && \
# rm phive.phar.asc && \
# mv phive.phar /usr/local/bin/phive && \
# chmod +x /usr/local/bin/phive

ENTRYPOINT [ "phive" ]
