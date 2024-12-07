#!/bin/sh

cp .env.example .env
composer install
php artisan migrate --force
php-fpm
