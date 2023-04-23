FROM php:8.1-fpm

# Copie du fichier php.ini dans le conteneur
COPY ./php/php.ini /usr/local/etc/php/conf.d/

# Installation des dépendances PHP
RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-install zip pdo_mysql

WORKDIR /var/www
EXPOSE 9000