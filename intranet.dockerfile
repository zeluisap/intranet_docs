FROM php:7.2-apache

COPY php.ini "$PHP_INI_DIR/php.ini"

COPY apache2.conf /etc/apache2/

RUN a2enmod rewrite

RUN apt-get update && apt-get install -y \
		libfreetype6-dev \
		libjpeg62-turbo-dev \
		libpng-dev \
		libpq-dev \
	&& docker-php-ext-install -j$(nproc) iconv \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install -j$(nproc) gd \
	&& docker-php-ext-install -j$(nproc) zip 

RUN docker-php-ext-install pdo mysqli pdo_mysql pdo_pgsql pgsql

RUN pecl install xdebug
