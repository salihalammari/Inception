#!/bin/bash

sed -i -e  's/listen =.*/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf
wp core download --path=/var/www/html --allow-root
wp config create --dbhost=mariadb \
--dbname=${SQL_DATABASE} \
--dbuser=${SQL_USER} \
--dbpass=${SQL_PASSWORD} \
--path=/var/www/html --allow-root
wp core install --url=${DOMAINE_NAME} --title="Wordpress page" --admin_name=${WP_USR} --admin_password=${WP_PWD} --admin_email="${ADMIN_EMAIL}"  --path=/var/www/html --allow-root
wp user create "${USER}" "${USER_EMAIL}" --user_pass=${WP_PWD}  --allow-root --path=/var/www/html

mkdir -p /run/php

exec php-fpm7.3 -F