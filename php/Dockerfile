FROM php:8.2.8-fpm-alpine

COPY --from=mlocati/php-extension-installer:2.1.47 /usr/bin/install-php-extensions /usr/local/bin/install-php-extensions

RUN set -xe \
 && apk add --no-cache unzip \
 && install-php-extensions opcache sockets pcntl pdo_pgsql pdo_sqlsrv gd decimal bcmath intl zip soap \
 && rm /usr/local/bin/install-php-extensions \
 && mkdir /app

COPY config/fpm.ini /usr/local/etc/php-fpm.conf
COPY config/php.ini /usr/local/etc/php/php.ini

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/php"]
CMD ["-a"]
