FROM debian:buster

RUN apt-get update && apt-get install curl php-fpm php php-mysql -y 
RUN mkdir -p /var/www/html
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar &&  mv wp-cli.phar /usr/local/bin/wp
COPY /tools/script.sh/ .

ENTRYPOINT ["/bin/bash", "script.sh"]