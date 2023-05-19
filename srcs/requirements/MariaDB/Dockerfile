FROM debian:buster

COPY ./tools/db.sql /

run apt-get update; apt-get install mariadb-server;

    mysql < db.sql;