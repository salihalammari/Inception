FROM debian:buster

RUN apt-get update && apt-get install nginx openssl -y

RUN openssl req -x509 -nodes -out /etc/nginx/slammari.crt -keyout /etc/nginx/slammari.key -subj "/C=MA/ST=khouribga/L=khouribga/O=42/OU=42 school/CN=localhost"
# RUN rm /etc/nginx/sites-enabled/default

COPY conf/nginx.conf /etc/nginx/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]