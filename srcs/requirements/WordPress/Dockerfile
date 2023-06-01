FROM debian:buster

RUN apt-get update && apt-get install curl php-fpm php php-mysql -y 

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp \
    && chmod +x /usr/local/bin/wp

COPY /tools/script.sh/ .

ENTRYPOINT ["/bin/bash", "script.sh"]