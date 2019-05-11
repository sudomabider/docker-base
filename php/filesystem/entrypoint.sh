#!/bin/sh

if [[ "$APP_ENV" = "local" ]]; then
  cp $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini
else
  cp $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini
fi
