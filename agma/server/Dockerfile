FROM dunglas/frankenphp:1.4.3-php8.4.4

RUN set -xe \
 && install-php-extensions opcache pdo_pgsql pdo_sqlsrv pdo_sqlite gd decimal bcmath intl zip soap \
 && apt-get update && apt-get install postgresql-client-15 -y && rm -rf /var/lib/apt/lists/* \
 && setcap -r /usr/local/bin/frankenphp

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8443
