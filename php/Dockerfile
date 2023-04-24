FROM php:8.1-fpm

# Copie du fichier php.ini dans le conteneur
COPY ./php/php.ini /usr/local/etc/php/conf.d/

# Installation des dépendances PHP
RUN apt-get update && docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
EXPOSE 9000