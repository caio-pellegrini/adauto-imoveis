FROM phpdockerio/php:8.4-fpm
WORKDIR "/var/www"

RUN apt-get update \
    && apt-get -y --no-install-recommends install \
        php8.4-bcmath \
        php8.4-intl \
        php8.4-pgsql \
        # php8.4-pq \
        php8.4-xdebug \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
