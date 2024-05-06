FROM dunglas/frankenphp:1.1.4-php8.3.6-alpine

RUN set -xe && install-php-extensions opcache sockets pcntl pdo_pgsql pdo_sqlsrv gd decimal bcmath intl zip soap \
 && chmod 777 /etc/caddy

COPY config/php.ini /usr/local/etc/php/php.ini
COPY config/Caddyfile /etc/caddy/Caddyfile

HEALTHCHECK NONE

ENTRYPOINT ["/usr/local/bin/frankenphp"]
CMD ["run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
