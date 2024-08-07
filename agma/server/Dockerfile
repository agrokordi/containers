FROM dunglas/frankenphp:1.2.3-php8.3.10

RUN set -xe \
 && install-php-extensions opcache pdo_pgsql pdo_sqlsrv pdo_sqlite gd decimal bcmath intl zip soap \
 && setcap -r /usr/local/bin/frankenphp

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8443
