#!/bin/bash
cp -r laravel-action-01 /var/www/html/
mv /var/www/html/laravel-action-01 /var/www/html/laravel_01
cp /root/vthost.conf /etc/apache2/sites-available/laravel01.conf
a2dissite 000-default.conf
a2ensite laravel01.conf
a2enmod rewrite
systemctl reload apache2
systemctl restart apache2
chown -R www-data:www-data /var/www/html/laravel_01
if systemctl is-active --quiet apache2; then
    echo "Apache is running normally."
else
    echo "Apache is not running."
fi
