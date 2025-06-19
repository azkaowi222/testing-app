#!/bin/bash

# Jalankan migrasi
php artisan migrate --force

# Jalankan supervisord untuk nginx dan php-fpm
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
