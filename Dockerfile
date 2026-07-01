FROM php:8.2-apache

# Installer les dépendances système nécessaires pour les extensions PHP
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libxml2-dev \
    libicu-dev \
    libzip-dev \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Configurer et installer les extensions PHP requises par osTicket
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) \
    gd \
    mysqli \
    pdo_mysql \
    xml \
    intl \
    zip \
    opcache

# Activer le module de réécriture d'Apache (souvent requis pour les routes propres)
RUN a2enmod rewrite

# Copier le code source dans le serveur web
COPY . /var/www/html/

# ICI : On injecte directement le fichier de configuration qu'on vient d'aspirer
COPY osticket.cfg.php /var/www/html/include/ost-config.php

# Sécurité & Automatisation : On supprime le dossier setup pour éviter de revoir l'installateur
RUN rm -rf /var/www/html/setup/

# Donner les bons droits d'accès à Apache
RUN chown -R www-data:www-data /var/www/html/

EXPOSE 80