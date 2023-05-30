#!/bin/bash

SQL_DATABASE=salihadb
SQL_USER=saliha
SQL_PASSWORD=123
SQL_ROOT_PASSWORD=321

service mysql start 
mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;" -p$SQL_ROOT_PASSWORD
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown

mysqld_safe