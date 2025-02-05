#!/bin/sh

cp .env.example .env
composer install
echo "Ожидание готовности MySQL..."
sleep 10
php artisan migrate --force
php-fpm
