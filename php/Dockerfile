FROM php:8.1.10-alpine

COPY --from=mlocati/php-extension-installer:1.5.39 /usr/bin/install-php-extensions /usr/local/bin/install-php-extensions

RUN set -xe \
 && apk add --no-cache unzip \
 && install-php-extensions opcache sockets pcntl pdo_pgsql pdo_sqlsrv gd decimal bcmath intl zip \
 && rm /usr/local/bin/install-php-extensions \
 && mkdir /app

COPY config/php.ini /usr/local/etc/php/php.ini

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/php"]
CMD ["-a"]
