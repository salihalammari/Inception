FROM debian:buster

RUN apt-get update && apt-get install wget php-fpm php php-mysql -y 

RUN wget https://wordpress.org/latest.zip -p /var/www/html

RUN cd /var/www && tar -xzf latest.zip && rm latest.zip && chmod -R 777 /var/www/html

# RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp \
#     && chmod +x /usr/local/bin/wp

COPY /tools/script.sh/ .

ENTRYPOINT ["/bin/bash", "script.sh"]