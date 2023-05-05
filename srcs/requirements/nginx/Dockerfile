FROM debian:buster

RUN apt-get update -y;\
    apt-get install nginx openssl -y;

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/slammari.key -out /etc/nginx/slammari.crt \
    -subj "/C=MA/ST=khouribga/L=khouribga/O=42/OU=42 school/CN=localhost";

COPY conf/nginx.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]