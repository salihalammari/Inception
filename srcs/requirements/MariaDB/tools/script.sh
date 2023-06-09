#!/bin/bash


if [ ! -d /var/lib/mysql/$SQL_DATABASE ]; then
    sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf
    sed -i 's/#port/port /g' /etc/mysql/mariadb.conf.d/50-server.cnf
    service mysql start

    mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
    mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
    mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
    mysql -e "FLUSH PRIVILEGES;" -p$SQL_ROOT_PASSWORD
    # mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
    # sleep 3
    kill $(cat /var/run/mysqld/mysqld.pid)
fi 
mysqld_safe
