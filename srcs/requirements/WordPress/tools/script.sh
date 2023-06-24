# #!/bin/bash

sed -i 's/listen =.*/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir /run/php && chmod 755 /run/php && chown root:root /run/php

chown -R www-data:www-data /var/www/html

cd /var/www/html/

rm -rf *

wp core download --locale=en_US --allow-root

rm -rf wp-config-sample.php 

sleep 2

wp config create --dbname=$SQL_DATABASE \
                --dbuser=$SQL_USER \
                --dbpass=$SQL_PASSWORD --dbhost=$SQL_HOST  --allow-root

wp core install --url="https://localhost" \
                --title="page" --admin_user=$SQL_USER \
                --admin_password=$WP_PWD \
                --admin_email=$ADMIN_EMAIL --allow-root


wp user create "${USER}" "${USER_EMAIL}" --user_pass=${WP_PWD} --role=editor --allow-root
wp theme install twentysixteen --activate --allow-root
php-fpm7.4 -F
