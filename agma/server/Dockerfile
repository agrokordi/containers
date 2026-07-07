FROM dunglas/frankenphp:1.12.4-php8.5.8

RUN install-php-extensions opcache pdo_pgsql pdo_sqlite pdo_sqlsrv gd decimal bcmath intl zip soap simplexml imap

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /config/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/config/Caddyfile", "--adapter", "caddyfile"]

EXPOSE 8080
