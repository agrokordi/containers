FROM dunglas/frankenphp:1.5.0-php8.4.6

RUN install-php-extensions opcache pdo_pgsql pdo_sqlsrv pdo_sqlite gd decimal bcmath intl zip soap

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8080
