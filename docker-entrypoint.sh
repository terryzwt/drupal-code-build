#!/bin/sh
set -e

cp -a /var/www/html /code/drupal
exec "$@"
