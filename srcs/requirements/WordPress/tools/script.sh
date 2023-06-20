# #!/bin/bash

sed -i 's/listen =.*/listen = 9000/g' /etc/php/7.4/fpm/pool.d/www.conf
cd /var/www/html/
chown -R www-data:www-data /var/www/html

wp core download --locale=en_US --allow-root

wp config create --dbname=$SQL_DATABASE \
                --dbuser=$SQL_USER \
                --dbpass=$SQL_PASSWORD --dbhost=$SQL_HOST  --allow-root


wp core install --url="https://localhost" \
                --title="page" --admin_user="saliha" \
                --admin_password="125" \
                --admin_email="slammari@student.1337.ma" --allow-root


# wp user create "${USER}" "${USER_EMAIL}" --user_pass=${WP_PWD}  --allow-root

mkdir /run/php && chmod 755 /run/php && chown root:root /run/php

php-fpm7.4 --nodaemonize
