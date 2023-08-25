FROM php:8.2.8

COPY --from=mlocati/php-extension-installer:2.1.45 /usr/bin/install-php-extensions /usr/local/bin/install-php-extensions

RUN set -xe \
# && apk add --no-cache unzip \
 && apt-get update \
 && apt-get install -y unzip \
 && apt-get clean \
#    && apt-get install -y unzip locales \
 && install-php-extensions opcache sockets pcntl pdo_pgsql pdo_sqlsrv gd decimal bcmath intl zip soap \
 && rm /usr/local/bin/install-php-extensions \
 && mkdir /app

COPY config/php.ini /usr/local/etc/php/php.ini

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/php"]
CMD ["-a"]
